<template>
  <body>
    <div>
      <h2>Send A Kudo!</h2>

      <form v-on:submit.prevent action="submit">
        <label for="StudentId"
          >Student Name:
          <select v-model="kudo.studentId" id="StudentId" name="StudentId">
            <option
              v-for="student in this.$store.state.studentProfiles"
              v-bind:key="student.id"
              v-bind:value="student.id"
            >
              {{ student.firstName }} {{ student.lastName }}
            </option>
          </select>
        </label>
        <label for="kudoType" class="sr-only"
          >Kudo Type:

          <select v-model="kudo.typeId" name="kudo-type" id="kudo-type">
            <option
              v-for="kudoType in this.$store.state.kudoTypes"
              v-bind:key="kudoType.id"
              v-bind:value="kudoType.id"
            >
              {{ kudoType.name }} Points: {{ kudoType.value }}
            </option>
          </select>
        </label>

        <label for="Comments"
          >Comments:<br />
          <input
            v-model="kudo.message"
            type="text"
            id="Comments"
            name="Comments" /><br
        /></label>
        <button type="submit" v-on:click="saveKudo()" class="comment-box">
          Send
        </button>
      </form>
    </div>
  </body>
</template>

  <script>
import kudoService from "../services/KudosService";
import studentService from "../services/StudentService";

export default {
  data() {
    return {
      kudo: {
        studentId: "",
        typeId: "",
        message: "",
      },
    };
  },
  methods: {
    saveKudo() {
      kudoService.SendKudos(this.kudo).then((response) => {
        if (response.status === 201) {
          this.kudo.studentId = "";
          this.kudo.typeId = "";
          this.kudo.message = "";
        }
      });
    },
    getKudoTypes() {
      kudoService.getKudoTypes().then((response) => {
        // if (response.status === 200) {
        this.$store.commit("SET_KUDO_TYPES", response.data);
      });
    },
    getStudentProfiles() {
      studentService.getStudentProfiles().then((response) => {
        this.$store.commit("SET_STUDENT_PROFILES", response.data);
      });
    },
  },
  created() {
    this.getKudoTypes();
    this.getStudentProfiles();
  },
};
</script>

<style scoped>
.send-kudo {
  display: grid;
  align-items: center;
  justify-content: center;
  grid-gap: 7px;
}
img.logo {
  margin: auto;
  display: block;
  width: 200px;
  height: auto;
}
h1 {
  display: grid;
  align-items: center;
  justify-content: center;
  font-family: Arial, Helvetica, sans-serif;
  color: darkorange;
}
h2 {
  display: grid;
  grid-area: left;
  align-items: center;
  justify-content: center;
  font-family: Arial, Helvetica, sans-serif;
  color: black;
  font-weight: normal;
}
form {
  display: grid;
  grid-area: auto;
  align-items: center;
  justify-content: center;
  font-family: Arial, Helvetica, sans-serif;
  margin: 10px;
}
label {
  float: left;
  clear: none;
  display: block;
  padding: 0px 0em 20px 20px;
}

input {
  align-items: center;
  justify-content: center;
  margin: 0px 0px 0px 0px;
  border-radius: 5px;
}
#Comments {
  padding-left: 50px;
  padding-right: 50px;
  padding-bottom: 100px;
}
</style>
  
