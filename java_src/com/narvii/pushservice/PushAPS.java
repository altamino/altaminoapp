package com.narvii.pushservice;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.notice.AccountNotice;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.util.JacksonUtils;
import java.io.IOException;

@JsonDeserialize(using = APSDeserializer.class)
/* loaded from: classes.dex */
public class PushAPS {
    public int badge;
    public String message;
    public String sound;
    public String title;

    /* loaded from: classes3.dex */
    public static class APSDeserializer extends JsonDeserializer<PushAPS> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public PushAPS deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonNode jsonNode = (JsonNode) JacksonUtils.DEFAULT_MAPPER.readTree(jsonParser);
            PushAPS pushAPS = new PushAPS();
            JsonNode jsonNode2 = jsonNode.get("badge");
            pushAPS.badge = jsonNode2 == null ? 0 : jsonNode2.intValue();
            JsonNode jsonNode3 = jsonNode.get("sound");
            pushAPS.sound = jsonNode3 == null ? null : jsonNode3.textValue();
            JsonNode jsonNode4 = jsonNode.get(NotificationChannelHelper.CHANNEL_ALERT);
            if (jsonNode4 == null) {
                JsonNode jsonNode5 = jsonNode.get("title");
                pushAPS.title = (jsonNode5 == null || !jsonNode5.isTextual()) ? null : jsonNode5.textValue();
                JsonNode jsonNode6 = jsonNode.get(AccountNotice.LEVEL_MESSAGE);
                if (jsonNode6 != null && jsonNode6.isTextual()) {
                    strTextValue = jsonNode6.textValue();
                }
                pushAPS.message = strTextValue;
            } else if (jsonNode4.isObject()) {
                JsonNode jsonNode7 = jsonNode4.get("title");
                pushAPS.title = jsonNode7 == null ? null : jsonNode7.textValue();
                JsonNode jsonNode8 = jsonNode4.get(TtmlNode.TAG_BODY);
                pushAPS.message = jsonNode8 != null ? jsonNode8.textValue() : null;
            } else if (jsonNode4.isTextual()) {
                pushAPS.message = jsonNode4.textValue();
            }
            return pushAPS;
        }
    }
}
