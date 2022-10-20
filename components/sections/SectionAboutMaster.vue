<template>

    <section class="section-about-master">
        <div class="section-inner">
            <h2 class="section-about-master__title section-heading">Обо мне</h2>

            <div class="master-content section-about-master__content">
                <img class="master-content__media" src="~/assets/img/master-photo.jpeg" alt="Дмитрий Бесхлебнов">

                <div class="master-content__quotation">
                    <svg class="bg-quote bg-quote-start" width="70" height="64" viewBox="0 0 70 64" fill="none"
                         xmlns="http://www.w3.org/2000/svg">
                        <path d="M35 45.3333C35 29.0285 43.0769 10.6667 56.5385 0L70 10.6667C61.9231 24 59.6795 36.4444 59.2308 45.3333V64H35V45.3333Z" fill="#D9D9D9"/>
                        <path d="M0 45.3333C0 29.0285 8.07692 10.6667 21.5385 0L35 10.6667C26.9231 24 24.6795 36.4444 24.2308 45.3333V64H0V45.3333Z" fill="#D9D9D9"/>
                    </svg>

                    <p class="master-quotation">
                        Я Дмитрий Бесхлебнов, являюсь мастером высшей категории в своем деле 
                        и вхожу в ТОП-5 мастеров России. Я профессионал с многолетним опытом, 
                        и помимо красного медицинского диплома (лечебное дело), проходил курсы 
                        повышения квалификации в Тайланде, Италии и Турции. Так же занимал призовые места 
                        на различных соревнованиях по массажу. Основное направление деятельности реабилитация 
                        и восстановление тела. Вот уже 12 лет я помогаю людям быть здоровыми и красивыми.
                    </p>

                    <svg class="bg-quote bg-quote-end" width="70" height="64" viewBox="0 0 70 64" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M35 45.3333C35 29.0285 43.0769 10.6667 56.5385 0L70 10.6667C61.9231 24 59.6795 36.4444 59.2308 45.3333V64H35V45.3333Z" fill="#D9D9D9"/>
                        <path d="M0 45.3333C0 29.0285 8.07692 10.6667 21.5385 0L35 10.6667C26.9231 24 24.6795 36.4444 24.2308 45.3333V64H0V45.3333Z" fill="#D9D9D9"/>
                    </svg>
                </div>
            </div>
        </div>
    </section>

</template>

<script>
export default {
    name: "SectionAboutMaster"
}
</script>

<style lang="scss" scoped>

.section-about-master{
    padding: 20px 0;

    &__title{
        color: #FFFFFF;
        margin-bottom: 50px;
    }
}

.master-content{
    display: flex;
    align-items: center;
    justify-content: space-around;

    &__media{
        width: 320px;
        height: 480px;
        border-radius: 10px;
    }

    &__quotation{
        width: 570px;
        position: relative;
    }

    @media only screen and (max-width: 959px) and (min-width: 720px) {
        flex-direction: column;

        &__media{
            margin-bottom: 80px;
        }
    }
    @media only screen and (max-width: 719px) and (min-width: 540px) {
        flex-direction: column;

        &__media{
            margin-bottom: 80px;
        }
    }
    @media only screen and (max-width: 539px) {
        flex-direction: column;

        &__quotation{
            width: 95%;
        }

        &__media{
            margin-bottom: 110px;
        }
    }
}

.master-quotation{
    color: #FFFFFF;
    font-size: 21px;

    @media only screen and (max-width: 539px) {
        font-size: 18px;
        line-height: 24px;
    }
}

.bg-quote{
    position: absolute;

    &-start{
        top: -80px;
    }

    &-end{
        right: 0;
        transform: rotate(180deg);
    }
}

.section-about-master{
  margin-bottom: 50px;

}

</style>
