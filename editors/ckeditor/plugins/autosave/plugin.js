﻿/**
 * @license Copyright (c) CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

(function() {
	if (!supportsLocalStorage()) {
		return;
	}

	CKEDITOR.plugins.add("autosave", {
		lang : ['de', 'en', 'zh', 'vi'],
		init : function(editor) {
			var autoSaveKey = editor.name;
			// Checks If there is data available and load it
			if (localStorage.getItem(autoSaveKey)) {

				var autoSavedContent = localStorage.getItem(autoSaveKey);
				var editorLoadedContent = editor.getData();

				// check if the loaded editor content is the same as the autosaved content
				if (editorLoadedContent == autoSavedContent) {

					localStorage.removeItem(autoSaveKey);

					return;
				}

				if (confirm(editor.lang.autosave.loadSavedContent)) {
					editor.setData(autoSavedContent);
				}

				localStorage.removeItem(autoSaveKey);
			}

			editor.on('key', startTimer);
		}
	});

	var timeOutId = 0, savingActive = false;

	var startTimer = function(event) {
		if (timeOutId) {
			clearTimeout(timeOutId);
		}
		var delay = CKEDITOR.config.autosave_delay != null ? CKEDITOR.config.autosave_delay : 10;
		timeOutId = setTimeout(onTimer, delay * 1000, event);
	};
	var onTimer = function(event) {
		if (savingActive) {
			startTimer(event);
		} else if (event.editor.checkDirty() || event.editor.plugins.bbcode) {
			savingActive = true;
			var editor = event.editor, autoSaveKey = event.editor.name;
			// save content
			localStorage.setItem(autoSaveKey, editor.getData());
			savingActive = false;
		}
	};

	// localStorage detection
	function supportsLocalStorage() {
		return typeof (Storage) !== 'undefined';
	}

})();