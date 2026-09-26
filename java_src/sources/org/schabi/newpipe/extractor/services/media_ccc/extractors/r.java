package org.schabi.newpipe.extractor.services.media_ccc.extractors;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.function.Supplier;
import oa.s;

/* JADX INFO: loaded from: classes6.dex */
public class r extends oa.h {
    private JsonObject conferenceData;
    private JsonObject data;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ aa.h d0(String str) {
        return new aa.h("Cannot convert this language to a locale: " + str);
    }

    @Override // oa.h
    public long A() {
        return this.data.getInt("length");
    }

    @Override // oa.h
    public oa.o H() {
        return oa.o.VIDEO_STREAM;
    }

    @Override // oa.h
    public List<String> N() {
        return qa.e.i(this.data.getArray("tags"));
    }

    @Override // oa.h
    public String O() {
        return this.data.getString("release_date");
    }

    @Override // oa.h
    public List<x9.c> P() {
        return p.e(this.data);
    }

    @Override // oa.h
    public org.schabi.newpipe.extractor.localization.e S() throws aa.h {
        return new org.schabi.newpipe.extractor.localization.e(p.g(O()));
    }

    @Override // oa.h
    public List<x9.c> T() {
        return p.a(this.conferenceData.getString("logo_url"));
    }

    @Override // oa.h
    public String U() {
        return this.data.getString("conference_url").replaceFirst("https://(api\\.)?media\\.ccc\\.de/public/conferences/", "");
    }

    @Override // oa.h
    public List<s> Y() throws aa.d {
        JsonArray array = this.data.getArray("recordings");
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < array.size(); i10++) {
            JsonObject object = array.getObject(i10);
            String string = object.getString("mime_type");
            if (string.startsWith("video")) {
                arrayList.add(new s.a().d(object.getString("filename", " ")).b(object.getString("recording_url"), true).e(false).h(string.endsWith("webm") ? x9.m.WEBM : string.endsWith("mp4") ? x9.m.MPEG_4 : null).i(object.getInt("height") + "p").a());
            }
        }
        return arrayList;
    }

    @Override // oa.h
    public long Z() {
        return this.data.getInt("view_count");
    }

    @Override // x9.b
    public String i() throws aa.h {
        return this.data.getString("title");
    }

    @Override // x9.b
    public String j() {
        return this.data.getString("frontend_link");
    }

    @Override // oa.h
    public List<oa.a> q() throws aa.d {
        x9.m mVar;
        JsonArray array = this.data.getArray("recordings");
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < array.size(); i10++) {
            JsonObject object = array.getObject(i10);
            String string = object.getString("mime_type");
            if (string.startsWith("audio")) {
                if (string.endsWith("opus")) {
                    mVar = x9.m.OPUS;
                } else if (string.endsWith("mpeg")) {
                    mVar = x9.m.MP3;
                } else {
                    mVar = string.endsWith("ogg") ? x9.m.OGG : null;
                }
                oa.a.C0472a c0472aF = new oa.a.C0472a().i(object.getString("filename", " ")).g(object.getString("recording_url"), true).l(mVar).f(-1);
                final String string2 = object.getString("language");
                if (string2 != null && !string2.contains("-")) {
                    c0472aF.b((Locale) qa.f.a(string2).orElseThrow(new Supplier() { // from class: org.schabi.newpipe.extractor.services.media_ccc.extractors.q
                        @Override // java.util.function.Supplier
                        public final Object get() {
                            return r.d0(string2);
                        }
                    }));
                }
                arrayList.add(c0472aF.a());
            }
        }
        return arrayList;
    }

    @Override // oa.h
    public oa.e t() {
        return new oa.e(this.data.getString("description"), 3);
    }

    @Override // oa.h
    public Locale z() throws aa.h {
        return org.schabi.newpipe.extractor.localization.i.f(this.data.getString("original_language"));
    }

    public r(x9.s sVar, org.schabi.newpipe.extractor.linkhandler.a aVar) {
        super(sVar, aVar);
    }

    @Override // oa.h
    public String W() {
        return ga.a.CONFERENCE_PATH + U();
    }

    @Override // oa.h
    public List<s> X() {
        return Collections.emptyList();
    }

    @Override // x9.b
    public void o(z9.a aVar) throws IOException, aa.d {
        String str = ga.b.VIDEO_API_ENDPOINT + g();
        try {
            this.data = (JsonObject) JsonParser.object().from(aVar.get(str).c());
            this.conferenceData = (JsonObject) JsonParser.object().from(aVar.get(this.data.getString("conference_url")).c());
        } catch (JsonParserException e) {
            throw new aa.d("Could not parse json returned by URL: " + str, e);
        }
    }
}
