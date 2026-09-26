package com.narvii.model.api;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class CategoryPreviewResponse extends ApiResponse {

    @JsonDeserialize(using = PreviewDeserializer.class)
    public HashMap<String, List<Item>> itemPreviews;

    public static class PreviewDeserializer extends JsonDeserializer<HashMap<String, List<Item>>> {
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public HashMap<String, List<Item>> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            HashMap<String, List<Item>> map = new HashMap<>();
            Feed.FeedDeserializer feedDeserializer = new Feed.FeedDeserializer();
            while (true) {
                String currentName = null;
                ArrayList arrayList = null;
                while (true) {
                    JsonToken jsonTokenNextToken = jsonParser.nextToken();
                    if (jsonTokenNextToken == JsonToken.END_OBJECT) {
                        return map;
                    }
                    if (JsonToken.FIELD_NAME == jsonTokenNextToken) {
                        currentName = jsonParser.getCurrentName();
                    } else if (JsonToken.START_ARRAY == jsonTokenNextToken) {
                        arrayList = new ArrayList();
                    } else {
                        if (JsonToken.END_ARRAY == jsonTokenNextToken) {
                            break;
                        }
                        if (JsonToken.START_OBJECT == jsonTokenNextToken) {
                            Feed feedDeserialize = feedDeserializer.deserialize(jsonParser, deserializationContext);
                            if ((feedDeserialize instanceof Item) && arrayList != null) {
                                arrayList.add((Item) feedDeserialize);
                            }
                        }
                    }
                }
                if (currentName != null && arrayList != null) {
                    map.put(currentName, arrayList);
                }
            }
        }
    }
}
