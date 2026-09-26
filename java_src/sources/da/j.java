package da;

import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Supplier;
import org.jsoup.Jsoup;

/* JADX INFO: loaded from: classes8.dex */
public class j extends s {
    private static final String MP3_128 = "mp3-128";
    private static final String OPUS_LO = "opus-lo";
    private JsonObject showInfo;

    @Override // da.s, oa.h
    public String B() {
        return "";
    }

    @Override // da.s, oa.h
    /* JADX INFO: renamed from: f0 */
    public ba.e F() {
        return null;
    }

    @Override // da.s, oa.h
    public String r() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ aa.h j0() {
        return new aa.h("Could not get uploader name");
    }

    @Override // da.s, oa.h
    public long A() {
        return this.showInfo.getLong("audio_duration");
    }

    @Override // oa.h
    public List<oa.n> G() throws aa.h {
        JsonArray<JsonObject> array = this.showInfo.getArray("tracks");
        ArrayList arrayList = new ArrayList(array.size());
        for (JsonObject jsonObject : array) {
            oa.n nVar = new oa.n(jsonObject.getString("title"), jsonObject.getInt("timecode"));
            nVar.b(g.c(jsonObject.getLong("track_art_id"), true));
            nVar.a(jsonObject.getString("artist"));
            arrayList.add(nVar);
        }
        return arrayList;
    }

    @Override // da.s, oa.h
    public String O() {
        return this.showInfo.getString("published_date");
    }

    @Override // da.s, oa.h
    public List<x9.c> P() throws aa.h {
        return g.e(this.showInfo.getLong("show_image_id"), false);
    }

    @Override // da.s, oa.h
    public List<x9.c> T() {
        return Collections.singletonList(new x9.c("https://bandcamp.com/img/buttons/bandcamp-button-circle-whitecolor-512.png", 512, 512, x9.c.a.MEDIUM));
    }

    @Override // da.s, oa.h
    public String U() throws aa.h {
        return (String) Jsoup.parse(this.showInfo.getString("image_caption")).getElementsByTag(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY).stream().map(new h()).findFirst().orElseThrow(new Supplier() { // from class: da.i
            @Override // java.util.function.Supplier
            public final Object get() {
                return j.j0();
            }
        });
    }

    @Override // da.s, oa.h
    public String W() throws aa.c {
        throw new aa.c("Fan pages are not supported");
    }

    @Override // da.s, x9.b
    public String i() throws aa.h {
        return this.showInfo.getString("subtitle");
    }

    @Override // da.s, oa.h
    public List<oa.a> q() {
        ArrayList arrayList = new ArrayList();
        JsonObject object = this.showInfo.getObject("audio_stream");
        if (object.has(MP3_128)) {
            arrayList.add(new oa.a.C0472a().i(MP3_128).g(object.getString(MP3_128), true).l(x9.m.MP3).f(128).a());
        }
        if (object.has(OPUS_LO)) {
            arrayList.add(new oa.a.C0472a().i(OPUS_LO).g(object.getString(OPUS_LO), true).l(x9.m.OPUS).f(100).a());
        }
        return arrayList;
    }

    @Override // da.s, oa.h
    public oa.e t() {
        return new oa.e(this.showInfo.getString("desc"), 3);
    }

    public j(x9.s sVar, org.schabi.newpipe.extractor.linkhandler.a aVar) {
        super(sVar, aVar);
    }

    static JsonObject k0(int i10) throws aa.h {
        try {
            return (JsonObject) JsonParser.object().from(x9.p.a().get("https://bandcamp.com/api/bcweekly/1/get?id=" + i10).c());
        } catch (JsonParserException | aa.j | IOException e) {
            throw new aa.h("could not get show data", e);
        }
    }

    @Override // da.s, oa.h
    public List<String> N() {
        return Collections.emptyList();
    }

    @Override // da.s, x9.b
    public String n() throws aa.h {
        return h().d();
    }

    @Override // da.s, x9.b
    public void o(z9.a aVar) throws IOException, aa.d {
        this.showInfo = k0(Integer.parseInt(g()));
    }
}
