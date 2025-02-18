package petstoreApp;

import com.intuit.karate.junit5.Karate;

public class CRUDTestRunner {
    @Karate.Test
    Karate testVerifyUser() {
        return Karate.run("features/UserCRUD.feature").relativeTo(getClass());
    }
}
