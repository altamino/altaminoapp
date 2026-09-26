package ma;

import com.grack.nanojson.JsonObject;
import java.time.Instant;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.services.youtube.r0;

/* JADX INFO: loaded from: classes11.dex */
public class m0 implements oa.l {
    private static final Pattern ACCESSIBILITY_DATA_VIEW_COUNT_REGEX = Pattern.compile("([\\d,]+) views$");
    private static final String NO_VIEWS_LOWERCASE = "no views";
    private oa.o cachedStreamType;
    private Boolean isPremiere;
    private final org.schabi.newpipe.extractor.localization.f0 timeAgoParser;
    private final JsonObject videoInfo;

    private OffsetDateTime s() throws aa.h {
        String string = this.videoInfo.getObject("upcomingEventData").getString("startTime");
        try {
            return OffsetDateTime.ofInstant(Instant.ofEpochSecond(Long.parseLong(string)), ZoneOffset.UTC);
        } catch (Exception unused) {
            throw new aa.h("Could not parse date from premiere: \"" + string + "\"");
        }
    }

    private long t() throws NumberFormatException, qa.n.a {
        String string = this.videoInfo.getObject("title").getObject("accessibility").getObject("accessibilityData").getString("label", "");
        if (string.toLowerCase().endsWith(NO_VIEWS_LOWERCASE)) {
            return 0L;
        }
        return Long.parseLong(qa.y.u(qa.n.p(ACCESSIBILITY_DATA_VIEW_COUNT_REGEX, string)));
    }

    private boolean v() {
        if (this.isPremiere == null) {
            this.isPremiere = Boolean.valueOf(this.videoInfo.has("upcomingEventData"));
        }
        return this.isPremiere.booleanValue();
    }

    private boolean w() {
        Iterator it = this.videoInfo.getArray("badges").iterator();
        while (it.hasNext()) {
            if (((JsonObject) it.next()).getObject("metadataBadgeRenderer").getString("label", "").equals("Premium")) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean x(JsonObject jsonObject) {
        return jsonObject.has("thumbnailOverlayTimeStatusRenderer");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean y(JsonObject jsonObject) {
        return jsonObject.has("thumbnailOverlayTimeStatusRenderer");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonObject z(JsonObject jsonObject) {
        return jsonObject.getObject("thumbnailOverlayTimeStatusRenderer");
    }

    @Override // oa.l
    public String a() throws aa.h {
        String strN = r0.N(this.videoInfo.getObject("longBylineText").getArray("runs").getObject(0).getObject("navigationEndpoint"));
        if (qa.y.m(strN)) {
            strN = r0.N(this.videoInfo.getObject("ownerText").getArray("runs").getObject(0).getObject("navigationEndpoint"));
            if (qa.y.m(strN)) {
                strN = r0.N(this.videoInfo.getObject("shortBylineText").getArray("runs").getObject(0).getObject("navigationEndpoint"));
                if (qa.y.m(strN)) {
                    throw new aa.h("Could not get uploader url");
                }
            }
        }
        return strN;
    }

    @Override // oa.l
    public boolean b() throws aa.h {
        return r0.W(this.videoInfo.getArray("ownerBadges"));
    }

    @Override // oa.l
    public String c() throws aa.h {
        String strJ = r0.J(this.videoInfo.getObject("longBylineText"));
        if (qa.y.m(strJ)) {
            strJ = r0.J(this.videoInfo.getObject("ownerText"));
            if (qa.y.m(strJ)) {
                strJ = r0.J(this.videoInfo.getObject("shortBylineText"));
                if (qa.y.m(strJ)) {
                    throw new aa.h("Could not get uploader name");
                }
            }
        }
        return strJ;
    }

    @Override // x9.f
    public List<x9.c> e() throws aa.h {
        return r0.M(this.videoInfo);
    }

    @Override // oa.l
    public List<x9.c> f() throws aa.h {
        if (this.videoInfo.has("channelThumbnailSupportedRenderers")) {
            return r0.B(qa.e.a(this.videoInfo, "channelThumbnailSupportedRenderers.channelThumbnailWithLinkRenderer.thumbnail.thumbnails"));
        }
        return this.videoInfo.has("channelThumbnail") ? r0.B(qa.e.a(this.videoInfo, "channelThumbnail.thumbnails")) : Collections.emptyList();
    }

    @Override // x9.f
    public String getName() throws aa.h {
        String strJ = r0.J(this.videoInfo.getObject("title"));
        if (qa.y.m(strJ)) {
            throw new aa.h("Could not get name");
        }
        return strJ;
    }

    @Override // oa.l
    public oa.o getStreamType() {
        oa.o oVar = this.cachedStreamType;
        if (oVar != null) {
            return oVar;
        }
        for (Object obj : this.videoInfo.getArray("badges")) {
            if (obj instanceof JsonObject) {
                JsonObject object = ((JsonObject) obj).getObject("metadataBadgeRenderer");
                if (object.getString("style", "").equals("BADGE_STYLE_TYPE_LIVE_NOW") || object.getString("label", "").equals("LIVE NOW")) {
                    oa.o oVar2 = oa.o.LIVE_STREAM;
                    this.cachedStreamType = oVar2;
                    return oVar2;
                }
            }
        }
        for (Object obj2 : this.videoInfo.getArray("thumbnailOverlays")) {
            if ((obj2 instanceof JsonObject) && ((JsonObject) obj2).getObject("thumbnailOverlayTimeStatusRenderer").getString("style", "").equalsIgnoreCase("LIVE")) {
                oa.o oVar3 = oa.o.LIVE_STREAM;
                this.cachedStreamType = oVar3;
                return oVar3;
            }
        }
        oa.o oVar4 = oa.o.VIDEO_STREAM;
        this.cachedStreamType = oVar4;
        return oVar4;
    }

    @Override // x9.f
    public String getUrl() throws aa.h {
        try {
            return na.d.l().f(this.videoInfo.getString(r0.VIDEO_ID));
        } catch (Exception e) {
            throw new aa.h("Could not get url", e);
        }
    }

    @Override // oa.l
    public boolean l() throws aa.h {
        try {
            String string = this.videoInfo.getObject("navigationEndpoint").getObject("commandMetadata").getObject("webCommandMetadata").getString("webPageType");
            boolean zHas = !qa.y.m(string) && string.equals("WEB_PAGE_TYPE_SHORTS");
            if (!zHas) {
                zHas = this.videoInfo.getObject("navigationEndpoint").has("reelWatchEndpoint");
            }
            if (zHas) {
                return zHas;
            }
            JsonObject jsonObject = (JsonObject) this.videoInfo.getArray("thumbnailOverlays").stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).filter(new Predicate() { // from class: ma.k0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return m0.y((JsonObject) obj);
                }
            }).map(new Function() { // from class: ma.l0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return m0.z((JsonObject) obj);
                }
            }).findFirst().orElse(null);
            if (qa.y.o(jsonObject)) {
                return zHas;
            }
            return jsonObject.getString("style", "").equalsIgnoreCase("SHORTS") || jsonObject.getObject("icon").getString("iconType", "").toLowerCase().contains("shorts");
        } catch (Exception e) {
            throw new aa.h("Could not determine if this is short-form content", e);
        }
    }

    @Override // oa.l
    public String m() throws aa.h {
        if (this.videoInfo.has("detailedMetadataSnippets")) {
            return r0.J(this.videoInfo.getArray("detailedMetadataSnippets").getObject(0).getObject("snippetText"));
        }
        if (this.videoInfo.has("descriptionSnippet")) {
            return r0.J(this.videoInfo.getObject("descriptionSnippet"));
        }
        return null;
    }

    public m0(JsonObject jsonObject, org.schabi.newpipe.extractor.localization.f0 f0Var) {
        this.videoInfo = jsonObject;
        this.timeAgoParser = f0Var;
    }

    private long u(String str, boolean z6) throws aa.h, NumberFormatException {
        if (str.toLowerCase().contains(NO_VIEWS_LOWERCASE)) {
            return 0L;
        }
        if (str.toLowerCase().contains("recommended")) {
            return -1L;
        }
        if (z6) {
            return qa.y.r(str);
        }
        return Long.parseLong(qa.y.u(str));
    }

    @Override // oa.l
    public long getDuration() throws aa.h {
        JsonObject jsonObject;
        if (getStreamType() == oa.o.LIVE_STREAM) {
            return -1L;
        }
        String strJ = r0.J(this.videoInfo.getObject("lengthText"));
        if (qa.y.m(strJ)) {
            strJ = this.videoInfo.getString("lengthSeconds");
            if (qa.y.m(strJ) && (jsonObject = (JsonObject) this.videoInfo.getArray("thumbnailOverlays").stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).filter(new Predicate() { // from class: ma.j0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return m0.x((JsonObject) obj);
                }
            }).findFirst().orElse(null)) != null) {
                strJ = r0.J(jsonObject.getObject("thumbnailOverlayTimeStatusRenderer").getObject("text"));
            }
            if (qa.y.m(strJ)) {
                if (v()) {
                    return -1L;
                }
                throw new aa.h("Could not get duration");
            }
        }
        return r0.o0(strJ);
    }

    @Override // oa.l
    public String i() throws aa.h {
        if (getStreamType().equals(oa.o.LIVE_STREAM)) {
            return null;
        }
        if (v()) {
            return DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm").format(s());
        }
        String strJ = r0.J(this.videoInfo.getObject("publishedTimeText"));
        if (qa.y.m(strJ) && this.videoInfo.has("videoInfo")) {
            strJ = this.videoInfo.getObject("videoInfo").getArray("runs").getObject(2).getString("text");
        }
        if (qa.y.m(strJ)) {
            return null;
        }
        return strJ;
    }

    @Override // oa.l
    public org.schabi.newpipe.extractor.localization.e j() throws aa.h {
        if (getStreamType().equals(oa.o.LIVE_STREAM)) {
            return null;
        }
        if (v()) {
            return new org.schabi.newpipe.extractor.localization.e(s());
        }
        String strI = i();
        if (this.timeAgoParser == null || qa.y.m(strI)) {
            return null;
        }
        try {
            return this.timeAgoParser.h(strI);
        } catch (aa.h e) {
            throw new aa.h("Could not get upload date", e);
        }
    }

    @Override // oa.l
    public boolean k() throws aa.h {
        if (!w() && !getName().equals("[Private video]") && !getName().equals("[Deleted video]")) {
            return false;
        }
        return true;
    }

    @Override // oa.l
    public long n() throws aa.h {
        if (!w() && !v()) {
            String strJ = r0.J(this.videoInfo.getObject("viewCountText"));
            if (!qa.y.m(strJ)) {
                try {
                    return u(strJ, false);
                } catch (Exception unused) {
                }
            }
            if (getStreamType() != oa.o.LIVE_STREAM) {
                try {
                    return t();
                } catch (Exception unused2) {
                }
            }
            if (this.videoInfo.has("videoInfo")) {
                try {
                    return u(this.videoInfo.getObject("videoInfo").getArray("runs").getObject(0).getString("text", ""), true);
                } catch (Exception unused3) {
                }
            }
            if (this.videoInfo.has("shortViewCountText")) {
                try {
                    String strJ2 = r0.J(this.videoInfo.getObject("shortViewCountText"));
                    if (!qa.y.m(strJ2)) {
                        return u(strJ2, true);
                    }
                } catch (Exception unused4) {
                }
            }
        }
        return -1L;
    }
}
