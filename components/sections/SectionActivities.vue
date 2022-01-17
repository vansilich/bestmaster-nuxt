<template>

    <section class="wrapper-outer section-activities">
        <div class="section-inner">
            <h2 class="section-activities__title section-heading">Направления деятельности</h2>

            <div class="activities-wrapper">
                <ul class="activities-list">
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Лечебный массаж (классический, спортивный, рефлекторно сегментарный, соединительнотканный, традиционный китайский точечный массаж, детский массаж. ЛФК)</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Методики мануальной терапии</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Остеопатические техники</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Глубокотканный массаж</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Кинезиоейпирование тела и лица</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Техники коррекции фигуры (тайский slim массаж, антицеллюлитный массаж, испанский биоваскулярный массаж (лимфодренаж)</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Холистический массаж (для мужчин, для женщин)</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Испанский хиромассаж тела и лица ( миоструктурный, биоваскулярный, антистрессовый)</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Миопластический массаж тела</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Абдоминальный массаж живота</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Русский спа массаж</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Тайский массаж стоп (северная тайская школа)</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Тайский точечный массаж</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">1000 приемов спа массажа</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Пресс – ролинг массаж</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Контрастная стоун терапия</p>
                    </li>
                    <li class="activities-list__item">
                        <span class="activities-list__dot"></span>
                        <p class="activities-list__text">Гречишный массаж</p>
                    </li>
                </ul>
            </div>
        </div>
    </section>

</template>

<script>
export default {
    name: "SectionActivities"
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.section-inner{
    display: flex;
    flex-direction: column;
    align-items: center;
}

.section-activities{

    &__title{
        color: variables.$main-fc;
    }
}

.activities-wrapper{
    display: flex;
    justify-content: center;

    @media only screen and (max-width: 539px) {
        width: 95%;
    }
}

.activities-list{
    padding: 0;
    margin: 20px 0 40px 0;

    &__item{
        display: flex;
        align-items: center;
        list-style: none;
        color: variables.$main-fc;
    }

    &__item:not(:last-child){
        margin-bottom: 20px;
    }

    &__dot{
        width: 15px;
        height: 15px;
        margin-right: 20px;
        border-radius: 100%;
        background-color: #FFFFFF;
        display: block;
        box-shadow: 0 0 15px #FFFFFF;
    }

    &__text{
        width: 100%;
        font-size: 19px;
    }

    @media only screen and (min-width: 1140px) {
        width: 900px;
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
        width: 900px;
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {
        width: 600px;
    }
    @media only screen and (max-width: 719px) and (min-width: 540px) {}
    @media only screen and (max-width: 539px) {
        &__dot{
            margin-right: 15px;
        }

        &__text{
            font-size: 16px;
        }
    }
}

</style>
