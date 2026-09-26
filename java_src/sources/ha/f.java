package ha;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.narvii.modulization.ConfigApiRequestHelper;
import java.time.Instant;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import net.pubnative.lite.sdk.vpaid.h;
import qa.y;

/* JADX INFO: loaded from: classes4.dex */
public final class f {
    public static final String COUNT_KEY = "count";
    public static final int ITEMS_PER_PAGE = 12;
    public static final String START_KEY = "start";
    public static final String START_PATTERN = "start=(\\d*)";

    public static List<x9.c> c(String str, JsonObject jsonObject) {
        return e(str, jsonObject, "avatars", "avatar");
    }

    public static List<x9.c> f(String str, JsonObject jsonObject) {
        ArrayList arrayList = new ArrayList(2);
        String string = jsonObject.getString("thumbnailPath");
        if (!y.m(string)) {
            arrayList.add(new x9.c(str + string, -1, -1, x9.c.a.LOW));
        }
        String string2 = jsonObject.getString("previewPath");
        if (!y.m(string2)) {
            arrayList.add(new x9.c(str + string2, -1, -1, x9.c.a.MEDIUM));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean g(JsonObject jsonObject) {
        return !y.m(jsonObject.getString(ConfigApiRequestHelper.PATH_KEY));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ x9.c h(String str, JsonObject jsonObject) {
        return new x9.c(str + jsonObject.getString(ConfigApiRequestHelper.PATH_KEY), -1, jsonObject.getInt("width", -1), x9.c.a.UNKNOWN);
    }

    public static void j(JsonObject jsonObject) throws aa.b {
        String string = jsonObject.getString(com.google.firebase.messaging.e.IPC_BUNDLE_KEY_SEND_ERROR);
        if (!y.k(string)) {
            throw new aa.b(string);
        }
    }

    private static List<x9.c> d(final String str, JsonArray jsonArray) {
        return (List) jsonArray.stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).filter(new Predicate() { // from class: ha.d
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return f.g((JsonObject) obj);
            }
        }).map(new Function() { // from class: ha.e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return f.h(str, (JsonObject) obj);
            }
        }).collect(Collectors.toUnmodifiableList());
    }

    private static List<x9.c> e(String str, JsonObject jsonObject, String str2, String str3) {
        JsonArray array = jsonObject.getArray(str2);
        if (!y.n(array)) {
            return d(str, array);
        }
        JsonObject object = jsonObject.getObject(str3);
        String string = object.getString(ConfigApiRequestHelper.PATH_KEY);
        if (!y.m(string)) {
            return h.a(new Object[]{new x9.c(str + string, -1, object.getInt("width", -1), x9.c.a.UNKNOWN)});
        }
        return Collections.emptyList();
    }

    public static OffsetDateTime i(String str) throws aa.h {
        try {
            return OffsetDateTime.ofInstant(Instant.parse(str), ZoneOffset.UTC);
        } catch (DateTimeParseException e) {
            throw new aa.h("Could not parse date: \"" + str + "\"", e);
        }
    }
}
