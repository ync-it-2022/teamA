<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./includes/header.jsp"%>

    <main id="rlr-main" class="rlr-main">
      <div id="rlr-content" class="container">
        <div class="row rlr-search-results-page__product-details">
          <aside class="col-xl-4 rlr-search-results-page__sidebar">
            <aside class="rlr-sidebar">
              <div class="rlr-sidebar__widget rlr-sidebar--search widget_search">
                <form role="search" method="get" action="http://railar.net/staging/" class="wp-block-search__button-outside wp-block-search__text-button wp-block-search">
                  <label for="wp-block-search__input-1" class="wp-block-search__label">검색</label>
                  <div class="wp-block-search__inside-wrapper">
                    <input type="search" id="wp-block-search__input-1" class="wp-block-search__input" name="s" value="" placeholder="" required="" />
                  </div>
                </form>
              </div>
              <div class="rlr-sidebar__widget">
                <h4>국가</h4>
                <ul class="wp-block-categories">
                  <li><a href="#">일본</a></li>
                  <li><a href="#">미국</a></li>
                  <li><a href="#">중국</a></li>
                </ul>
              </div>
            </aside>
          </aside>
          <section class="col-xl-8 rlr-search-results-page__product-list">
            <div class="row rlr-listings__header">
              <!-- Breadcrumb -->
              <h1 class="rlr-section__heading--main">축제</h1>
            </div>
            <div class="row rlr-search-results-page__card-wrapper">
              <div class="col-md-6">
                <article class="rlr-postcard">
                  <img class="rlr-postcard__thumbnail" src="/resources/assets/images/Blog/blog-listing01.jpg" alt="test" />
                  <div class="rlr-postcard__summary">
                    <span class="rlr-postcard__author">Sanjeev Jha | 19 Jan 2022</span>
                    <a href="#" class="rlr-product-card__anchor-title festival_detail">
                      <h2 class="rlr-product-card__title">MT. Everest trekking theme</h2>
                    </a>
                    <p>Like to know the secrets of transforming a 2-14 team into a 3x Super Bowl winning Dynasty?</p>
                    <div class="rlr-product-card__footer">
                      <div class="rlr-icon-text rlr-product-card__icon-text">
                        <i class="rlr-icon-font flaticon-three-o-clock-clock"> </i>
                        <span class="">시작</span>
                        <span class=""> ~ </span>
                        <span class="">끝</span>
                      </div>
                    </div>
                  </div>
                </article>
              </div>
            </div>
            <hr class="rlr-search-results-page__divider" />
            <nav class="rlr-pagination" aria-label="Product list navigation">
              <ul class="pagination rlr-pagination__list">
                <li class="page-item rlr-pagination__page-item disabled">
                  <a class="page-link rlr-pagination__page-link rlr-pagination__page-link--prev" href="#" aria-label="Previous">
                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M15.833 10H4.167m0 0L10 15.833M4.167 10 10 4.167" stroke="var(--body-color)" stroke-width="1.67" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                    <span aria-hidden="true">Previous</span>
                  </a>
                </li>
                <li class="page-item rlr-pagination__page-item">
                  <ul class="pagination rlr-pagination__child-list">
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">1</a></li>
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">2</a></li>
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">3</a></li>
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">...</a></li>
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">8</a></li>
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">9</a></li>
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">10</a></li>
                  </ul>
                </li>
                <li class="page-item rlr-pagination__page-item">
                  <a class="page-link rlr-pagination__page-link rlr-pagination__page-link--next" href="#" aria-label="Next">
                    <span aria-hidden="true">Next</span>
                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M4.167 10h11.666m0 0L10 4.167M15.833 10 10 15.833" stroke="var(--body-color)" stroke-width="1.67" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                  </a>
                </li>
              </ul>
            </nav>
          </section>
        </div>
      </div>
    </main>
  
 <script type="text/javascript">
	$(document).ready(function () {
	    $(".festival_detail").on("click", function () {
	    	self.location = "/enjoy/festival/detail";
	    });
	});
</script>
  
<%@include file="./includes/footer.jsp"%>