<template>
  <body>
    <div
      class="teacher-nav"
      v-if="$store.state.user.authorities[0].name === 'ROLE_TEACHER'"
      style="display: inline"
    >
      <aside>
        <nav>
          <ul>
            <li>
              <router-link v-bind:to="{ name: 'teacher' }">
                <button>Home</button>
              </router-link>
            </li>
            <li>
              <router-link
                v-bind:to="{
                  name: 'TeacherProfile',
                  params: { id: $store.state.user.id },
                }"
              >
                <button>My Profile</button>
              </router-link>
            </li>
            <li>
              <router-link v-bind:to="{ name: 'SendKudos' }">
                <button>Give Kudos</button>
              </router-link>
            </li>
            <!-- <li>
              <button><a href="#">Behavioral Report</a></button>
            </li> -->
            <li>
              <router-link v-bind:to="{ name: 'searchbystudent' }">
                <button>Search Students</button>
              </router-link>
            </li>
            <li>
              <router-link v-bind:to="{ name: 'createannouncement' }">
                <button>Make Announcements</button>
              </router-link>
            </li>
            <li>
              <router-link v-bind:to="{ name: 'newClass' }">
                <button>Create Class</button>
              </router-link>
            </li>
            <li>
              <router-link v-bind:to="{ name: 'manage-classes' }">
                <button>Manage Classes</button>
              </router-link>
            </li>
            <!-- <li>
              <button><a href="#">Classes</a></button>
            </li> -->
            <li>
              <router-link v-bind:to="{ name: 'logout' }">
                <button>Logout</button>
              </router-link>
            </li>
          </ul>
        </nav>
      </aside>
    </div>
    <div
      class="admin-nav"
      v-if="$store.state.user.authorities[0].name === 'ROLE_ADMIN'"
      style="display: inline"
    >
      <aside>
        <nav>
          <ul>
            <li>
              <router-link v-bind:to="{ name: 'admin' }">
                <button>Home</button>
              </router-link>
            </li>
            <li>
              <router-link
                v-bind:to="{
                  name: 'AdminProfile',
                  params: { id: this.$store.state.user.id },
                }"
                ><button>My Profile</button></router-link
              >
            </li>
            <li>
              <router-link v-bind:to="{ name: 'SendKudos' }"
                ><button>Give Kudos</button></router-link
              >
            </li>
            <!-- <li>
              <button><a href="#">Behavioral Report</a></button>
            </li> -->
            <li>
              <router-link v-bind:to="{ name: 'searchbystudent' }"
                ><button>Search Students</button></router-link
              >
            </li>
            <li>
              <router-link v-bind:to="{ name: 'createannouncement' }"
                ><button>Make Announcements</button></router-link
              >
            </li>
            <li>
              <router-link v-bind:to="{ name: 'newClass' }"
                ><button>Create Class</button></router-link
              >
            </li>
            <li>
              <router-link v-bind:to="{ name: 'manage-classes' }"
                ><button>Manage Classes</button></router-link
              >
            </li>
            <!-- <li>
              <button><a href="#">Add/Remove Teacher</a></button>
            </li> -->
            <li>
              <router-link v-bind:to="{ name: 'manage-kudos' }"
                ><button>Manage Kudos Categories</button></router-link
              >
            </li>
            <li>
              <router-link v-bind:to="{ name: 'logout' }"
                ><button>Logout</button></router-link
              >
            </li>
          </ul>
        </nav>
      </aside>
    </div>
    <div
      class="student-nav"
      v-if="$store.state.user.authorities[0].name === 'ROLE_STUDENT'"
    >
      <aside>
        <nav>
          <ul>
            <li>
              <router-link v-bind:to="{ name: 'student' }"
                ><button>Home</button></router-link
              >
            </li>
            <li>
              <router-link
                :to="{
                  name: 'StudentProfile',
                  params: { id: this.$store.state.user.id },
                }"
                ><button>My Profile</button></router-link
              >
            </li>
            <!-- <li>
              <button><a href="#">Kudo Report</a></button>
            </li>
            <li>
              <button><a href="#">Leaderboard</a></button>
            </li> -->
            <li>
              <router-link v-bind:to="{ name: 'rewards' }"
                ><button>Earn Kudos</button></router-link
              >
            </li>
            <li>
              <router-link v-bind:to="{ name: 'logout' }"
                ><button>Logout</button></router-link
              >
            </li>
          </ul>
        </nav>
      </aside>
    </div>
    <div
      class="parent-nav"
      v-if="$store.state.user.authorities[0].name === 'ROLE_PARENT'"
    >
      <aside>
        <nav>
          <ul>
            <li>
              <router-link v-bind:to="{ name: 'parent' }"
                ><button>Home</button></router-link
              >
            </li>
            <li>
              <router-link
                v-bind:to="{
                  name: 'ParentProfile',
                  params: { id: this.$store.state.user.id },
                }"
                ><button>My Profile</button></router-link
              >
            </li>
            <!-- <li>
              <button><a href="#">Student Report</a></button>
            </li> -->
            <li>
              <router-link v-bind:to="{ name: 'rewards' }"
                ><button>Earn Kudos</button></router-link
              >
            </li>
            <!-- <li>
              <button><a href="#">Contact Teacher</a></button>
            </li> -->
            <li>
              <router-link v-bind:to="{ name: 'logout' }"
                ><button>Logout</button></router-link
              >
            </li>
          </ul>
        </nav>
      </aside>
    </div>
    <div class="home-nav" v-if="$store.state.user.authorities[0] == []">
      <aside>
        <nav>
          <ul>
            <li>
              <router-link v-bind:to="{ name: 'home' }"
                ><button>Home</button></router-link
              >
            </li>
            <li>
              <router-link v-bind:to="{ name: 'login' }"
                ><button>Login</button></router-link
              >
            </li>
            <li>
              <router-link v-bind:to="{ name: 'about' }"
                ><button>About Us</button></router-link
              >
            </li>
          </ul>
        </nav>
      </aside>
    </div>
  </body>
</template>
<script>
export default {
  created() {
    // console.log(this.$store.state.user);
    // console.log(this.$store.state.user.authorities[0].name);
  },
};
</script>
<style scoped>
ul {
  list-style: none;
}
button {
  padding: 10px;
  margin: 10px;
  background-color: white;
  border-radius: 10%;
  border-color: orange;
  width: 150px;
  font-weight: bold;
  text-decoration: none;
}
aside {
  display: grid;
  position: fixed;
  border-collapse: collapse;
  height: 100%;
  width: 250px;
  background-color: #ffc83c57;
  /* border-right: 1px solid darkorange; */
}
html,
body {
  margin: 0;
  padding: 0;
}
</style>