package oa;

import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import qa.y;

/* JADX INFO: loaded from: classes11.dex */
public class i extends x9.d {
    private int ageLimit;
    private List<oa.a> audioStreams;
    private String category;
    private String dashMpdUrl;
    private e description;
    private long dislikeCount;
    private long duration;
    private String hlsUrl;
    private String host;
    private Locale language;
    private String licence;
    private long likeCount;
    private List<x9.n> metaInfo;
    private List<f> previewFrames;
    private h.a privacy;
    private List<x9.e> relatedItems;
    private boolean shortFormContent;
    private long startPosition;
    private List<n> streamSegments;
    private o streamType;
    private List<x9.c> subChannelAvatars;
    private String subChannelName;
    private String subChannelUrl;
    private List<q> subtitles;
    private String supportInfo;
    private List<String> tags;
    private String textualUploadDate;
    private List<x9.c> thumbnails;
    private org.schabi.newpipe.extractor.localization.e uploadDate;
    private List<x9.c> uploaderAvatars;
    private String uploaderName;
    private long uploaderSubscriberCount;
    private String uploaderUrl;
    private boolean uploaderVerified;
    private List<s> videoOnlyStreams;
    private List<s> videoStreams;
    private long viewCount;

    public i(int i10, String str, String str2, o oVar, String str3, String str4, int i11) {
        super(i10, str3, str, str2, str4);
        this.thumbnails = Collections.emptyList();
        this.duration = -1L;
        this.viewCount = -1L;
        this.likeCount = -1L;
        this.dislikeCount = -1L;
        this.uploaderName = "";
        this.uploaderUrl = "";
        this.uploaderAvatars = Collections.emptyList();
        this.uploaderVerified = false;
        this.uploaderSubscriberCount = -1L;
        this.subChannelName = "";
        this.subChannelUrl = "";
        this.subChannelAvatars = Collections.emptyList();
        this.videoStreams = Collections.emptyList();
        this.audioStreams = Collections.emptyList();
        this.videoOnlyStreams = Collections.emptyList();
        this.dashMpdUrl = "";
        this.hlsUrl = "";
        this.relatedItems = Collections.emptyList();
        this.startPosition = 0L;
        this.subtitles = Collections.emptyList();
        this.host = "";
        this.category = "";
        this.licence = "";
        this.supportInfo = "";
        this.language = null;
        this.tags = Collections.emptyList();
        this.streamSegments = Collections.emptyList();
        this.metaInfo = Collections.emptyList();
        this.shortFormContent = false;
        this.previewFrames = Collections.emptyList();
        this.streamType = oVar;
        this.ageLimit = i11;
    }

    public void A(boolean z6) {
        this.shortFormContent = z6;
    }

    public void B(long j6) {
        this.startPosition = j6;
    }

    public void C(List<n> list) {
        this.streamSegments = list;
    }

    public void D(List<x9.c> list) {
        this.subChannelAvatars = list;
    }

    public void E(String str) {
        this.subChannelName = str;
    }

    public void F(String str) {
        this.subChannelUrl = str;
    }

    public void G(List<q> list) {
        this.subtitles = list;
    }

    public void H(String str) {
        this.supportInfo = str;
    }

    public void I(List<String> list) {
        this.tags = list;
    }

    public void J(String str) {
        this.textualUploadDate = str;
    }

    public void K(List<x9.c> list) {
        this.thumbnails = list;
    }

    public void L(org.schabi.newpipe.extractor.localization.e eVar) {
        this.uploadDate = eVar;
    }

    public void M(List<x9.c> list) {
        this.uploaderAvatars = list;
    }

    public void N(String str) {
        this.uploaderName = str;
    }

    public void O(long j6) {
        this.uploaderSubscriberCount = j6;
    }

    public void P(String str) {
        this.uploaderUrl = str;
    }

    public void Q(boolean z6) {
        this.uploaderVerified = z6;
    }

    public void R(List<s> list) {
        this.videoOnlyStreams = list;
    }

    public void S(List<s> list) {
        this.videoStreams = list;
    }

    public void T(long j6) {
        this.viewCount = j6;
    }

    public List<oa.a> f() {
        return this.audioStreams;
    }

    public List<s> j() {
        return this.videoOnlyStreams;
    }

    public List<s> k() {
        return this.videoStreams;
    }

    public void l(List<oa.a> list) {
        this.audioStreams = list;
    }

    public void m(String str) {
        this.category = str;
    }

    public void n(String str) {
        this.dashMpdUrl = str;
    }

    public void o(e eVar) {
        this.description = eVar;
    }

    public void p(long j6) {
        this.dislikeCount = j6;
    }

    public void q(long j6) {
        this.duration = j6;
    }

    public void r(String str) {
        this.hlsUrl = str;
    }

    public void s(String str) {
        this.host = str;
    }

    public void t(Locale locale) {
        this.language = locale;
    }

    public void u(String str) {
        this.licence = str;
    }

    public void v(long j6) {
        this.likeCount = j6;
    }

    public void w(List<x9.n> list) {
        this.metaInfo = list;
    }

    public void x(List<f> list) {
        this.previewFrames = list;
    }

    public void y(h.a aVar) {
        this.privacy = aVar;
    }

    public void z(List<x9.e> list) {
        this.relatedItems = list;
    }

    public static class a extends aa.d {
        a(String str) {
            super(str);
        }
    }

    private static i c(h hVar) throws aa.d {
        String strN = hVar.n();
        o oVarH = hVar.H();
        String strG = hVar.g();
        String strI = hVar.i();
        int iP = hVar.p();
        if (oVarH != o.NONE && !y.m(strN) && !y.m(strG) && strI != null && iP != -1) {
            return new i(hVar.l(), strN, hVar.j(), oVarH, strG, strI, iP);
        }
        throw new aa.d("Some important stream information was not given.");
    }

    private static void d(i iVar, h hVar) {
        try {
            iVar.K(hVar.P());
        } catch (Exception e) {
            iVar.b(e);
        }
        try {
            iVar.q(hVar.A());
        } catch (Exception e2) {
            iVar.b(e2);
        }
        try {
            iVar.N(hVar.U());
        } catch (Exception e6) {
            iVar.b(e6);
        }
        try {
            iVar.P(hVar.W());
        } catch (Exception e7) {
            iVar.b(e7);
        }
        try {
            iVar.M(hVar.T());
        } catch (Exception e10) {
            iVar.b(e10);
        }
        try {
            iVar.Q(hVar.b0());
        } catch (Exception e11) {
            iVar.b(e11);
        }
        try {
            iVar.O(hVar.V());
        } catch (Exception e12) {
            iVar.b(e12);
        }
        try {
            iVar.E(hVar.J());
        } catch (Exception e13) {
            iVar.b(e13);
        }
        try {
            iVar.F(hVar.K());
        } catch (Exception e14) {
            iVar.b(e14);
        }
        try {
            iVar.D(hVar.I());
        } catch (Exception e15) {
            iVar.b(e15);
        }
        try {
            iVar.o(hVar.t());
        } catch (Exception e16) {
            iVar.b(e16);
        }
        try {
            iVar.T(hVar.Z());
        } catch (Exception e17) {
            iVar.b(e17);
        }
        try {
            iVar.J(hVar.O());
        } catch (Exception e18) {
            iVar.b(e18);
        }
        try {
            iVar.L(hVar.S());
        } catch (Exception e19) {
            iVar.b(e19);
        }
        try {
            iVar.B(hVar.Q());
        } catch (Exception e20) {
            iVar.b(e20);
        }
        try {
            iVar.v(hVar.C());
        } catch (Exception e21) {
            iVar.b(e21);
        }
        try {
            iVar.p(hVar.u());
        } catch (Exception e22) {
            iVar.b(e22);
        }
        try {
            iVar.G(hVar.L());
        } catch (Exception e23) {
            iVar.b(e23);
        }
        try {
            iVar.s(hVar.y());
        } catch (Exception e24) {
            iVar.b(e24);
        }
        try {
            iVar.y(hVar.E());
        } catch (Exception e25) {
            iVar.b(e25);
        }
        try {
            iVar.m(hVar.r());
        } catch (Exception e26) {
            iVar.b(e26);
        }
        try {
            iVar.u(hVar.B());
        } catch (Exception e27) {
            iVar.b(e27);
        }
        try {
            iVar.t(hVar.z());
        } catch (Exception e28) {
            iVar.b(e28);
        }
        try {
            iVar.I(hVar.N());
        } catch (Exception e29) {
            iVar.b(e29);
        }
        try {
            iVar.H(hVar.M());
        } catch (Exception e30) {
            iVar.b(e30);
        }
        try {
            iVar.C(hVar.G());
        } catch (Exception e31) {
            iVar.b(e31);
        }
        try {
            iVar.w(hVar.D());
        } catch (Exception e32) {
            iVar.b(e32);
        }
        try {
            iVar.x(hVar.w());
        } catch (Exception e33) {
            iVar.b(e33);
        }
        try {
            iVar.A(hVar.a0());
        } catch (Exception e34) {
            iVar.b(e34);
        }
        iVar.z(qa.a.a(iVar, hVar));
    }

    private static void e(i iVar, h hVar) throws aa.d {
        try {
            iVar.n(hVar.s());
        } catch (Exception e) {
            iVar.b(new aa.d("Couldn't get DASH manifest", e));
        }
        try {
            iVar.r(hVar.x());
        } catch (Exception e2) {
            iVar.b(new aa.d("Couldn't get HLS manifest", e2));
        }
        try {
            iVar.l(hVar.q());
        } catch (aa.c e6) {
            throw e6;
        } catch (Exception e7) {
            iVar.b(new aa.d("Couldn't get audio streams", e7));
        }
        try {
            iVar.S(hVar.Y());
        } catch (Exception e10) {
            iVar.b(new aa.d("Couldn't get video streams", e10));
        }
        try {
            iVar.R(hVar.X());
        } catch (Exception e11) {
            iVar.b(new aa.d("Couldn't get video only streams", e11));
        }
        if (iVar.videoStreams.isEmpty() && iVar.audioStreams.isEmpty()) {
            throw new a("Could not get any stream. See error variable to get further details.");
        }
    }

    public static i g(String str) throws IOException, aa.d {
        return i(x9.p.d(str), str);
    }

    public static i h(h hVar) throws IOException, aa.d {
        hVar.b();
        try {
            i iVarC = c(hVar);
            e(iVarC, hVar);
            d(iVarC, hVar);
            return iVarC;
        } catch (aa.d e) {
            String strV = hVar.v();
            if (y.m(strV)) {
                throw e;
            }
            throw new aa.b(strV, e);
        }
    }

    public static i i(x9.s sVar, String str) throws IOException, aa.d {
        return h(sVar.g(str));
    }
}
