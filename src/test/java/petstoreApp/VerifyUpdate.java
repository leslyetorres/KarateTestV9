package petstoreApp;

import com.intuit.karate.junit5.Karate;

public class VerifyUpdate {
    @Karate.Test
    Karate testVerifyUser() {
        return Karate.run("features/VerifiyUserUpdate").relativeTo(getClass());
    }
}
