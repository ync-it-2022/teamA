<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./includes/header.jsp"%>

<main id="rlr-main" class="rlr-main">
    <!-- Blog Element -->
    <div class="container-xxl">
      <article class="rlr-article rlr-article-single--v2">
        <header class="rlr-article__header">
          <span class="rlr-article__header__timestamp">시작일</span>
          <span class="rlr-article__header__timestamp"> ~ </span>
          <span class="rlr-article__header__timestamp">까지</span>
          <h1 class="type-h1">삿포로 눈축제</h1>
        </header>
        <!-- Media Slider -->
      <aside class="row">
        <div class="col-md-2 rlr-media">
          <!-- Media sidebar -->
          <div class="splide rlr-media--wrapper rlr-media--sidebar rlr-js-thumbnail-media">
            <!-- Arrows -->
            <div class="splide__arrows">
              <button class="rlr-media__arrow splide__arrow splide__arrow--prev">
                <svg width="10" height="16" viewBox="0 0 10 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M1.889 14.942 8.47 8.36 1.889 1.778" stroke="var(--white)" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                </svg>
              </button>
              <button class="rlr-media__arrow splide__arrow splide__arrow--next">
                <svg width="10" height="16" viewBox="0 0 10 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M1.889 14.942 8.47 8.36 1.889 1.778" stroke="var(--white)" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                </svg>
              </button>
            </div>
            <!-- Thumbnails -->
            <div class="splide__track rlr-media__strack">
              <ul id="image-preview-thumb" class="splide__list">
                <li class="splide__slide rlr-media__image-view">
                  <img src="/resources/assets/images/product-images/small/photo-1520250497591-112f2f40a3f4_469x250.jpg" alt="media image" />
                </li>
                <li class="splide__slide rlr-media__image-view">
                  <img src="/resources/assets/images/product-images/small/photo-1482635334133-de0ee55e5864_469x250.jpg" alt="media image" />
                </li>
                <li class="splide__slide rlr-media__image-view">
                  <img src="/resources/assets/images/product-images/small/photo-1526308422422-6a57b9567eff_469x250.jpg" alt="media image" />
                </li>
                <li class="splide__slide rlr-media__image-view">
                  <img src="/resources/assets/images/product-images/small/photo-1528127269322-539801943592_469x250.jpg" alt="media image" />
                </li>
                <li class="splide__slide rlr-media__image-view">
                  <img src="/resources/assets/images/product-images/small/photo-1593186344142-ef775a6e596f_469x250.jpg" alt="media image" />
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!-- Media main image carousel -->
        <div class="col-md-10 rlr-media">
          <div class="splide rlr-media--wrapper rlr-js-media">
            <!-- Arrows -->
            <div class="splide__arrows">
              <button class="rlr-media__arrow splide__arrow splide__arrow--prev">
                <svg width="10" height="16" viewBox="0 0 10 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M1.889 14.942 8.47 8.36 1.889 1.778" stroke="var(--white)" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                </svg>
              </button>
              <button class="rlr-media__arrow splide__arrow splide__arrow--next">
                <svg width="10" height="16" viewBox="0 0 10 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M1.889 14.942 8.47 8.36 1.889 1.778" stroke="var(--white)" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                </svg>
              </button>
            </div>
            <!-- Media main images -->
            <div class="splide__track rlr-media__strack">
              <ul id="image-preview" class="splide__list">
                <li class="splide__slide rlr-media__image-view">
                  <img src="/resources/assets/images/product-images/large/photo-1520250497591-112f2f40a3f4_1328x656.jpg" alt="media image" />
                </li>
                <li class="splide__slide rlr-media__image-view">
                  <img src="/resources/assets/images/product-images/large/photo-1482635334133-de0ee55e5864_1328x656.jpg" alt="media image" />
                </li>
                <li class="splide__slide rlr-media__image-view">
                  <img src="/resources/assets/images/product-images/large/photo-1526308422422-6a57b9567eff_1328x656.jpg" alt="media image" />
                </li>
                <li class="splide__slide rlr-media__image-view">
                  <img src="/resources/assets/images/product-images/large/photo-1528127269322-539801943592_1328x656.jpg" alt="media image" />
                </li>
                <li class="splide__slide rlr-media__image-view">
                  <img src="/resources/assets/images/product-images/large/photo-1593186344142-ef775a6e596f_1328x656.jpg" alt="media image" />
                </li>
              </ul>
            </div>
            <!-- Media pagination counter -->
            <div class="rlr-media__custom-pagination rlr-js-custom-pagination">
              <svg width="18" height="14" viewBox="0 0 18 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path
                  d="M1.2 0C.542 0 0 .558 0 1.235v11.53C0 13.442.542 14 1.2 14h15.6c.658 0 1.2-.558 1.2-1.235V1.235C18 .558 17.458 0 16.8 0H1.2zm0 .824h15.6c.228 0 .4.176.4.411v9.844l-3.506-3.95a.4.4 0 0 0-.588 0l-2.862 3.126L6.1 5.488a.4.4 0 0 0-.362-.135.4.4 0 0 0-.232.129L.8 10.687V1.235C.8 1 .972.823 1.2.823zm9.2 2.058c-.879 0-1.6.743-1.6 1.647 0 .905.721 1.647 1.6 1.647.879 0 1.6-.742 1.6-1.647 0-.904-.721-1.647-1.6-1.647zm0 .824c.447 0 .8.363.8.823 0 .46-.353.824-.8.824a.806.806 0 0 1-.8-.824c0-.46.353-.823.8-.823zm-4.606 2.67 5.912 6.8H1.2a.397.397 0 0 1-.4-.411v-.869l4.994-5.52zm7.6 1.64 3.806 4.285v.464a.397.397 0 0 1-.4.411h-4.019l-2-2.303 2.613-2.856z"
                  fill="#212529"
                ></path>
              </svg>
              <span class="rlr-media__page-counter rlr-js-page"> 0 </span>
            </div>
          </div>
        </div>
      </aside>
        <div class="rlr-article__wrapper">
          <div class="content">
            <div class="content__highlight">
              <h2 class="type-h3">세계에서 가장 유명한 눈축제</h2>
            </div>
            <p class="type-lead">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper mattis lorem non. Ultrices praesent amet ipsum justo massa. Eu dolor aliquet risus gravida nunc at feugiat consequat purus. Non massa enim vitae duis mattis. Vel in ultricies vel
              fringilla.
            </p>
            <p class="type-lead">Nunc commodo eros velit, vitae tempor purus laoreet in. Fusce a condimentum magna, sit amet ultricies nibh. Vivamus tristique enim non accumsan ornare. Cras tincidunt ultrices libero nec bibendum.</p>
            <p class="type-lead">
              Cras dignissim eros ullamcorper sapien porttitor, eget laoreet ipsum dapibus. Nulla tincidunt pulvinar ante, in sollicitudin massa iaculis quis. Praesent ac venenatis mi. Vivamus risus dui, convallis nec risus a, luctus gravida ipsum. Donec erat libero, euismod
              nec quam nec, congue maximus urna. Fusce pharetra urna ut pharetra iaculis. In vitae venenatis sem, nec lacinia nibh. Pellentesque ac consectetur lectus.
            </p>
            <p class="type-lead">Mauris vitae bibendum enim. Curabitur luctus ligula purus, sit amet venenatis orcijar Vivamus tristique enim non accumsan ornare. Cras tincidunt ultrices libero nec bibendum.</p>   
          </div>
        </div>
      </article>
    </div>
  </main>
  
<%@include file="./includes/footer.jsp"%>