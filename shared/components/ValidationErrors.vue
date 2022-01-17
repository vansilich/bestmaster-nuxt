<template>
    <div>
        <p class="error"
             v-for="(error, index) in errors"
             :key="key(index)">

            {{ error }}
        </p>
    </div>
</template>

<script>
export default {
    name: "ValidationErrors",
    props: [
        'errors'
    ],
    methods: {
        key(index) {
            return `validation_error_${index}_${Math.random()}`;
        }
    }
}
</script>

<style lang="scss" scoped>

</style>
