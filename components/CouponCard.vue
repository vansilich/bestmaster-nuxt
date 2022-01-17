<template>

    <div class="card">
        <div class="card-body card__content">
            <h3 class="card-body__text">{{ title }}</h3>

            <img class="card-body__logo" src="~/assets/img/logo.png" alt="bestmaster-massage.ru">
        </div>

        <button class="get-btn card__get-btn" @click="$nuxt.$emit('purchaseStock', id)">
            <span class="get-btn__text">получить</span>
        </button>
    </div>

</template>

<script>
export default {
    name: "CouponCard",
    props: {
        id: Number,
        title: String,
    }
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.card{
    background-color: #000000;
    width: 480px;
    height: 230px;
    border-radius: 10px;
    padding: 40px 60px;
    position: relative;

    &__content{
        width: 100%;
        height: 100%;
    }

    &__get-btn{
        width: 160px;
        height: 60px;
        border: none;
        border-radius: 10px;
        position: absolute;
        top: calc(100% - 30px);
        left: calc(50% - 80px);
    }

    @media only screen and (min-width: 1140px) {
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
        width: 430px;
        height: 230px;
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {
    }
    @media only screen and (max-width: 719px) and (min-width: 540px) {
    }
    @media only screen and (max-width: 539px) {
        width: 95%;
        height: auto;
    }
}

.get-btn{
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #FFFFFF;
    cursor: pointer;

    &__text{
        color: variables.$third-fc;
    }
}

.card-body{
    display: flex;
    align-items: center;
    justify-content: space-between;

    &__text{
        width: 170px;
        color: #FFFFFF;
    }

    &__logo{
        width: 80px;
        height: 80px;
        border-radius: 100%;
        -webkit-transform: translate3d(0, 0px, 5px);
        animation: shadow 1s infinite alternate;
    }

    @media only screen and (min-width: 1140px) {
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {
    }
    @media only screen and (max-width: 719px) and (min-width: 540px) {
    }
    @media only screen and (max-width: 539px) {
        flex-direction: column;

        &__text{
            width: 100%;
            text-align: center;
            order: 2;
            margin: 50px 0 10px 0;
        }

        &__logo{
            box-shadow: 0 0 35px 10px white;
            animation: none;
            order: 1;
        }
    }
}

@keyframes shadow {
    from {
        box-shadow: 0 0 35px 10px white;
    }
    to {
        box-shadow: 0 0 40px 10px white;
    }
}
</style>
