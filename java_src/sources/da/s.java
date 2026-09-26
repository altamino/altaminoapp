package da;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.internal.ImagesContract;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import qa.y;

/* JADX INFO: loaded from: classes8.dex */
public class s extends oa.h {
    private JsonObject albumJson;
    private JsonObject current;
    private Document document;

    public static JsonObject e0(String str) throws aa.h {
        try {
            return qa.e.d(str, "data-tralbum");
        } catch (JsonParserException e) {
            throw new aa.h("Faulty JSON; page likely does not contain album data", e);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new aa.h("JSON does not exist", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream g0(Element element) {
        return element.getElementsByClass("tag").stream();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String h0(Element element) {
        return element.attr("src");
    }

    @Override // oa.h
    public long A() throws aa.h {
        return (long) this.albumJson.getArray("trackinfo").getObject(0).getDouble(TypedValues.TransitionType.S_DURATION);
    }

    @Override // oa.h
    public String B() {
        switch (this.current.getInt("license_type")) {
            case 1:
                return "All rights reserved ©";
            case 2:
                return "CC BY-NC-ND 3.0";
            case 3:
                return "CC BY-NC-SA 3.0";
            case 4:
                return "CC BY-NC 3.0";
            case 5:
                return "CC BY-ND 3.0";
            case 6:
                return "CC BY 3.0";
            case 7:
            default:
                return "Unknown";
            case 8:
                return "CC BY-SA 3.0";
        }
    }

    @Override // oa.h
    public oa.o H() {
        return oa.o.AUDIO_STREAM;
    }

    @Override // oa.h
    public List<String> N() {
        return (List) this.document.getElementsByAttributeValue("itemprop", "keywords").stream().map(new h()).collect(Collectors.toList());
    }

    @Override // oa.h
    public String O() {
        return this.current.getString("publish_date");
    }

    @Override // oa.h
    public List<x9.c> P() throws aa.h {
        return this.albumJson.isNull("art_id") ? Collections.emptyList() : g.e(this.albumJson.getLong("art_id"), true);
    }

    @Override // oa.h
    public List<x9.c> T() {
        return g.f((String) this.document.getElementsByClass("band-photo").stream().map(new Function() { // from class: da.q
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return s.h0((Element) obj);
            }
        }).findFirst().orElse(""));
    }

    @Override // oa.h
    public String U() throws aa.h {
        return this.albumJson.getString("artist");
    }

    @Override // oa.h
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public ba.e F() {
        final ba.e eVar = new ba.e(l());
        this.document.getElementsByClass("recommended-album").stream().map(new Function() { // from class: da.o
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new k((Element) obj);
            }
        }).forEach(new Consumer() { // from class: da.p
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                eVar.d((k) obj);
            }
        });
        return eVar;
    }

    @Override // x9.b
    public String i() throws aa.h {
        return this.current.getString("title");
    }

    @Override // x9.b
    public String n() throws aa.h {
        return y.v(this.albumJson.getString(ImagesContract.URL));
    }

    @Override // oa.h
    public List<oa.a> q() {
        return Collections.singletonList(new oa.a.C0472a().i("mp3-128").g(this.albumJson.getArray("trackinfo").getObject(0).getObject("file").getString("mp3-128"), true).l(x9.m.MP3).f(128).a());
    }

    @Override // oa.h
    public String r() {
        return (String) this.document.getElementsByClass("tralbum-tags").stream().flatMap(new Function() { // from class: da.r
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return s.g0((Element) obj);
            }
        }).map(new h()).findFirst().orElse("");
    }

    @Override // oa.h
    public oa.e t() {
        return new oa.e(y.s("\n\n", this.current.getString("about"), this.current.getString("lyrics"), this.current.getString("credits")), 3);
    }

    public s(x9.s sVar, org.schabi.newpipe.extractor.linkhandler.a aVar) {
        super(sVar, aVar);
    }

    @Override // oa.h
    public org.schabi.newpipe.extractor.localization.e S() throws aa.h {
        return g.j(O());
    }

    @Override // oa.h
    public String W() throws aa.h {
        return y.HTTPS + n().split(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING)[2] + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING;
    }

    @Override // oa.h
    public List<oa.s> X() {
        return Collections.emptyList();
    }

    @Override // oa.h
    public List<oa.s> Y() {
        return Collections.emptyList();
    }

    @Override // x9.b
    public void o(z9.a aVar) throws IOException, aa.d {
        String strC = aVar.get(h().d()).c();
        this.document = Jsoup.parse(strC);
        JsonObject jsonObjectE0 = e0(strC);
        this.albumJson = jsonObjectE0;
        this.current = jsonObjectE0.getObject("current");
        if (this.albumJson.getArray("trackinfo").size() <= 1) {
            if (!this.albumJson.getArray("trackinfo").getObject(0).isNull("file")) {
                return;
            } else {
                throw new aa.g("This track is not available without being purchased");
            }
        }
        throw new aa.d("Page is actually an album, not a track");
    }
}
