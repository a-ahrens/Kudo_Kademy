<template>
  <body>
    <div id="login" class="text-center">
      <form class="form-signin" @submit.prevent="login">
        <h2 class="h2">Welcome!</h2>
        <h2 class="h2">Please Sign In</h2>
        <div class="alert alert-danger" role="alert" v-if="invalidCredentials">
          Invalid username and password!
        </div>
        <div
          class="alert alert-success"
          role="alert"
          v-if="this.$route.query.registration"
        >
          Thank you for registering, please sign in.
        </div>
        <label for="username" class="sr-only">Username</label>
        <input
          type="text"
          id="username"
          class="form-control"
          placeholder="Username"
          v-model="user.username"
          required
          autofocus
        />
        <label for="password" class="sr-only">Password</label>
        <input
          type="password"
          id="password"
          class="form-control"
          placeholder="Password"
          v-model="user.password"
          required
        />
        <router-link class="register" :to="{ name: 'register' }"
          ><h1>Need an account?</h1></router-link
        >
        <button type="submit">Sign in</button>
      </form>
    </div>
  </body>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: "",
      },
      invalidCredentials: false,
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then((response) => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            if (response.data.user.authorities[0].name == "ROLE_PARENT") {
              this.$router.push({ name: "parent" });
            } else if (
              response.data.user.authorities[0].name == "ROLE_TEACHER"
            ) {
              this.$router.push({ name: "teacher" });
            } else if (response.data.user.authorities[0].name == "ROLE_ADMIN") {
              this.$router.push({ name: "admin" });
            } else if (
              response.data.user.authorities[0].name == "ROLE_STUDENT"
            ) {
              this.$router.push({ name: "student" });
            } else {
              this.$router.push({ name: "home" });
            }
          }
        })
        .catch((error) => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    },
  },
};
</script>

<style scoped>
.form-signin {
  display: grid;
  align-items: center;
  justify-items: center;
  justify-content: center;
  width: 800px;
  /* height: 300px; */
  font-family: Arial, Helvetica, sans-serif;
  font-size: 22pt;
}
.form-control {
  display: grid;
  height: 200%;
  grid-row-gap: 100px;
}

.h2 {
  display: grid;
  align-items: center;
  text-align: center;
  justify-content: center;
  font-family: Arial, Helvetica, sans-serif;
  font-size: xx-large;
  color: darkorange;

  letter-spacing: 2px;
}
#login {
  background-color: rgba(255, 255, 255, 0.25);
  padding-bottom: 500px;
  /* padding-left: 200px;
  padding-right: 200px; */
}
body {
  padding-left: 300px;
  padding-right: 300px;
}

label {
  padding: 20px;
}
.register {
  padding: 20px;
}
.sr-only {
  color: black;
  font-size: medium;
}

button {
  width: 180px;
}
h1 {
  display: grid;
  align-items: center;
  justify-content: center;
  font-family: Arial, Helvetica, sans-serif;

  text-decoration: underline;
  font-size: small;
  letter-spacing: 2px;
}
</style>