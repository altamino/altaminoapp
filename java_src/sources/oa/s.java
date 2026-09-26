package oa;

/* JADX INFO: loaded from: classes4.dex */
public final class s extends g {
    public static final String RESOLUTION_UNKNOWN = "";
    private int bitrate;
    private String codec;
    private int fps;
    private int height;
    private int indexEnd;
    private int indexStart;
    private int initEnd;
    private int initStart;

    @Deprecated
    public final boolean isVideoOnly;
    private int itag;
    private org.schabi.newpipe.extractor.services.youtube.a itagItem;
    private String quality;

    @Deprecated
    public final String resolution;
    private int width;

    public static final class a {
        private String content;
        private d deliveryMethod = d.PROGRESSIVE_HTTP;
        private String id;
        private boolean isUrl;
        private Boolean isVideoOnly;
        private org.schabi.newpipe.extractor.services.youtube.a itagItem;
        private String manifestUrl;
        private x9.m mediaFormat;
        private String resolution;

        public a b(String str, boolean z6) {
            this.content = str;
            this.isUrl = z6;
            return this;
        }

        public a c(d dVar) {
            this.deliveryMethod = dVar;
            return this;
        }

        public a d(String str) {
            this.id = str;
            return this;
        }

        public a f(org.schabi.newpipe.extractor.services.youtube.a aVar) {
            this.itagItem = aVar;
            return this;
        }

        public a g(String str) {
            this.manifestUrl = str;
            return this;
        }

        public a h(x9.m mVar) {
            this.mediaFormat = mVar;
            return this;
        }

        public a i(String str) {
            this.resolution = str;
            return this;
        }

        public s a() {
            String str = this.id;
            if (str == null) {
                throw new IllegalStateException("The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class.");
            }
            String str2 = this.content;
            if (str2 == null) {
                throw new IllegalStateException("The content of the video stream has been not set or is null. Please specify a non-null one with setContent.");
            }
            d dVar = this.deliveryMethod;
            if (dVar == null) {
                throw new IllegalStateException("The delivery method of the video stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod.");
            }
            Boolean bool = this.isVideoOnly;
            if (bool == null) {
                throw new IllegalStateException("The video stream has been not set as a video-only stream or as a video stream with embedded audio. Please specify this information with setIsVideoOnly.");
            }
            String str3 = this.resolution;
            if (str3 != null) {
                return new s(str, str2, this.isUrl, this.mediaFormat, dVar, str3, bool.booleanValue(), this.manifestUrl, this.itagItem);
            }
            throw new IllegalStateException("The resolution of the video stream has been not set. Please specify it with setResolution (use an empty string if you are not able to get it).");
        }

        public a e(boolean z6) {
            this.isVideoOnly = Boolean.valueOf(z6);
            return this;
        }
    }

    public String f() {
        return this.resolution;
    }

    private s(String str, String str2, boolean z6, x9.m mVar, d dVar, String str3, boolean z10, String str4, org.schabi.newpipe.extractor.services.youtube.a aVar) {
        super(str, str2, z6, mVar, dVar, str4);
        this.itag = -1;
        if (aVar != null) {
            this.itagItem = aVar;
            this.itag = aVar.id;
            this.bitrate = aVar.f();
            this.initStart = aVar.m();
            this.initEnd = aVar.l();
            this.indexStart = aVar.k();
            this.indexEnd = aVar.j();
            this.codec = aVar.g();
            this.height = aVar.i();
            this.width = aVar.r();
            this.quality = aVar.p();
            this.fps = aVar.h();
        }
        this.resolution = str3;
        this.isVideoOnly = z10;
    }

    @Override // oa.g
    public boolean b(g gVar) {
        if (super.b(gVar) && (gVar instanceof s)) {
            s sVar = (s) gVar;
            if (this.resolution.equals(sVar.resolution) && this.isVideoOnly == sVar.isVideoOnly) {
                return true;
            }
        }
        return false;
    }
}
