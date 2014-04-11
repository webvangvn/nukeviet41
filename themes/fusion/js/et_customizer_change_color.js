function et_frontend_customizer_change_color( target_id, active_color_scheme, to ) {
	var option_css = '';

	switch ( target_id ){
		case 'link_color' :
			option_css = active_color_scheme + 'a { color: ' + to + '; }';
			break;
		case 'font_color' :
			option_css = 'body' + active_color_scheme + ', ' + active_color_scheme + '.footer-widget { color: ' + to + '; }';
			break;
		case 'headings_color' :
			option_css = active_color_scheme + 'h1, ' + active_color_scheme + 'h2, ' + active_color_scheme + 'h3, ' + active_color_scheme + 'h4, ' + active_color_scheme + 'h5, ' + active_color_scheme + 'h6, ' + active_color_scheme + '.testimonial h2, ' + active_color_scheme + '#recent-updates h2, ' + active_color_scheme + '.recent-update h3 a, ' + active_color_scheme + '.footer-widget h4.widgettitle, ' + active_color_scheme + '.widget h4.widgettitle, ' + active_color_scheme + '.entry h2.title a, ' + active_color_scheme + 'h1.title, ' + active_color_scheme + '#comments, ' + active_color_scheme + '#reply-title { color: ' + to + '; }';
			break;
		case 'highlight_color' :
			option_css = active_color_scheme + '#breadcrumbs, ' + active_color_scheme + '.read-more span, ' + active_color_scheme + '.testimonial span.title, ' + active_color_scheme + '.entry .meta-info, ' + active_color_scheme +  '.entry .meta-info a, ' + active_color_scheme + '.entry .meta-info a:hover, ' + active_color_scheme + '.subtitle, ' + active_color_scheme + '.comment_date, ' + active_color_scheme + '.comment-reply-link:before, ' + active_color_scheme + '.bottom-nav li.current_page_item a, ' + active_color_scheme + '#content .wp-pagenavi .nextpostslink, ' + active_color_scheme + '#content .wp-pagenavi .previouspostslink { color: ' + to + '; }';
			option_css += active_color_scheme + '.mobile_nav { border-color: ' + to + '; }';
			option_css += active_color_scheme + '#top-menu a .menu-highlight, ' + active_color_scheme + '#mobile_menu .menu-highlight { background-color: ' + to + '; }';
			break;
	}

	return option_css;
}