package ffmpeg.base;

import com.narvii.util.Utils;
import com.narvii.video.model.AVClipInfoPack;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MediaEditingConfig.kt */
/* loaded from: classes4.dex */
public final class MediaEditingConfig {
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
    public static final Companion Companion = new Companion(null);
    public static final int WRAP_CONTENT = -2;
    private int actionType;
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
    private final AVClipInfoPack inputClip;
    private final List<AVClipInfoPack> inputClipList;
    private ArrayList<Boolean> inputHasAudioTrackList;
    private ArrayList<Boolean> inputHasVideoTrackList;
    private ArrayList<Boolean> isVerticalVideoList;
    private final boolean keepFixedDimension;
    private final boolean keyframeOnlyForScreenshot;
    private final String maxVideoBitrate;
    private final boolean needProgressCallback;
    private ArrayList<Float> orgVideoDARList;
    private ArrayList<Integer> orgVideoHeightList;
    private ArrayList<Integer> orgVideoWidthList;
    private final File output;
    private boolean runningInBackground;
    private int screenshotCount;
    private float screenshotRate;
    private final String screenshotScaleRatio;
    private final int startTime;
    private final boolean verticalFlip;
    private final String videoBufSize;
    private final boolean videoOnly;

    public MediaEditingConfig(Companion.Builder builder) {
        Intrinsics.checkParameterIsNotNull(builder, "builder");
        this.isVerticalVideoList = new ArrayList<>();
        this.orgVideoWidthList = new ArrayList<>();
        this.orgVideoHeightList = new ArrayList<>();
        this.orgVideoDARList = new ArrayList<>();
        this.inputHasAudioTrackList = new ArrayList<>();
        this.inputHasVideoTrackList = new ArrayList<>();
        this.actionType = builder.getType();
        this.inputClip = builder.getInputClip();
        this.inputClipList = builder.getInputClipList();
        this.output = builder.getOutput();
        this.duration = builder.getDuration();
        this.startTime = builder.getStartTime();
        int i = (int) ((573440 / this.duration) * 1000);
        int i2 = i < 3500 ? i - 128 : 3372;
        this.maxVideoBitrate = String.valueOf(i2) + "k";
        this.videoBufSize = String.valueOf(i2 * 2) + "k";
        this.keyframeOnlyForScreenshot = builder.getKeyframeOnlyForScreenshot();
        this.keepFixedDimension = builder.getKeepFixedDimension();
        this.videoOnly = builder.getVideoOnly();
        this.audioOnly = builder.getAudioOnly();
        this.forceVideoCodecCopy = builder.getForceVideoCodecCopy();
        this.forceAudioCodecCopy = builder.getForceAudioCodecCopy();
        this.additionalMediaInputList = builder.getAdditionalAudioInputList();
        this.frameItemWidth = builder.getFrameItemWidth();
        this.frameItemHeight = builder.getFrameItemHeight();
        this.screenshotCount = builder.getScreenshotCount();
        this.screenshotRate = builder.getScreenshotRate();
        this.screenshotScaleRatio = builder.getScreenshotScaleRatio();
        this.horizontalFlip = builder.getHorizontalFlip();
        this.verticalFlip = builder.getVerticalFlip();
        this.needProgressCallback = builder.getNeedProgressCallback();
        this.dropNegativeTs = builder.getDropNegativeTs();
    }

    public final int getActionType() {
        return this.actionType;
    }

    public final AVClipInfoPack getInputClip() {
        return this.inputClip;
    }

    public final List<AVClipInfoPack> getInputClipList() {
        return this.inputClipList;
    }

    public final File getOutput() {
        return this.output;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final int getStartTime() {
        return this.startTime;
    }

    public final String getMaxVideoBitrate() {
        return this.maxVideoBitrate;
    }

    public final String getVideoBufSize() {
        return this.videoBufSize;
    }

    public final boolean getKeyframeOnlyForScreenshot() {
        return this.keyframeOnlyForScreenshot;
    }

    public final boolean getKeepFixedDimension() {
        return this.keepFixedDimension;
    }

    public final boolean getVideoOnly() {
        return this.videoOnly;
    }

    public final boolean getAudioOnly() {
        return this.audioOnly;
    }

    public final boolean getForceVideoCodecCopy() {
        return this.forceVideoCodecCopy;
    }

    public final boolean getForceAudioCodecCopy() {
        return this.forceAudioCodecCopy;
    }

    public final ArrayList<AVClipInfoPack> getAdditionalMediaInputList() {
        return this.additionalMediaInputList;
    }

    public final int getFrameItemWidth() {
        return this.frameItemWidth;
    }

    public final int getFrameItemHeight() {
        return this.frameItemHeight;
    }

    public final int getScreenshotCount() {
        return this.screenshotCount;
    }

    public final float getScreenshotRate() {
        return this.screenshotRate;
    }

    public final String getScreenshotScaleRatio() {
        return this.screenshotScaleRatio;
    }

    public final ArrayList<Boolean> isVerticalVideoList() {
        return this.isVerticalVideoList;
    }

    public final ArrayList<Integer> getOrgVideoWidthList() {
        return this.orgVideoWidthList;
    }

    public final ArrayList<Integer> getOrgVideoHeightList() {
        return this.orgVideoHeightList;
    }

    public final ArrayList<Float> getOrgVideoDARList() {
        return this.orgVideoDARList;
    }

    public final ArrayList<Boolean> getInputHasAudioTrackList() {
        return this.inputHasAudioTrackList;
    }

    public final ArrayList<Boolean> getInputHasVideoTrackList() {
        return this.inputHasVideoTrackList;
    }

    public final boolean getRunningInBackground() {
        return this.runningInBackground;
    }

    public final void setRunningInBackground(boolean z) {
        this.runningInBackground = z;
    }

    public final boolean getForceSoftware() {
        return this.forceSoftware;
    }

    public final void setForceSoftware(boolean z) {
        this.forceSoftware = z;
    }

    public final boolean getHorizontalFlip() {
        return this.horizontalFlip;
    }

    public final boolean getVerticalFlip() {
        return this.verticalFlip;
    }

    public final boolean getNeedProgressCallback() {
        return this.needProgressCallback;
    }

    public final boolean getDropNegativeTs() {
        return this.dropNegativeTs;
    }

    public final void setTrim(boolean z) {
        int i;
        if (z) {
            i = this.actionType | 8;
        } else {
            i = this.actionType & (-9);
        }
        this.actionType = i;
    }

    public final void setTranscodeVideo(boolean z) {
        int i;
        if (z) {
            i = this.actionType | 2;
        } else {
            i = this.actionType & (-3);
        }
        this.actionType = i;
    }

    public final void setTranscodeAudio(boolean z) {
        int i;
        if (z) {
            i = this.actionType | 4;
        } else {
            i = this.actionType & (-5);
        }
        this.actionType = i;
    }

    public static /* synthetic */ float getOrgVideoSar$default(MediaEditingConfig mediaEditingConfig, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return mediaEditingConfig.getOrgVideoSar(i);
    }

    public final float getOrgVideoSar(int i) {
        float fFloatValue = this.orgVideoDARList.get(i).floatValue();
        Integer num = this.orgVideoHeightList.get(i);
        Intrinsics.checkExpressionValueIsNotNull(num, "orgVideoHeightList[clipIndex]");
        float fFloatValue2 = fFloatValue * num.floatValue();
        Integer num2 = this.orgVideoWidthList.get(i);
        Intrinsics.checkExpressionValueIsNotNull(num2, "orgVideoWidthList[clipIndex]");
        return fFloatValue2 / num2.floatValue();
    }

    public final boolean isImageInput() {
        return Utils.isBMP(this.inputClip.inputPath) || Utils.isJPG(this.inputClip.inputPath) || Utils.isPNG(this.inputClip.inputPath);
    }

    /* compiled from: MediaEditingConfig.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* compiled from: MediaEditingConfig.kt */
        public static final class Builder {
            private final ArrayList<AVClipInfoPack> additionalAudioInputList;
            private boolean audioOnly;
            private boolean dropNegativeTs;
            private int duration;
            private boolean forceAudioCodecCopy;
            private boolean forceVideoCodecCopy;
            private int frameItemHeight;
            private int frameItemWidth;
            private boolean horizontalFlip;
            private final AVClipInfoPack inputClip;
            private final List<AVClipInfoPack> inputClipList;
            private boolean keepFixedDimension;
            private boolean keyframeOnlyForScreenshot;
            private boolean needProgressCallback;
            private final File output;
            private int screenshotCount;
            private float screenshotRate;
            private String screenshotScaleRatio;
            private int startTime;
            private final int type;
            private boolean verticalFlip;
            private boolean videoOnly;

            public /* synthetic */ Builder(AVClipInfoPack aVClipInfoPack, File file, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(aVClipInfoPack, file, (i2 & 4) != 0 ? 1 : i);
            }

            public Builder(AVClipInfoPack inputClip, File output, int i) {
                Intrinsics.checkParameterIsNotNull(inputClip, "inputClip");
                Intrinsics.checkParameterIsNotNull(output, "output");
                this.additionalAudioInputList = new ArrayList<>();
                this.screenshotCount = 1;
                this.screenshotRate = 1.0f;
                this.frameItemWidth = 100;
                this.frameItemHeight = 200;
                this.inputClip = inputClip;
                this.inputClipList = CollectionsKt__CollectionsJVMKt.listOf(inputClip);
                this.output = output;
                this.type = i;
            }

            public /* synthetic */ Builder(List list, File file, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((List<? extends AVClipInfoPack>) list, file, (i2 & 4) != 0 ? 1 : i);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public Builder(List<? extends AVClipInfoPack> inputClipList, File output, int i) {
                Intrinsics.checkParameterIsNotNull(inputClipList, "inputClipList");
                Intrinsics.checkParameterIsNotNull(output, "output");
                this.additionalAudioInputList = new ArrayList<>();
                this.screenshotCount = 1;
                this.screenshotRate = 1.0f;
                this.frameItemWidth = 100;
                this.frameItemHeight = 200;
                this.inputClip = (AVClipInfoPack) inputClipList.get(0);
                this.inputClipList = inputClipList;
                this.output = output;
                this.type = i;
            }

            public final AVClipInfoPack getInputClip() {
                return this.inputClip;
            }

            public final File getOutput() {
                return this.output;
            }

            public final List<AVClipInfoPack> getInputClipList() {
                return this.inputClipList;
            }

            public final int getType() {
                return this.type;
            }

            public final ArrayList<AVClipInfoPack> getAdditionalAudioInputList() {
                return this.additionalAudioInputList;
            }

            public final int getDuration() {
                return this.duration;
            }

            public final int getStartTime() {
                return this.startTime;
            }

            public final int getScreenshotCount() {
                return this.screenshotCount;
            }

            public final float getScreenshotRate() {
                return this.screenshotRate;
            }

            public final String getScreenshotScaleRatio() {
                return this.screenshotScaleRatio;
            }

            public final boolean getKeyframeOnlyForScreenshot() {
                return this.keyframeOnlyForScreenshot;
            }

            public final boolean getKeepFixedDimension() {
                return this.keepFixedDimension;
            }

            public final boolean getVideoOnly() {
                return this.videoOnly;
            }

            public final boolean getAudioOnly() {
                return this.audioOnly;
            }

            public final boolean getForceVideoCodecCopy() {
                return this.forceVideoCodecCopy;
            }

            public final boolean getForceAudioCodecCopy() {
                return this.forceAudioCodecCopy;
            }

            public final int getFrameItemWidth() {
                return this.frameItemWidth;
            }

            public final int getFrameItemHeight() {
                return this.frameItemHeight;
            }

            public final boolean getHorizontalFlip() {
                return this.horizontalFlip;
            }

            public final boolean getVerticalFlip() {
                return this.verticalFlip;
            }

            public final boolean getNeedProgressCallback() {
                return this.needProgressCallback;
            }

            public final boolean getDropNegativeTs() {
                return this.dropNegativeTs;
            }

            public final Builder additionalAudioInputList(List<? extends AVClipInfoPack> list) {
                Intrinsics.checkParameterIsNotNull(list, "list");
                this.additionalAudioInputList.clear();
                this.additionalAudioInputList.addAll(list);
                return this;
            }

            public final Builder duration(int i) {
                this.duration = i;
                return this;
            }

            public final Builder startTime(int i) {
                this.startTime = i;
                return this;
            }

            public final Builder screenshotScaleToSize(int i, int i2) {
                if (i > 0 || i2 > 0) {
                    this.screenshotScaleRatio = String.valueOf(i) + ":" + String.valueOf(i2);
                }
                return this;
            }

            public final Builder screenshotCount(int i) {
                this.screenshotCount = i;
                return this;
            }

            public final Builder screenshotRate(float f) {
                this.screenshotRate = f;
                return this;
            }

            public final Builder keyframeOnlyForScreenshot(boolean z) {
                this.keyframeOnlyForScreenshot = z;
                return this;
            }

            public final Builder keepFixedDimension(boolean z) {
                this.keepFixedDimension = z;
                return this;
            }

            public final Builder videoOnly(boolean z) {
                this.videoOnly = z;
                return this;
            }

            public final Builder audioOnly(boolean z) {
                this.audioOnly = z;
                return this;
            }

            public final Builder forceAudioCodecCopy(boolean z) {
                this.forceAudioCodecCopy = z;
                return this;
            }

            public final Builder forceVideoCodecCopy(boolean z) {
                this.forceVideoCodecCopy = z;
                return this;
            }

            public final Builder frameItemWidth(int i) {
                if (i > 0) {
                    this.frameItemWidth = i;
                }
                return this;
            }

            public final Builder frameItemHeight(int i) {
                if (i > 0) {
                    this.frameItemHeight = i;
                }
                return this;
            }

            public final Builder horizontalFlip(boolean z) {
                this.horizontalFlip = z;
                return this;
            }

            public final Builder needProgressCallback(boolean z) {
                this.needProgressCallback = z;
                return this;
            }

            public final Builder dropNegativeTs(boolean z) {
                this.dropNegativeTs = z;
                return this;
            }

            public final MediaEditingConfig build() {
                return new MediaEditingConfig(this);
            }
        }
    }
}
