package oa;

import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends g {
    public static final int UNKNOWN_BITRATE = -1;
    private final Locale audioLocale;
    private final String audioTrackId;
    private final String audioTrackName;
    private final c audioTrackType;
    private final int averageBitrate;
    private int bitrate;
    private String codec;
    private int indexEnd;
    private int indexStart;
    private int initEnd;
    private int initStart;
    private int itag;
    private org.schabi.newpipe.extractor.services.youtube.a itagItem;
    private String quality;

    /* JADX INFO: renamed from: oa.a$a, reason: collision with other inner class name */
    public static final class C0472a {
        private Locale audioLocale;
        private String audioTrackId;
        private String audioTrackName;
        private c audioTrackType;
        private String content;
        private String id;
        private boolean isUrl;
        private org.schabi.newpipe.extractor.services.youtube.a itagItem;
        private String manifestUrl;
        private x9.m mediaFormat;
        private d deliveryMethod = d.PROGRESSIVE_HTTP;
        private int averageBitrate = -1;

        public C0472a b(Locale locale) {
            this.audioLocale = locale;
            return this;
        }

        public C0472a c(String str) {
            this.audioTrackId = str;
            return this;
        }

        public C0472a d(String str) {
            this.audioTrackName = str;
            return this;
        }

        public C0472a e(c cVar) {
            this.audioTrackType = cVar;
            return this;
        }

        public C0472a f(int i10) {
            this.averageBitrate = i10;
            return this;
        }

        public C0472a g(String str, boolean z6) {
            this.content = str;
            this.isUrl = z6;
            return this;
        }

        public C0472a h(d dVar) {
            this.deliveryMethod = dVar;
            return this;
        }

        public C0472a i(String str) {
            this.id = str;
            return this;
        }

        public C0472a j(org.schabi.newpipe.extractor.services.youtube.a aVar) {
            this.itagItem = aVar;
            return this;
        }

        public C0472a k(String str) {
            this.manifestUrl = str;
            return this;
        }

        public C0472a l(x9.m mVar) {
            this.mediaFormat = mVar;
            return this;
        }

        public a a() {
            String str = this.id;
            if (str == null) {
                throw new IllegalStateException("The identifier of the audio stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class.");
            }
            String str2 = this.content;
            if (str2 == null) {
                throw new IllegalStateException("The content of the audio stream has been not set or is null. Please specify a non-null one with setContent.");
            }
            d dVar = this.deliveryMethod;
            if (dVar != null) {
                return new a(str, str2, this.isUrl, this.mediaFormat, dVar, this.averageBitrate, this.manifestUrl, this.audioTrackId, this.audioTrackName, this.audioLocale, this.audioTrackType, this.itagItem);
            }
            throw new IllegalStateException("The delivery method of the audio stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod.");
        }
    }

    public int f() {
        return this.averageBitrate;
    }

    private a(String str, String str2, boolean z6, x9.m mVar, d dVar, int i10, String str3, String str4, String str5, Locale locale, c cVar, org.schabi.newpipe.extractor.services.youtube.a aVar) {
        super(str, str2, z6, mVar, dVar, str3);
        this.itag = -1;
        if (aVar != null) {
            this.itagItem = aVar;
            this.itag = aVar.id;
            this.quality = aVar.p();
            this.bitrate = aVar.f();
            this.initStart = aVar.m();
            this.initEnd = aVar.l();
            this.indexStart = aVar.k();
            this.indexEnd = aVar.j();
            this.codec = aVar.g();
        }
        this.averageBitrate = i10;
        this.audioTrackId = str4;
        this.audioTrackName = str5;
        this.audioLocale = locale;
        this.audioTrackType = cVar;
    }

    @Override // oa.g
    public boolean b(g gVar) {
        if (super.b(gVar) && (gVar instanceof a)) {
            a aVar = (a) gVar;
            if (this.averageBitrate == aVar.averageBitrate && Objects.equals(this.audioTrackId, aVar.audioTrackId) && this.audioTrackType == aVar.audioTrackType && Objects.equals(this.audioLocale, aVar.audioLocale)) {
                return true;
            }
        }
        return false;
    }
}
