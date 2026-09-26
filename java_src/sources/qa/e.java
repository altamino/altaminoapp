package qa;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.jsoup.Jsoup;

/* JADX INFO: loaded from: classes9.dex */
public final class e {
    public static JsonArray a(JsonObject jsonObject, String str) throws aa.h {
        return (JsonArray) c(jsonObject, str, JsonArray.class);
    }

    public static Boolean b(JsonObject jsonObject, String str) throws aa.h {
        return (Boolean) c(jsonObject, str, Boolean.class);
    }

    public static Number e(JsonObject jsonObject, String str) throws aa.h {
        return (Number) c(jsonObject, str, Number.class);
    }

    public static JsonObject f(JsonObject jsonObject, String str) throws aa.h {
        return (JsonObject) c(jsonObject, str, JsonObject.class);
    }

    public static String h(JsonObject jsonObject, String str) throws aa.h {
        return (String) c(jsonObject, str, String.class);
    }

    public static Object j(JsonObject jsonObject, String str) throws aa.h {
        List listAsList = Arrays.asList(str.split("\\."));
        JsonObject jsonObjectG = g(jsonObject, listAsList.subList(0, listAsList.size() - 1));
        if (jsonObjectG == null) {
            throw new aa.h("Unable to get " + str);
        }
        Object obj = jsonObjectG.get(listAsList.get(listAsList.size() - 1));
        if (obj != null) {
            return obj;
        }
        throw new aa.h("Unable to get " + str);
    }

    private static <T> T c(JsonObject jsonObject, String str, Class<T> cls) throws aa.h {
        Object objJ = j(jsonObject, str);
        if (cls.isInstance(objJ)) {
            return cls.cast(objJ);
        }
        throw new aa.h("Wrong data type at path " + str);
    }

    public static JsonObject d(String str, String str2) throws JsonParserException, ArrayIndexOutOfBoundsException {
        return (JsonObject) JsonParser.object().from(Jsoup.parse(str).getElementsByAttribute(str2).attr(str2));
    }

    private static JsonObject g(JsonObject jsonObject, List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext() && (jsonObject = jsonObject.getObject(it.next())) != null) {
        }
        return jsonObject;
    }

    public static List<String> i(JsonArray jsonArray) {
        final Class<String> cls = String.class;
        return (List) jsonArray.stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(String.class)).map(new Function() { // from class: qa.d
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (String) cls.cast(obj);
            }
        }).collect(Collectors.toList());
    }

    public static JsonObject k(String str) throws aa.h {
        try {
            return (JsonObject) JsonParser.object().from(str);
        } catch (JsonParserException e) {
            throw new aa.h("Could not parse JSON", e);
        }
    }
}
