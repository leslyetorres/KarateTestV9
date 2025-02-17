package petstoreApp;

import com.intuit.karate.junit5.Karate;

public class SearchUserRunner {
     @Karate.Test
    Karate testSearchUser() {
        return Karate.run("features/SearchUser").relativeTo(getClass());
    }

}
