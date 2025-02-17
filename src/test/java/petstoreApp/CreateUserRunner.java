package petstoreApp;

import com.intuit.karate.junit5.Karate;

public class CreateUserRunner {
    @Karate.Test
    Karate testCreateUser() {
        return Karate.run("features/CreateUser").tags("@createUserSuccessfully").relativeTo(getClass());
    }
}
