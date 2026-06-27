package com.narvii.util;

import android.text.TextUtils;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVApplication;
import com.narvii.lib.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/* loaded from: classes.dex */
public class JacksonUtils {
    public static final ObjectMapper DEFAULT_MAPPER = new ObjectMapper();

    static {
        DEFAULT_MAPPER.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        DEFAULT_MAPPER.configure(MapperFeature.AUTO_DETECT_GETTERS, false);
        DEFAULT_MAPPER.configure(MapperFeature.AUTO_DETECT_IS_GETTERS, false);
        DEFAULT_MAPPER.configure(MapperFeature.AUTO_DETECT_SETTERS, false);
    }

    public static ObjectNode createObjectNode() {
        return DEFAULT_MAPPER.getNodeFactory().objectNode();
    }

    public static ObjectNode createObjectNode(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return (ObjectNode) DEFAULT_MAPPER.readTree(str);
            } catch (Exception unused) {
                Log.e("fail to read as ObjectNode: " + str);
            }
        }
        return createObjectNode();
    }

    public static ArrayNode createArrayNode() {
        return DEFAULT_MAPPER.getNodeFactory().arrayNode();
    }

    public static ArrayNode createArrayNode(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return (ArrayNode) DEFAULT_MAPPER.readTree(str);
            } catch (Exception unused) {
                Log.e("fail to read as ArrayNode: " + str);
            }
        }
        return createArrayNode();
    }

    public static JsonNode nodePath(JsonNode jsonNode, String... strArr) {
        for (String str : strArr) {
            if (jsonNode == null || jsonNode.isNull()) {
                return null;
            }
            jsonNode = jsonNode.get(str);
        }
        if (jsonNode == null || jsonNode.isNull()) {
            return null;
        }
        return jsonNode;
    }

    public static int nodeInt(JsonNode jsonNode, String... strArr) {
        JsonNode jsonNodeNodePath = nodePath(jsonNode, strArr);
        if (jsonNodeNodePath == null) {
            return 0;
        }
        return jsonNodeNodePath.asInt(0);
    }

    public static int nodeInt(JsonNode jsonNode, int i, String... strArr) {
        JsonNode jsonNodeNodePath = nodePath(jsonNode, strArr);
        return jsonNodeNodePath == null ? i : jsonNodeNodePath.asInt(i);
    }

    public static double nodeDouble(JsonNode jsonNode, String... strArr) {
        JsonNode jsonNodeNodePath = nodePath(jsonNode, strArr);
        if (jsonNodeNodePath == null) {
            return 0.0d;
        }
        return jsonNodeNodePath.asDouble(0.0d);
    }

    public static String nodeString(JsonNode jsonNode, String... strArr) {
        JsonNode jsonNodeNodePath = nodePath(jsonNode, strArr);
        if (jsonNodeNodePath == null) {
            return null;
        }
        return jsonNodeNodePath.textValue();
    }

    public static boolean nodeBoolean(JsonNode jsonNode, String... strArr) {
        JsonNode jsonNodeNodePath = nodePath(jsonNode, strArr);
        if (jsonNodeNodePath == null) {
            return false;
        }
        return jsonNodeNodePath.asBoolean();
    }

    public static boolean nodeBoolean(JsonNode jsonNode, boolean z, String... strArr) {
        JsonNode jsonNodeNodePath = nodePath(jsonNode, strArr);
        return jsonNodeNodePath == null ? z : jsonNodeNodePath.asBoolean();
    }

    public static String writeAsString(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return DEFAULT_MAPPER.writeValueAsString(obj);
        } catch (Exception e) {
            Log.e("fail to write object as string", e);
            return null;
        }
    }

    public static String safeWriteAsString(Object obj) {
        return safeWriteAsString(obj, 200000);
    }

    public static String safeWriteAsString(Object obj, int i) {
        if (obj == null) {
            return null;
        }
        try {
            String strWriteValueAsString = DEFAULT_MAPPER.writeValueAsString(obj);
            if (strWriteValueAsString.length() <= i) {
                return strWriteValueAsString;
            }
            Log.e("size exceed limit when write object as string");
            return null;
        } catch (Exception e) {
            Log.e("fail to write object as string", e);
            return null;
        } catch (OutOfMemoryError e2) {
            Log.w("OutOfMemory when write object as string", e2);
            return null;
        }
    }

    public static <T> T readAs(String str, Class<T> cls) {
        if (str == null) {
            return null;
        }
        try {
            return (T) DEFAULT_MAPPER.readValue(str, cls);
        } catch (Exception e) {
            Log.e("fail to read object as " + cls, e);
            Log.w(str);
            return null;
        }
    }

    public static <T> T readUsing(String str, JsonDeserializer<T> jsonDeserializer) {
        if (str == null) {
            return null;
        }
        try {
            return jsonDeserializer.deserialize(DEFAULT_MAPPER.getFactory().createParser(str), null);
        } catch (Exception e) {
            Log.e("fail to read using " + jsonDeserializer, e);
            Log.w(str);
            return null;
        }
    }

    public static <T> ArrayList<T> readListAs(String str, Class<T> cls) {
        if (str == null) {
            return null;
        }
        if ("[]".equals(str)) {
            return new ArrayList<>();
        }
        try {
            return (ArrayList) DEFAULT_MAPPER.readValue(str, DEFAULT_MAPPER.getTypeFactory().constructCollectionType(ArrayList.class, (Class<?>) cls));
        } catch (Exception e) {
            Log.e("fail to read list as " + cls, e);
            Log.w(str);
            return null;
        }
    }

    public static <T> ArrayList<T> readListUsing(String str, JsonDeserializer<T> jsonDeserializer) {
        if (str == null) {
            return null;
        }
        if ("[]".equals(str)) {
            return new ArrayList<>();
        }
        try {
            JsonParser jsonParserCreateParser = DEFAULT_MAPPER.getFactory().createParser(str);
            if (jsonParserCreateParser.nextToken() != JsonToken.START_ARRAY) {
                return null;
            }
            ArrayList<T> arrayList = new ArrayList<>();
            while (jsonParserCreateParser.nextToken() != JsonToken.END_ARRAY) {
                arrayList.add(jsonDeserializer.deserialize(jsonParserCreateParser, null));
            }
            return arrayList;
        } catch (Exception e) {
            Log.e("fail to read list using " + jsonDeserializer, e);
            Log.w(str);
            return null;
        }
    }

    public static <E, T> HashMap<E, T> readMapAs(String str, Class<E> cls, Class<T> cls2) {
        if (str == null) {
            return null;
        }
        if ("[]".equals(str)) {
            return new HashMap<>();
        }
        try {
            return (HashMap) DEFAULT_MAPPER.readValue(str, DEFAULT_MAPPER.getTypeFactory().constructMapType(HashMap.class, (Class<?>) cls, (Class<?>) cls2));
        } catch (Exception e) {
            Log.e("fail to read map as " + cls + "," + cls2, e);
            Log.w(str);
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static class DateSerializer extends JsonSerializer<Date> {
        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Date date, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeString(DateTimeFormatter.formatISO8601(date));
        }
    }

    /* loaded from: classes3.dex */
    public static class DateDeserializer extends JsonDeserializer<Date> {
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Date deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return DateTimeFormatter.parseISO8601(jsonParser.getText());
        }
    }

    /* loaded from: classes3.dex */
    public static class ColorSerializer extends JsonSerializer<Integer> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Integer num, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeString(StringUtils.formatColor(num.intValue()));
        }
    }

    /* loaded from: classes3.dex */
    public static class ColorDeserializer extends JsonDeserializer<Integer> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Integer deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            try {
                String text = jsonParser.getText();
                if (TextUtils.isEmpty(text)) {
                    return getEmptyValue();
                }
                return Integer.valueOf(StringUtils.parseColor(text));
            } catch (Exception unused) {
                return Integer.valueOf(NVApplication.instance().getResources().getColor(R.color.color_default));
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Integer getEmptyValue() {
            return 0;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Integer getNullValue() {
            return getEmptyValue();
        }
    }
}
