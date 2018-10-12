<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<button class="m-aside-left-close  m-aside-left-close--skin-dark " id="m_aside_left_close_btn"><i class="la la-close"></i></button>
				<div id="m_aside_left" class="m-grid__item	m-aside-left  m-aside-left--skin-dark ">

					<!-- BEGIN: Aside Menu -->
					<div id="m_ver_menu" class="m-aside-menu  m-aside-menu--skin-dark m-aside-menu--submenu-skin-dark " m-menu-vertical="1" m-menu-scrollable="0" m-menu-dropdown-timeout="500">
						<ul class="m-menu__nav ">
							<li class="m-menu__section m-menu__section--first">
								<h4 class="m-menu__section-text">Employee Portal</h4>
								<i class="m-menu__section-icon flaticon-more-v2"></i>
							</li>
							<li class="m-menu__item <c:if test="${requestScope['javax.servlet.forward.request_uri'] == '/addemployee'}">m-menu__item--active</c:if>" aria-haspopup="true"><a href="addemployee" class="m-menu__link "><span class="m-menu__item-here"></span><i class="m-menu__link-icon flaticon-add"></i><span class="m-menu__link-text">Add Employee</span></a></li>
							<li class="m-menu__item <c:if test="${requestScope['javax.servlet.forward.request_uri'] == '/emplist'}">m-menu__item--active</c:if>" aria-haspopup="true"><a href="emplist" class="m-menu__link "><span class="m-menu__item-here"></span><i class="m-menu__link-icon flaticon-list"></i><span class="m-menu__link-text">Employee List</span></a></li>
							<li class="m-menu__section ">
								<h4 class="m-menu__section-text">Leads</h4>
								<i class="m-menu__section-icon flaticon-more-v2"></i>
							</li>
							<li class="m-menu__item <c:if test="${requestScope['javax.servlet.forward.request_uri'] == '/inner'}">m-menu__item--active</c:if>" aria-haspopup="true" m-menu-link-redirect="1"><a href="inner" class="m-menu__link "><span class="m-menu__item-here"></span><i class="m-menu__link-icon flaticon-graphic"></i><span class="m-menu__link-text">Upload leads</span></a></li>
							<li class="m-menu__item  <c:if test="${requestScope['javax.servlet.forward.request_uri'] == '/'}">m-menu__item--active</c:if>" aria-haspopup="true"><a href="/" class="m-menu__link "><span class="m-menu__item-here"></span><i class="m-menu__link-icon flaticon-list"></i><span class="m-menu__link-text">Leads List</span></a></li>
						</ul>
</div>