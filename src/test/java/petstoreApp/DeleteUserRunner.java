package petstoreApp;

import com.intuit.karate.junit5.Karate;

public class DeleteUserRunner {
    @Karate.Test
    Karate testDeleteUser() {
        return Karate.run("features/DeleteUser").relativeTo(getClass());
    }
}
