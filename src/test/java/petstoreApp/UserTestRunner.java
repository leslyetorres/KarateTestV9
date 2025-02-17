package petstoreApp;

import com.intuit.karate.junit5.Karate;

public class UserTestRunner {

    @Karate.Test
    Karate testCreateUser() {
        return Karate.run("features/CreateUser").relativeTo(getClass());
    }

    @Karate.Test
    Karate testSearchUser() {
        return Karate.run("features/SearchUser").relativeTo(getClass());
    }

    @Karate.Test
    Karate testUpdateUser() {
        return Karate.run("features/UpdateUser").relativeTo(getClass());
    }

    
    @Karate.Test
    Karate testVerifyUser() {
        return Karate.run("features/VerifiyUserUpdate").relativeTo(getClass());
    }
    @Karate.Test
    Karate testDeleteUser() {
        return Karate.run("features/DeleteUser").relativeTo(getClass());
    }
}