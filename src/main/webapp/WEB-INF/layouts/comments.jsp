<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="m_quick_sidebar" class="m-quick-sidebar m-quick-sidebar--tabbed m-quick-sidebar--skin-light" style="overflow: hidden;">
			<div class="m-quick-sidebar__content" style="overflow:hidden">
				<span id="m_quick_sidebar_close" class="m-quick-sidebar__close"><i class="far fa-window-close"></i></span>
				<ul id="m_quick_sidebar_tabs" class="nav nav-tabs m-tabs m-tabs-line m-tabs-line--brand" role="tablist">
					<li class="nav-item m-tabs__item">
						<a class="nav-link m-tabs__link active" data-toggle="tab" href="#m_quick_sidebar_tabs_messenger" role="tab">Messages</a>
					</li>
					
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="m_quick_sidebar_tabs_messenger" role="tabpanel">
						<div class="m-messenger m-messenger--message-arrow m-messenger--skin-light">
							<div class="m-messenger__messages m-scrollable m-scroller" style="overflow: auto; height: 412px;" id="messages">
							<c:forEach items="${comments}" var="temp">
							<c:choose>
							 <c:when test="${temp.employee_id!=AppUtil.getEmployeeId()}">
								 <div class="m-messenger__wrapper">
									<div class="m-messenger__message m-messenger__message--in">
										<div class="m-messenger__message-pic">
											<img src="../../assets/app/media/img/users/user3.jpg" alt="">
										</div>
										<div class="m-messenger__message-body">
											<div class="m-messenger__message-arrow"></div>
											<div class="m-messenger__message-content">
												<div class="m-messenger__message-username">
													${temp.name} wrote
												</div>
												<span class="date">${temp.creation_date}</span> <span >ago</span>
												<div class="m-messenger__message-text">
													${temp.comment}
												</div>
												
											</div>
											
										</div>
									</div>
								</div> 
								</c:when>  
								<c:otherwise>
								<div class="m-messenger__wrapper">
									<div class="m-messenger__message m-messenger__message--out">
										<div class="m-messenger__message-body">
											<div class="m-messenger__message-arrow"></div>
											<div class="m-messenger__message-content" >
												<div class="m-messenger__message-text">
													${temp.comment}
												</div>
												<div class="m-messenger__message-text" style="float:right">
												    <span class="date" style="color:#fff;">${temp.creation_date}</span> <span style="color:#fff;">ago</span>
											    </div>
											</div>
											
										</div>
									</div>
								</div>
								</c:otherwise>
								</c:choose>             
						    </c:forEach>	
							</div>
							<div class="ps__rail-y" style="top: 129px;height: 72px;right: 4px;"><div class="ps__thumb-y" tabindex="0" style="top: 4px; height: 40px;"></div></div>
							<div class="m-messenger__seperator"></div>
							<div class="m-messenger__form">
							    <input type="hidden" name="lead_id" id="leadId" value="${lead.lead_id}" >
								<div class="m-messenger__form-controls">
									<textarea class="form-control" rows="2" id="comment" style="border-color: #5b77bb;"></textarea>
								</div>
								<div class="m-messenger__form-tools">
									<a href="javascript:;" class="m-messenger__form-attachment" id="send">
										<i class="fas fa-paper-plane" style="color:black;"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
			
				</div>
			</div>
		</div>
		
		