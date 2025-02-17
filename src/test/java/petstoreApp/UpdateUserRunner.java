package petstoreApp;

import com.intuit.karate.junit5.Karate;

public class UpdateUserRunner {
    @Karate.Test
    Karate testUpdateUser() {
        return Karate.run("features/UpdateUser").relativeTo(getClass());
    }
}
