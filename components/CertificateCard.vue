<template>

    <div class="electronic-certificate">

        <img class="electronic-certificate__image" :src="require(`~/assets/img/certificates/${photo}`)" alt="bestmaster-massage.ru">

        <div class="electronic-certificate__bottom">
            <p class="electronic-certificate__price">
              {{ price }} руб.
            </p>
            <button class="get-btn electronic-certificate__get-btn" @click="$nuxt.$emit('purchaseStock', id)">
                <span class="get-btn__text">заказать</span>
            </button>
        </div>
    </div>

</template>

<script>
export default {
    name: "StockCard",
    props: {
        id: Number,
        price: Number,
        photo: String,
    },
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.electronic-certificate{
    border-radius: 10px 0 0 10px;
    display: flex;
    flex-direction: column;
    justify-items: center;
    align-items: center;
    margin-bottom: 50px;

    &__image{
        width: 300px;
        height: 425px;
    }

    &__bottom{
        margin-top: 15px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 100%;
    }

    &__price{
        color: #FFFFFF;
        font-size: 28px;
        font-family: 'Oswald', sans-serif;
        font-weight: 400;
    }
}

.get-btn{
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #FFFFFF;
    cursor: pointer;
    border: none;
    border-radius: 10px;
    padding: 15px 30px;

    &__text{
          color: variables.$third-fc;
      }
}

</style>
