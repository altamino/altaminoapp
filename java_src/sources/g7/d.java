package g7;

import com.narvii.util.Utils;
import com.narvii.video.model.AVClipInfoPack;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class d {
    public static final int ACTION_AUTO = 1;
    public static final int ACTION_CONCAT_VIDEO = 4096;
    public static final int ACTION_CONVERT_GIF_TO_VIDEO = 2048;
    public static final int ACTION_CONVERT_IMG_TO_VIDEO = 1024;
    public static final int ACTION_COPY_MIX_AUDIO_VIDEO = 128;
    public static final int ACTION_FLIP_MEDIA = 512;
    public static final int ACTION_GENERATE_SILENT_AUDIO = 256;
    public static final int ACTION_MULTIPLE_MEDIA_MIX = 32;
    public static final int ACTION_SCREENSHOT = 16;
    public static final int ACTION_TRANSCODE_A = 4;
    public static final int ACTION_TRANSCODE_V = 2;
    public static final int ACTION_TRIM = 8;
    public static final int ACTION_WAVE_FORM = 64;

    @NotNull
    public static final a Companion = new a(null);
    public static final int WRAP_CONTENT = -2;
    private int actionType;

    @NotNull
    private final ArrayList<AVClipInfoPack> additionalMediaInputList;
    private final boolean audioOnly;
    private boolean dropNegativeTs;
    private final int duration;
    private final boolean forceAudioCodecCopy;
    private boolean forceSoftware;
    private final boolean forceVideoCodecCopy;
    private final int frameItemHeight;
    private final int frameItemWidth;
    private final boolean horizontalFlip;

    @NotNull
    private final AVClipInfoPack inputClip;

    @NotNull
    private final List<AVClipInfoPack> inputClipList;

    @NotNull
    private ArrayList<Boolean> inputHasAudioTrackList;

    @NotNull
    private ArrayList<Boolean> inputHasVideoTrackList;

    @NotNull
    private ArrayList<Boolean> isVerticalVideoList;
    private final boolean keepFixedDimension;
    private final boolean keyframeOnlyForScreenshot;

    @NotNull
    private final String maxVideoBitrate;
    private final boolean needProgressCallback;

    @NotNull
    private ArrayList<Float> orgVideoDARList;

    @NotNull
    private ArrayList<Integer> orgVideoHeightList;

    @NotNull
    private ArrayList<Integer> orgVideoWidthList;

    @NotNull
    private final File output;
    private boolean runningInBackground;
    private int screenshotCount;
    private float screenshotRate;

    @Nullable
    private final String screenshotScaleRatio;
    private final int startTime;
    private final boolean verticalFlip;

    @NotNull
    private final String videoBufSize;
    private final boolean videoOnly;

    public static final class a {

        /* JADX INFO: renamed from: g7.d$a$a, reason: collision with other inner class name */
        public static final class C0381a {

            @NotNull
            private final ArrayList<AVClipInfoPack> additionalAudioInputList;
            private boolean audioOnly;
            private boolean dropNegativeTs;
            private int duration;
            private boolean forceAudioCodecCopy;
            private boolean forceVideoCodecCopy;
            private int frameItemHeight;
            private int frameItemWidth;
            private boolean horizontalFlip;

            @NotNull
            private final AVClipInfoPack inputClip;

            @NotNull
            private final List<AVClipInfoPack> inputClipList;
            private boolean keepFixedDimension;
            private boolean keyframeOnlyForScreenshot;
            private boolean needProgressCallback;

            @NotNull
            private final File output;
            private int screenshotCount;
            private float screenshotRate;

            @Nullable
            private String screenshotScaleRatio;
            private int startTime;
            private final int type;
            private boolean verticalFlip;
            private boolean videoOnly;

            public C0381a(@NotNull AVClipInfoPack inputClip, @NotNull File output, int i10) {
                t.j(inputClip, "inputClip");
                t.j(output, "output");
                this.additionalAudioInputList = new ArrayList<>();
                this.screenshotCount = 1;
                this.screenshotRate = 1.0f;
                this.frameItemWidth = 100;
                this.frameItemHeight = 200;
                this.inputClip = inputClip;
                this.inputClipList = u.e(inputClip);
                this.output = output;
                this.type = i10;
            }

            @Nullable
            public final String A() {
                return this.screenshotScaleRatio;
            }

            public final int B() {
                return this.startTime;
            }

            public final int C() {
                return this.type;
            }

            public final boolean D() {
                return this.verticalFlip;
            }

            public final boolean E() {
                return this.videoOnly;
            }

            @NotNull
            public final C0381a F(boolean z6) {
                this.horizontalFlip = z6;
                return this;
            }

            @NotNull
            public final C0381a G(boolean z6) {
                this.keepFixedDimension = z6;
                return this;
            }

            @NotNull
            public final C0381a H(boolean z6) {
                this.keyframeOnlyForScreenshot = z6;
                return this;
            }

            @NotNull
            public final C0381a I(boolean z6) {
                this.needProgressCallback = z6;
                return this;
            }

            @NotNull
            public final C0381a J(int i10) {
                this.screenshotCount = i10;
                return this;
            }

            @NotNull
            public final C0381a K(float f) {
                this.screenshotRate = f;
                return this;
            }

            @NotNull
            public final C0381a M(int i10) {
                this.startTime = i10;
                return this;
            }

            @NotNull
            public final C0381a N(boolean z6) {
                this.videoOnly = z6;
                return this;
            }

            @NotNull
            public final C0381a b(boolean z6) {
                this.audioOnly = z6;
                return this;
            }

            @NotNull
            public final C0381a d(boolean z6) {
                this.dropNegativeTs = z6;
                return this;
            }

            @NotNull
            public final C0381a e(int i10) {
                this.duration = i10;
                return this;
            }

            @NotNull
            public final C0381a f(boolean z6) {
                this.forceAudioCodecCopy = z6;
                return this;
            }

            @NotNull
            public final C0381a g(boolean z6) {
                this.forceVideoCodecCopy = z6;
                return this;
            }

            @NotNull
            public final C0381a h(int i10) {
                if (i10 > 0) {
                    this.frameItemHeight = i10;
                }
                return this;
            }

            @NotNull
            public final C0381a i(int i10) {
                if (i10 > 0) {
                    this.frameItemWidth = i10;
                }
                return this;
            }

            @NotNull
            public final ArrayList<AVClipInfoPack> j() {
                return this.additionalAudioInputList;
            }

            public final boolean k() {
                return this.audioOnly;
            }

            public final boolean l() {
                return this.dropNegativeTs;
            }

            public final int m() {
                return this.duration;
            }

            public final boolean n() {
                return this.forceAudioCodecCopy;
            }

            public final boolean o() {
                return this.forceVideoCodecCopy;
            }

            public final int p() {
                return this.frameItemHeight;
            }

            public final int q() {
                return this.frameItemWidth;
            }

            public final boolean r() {
                return this.horizontalFlip;
            }

            @NotNull
            public final AVClipInfoPack s() {
                return this.inputClip;
            }

            @NotNull
            public final List<AVClipInfoPack> t() {
                return this.inputClipList;
            }

            public final boolean u() {
                return this.keepFixedDimension;
            }

            public final boolean v() {
                return this.keyframeOnlyForScreenshot;
            }

            public final boolean w() {
                return this.needProgressCallback;
            }

            @NotNull
            public final File x() {
                return this.output;
            }

            public final int y() {
                return this.screenshotCount;
            }

            public final float z() {
                return this.screenshotRate;
            }

            @NotNull
            public final C0381a L(int i10, int i11) {
                if (i10 > 0 || i11 > 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(i10);
                    sb.append(kotlinx.serialization.json.internal.b.COLON);
                    sb.append(i11);
                    this.screenshotScaleRatio = sb.toString();
                }
                return this;
            }

            @NotNull
            public final C0381a a(@NotNull List<? extends AVClipInfoPack> list) {
                t.j(list, "list");
                this.additionalAudioInputList.clear();
                this.additionalAudioInputList.addAll(list);
                return this;
            }

            @NotNull
            public final d c() {
                return new d(this);
            }

            public /* synthetic */ C0381a(AVClipInfoPack aVClipInfoPack, File file, int i10, int i11, k kVar) {
                this(aVClipInfoPack, file, (i11 & 4) != 0 ? 1 : i10);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public C0381a(@NotNull List<? extends AVClipInfoPack> inputClipList, @NotNull File output, int i10) {
                t.j(inputClipList, "inputClipList");
                t.j(output, "output");
                this.additionalAudioInputList = new ArrayList<>();
                this.screenshotCount = 1;
                this.screenshotRate = 1.0f;
                this.frameItemWidth = 100;
                this.frameItemHeight = 200;
                this.inputClip = (AVClipInfoPack) inputClipList.get(0);
                this.inputClipList = inputClipList;
                this.output = output;
                this.type = i10;
            }

            public /* synthetic */ C0381a(List list, File file, int i10, int i11, k kVar) {
                this((List<? extends AVClipInfoPack>) list, file, (i11 & 4) != 0 ? 1 : i10);
            }
        }

        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    public final int A() {
        return this.screenshotCount;
    }

    public final float B() {
        return this.screenshotRate;
    }

    @Nullable
    public final String C() {
        return this.screenshotScaleRatio;
    }

    public final int D() {
        return this.startTime;
    }

    public final boolean E() {
        return this.verticalFlip;
    }

    @NotNull
    public final String F() {
        return this.videoBufSize;
    }

    public final boolean G() {
        return this.videoOnly;
    }

    @NotNull
    public final ArrayList<Boolean> I() {
        return this.isVerticalVideoList;
    }

    public final void J(boolean z6) {
        this.forceSoftware = z6;
    }

    public final void K(boolean z6) {
        this.runningInBackground = z6;
    }

    public final void L(boolean z6) {
        this.actionType = z6 ? this.actionType | 4 : this.actionType & (-5);
    }

    public final void M(boolean z6) {
        this.actionType = z6 ? this.actionType | 2 : this.actionType & (-3);
    }

    public final void N(boolean z6) {
        this.actionType = z6 ? this.actionType | 8 : this.actionType & (-9);
    }

    public final int a() {
        return this.actionType;
    }

    @NotNull
    public final ArrayList<AVClipInfoPack> b() {
        return this.additionalMediaInputList;
    }

    public final boolean c() {
        return this.audioOnly;
    }

    public final boolean d() {
        return this.dropNegativeTs;
    }

    public final int e() {
        return this.duration;
    }

    public final boolean f() {
        return this.forceAudioCodecCopy;
    }

    public final boolean g() {
        return this.forceSoftware;
    }

    public final boolean h() {
        return this.forceVideoCodecCopy;
    }

    public final int i() {
        return this.frameItemHeight;
    }

    public final int j() {
        return this.frameItemWidth;
    }

    public final boolean k() {
        return this.horizontalFlip;
    }

    @NotNull
    public final AVClipInfoPack l() {
        return this.inputClip;
    }

    @NotNull
    public final List<AVClipInfoPack> m() {
        return this.inputClipList;
    }

    @NotNull
    public final ArrayList<Boolean> n() {
        return this.inputHasAudioTrackList;
    }

    @NotNull
    public final ArrayList<Boolean> o() {
        return this.inputHasVideoTrackList;
    }

    public final boolean p() {
        return this.keepFixedDimension;
    }

    public final boolean q() {
        return this.keyframeOnlyForScreenshot;
    }

    @NotNull
    public final String r() {
        return this.maxVideoBitrate;
    }

    public final boolean s() {
        return this.needProgressCallback;
    }

    @NotNull
    public final ArrayList<Float> t() {
        return this.orgVideoDARList;
    }

    @NotNull
    public final ArrayList<Integer> u() {
        return this.orgVideoHeightList;
    }

    @NotNull
    public final ArrayList<Integer> x() {
        return this.orgVideoWidthList;
    }

    @NotNull
    public final File y() {
        return this.output;
    }

    public final boolean z() {
        return this.runningInBackground;
    }

    public d(@NotNull a.C0381a builder) {
        t.j(builder, "builder");
        this.isVerticalVideoList = new ArrayList<>();
        this.orgVideoWidthList = new ArrayList<>();
        this.orgVideoHeightList = new ArrayList<>();
        this.orgVideoDARList = new ArrayList<>();
        this.inputHasAudioTrackList = new ArrayList<>();
        this.inputHasVideoTrackList = new ArrayList<>();
        this.actionType = builder.C();
        this.inputClip = builder.s();
        this.inputClipList = builder.t();
        this.output = builder.x();
        int iM = builder.m();
        this.duration = iM;
        this.startTime = builder.B();
        int i10 = (int) ((573440.0f / iM) * 1000);
        int i11 = i10 < 3500 ? i10 - 128 : 3372;
        StringBuilder sb = new StringBuilder();
        sb.append(i11);
        sb.append('k');
        this.maxVideoBitrate = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i11 * 2);
        sb2.append('k');
        this.videoBufSize = sb2.toString();
        this.keyframeOnlyForScreenshot = builder.v();
        this.keepFixedDimension = builder.u();
        this.videoOnly = builder.E();
        this.audioOnly = builder.k();
        this.forceVideoCodecCopy = builder.o();
        this.forceAudioCodecCopy = builder.n();
        this.additionalMediaInputList = builder.j();
        this.frameItemWidth = builder.q();
        this.frameItemHeight = builder.p();
        this.screenshotCount = builder.y();
        this.screenshotRate = builder.z();
        this.screenshotScaleRatio = builder.A();
        this.horizontalFlip = builder.r();
        this.verticalFlip = builder.D();
        this.needProgressCallback = builder.w();
        this.dropNegativeTs = builder.l();
    }

    public static /* synthetic */ float w(d dVar, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return dVar.v(i10);
    }

    public final boolean H() {
        return Utils.isBMP(this.inputClip.inputPath) || Utils.isJPG(this.inputClip.inputPath) || Utils.isPNG(this.inputClip.inputPath);
    }

    public final float v(int i10) {
        float fFloatValue = this.orgVideoDARList.get(i10).floatValue();
        Integer num = this.orgVideoHeightList.get(i10);
        t.i(num, "get(...)");
        float fFloatValue2 = fFloatValue * num.floatValue();
        Integer num2 = this.orgVideoWidthList.get(i10);
        t.i(num2, "get(...)");
        return fFloatValue2 / num2.floatValue();
    }
}
