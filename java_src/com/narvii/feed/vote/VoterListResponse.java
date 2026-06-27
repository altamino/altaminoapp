package com.narvii.feed.vote;

import android.text.TextUtils;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class VoterListResponse extends UserListResponse {

    @JsonDeserialize(using = VotedValueMapDeserializer.class)
    public HashMap<String, Integer> votedValueMap;

    public User getUser(int i) {
        if (list() == null || i >= list().size()) {
            return null;
        }
        return list().get(i);
    }

    public int getVotedValue(User user) {
        return getVotedValue(user == null ? null : user.uid);
    }

    public int getVotedValue(String str) {
        Integer num;
        HashMap<String, Integer> map = this.votedValueMap;
        if (map == null || str == null || (num = map.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    public static class VotedValueMapDeserializer extends JsonDeserializer<HashMap<String, Integer>> {
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public HashMap<String, Integer> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            HashMap<String, Integer> map = new HashMap<>();
            while (jsonParser.nextToken() != JsonToken.END_OBJECT) {
                String currentName = jsonParser.getCurrentName();
                if (!TextUtils.isEmpty(currentName)) {
                    jsonParser.nextToken();
                    map.put(currentName, Integer.valueOf(jsonParser.getIntValue()));
                }
            }
            return map;
        }
    }
}
