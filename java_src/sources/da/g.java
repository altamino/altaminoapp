package da;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.JsonWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.time.DateTimeException;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.jsoup.Jsoup;
import qa.y;

/* JADX INFO: loaded from: classes8.dex */
public final class g {
    public static final String BASE_API_URL = "https://bandcamp.com/api";
    public static final String BASE_URL = "https://bandcamp.com";
    private static final String IMAGES_DOMAIN_AND_PATH = "https://f4.bcbits.com/img/";
    private static final String IMAGE_URL_APPENDIX_AND_EXTENSION_REGEX = "_\\d+\\.\\w+";
    private static final List<qa.b> IMAGE_URL_SUFFIXES_AND_RESOLUTIONS;

    static {
        x9.c.a aVar = x9.c.a.HIGH;
        x9.c.a aVar2 = x9.c.a.LOW;
        x9.c.a aVar3 = x9.c.a.MEDIUM;
        IMAGE_URL_SUFFIXES_AND_RESOLUTIONS = net.pubnative.lite.sdk.vpaid.h.a(new qa.b[]{new qa.b("10.jpg", -1, 1200, aVar), new qa.b("101.jpg", 90, -1, aVar2), new qa.b("170.jpg", TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, -1, aVar3), new qa.b("171.jpg", 646, -1, aVar3), new qa.b("20.jpg", -1, 1024, aVar), new qa.b("200.jpg", 420, -1, aVar3), new qa.b("201.jpg", 280, -1, aVar3), new qa.b("202.jpg", 140, -1, aVar2), new qa.b("204.jpg", 360, -1, aVar3), new qa.b("205.jpg", 240, -1, aVar3), new qa.b("206.jpg", 180, -1, aVar3), new qa.b("207.jpg", 120, -1, aVar2), new qa.b("43.jpg", 100, -1, aVar2), new qa.b("44.jpg", 200, -1, aVar3)});
    }

    public static String c(long j6, boolean z6) {
        return IMAGES_DOMAIN_AND_PATH + (z6 ? 'a' : "") + j6 + "_10.jpg";
    }

    private static List<x9.c> d(final String str) {
        return (List) IMAGE_URL_SUFFIXES_AND_RESOLUTIONS.stream().map(new Function() { // from class: da.f
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return g.i(str, (qa.b) obj);
            }
        }).collect(Collectors.toUnmodifiableList());
    }

    public static List<x9.c> e(long j6, boolean z6) {
        if (j6 == 0) {
            return Collections.emptyList();
        }
        return d(IMAGES_DOMAIN_AND_PATH + (z6 ? 'a' : "") + j6 + "_");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ x9.c i(String str, qa.b bVar) {
        return new x9.c(str + bVar.c(), bVar.a(), bVar.d(), bVar.b());
    }

    public static org.schabi.newpipe.extractor.localization.e j(String str) throws aa.h {
        try {
            return new org.schabi.newpipe.extractor.localization.e(ZonedDateTime.parse(str, DateTimeFormatter.ofPattern("dd MMM yyyy HH:mm:ss zzz", Locale.ENGLISH)).toOffsetDateTime(), false);
        } catch (DateTimeException e) {
            throw new aa.h("Could not parse date '" + str + "'", e);
        }
    }

    public static JsonObject b(String str) throws aa.h {
        try {
            return (JsonObject) JsonParser.object().from(x9.p.a().postWithContentTypeJson("https://bandcamp.com/api/mobile/22/band_details", Collections.emptyMap(), JsonWriter.string().object().value("band_id", str).end().done().getBytes(StandardCharsets.UTF_8)).c());
        } catch (JsonParserException | aa.j | IOException e) {
            throw new aa.h("Could not download band details", e);
        }
    }

    public static List<x9.c> f(String str) {
        if (y.m(str)) {
            return Collections.emptyList();
        }
        return d(str.replaceFirst(IMAGE_URL_APPENDIX_AND_EXTENSION_REGEX, "_"));
    }

    public static boolean g(String str) throws aa.h {
        if (str.toLowerCase().matches("https?://.+\\.bandcamp\\.com(/.*)?")) {
            return true;
        }
        if (str.toLowerCase().matches("https?://bandcamp\\.com(/.*)?")) {
            return false;
        }
        try {
            return Jsoup.parse(x9.p.a().get(y.v(str)).c()).getElementsByClass("cart-wrapper").get(0).getElementsByTag(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY).get(0).attr("href").equals("https://bandcamp.com/cart");
        } catch (aa.j | IOException unused) {
            throw new aa.h("Could not determine whether URL is custom domain (not available? network error?)");
        } catch (IndexOutOfBoundsException | NullPointerException unused2) {
            return false;
        }
    }

    public static boolean h(String str) {
        return str.toLowerCase().matches("https?://bandcamp\\.com/\\?show=\\d+");
    }
}
