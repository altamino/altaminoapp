package com.narvii.model;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.media.MediaSelectItem;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LenientObject;
import com.narvii.util.Utils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

@JsonDeserialize(using = MediaDeserializer.class)
@JsonSerialize(using = MediaSerializer.class)
/* loaded from: classes.dex */
public class Media implements MediaSelectItem, LenientObject {
    public static final int TYPE_AUDIO = 110;
    public static final int TYPE_AUDIO_IN_PICKER = 110;
    public static final int TYPE_IMAGE = 100;
    public static final int TYPE_INTER_VIDEO = 123;
    public static final int TYPE_MUSIC = 101;
    public static final int TYPE_NONE = 0;
    public static final int TYPE_STICKER = 113;
    public static final int TYPE_VIDEO = 102;
    public static final int TYPE_YOUTUBE = 103;
    public String author;
    public String caption;
    public String coverImage;
    private int downloadProgress;
    public long duration;
    public String fileName;
    public int height;
    public String refId;
    public int type;
    public String url;
    public int width;

    @Override // com.narvii.media.MediaSelectItem
    public Media getSelectMedia() {
        return this;
    }

    @Override // com.narvii.media.MediaSelectItem
    public Object getUniqueKey() {
        return this;
    }

    public String getMediaUrl() {
        return this.url;
    }

    public boolean isVideo() {
        int i = this.type;
        return i == 102 || i == 103 || i == 123;
    }

    public boolean isImage() {
        return this.type == 100;
    }

    /* loaded from: classes3.dex */
    public static class MediaDeserializer extends JsonDeserializer<Media> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Media deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonToken jsonTokenNextToken;
            JsonToken jsonTokenNextToken2;
            Media media = new Media();
            media.type = jsonParser.nextIntValue(0);
            media.url = jsonParser.nextTextValue();
            JsonToken jsonTokenNextToken3 = jsonParser.nextToken();
            if (jsonTokenNextToken3 == JsonToken.END_ARRAY) {
                return media;
            }
            media.caption = jsonTokenNextToken3 == JsonToken.VALUE_NULL ? null : jsonParser.getText();
            JsonToken jsonTokenNextToken4 = jsonParser.nextToken();
            if (jsonTokenNextToken4 == JsonToken.END_ARRAY) {
                return media;
            }
            media.refId = jsonTokenNextToken4 == JsonToken.VALUE_NULL ? null : jsonParser.getText();
            if (jsonParser.nextToken() == JsonToken.END_ARRAY || (jsonTokenNextToken = jsonParser.nextToken()) == JsonToken.END_ARRAY) {
                return media;
            }
            if (jsonTokenNextToken == JsonToken.START_OBJECT) {
                ObjectNode objectNode = (ObjectNode) jsonParser.readValueAsTree();
                media.coverImage = JacksonUtils.nodeString(objectNode, "coverImage");
                media.duration = (long) (JacksonUtils.nodeDouble(objectNode, "duration") * 1000.0d);
                media.width = JacksonUtils.nodeInt(objectNode, "width");
                media.height = JacksonUtils.nodeInt(objectNode, "height");
                media.author = JacksonUtils.nodeString(objectNode, "author");
                media.fileName = JacksonUtils.nodeString(objectNode, "fileName");
                while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                }
                return media;
            }
            if (jsonParser.nextToken() == JsonToken.END_ARRAY || jsonParser.nextToken() == JsonToken.END_ARRAY || (jsonTokenNextToken2 = jsonParser.nextToken()) == JsonToken.END_ARRAY) {
                return media;
            }
            media.coverImage = jsonTokenNextToken2 == JsonToken.VALUE_NULL ? null : jsonParser.getText();
            JsonToken jsonTokenNextToken5 = jsonParser.nextToken();
            if (jsonTokenNextToken5 == JsonToken.END_ARRAY) {
                return media;
            }
            media.author = jsonTokenNextToken5 == JsonToken.VALUE_NULL ? null : jsonParser.getText();
            JsonToken jsonTokenNextToken6 = jsonParser.nextToken();
            if (jsonTokenNextToken6 == JsonToken.END_ARRAY) {
                return media;
            }
            media.fileName = jsonTokenNextToken6 != JsonToken.VALUE_NULL ? jsonParser.getText() : null;
            JsonToken jsonTokenNextToken7 = jsonParser.nextToken();
            if (jsonTokenNextToken7 == JsonToken.END_ARRAY) {
                return media;
            }
            media.duration = jsonTokenNextToken7 == JsonToken.VALUE_NULL ? 0L : jsonParser.getLongValue();
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
            }
            return media;
        }
    }

    /* loaded from: classes3.dex */
    public static class MediaSerializer extends JsonSerializer<Media> {
        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Media media, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeStartArray();
            jsonGenerator.writeNumber(media.type);
            jsonGenerator.writeString(media.url);
            jsonGenerator.writeString(media.caption);
            if (media.coverImage == null && media.author == null && media.fileName == null && media.duration == 0 && media.width == 0 && media.height == 0) {
                String str = media.refId;
                if (str != null) {
                    jsonGenerator.writeString(str);
                }
            } else {
                jsonGenerator.writeString(media.refId);
                jsonGenerator.writeString((String) null);
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                String str2 = media.coverImage;
                if (str2 != null) {
                    objectNodeCreateObjectNode.put("coverImage", str2);
                }
                long j = media.duration;
                if (j != 0) {
                    objectNodeCreateObjectNode.put("duration", j / 1000.0f);
                }
                int i = media.width;
                if (i != 0) {
                    objectNodeCreateObjectNode.put("width", i);
                }
                int i2 = media.height;
                if (i2 != 0) {
                    objectNodeCreateObjectNode.put("height", i2);
                }
                String str3 = media.author;
                if (str3 != null) {
                    objectNodeCreateObjectNode.put("author", str3);
                }
                String str4 = media.fileName;
                if (str4 != null) {
                    objectNodeCreateObjectNode.put("fileName", str4);
                }
                jsonGenerator.writeObject(objectNodeCreateObjectNode);
            }
            jsonGenerator.writeEndArray();
        }
    }

    public int hashCode() {
        String str = this.url;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public boolean equals(Object obj) {
        return checkEqual(obj) == 0;
    }

    @Override // com.narvii.util.LenientObject
    public int checkLenientPart(Object obj) {
        if (obj == null) {
            return 2;
        }
        if (obj == this) {
            return 0;
        }
        if (!(obj instanceof Media)) {
            return 2;
        }
        ArrayList arrayList = new ArrayList();
        Media media = (Media) obj;
        arrayList.add(Integer.valueOf(Utils.compareLenientObject(media.url, this.url)));
        arrayList.add(Integer.valueOf(Utils.compareLenientObject(media.coverImage, this.coverImage)));
        if (arrayList.contains(2)) {
            return 2;
        }
        return arrayList.contains(1) ? 1 : 0;
    }

    @Override // com.narvii.util.LenientObject
    public boolean isNormalPartEqual(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Media)) {
            return false;
        }
        Media media = (Media) obj;
        return media.type == this.type && Utils.isEquals(media.caption, this.caption) && Utils.isEquals(media.refId, this.refId) && Utils.isEquals(media.coverImage, this.coverImage);
    }

    @Override // com.narvii.util.LenientObject
    public int checkEqual(Object obj) {
        if (isNormalPartEqual(obj)) {
            return checkLenientPart(obj);
        }
        return 2;
    }

    public String toString() {
        return String.valueOf(this.url);
    }

    public void setDownloadProgress(int i) {
        this.downloadProgress = i;
    }

    public int getDownloadProgress() {
        return this.downloadProgress;
    }

    public static boolean hasVideo(Collection<Media> collection) {
        if (collection != null && !collection.isEmpty()) {
            Iterator<Media> it = collection.iterator();
            while (it.hasNext()) {
                int i = it.next().type;
                if (i == 102 || i == 123) {
                    return true;
                }
            }
        }
        return false;
    }
}
