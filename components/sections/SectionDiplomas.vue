<template>

    <section class="section-diplomas">
        <h2 class="section-diplomas__title section-heading">Дипломы и сертификаты</h2>

        <div class="section-inner">

            <client-only>
                <vue-slick-carousel class="diplomas-slider" v-bind="sliderSettings">

                    <template v-for="diploma in diplomas">
                        <div class="diplomas-slider__item">
                            <img class="diplomas-slider__img"
                                 v-lazy="require(`~/assets/img/diplomas/${diploma.id}.jpg`)"
                                 :alt="diploma.alt">
                        </div>
                    </template>

                    <template #prevArrow>
                        <div class="diplomas-slider__arrow diplomas-slider__arrow-prev">
                            <svg width="20" height="40" viewBox="0 0 26 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M24 2L4 22L24 42" stroke="white" stroke-width="5"/>
                            </svg>
                        </div>
                    </template>

                    <template #nextArrow>
                        <div class="diplomas-slider__arrow diplomas-slider__arrow-next">
                            <svg width="20" height="40" viewBox="0 0 26 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M2 2L22 22L2 42" stroke="white" stroke-width="5"/>
                            </svg>
                        </div>
                    </template>

                </vue-slick-carousel>
            </client-only>
        </div>
    </section>

</template>

<script>
import VueSlickCarousel from "vue-slick-carousel";
import 'vue-slick-carousel/dist/vue-slick-carousel.css';

export default {
    name: "SectionDiplomas",
    components: {
        VueSlickCarousel,
    },
    data() {
        return {
            sliderSettings: {
                arrows: true,
                slidesToShow: 3,
                speed: 400,
                responsive: [
                    {
                        breakpoint: 959,
                        settings: {
                            slidesToShow: 2,
                        }
                    },
                    {
                        breakpoint: 539,
                        settings: {
                            slidesToShow: 1,
                        }
                    },
                ],
            },
            diplomas: [
                {
                    id: 11,
                    alt: 'Диплом 3',
                },
                {
                    id: 15,
                    alt: 'Диплом 2',
                },
                {
                    id: 16,
                    alt: 'Диплом 3',
                },
                {
                    id: 19,
                    alt: 'Диплом 1',
                },
                {
                    id: 20,
                    alt: 'Диплом 2',
                },
                {
                    id: 22,
                    alt: 'Диплом 4',
                },
                {
                    id: 24,
                    alt: 'Диплом 1',
                },
                {
                    id: 1,
                    alt: 'Диплом 1',
                },
                {
                    id: 2,
                    alt: 'Диплом 2',
                },
                {
                    id: 3,
                    alt: 'Диплом 3',
                },
                {
                    id: 4,
                    alt: 'Диплом 4',
                },
                {
                    id: 5,
                    alt: 'Диплом 1',
                },
                {
                    id: 6,
                    alt: 'Диплом 2',
                },
                {
                    id: 7,
                    alt: 'Диплом 3',
                },
                {
                    id: 8,
                    alt: 'Диплом 4',
                },
                {
                    id: 9,
                    alt: 'Диплом 1',
                },
                {
                    id: 10,
                    alt: 'Диплом 2',
                },
                {
                    id: 12,
                    alt: 'Диплом 4',
                },
                {
                    id: 13,
                    alt: 'Диплом 4',
                },
                {
                    id: 14,
                    alt: 'Диплом 1',
                },
                {
                    id: 17,
                    alt: 'Диплом 4',
                },
                {
                    id: 18,
                    alt: 'Диплом 4',
                },
                {
                    id: 21,
                    alt: 'Диплом 3',
                },
                {
                    id: 23,
                    alt: 'Диплом 4',
                },
                {
                    id: 25,
                    alt: 'Диплом 2',
                },
                {
                    id: 26,
                    alt: 'Диплом 3',
                },
            ]
        }
    },
}
</script>

<style lang="scss" scoped>

.section-diplomas{

    &__title{
        padding: 20px 0;
        background-color: #FFFFFF;
    }
}

.diplomas-slider{
    margin-top: 40px;
    position: relative;
    margin-bottom: 150px;

    &__item{
        display: flex !important;
        justify-content: center;
    }

    &__img{
        height: 250px;
        width: 250px;
        user-select: none;
        -webkit-user-drag: none;
        object-fit: contain;
    }

    &__arrow{
        position: absolute;
        top: calc(100% + 20px);
        cursor: pointer;
        width: 50px;
        background-color: #202020;
        border-radius: 10px;
        display: flex;
        justify-content: center;

        &-prev{
            left: 40%;
        }

        &-next{
            right: 40%;
        }
    }

    @media only screen and (min-width: 960px) {}
    @media only screen and (max-width: 959px) and (min-width: 720px) {}
    @media only screen and (max-width: 719px) {
        &__arrow{
            &-prev{
                left: 30%;
            }

            &-next{
                right: 30%;
            }
        }
    }
    @media only screen and (max-width: 539px) {
        margin-bottom: 100px;
    }
}

</style>
