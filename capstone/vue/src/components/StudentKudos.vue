<template>
  <div class="student-kudos">
    <p id="student-points">Current Student Points: {{ this.totalPoints }}</p>
    <table class="list-kudos">
      <tr>
        <!-- <th>Kudo Id</th> -->
        <th>Awarded By</th>
        <th>Kudo Type:</th>
        <th>Points</th>
        <th>Comments</th>
      </tr>
      <tr
        v-for="kudo in this.$store.state.studentKudos"
        v-bind:key="kudo.id"
        v-bind:value="kudo.id"
      >
        <!-- <td>{{ kudo.id }}</td> -->
        <td>{{ kudo.firstName }} {{ kudo.lastName }}</td>
        <td>{{ kudo.kudoTypeName }}</td>
        <td>{{ kudo.kudoTypeValue }}</td>
        <td>{{ kudo.message }}</td>
      </tr>
    </table>
  </div>
</template>

<script>
import kudoService from "../services/KudosService";
import PointService from "../services/PointService";
export default {
  name: "StudentKudos",
  props: {
    studentId: Number,
  },
  data() {
    return {
      totalPoints: 0,
      kudoType: Object,
      teacherProfile: Object,
    };
  },
  methods: {
    getKudosByStudentId() {
      kudoService.getKudosByStudentId(this.studentId).then((response) => {
        this.$store.commit("SET_STUDENT_KUDOS", response.data);
      });
    },

    getCurrentScore() {
      PointService.getPointsByStudentId(this.studentId).then((response) => {
        this.totalPoints = response.data;
      });
    },
  },
  created() {
    this.getKudosByStudentId();
    this.getCurrentScore();
  },
};
</script>

<style scoped>
.kudo-list {
  border: 1px solid black;
  font-size: large;
  border-radius: 5px;
  display: block;
  align-items: center;
  justify-content: center;
  font-family: Arial, Helvetica, sans-serif;
  font-weight: bold;
  background-color: rgba(255, 255, 255, 0.25);
  padding-left: 100px;
  padding-right: 100px;
  padding-bottom: 100px;
  font-size: medium;
  font-weight: normal;
}
p {
  text-align: center;
}
th {
  border: 1px solid black;
  border-radius: 5px;
  background-color: white;
  text-align: center;
  padding-left: 50px;
  padding-right: 50px;
}
td {
  padding: 10px;
  border-radius: 5px;
  border: 1px solid black;
  text-align: center;
  background-color: white;
}
</style>