<template>
    <div>
        <div>
            <h1>About Us</h1>
            <p class="message">Meet the team that brings the kudos to the kiddos.</p>
        </div>
        <div class="profile">
        <div>
          <a href="https://www.linkedin.com/in/jimcastillejo//">
          <img src="https://media.licdn.com/dms/image/C4E03AQGdG68vCB8fxQ/profile-displayphoto-shrink_400_400/0/1589820732413?e=1678320000&v=beta&t=UhOZORS2WeYtkm0CpTbDgYW_JVZdy2VBlb53B55mhv0" alt="">
          </a>
          <h2>Jimmy Castillejo</h2>
        </div>
        <div>
          <a href="https://www.linkedin.com/in/laura-diaco/">
          <img src="https://media.licdn.com/dms/image/C5603AQHIXaDW0NgcKA/profile-displayphoto-shrink_400_400/0/1656860445505?e=1678320000&v=beta&t=EPB8JpVSGh68yY5sf03rXVMfho1_4jrfYKd7Wqs88Xo" alt="">
          </a>
          <h2>Laura Diaco</h2>
        </div>
        <div>
          <a href="https://www.linkedin.com/in/katiekasberg//">
          <img src="https://media.licdn.com/dms/image/D5603AQFslJyK2OCRpQ/profile-displayphoto-shrink_400_400/0/1672539862316?e=1678320000&v=beta&t=wV1xbQJRNNZ9UAURvPRW5_h5QaZ7raPGFPXlsglJmCg" alt="">
          </a>
          <h2>Katie Kasberg</h2>
        </div>
        <div>
          <a href="https://www.linkedin.com/in/anthony-ahrens/">
          <img src="https://media.licdn.com/dms/image/C4E03AQFEZzIe_AK25w/profile-displayphoto-shrink_400_400/0/1614627841237?e=1678320000&v=beta&t=4mFYVR_zmL7KQlD1Qit0xe2Ux3Ig_OZ2JiThAgK1fyg" alt="">
          </a>
          <h2>Anthony Ahrens</h2>
        </div>
        </div>
    </div>
</template>

<script>
export default {};
</script>

<style scoped>
.profile {
    display: flex;
    gap: 20px;
    justify-items:space-between;
    text-align: center;
    font-family:Arial, Helvetica, sans-serif;
}
.message{
    text-align: center;
    font-family:Arial, Helvetica, sans-serif;
}

img{
    border-radius: 50%;
    padding-top: 50px
}

</style>