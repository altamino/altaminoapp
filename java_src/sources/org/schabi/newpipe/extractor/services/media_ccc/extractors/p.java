package org.schabi.newpipe.extractor.services.media_ccc.extractors;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import java.io.IOException;
import java.time.OffsetDateTime;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import qa.y;

/* JADX INFO: loaded from: classes6.dex */
public final class p {
    private static final Pattern LIVE_STREAM_ID_PATTERN = Pattern.compile("\\w+/\\w+");
    private static JsonArray liveStreams = null;

    public static JsonArray b(z9.a aVar, org.schabi.newpipe.extractor.localization.i iVar) throws aa.d {
        if (liveStreams == null) {
            try {
                liveStreams = (JsonArray) JsonParser.array().from(aVar.get("https://streaming.media.ccc.de/streams/v2.json", iVar).c());
            } catch (aa.j e) {
                e = e;
                throw new aa.d("Could not get live stream JSON.", e);
            } catch (IOException e2) {
                e = e2;
                throw new aa.d("Could not get live stream JSON.", e);
            } catch (JsonParserException e6) {
                throw new aa.d("Could not parse JSON.", e6);
            }
        }
        return liveStreams;
    }

    public static List<x9.c> c(JsonObject jsonObject) {
        return d(jsonObject, "thumb", "poster");
    }

    private static List<x9.c> d(JsonObject jsonObject, String str, String str2) {
        ArrayList arrayList = new ArrayList(2);
        String string = jsonObject.getString(str);
        if (!y.m(string)) {
            arrayList.add(new x9.c(string, -1, -1, x9.c.a.MEDIUM));
        }
        String string2 = jsonObject.getString(str2);
        if (!y.m(string2)) {
            arrayList.add(new x9.c(string2, -1, -1, x9.c.a.HIGH));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static List<x9.c> e(JsonObject jsonObject) {
        return d(jsonObject, "thumb_url", "poster_url");
    }

    public static boolean f(String str) {
        return LIVE_STREAM_ID_PATTERN.matcher(str).find();
    }

    public static List<x9.c> a(String str) {
        if (!y.m(str)) {
            return net.pubnative.lite.sdk.vpaid.h.a(new Object[]{new x9.c(str, -1, -1, x9.c.a.UNKNOWN)});
        }
        return Collections.emptyList();
    }

    public static OffsetDateTime g(String str) throws aa.h {
        try {
            return OffsetDateTime.parse(str);
        } catch (DateTimeParseException e) {
            throw new aa.h("Could not parse date: \"" + str + "\"", e);
        }
    }
}
