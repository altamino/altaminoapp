package androidx.media3.common;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.media3.common.util.BundleableUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public final class Format implements Bundleable {
    public static final int NO_VALUE = -1;

    @UnstableApi
    public static final long OFFSET_SAMPLE_RELATIVE = Long.MAX_VALUE;

    @UnstableApi
    public final int accessibilityChannel;

    @UnstableApi
    public final int averageBitrate;

    @UnstableApi
    public final int bitrate;
    public final int channelCount;

    @Nullable
    public final String codecs;

    @Nullable
    @UnstableApi
    public final ColorInfo colorInfo;

    @Nullable
    public final String containerMimeType;

    @UnstableApi
    public final int cryptoType;

    @Nullable
    @UnstableApi
    public final DrmInitData drmInitData;

    @UnstableApi
    public final int encoderDelay;

    @UnstableApi
    public final int encoderPadding;
    public final float frameRate;
    private int hashCode;
    public final int height;

    @Nullable
    public final String id;

    @UnstableApi
    public final List<byte[]> initializationData;

    @Nullable
    public final String label;

    @Nullable
    public final String language;

    @UnstableApi
    public final int maxInputSize;

    @Nullable
    @UnstableApi
    public final Metadata metadata;

    @UnstableApi
    public final int pcmEncoding;

    @UnstableApi
    public final int peakBitrate;
    public final float pixelWidthHeightRatio;

    @Nullable
    @UnstableApi
    public final byte[] projectionData;
    public final int roleFlags;

    @UnstableApi
    public final int rotationDegrees;

    @Nullable
    public final String sampleMimeType;
    public final int sampleRate;
    public final int selectionFlags;

    @UnstableApi
    public final int stereoMode;

    @UnstableApi
    public final long subsampleOffsetUs;

    @UnstableApi
    public final int tileCountHorizontal;

    @UnstableApi
    public final int tileCountVertical;
    public final int width;
    private static final Format DEFAULT = new Builder().G();
    private static final String FIELD_ID = Util.z0(0);
    private static final String FIELD_LABEL = Util.z0(1);
    private static final String FIELD_LANGUAGE = Util.z0(2);
    private static final String FIELD_SELECTION_FLAGS = Util.z0(3);
    private static final String FIELD_ROLE_FLAGS = Util.z0(4);
    private static final String FIELD_AVERAGE_BITRATE = Util.z0(5);
    private static final String FIELD_PEAK_BITRATE = Util.z0(6);
    private static final String FIELD_CODECS = Util.z0(7);
    private static final String FIELD_METADATA = Util.z0(8);
    private static final String FIELD_CONTAINER_MIME_TYPE = Util.z0(9);
    private static final String FIELD_SAMPLE_MIME_TYPE = Util.z0(10);
    private static final String FIELD_MAX_INPUT_SIZE = Util.z0(11);
    private static final String FIELD_INITIALIZATION_DATA = Util.z0(12);
    private static final String FIELD_DRM_INIT_DATA = Util.z0(13);
    private static final String FIELD_SUBSAMPLE_OFFSET_US = Util.z0(14);
    private static final String FIELD_WIDTH = Util.z0(15);
    private static final String FIELD_HEIGHT = Util.z0(16);
    private static final String FIELD_FRAME_RATE = Util.z0(17);
    private static final String FIELD_ROTATION_DEGREES = Util.z0(18);
    private static final String FIELD_PIXEL_WIDTH_HEIGHT_RATIO = Util.z0(19);
    private static final String FIELD_PROJECTION_DATA = Util.z0(20);
    private static final String FIELD_STEREO_MODE = Util.z0(21);
    private static final String FIELD_COLOR_INFO = Util.z0(22);
    private static final String FIELD_CHANNEL_COUNT = Util.z0(23);
    private static final String FIELD_SAMPLE_RATE = Util.z0(24);
    private static final String FIELD_PCM_ENCODING = Util.z0(25);
    private static final String FIELD_ENCODER_DELAY = Util.z0(26);
    private static final String FIELD_ENCODER_PADDING = Util.z0(27);
    private static final String FIELD_ACCESSIBILITY_CHANNEL = Util.z0(28);
    private static final String FIELD_CRYPTO_TYPE = Util.z0(29);
    private static final String FIELD_TILE_COUNT_HORIZONTAL = Util.z0(30);
    private static final String FIELD_TILE_COUNT_VERTICAL = Util.z0(31);

    @UnstableApi
    public static final Bundleable.Creator<Format> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.k
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return Format.e(bundle);
        }
    };

    @UnstableApi
    public static final class Builder {
        private int accessibilityChannel;
        private int averageBitrate;
        private int channelCount;

        @Nullable
        private String codecs;

        @Nullable
        private ColorInfo colorInfo;

        @Nullable
        private String containerMimeType;
        private int cryptoType;

        @Nullable
        private DrmInitData drmInitData;
        private int encoderDelay;
        private int encoderPadding;
        private float frameRate;
        private int height;

        @Nullable
        private String id;

        @Nullable
        private List<byte[]> initializationData;

        @Nullable
        private String label;

        @Nullable
        private String language;
        private int maxInputSize;

        @Nullable
        private Metadata metadata;
        private int pcmEncoding;
        private int peakBitrate;
        private float pixelWidthHeightRatio;

        @Nullable
        private byte[] projectionData;
        private int roleFlags;
        private int rotationDegrees;

        @Nullable
        private String sampleMimeType;
        private int sampleRate;
        private int selectionFlags;
        private int stereoMode;
        private long subsampleOffsetUs;
        private int tileCountHorizontal;
        private int tileCountVertical;
        private int width;

        public Builder H(int i10) {
            this.accessibilityChannel = i10;
            return this;
        }

        public Builder I(int i10) {
            this.averageBitrate = i10;
            return this;
        }

        public Builder J(int i10) {
            this.channelCount = i10;
            return this;
        }

        public Builder K(@Nullable String str) {
            this.codecs = str;
            return this;
        }

        public Builder L(@Nullable ColorInfo colorInfo) {
            this.colorInfo = colorInfo;
            return this;
        }

        public Builder M(@Nullable String str) {
            this.containerMimeType = str;
            return this;
        }

        public Builder N(int i10) {
            this.cryptoType = i10;
            return this;
        }

        public Builder O(@Nullable DrmInitData drmInitData) {
            this.drmInitData = drmInitData;
            return this;
        }

        public Builder P(int i10) {
            this.encoderDelay = i10;
            return this;
        }

        public Builder Q(int i10) {
            this.encoderPadding = i10;
            return this;
        }

        public Builder R(float f) {
            this.frameRate = f;
            return this;
        }

        public Builder S(int i10) {
            this.height = i10;
            return this;
        }

        public Builder U(@Nullable String str) {
            this.id = str;
            return this;
        }

        public Builder V(@Nullable List<byte[]> list) {
            this.initializationData = list;
            return this;
        }

        public Builder W(@Nullable String str) {
            this.label = str;
            return this;
        }

        public Builder X(@Nullable String str) {
            this.language = str;
            return this;
        }

        public Builder Y(int i10) {
            this.maxInputSize = i10;
            return this;
        }

        public Builder Z(@Nullable Metadata metadata) {
            this.metadata = metadata;
            return this;
        }

        public Builder a0(int i10) {
            this.pcmEncoding = i10;
            return this;
        }

        public Builder b0(int i10) {
            this.peakBitrate = i10;
            return this;
        }

        public Builder c0(float f) {
            this.pixelWidthHeightRatio = f;
            return this;
        }

        public Builder d0(@Nullable byte[] bArr) {
            this.projectionData = bArr;
            return this;
        }

        public Builder e0(int i10) {
            this.roleFlags = i10;
            return this;
        }

        public Builder f0(int i10) {
            this.rotationDegrees = i10;
            return this;
        }

        public Builder g0(@Nullable String str) {
            this.sampleMimeType = str;
            return this;
        }

        public Builder h0(int i10) {
            this.sampleRate = i10;
            return this;
        }

        public Builder i0(int i10) {
            this.selectionFlags = i10;
            return this;
        }

        public Builder j0(int i10) {
            this.stereoMode = i10;
            return this;
        }

        public Builder k0(long j6) {
            this.subsampleOffsetUs = j6;
            return this;
        }

        public Builder l0(int i10) {
            this.tileCountHorizontal = i10;
            return this;
        }

        public Builder m0(int i10) {
            this.tileCountVertical = i10;
            return this;
        }

        public Builder n0(int i10) {
            this.width = i10;
            return this;
        }

        public Builder() {
            this.averageBitrate = -1;
            this.peakBitrate = -1;
            this.maxInputSize = -1;
            this.subsampleOffsetUs = Long.MAX_VALUE;
            this.width = -1;
            this.height = -1;
            this.frameRate = -1.0f;
            this.pixelWidthHeightRatio = 1.0f;
            this.stereoMode = -1;
            this.channelCount = -1;
            this.sampleRate = -1;
            this.pcmEncoding = -1;
            this.accessibilityChannel = -1;
            this.tileCountHorizontal = -1;
            this.tileCountVertical = -1;
            this.cryptoType = 0;
        }

        public Format G() {
            return new Format(this);
        }

        private Builder(Format format) {
            this.id = format.id;
            this.label = format.label;
            this.language = format.language;
            this.selectionFlags = format.selectionFlags;
            this.roleFlags = format.roleFlags;
            this.averageBitrate = format.averageBitrate;
            this.peakBitrate = format.peakBitrate;
            this.codecs = format.codecs;
            this.metadata = format.metadata;
            this.containerMimeType = format.containerMimeType;
            this.sampleMimeType = format.sampleMimeType;
            this.maxInputSize = format.maxInputSize;
            this.initializationData = format.initializationData;
            this.drmInitData = format.drmInitData;
            this.subsampleOffsetUs = format.subsampleOffsetUs;
            this.width = format.width;
            this.height = format.height;
            this.frameRate = format.frameRate;
            this.rotationDegrees = format.rotationDegrees;
            this.pixelWidthHeightRatio = format.pixelWidthHeightRatio;
            this.projectionData = format.projectionData;
            this.stereoMode = format.stereoMode;
            this.colorInfo = format.colorInfo;
            this.channelCount = format.channelCount;
            this.sampleRate = format.sampleRate;
            this.pcmEncoding = format.pcmEncoding;
            this.encoderDelay = format.encoderDelay;
            this.encoderPadding = format.encoderPadding;
            this.accessibilityChannel = format.accessibilityChannel;
            this.tileCountHorizontal = format.tileCountHorizontal;
            this.tileCountVertical = format.tileCountVertical;
            this.cryptoType = format.cryptoType;
        }

        public Builder T(int i10) {
            this.id = Integer.toString(i10);
            return this;
        }
    }

    @Nullable
    private static <T> T d(@Nullable T t5, @Nullable T t10) {
        return t5 != null ? t5 : t10;
    }

    public boolean equals(@Nullable Object obj) {
        int i10;
        if (this == obj) {
            return true;
        }
        if (obj == null || Format.class != obj.getClass()) {
            return false;
        }
        Format format = (Format) obj;
        int i11 = this.hashCode;
        if (i11 == 0 || (i10 = format.hashCode) == 0 || i11 == i10) {
            return this.selectionFlags == format.selectionFlags && this.roleFlags == format.roleFlags && this.averageBitrate == format.averageBitrate && this.peakBitrate == format.peakBitrate && this.maxInputSize == format.maxInputSize && this.subsampleOffsetUs == format.subsampleOffsetUs && this.width == format.width && this.height == format.height && this.rotationDegrees == format.rotationDegrees && this.stereoMode == format.stereoMode && this.channelCount == format.channelCount && this.sampleRate == format.sampleRate && this.pcmEncoding == format.pcmEncoding && this.encoderDelay == format.encoderDelay && this.encoderPadding == format.encoderPadding && this.accessibilityChannel == format.accessibilityChannel && this.tileCountHorizontal == format.tileCountHorizontal && this.tileCountVertical == format.tileCountVertical && this.cryptoType == format.cryptoType && Float.compare(this.frameRate, format.frameRate) == 0 && Float.compare(this.pixelWidthHeightRatio, format.pixelWidthHeightRatio) == 0 && Util.c(this.id, format.id) && Util.c(this.label, format.label) && Util.c(this.codecs, format.codecs) && Util.c(this.containerMimeType, format.containerMimeType) && Util.c(this.sampleMimeType, format.sampleMimeType) && Util.c(this.language, format.language) && Arrays.equals(this.projectionData, format.projectionData) && Util.c(this.metadata, format.metadata) && Util.c(this.colorInfo, format.colorInfo) && Util.c(this.drmInitData, format.drmInitData) && g(format);
        }
        return false;
    }

    @UnstableApi
    public int f() {
        int i10;
        int i11 = this.width;
        if (i11 == -1 || (i10 = this.height) == -1) {
            return -1;
        }
        return i11 * i10;
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        return i(false);
    }

    private Format(Builder builder) {
        this.id = builder.id;
        this.label = builder.label;
        this.language = Util.M0(builder.language);
        this.selectionFlags = builder.selectionFlags;
        this.roleFlags = builder.roleFlags;
        int i10 = builder.averageBitrate;
        this.averageBitrate = i10;
        int i11 = builder.peakBitrate;
        this.peakBitrate = i11;
        this.bitrate = i11 != -1 ? i11 : i10;
        this.codecs = builder.codecs;
        this.metadata = builder.metadata;
        this.containerMimeType = builder.containerMimeType;
        this.sampleMimeType = builder.sampleMimeType;
        this.maxInputSize = builder.maxInputSize;
        this.initializationData = builder.initializationData == null ? Collections.emptyList() : builder.initializationData;
        DrmInitData drmInitData = builder.drmInitData;
        this.drmInitData = drmInitData;
        this.subsampleOffsetUs = builder.subsampleOffsetUs;
        this.width = builder.width;
        this.height = builder.height;
        this.frameRate = builder.frameRate;
        this.rotationDegrees = builder.rotationDegrees == -1 ? 0 : builder.rotationDegrees;
        this.pixelWidthHeightRatio = builder.pixelWidthHeightRatio == -1.0f ? 1.0f : builder.pixelWidthHeightRatio;
        this.projectionData = builder.projectionData;
        this.stereoMode = builder.stereoMode;
        this.colorInfo = builder.colorInfo;
        this.channelCount = builder.channelCount;
        this.sampleRate = builder.sampleRate;
        this.pcmEncoding = builder.pcmEncoding;
        this.encoderDelay = builder.encoderDelay == -1 ? 0 : builder.encoderDelay;
        this.encoderPadding = builder.encoderPadding != -1 ? builder.encoderPadding : 0;
        this.accessibilityChannel = builder.accessibilityChannel;
        this.tileCountHorizontal = builder.tileCountHorizontal;
        this.tileCountVertical = builder.tileCountVertical;
        if (builder.cryptoType != 0 || drmInitData == null) {
            this.cryptoType = builder.cryptoType;
        } else {
            this.cryptoType = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Format e(Bundle bundle) {
        Builder builder = new Builder();
        BundleableUtil.c(bundle);
        String string = bundle.getString(FIELD_ID);
        Format format = DEFAULT;
        builder.U((String) d(string, format.id)).W((String) d(bundle.getString(FIELD_LABEL), format.label)).X((String) d(bundle.getString(FIELD_LANGUAGE), format.language)).i0(bundle.getInt(FIELD_SELECTION_FLAGS, format.selectionFlags)).e0(bundle.getInt(FIELD_ROLE_FLAGS, format.roleFlags)).I(bundle.getInt(FIELD_AVERAGE_BITRATE, format.averageBitrate)).b0(bundle.getInt(FIELD_PEAK_BITRATE, format.peakBitrate)).K((String) d(bundle.getString(FIELD_CODECS), format.codecs)).Z((Metadata) d((Metadata) bundle.getParcelable(FIELD_METADATA), format.metadata)).M((String) d(bundle.getString(FIELD_CONTAINER_MIME_TYPE), format.containerMimeType)).g0((String) d(bundle.getString(FIELD_SAMPLE_MIME_TYPE), format.sampleMimeType)).Y(bundle.getInt(FIELD_MAX_INPUT_SIZE, format.maxInputSize));
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            byte[] byteArray = bundle.getByteArray(h(i10));
            if (byteArray == null) {
                break;
            }
            arrayList.add(byteArray);
            i10++;
        }
        Builder builderO = builder.V(arrayList).O((DrmInitData) bundle.getParcelable(FIELD_DRM_INIT_DATA));
        String str = FIELD_SUBSAMPLE_OFFSET_US;
        Format format2 = DEFAULT;
        builderO.k0(bundle.getLong(str, format2.subsampleOffsetUs)).n0(bundle.getInt(FIELD_WIDTH, format2.width)).S(bundle.getInt(FIELD_HEIGHT, format2.height)).R(bundle.getFloat(FIELD_FRAME_RATE, format2.frameRate)).f0(bundle.getInt(FIELD_ROTATION_DEGREES, format2.rotationDegrees)).c0(bundle.getFloat(FIELD_PIXEL_WIDTH_HEIGHT_RATIO, format2.pixelWidthHeightRatio)).d0(bundle.getByteArray(FIELD_PROJECTION_DATA)).j0(bundle.getInt(FIELD_STEREO_MODE, format2.stereoMode));
        Bundle bundle2 = bundle.getBundle(FIELD_COLOR_INFO);
        if (bundle2 != null) {
            builder.L((ColorInfo) ColorInfo.CREATOR.a(bundle2));
        }
        builder.J(bundle.getInt(FIELD_CHANNEL_COUNT, format2.channelCount)).h0(bundle.getInt(FIELD_SAMPLE_RATE, format2.sampleRate)).a0(bundle.getInt(FIELD_PCM_ENCODING, format2.pcmEncoding)).P(bundle.getInt(FIELD_ENCODER_DELAY, format2.encoderDelay)).Q(bundle.getInt(FIELD_ENCODER_PADDING, format2.encoderPadding)).H(bundle.getInt(FIELD_ACCESSIBILITY_CHANNEL, format2.accessibilityChannel)).l0(bundle.getInt(FIELD_TILE_COUNT_HORIZONTAL, format2.tileCountHorizontal)).m0(bundle.getInt(FIELD_TILE_COUNT_VERTICAL, format2.tileCountVertical)).N(bundle.getInt(FIELD_CRYPTO_TYPE, format2.cryptoType));
        return builder.G();
    }

    private static String h(int i10) {
        return FIELD_INITIALIZATION_DATA + "_" + Integer.toString(i10, 36);
    }

    @UnstableApi
    public static String j(@Nullable Format format) {
        if (format == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("id=");
        sb.append(format.id);
        sb.append(", mimeType=");
        sb.append(format.sampleMimeType);
        if (format.bitrate != -1) {
            sb.append(", bitrate=");
            sb.append(format.bitrate);
        }
        if (format.codecs != null) {
            sb.append(", codecs=");
            sb.append(format.codecs);
        }
        if (format.drmInitData != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i10 = 0;
            while (true) {
                DrmInitData drmInitData = format.drmInitData;
                if (i10 >= drmInitData.schemeDataCount) {
                    break;
                }
                UUID uuid = drmInitData.h(i10).uuid;
                if (uuid.equals(C.COMMON_PSSH_UUID)) {
                    linkedHashSet.add("cenc");
                } else if (uuid.equals(C.CLEARKEY_UUID)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(C.PLAYREADY_UUID)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(C.WIDEVINE_UUID)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(C.UUID_NIL)) {
                    linkedHashSet.add("universal");
                } else {
                    linkedHashSet.add("unknown (" + uuid + ")");
                }
                i10++;
            }
            sb.append(", drm=[");
            com.google.common.base.h.d(kotlinx.serialization.json.internal.b.COMMA).b(sb, linkedHashSet);
            sb.append(kotlinx.serialization.json.internal.b.END_LIST);
        }
        if (format.width != -1 && format.height != -1) {
            sb.append(", res=");
            sb.append(format.width);
            sb.append("x");
            sb.append(format.height);
        }
        ColorInfo colorInfo = format.colorInfo;
        if (colorInfo != null && colorInfo.g()) {
            sb.append(", color=");
            sb.append(format.colorInfo.k());
        }
        if (format.frameRate != -1.0f) {
            sb.append(", fps=");
            sb.append(format.frameRate);
        }
        if (format.channelCount != -1) {
            sb.append(", channels=");
            sb.append(format.channelCount);
        }
        if (format.sampleRate != -1) {
            sb.append(", sample_rate=");
            sb.append(format.sampleRate);
        }
        if (format.language != null) {
            sb.append(", language=");
            sb.append(format.language);
        }
        if (format.label != null) {
            sb.append(", label=");
            sb.append(format.label);
        }
        if (format.selectionFlags != 0) {
            ArrayList arrayList = new ArrayList();
            if ((format.selectionFlags & 4) != 0) {
                arrayList.add("auto");
            }
            if ((format.selectionFlags & 1) != 0) {
                arrayList.add("default");
            }
            if ((format.selectionFlags & 2) != 0) {
                arrayList.add("forced");
            }
            sb.append(", selectionFlags=[");
            com.google.common.base.h.d(kotlinx.serialization.json.internal.b.COMMA).b(sb, arrayList);
            sb.append("]");
        }
        if (format.roleFlags != 0) {
            ArrayList arrayList2 = new ArrayList();
            if ((format.roleFlags & 1) != 0) {
                arrayList2.add("main");
            }
            if ((format.roleFlags & 2) != 0) {
                arrayList2.add("alt");
            }
            if ((format.roleFlags & 4) != 0) {
                arrayList2.add("supplementary");
            }
            if ((format.roleFlags & 8) != 0) {
                arrayList2.add("commentary");
            }
            if ((format.roleFlags & 16) != 0) {
                arrayList2.add("dub");
            }
            if ((format.roleFlags & 32) != 0) {
                arrayList2.add("emergency");
            }
            if ((format.roleFlags & 64) != 0) {
                arrayList2.add("caption");
            }
            if ((format.roleFlags & 128) != 0) {
                arrayList2.add("subtitle");
            }
            if ((format.roleFlags & 256) != 0) {
                arrayList2.add("sign");
            }
            if ((format.roleFlags & 512) != 0) {
                arrayList2.add("describes-video");
            }
            if ((format.roleFlags & 1024) != 0) {
                arrayList2.add("describes-music");
            }
            if ((format.roleFlags & 2048) != 0) {
                arrayList2.add("enhanced-intelligibility");
            }
            if ((format.roleFlags & 4096) != 0) {
                arrayList2.add("transcribes-dialog");
            }
            if ((format.roleFlags & 8192) != 0) {
                arrayList2.add("easy-read");
            }
            if ((format.roleFlags & 16384) != 0) {
                arrayList2.add("trick-play");
            }
            sb.append(", roleFlags=[");
            com.google.common.base.h.d(kotlinx.serialization.json.internal.b.COMMA).b(sb, arrayList2);
            sb.append("]");
        }
        return sb.toString();
    }

    @UnstableApi
    public Builder b() {
        return new Builder();
    }

    @UnstableApi
    public boolean g(Format format) {
        if (this.initializationData.size() != format.initializationData.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.initializationData.size(); i10++) {
            if (!Arrays.equals(this.initializationData.get(i10), format.initializationData.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            String str = this.id;
            int iHashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.label;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.language;
            int iHashCode3 = (((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.selectionFlags) * 31) + this.roleFlags) * 31) + this.averageBitrate) * 31) + this.peakBitrate) * 31;
            String str4 = this.codecs;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Metadata metadata = this.metadata;
            int iHashCode5 = (iHashCode4 + (metadata == null ? 0 : metadata.hashCode())) * 31;
            String str5 = this.containerMimeType;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.sampleMimeType;
            this.hashCode = ((((((((((((((((((((((((((((((((((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.maxInputSize) * 31) + ((int) this.subsampleOffsetUs)) * 31) + this.width) * 31) + this.height) * 31) + Float.floatToIntBits(this.frameRate)) * 31) + this.rotationDegrees) * 31) + Float.floatToIntBits(this.pixelWidthHeightRatio)) * 31) + this.stereoMode) * 31) + this.channelCount) * 31) + this.sampleRate) * 31) + this.pcmEncoding) * 31) + this.encoderDelay) * 31) + this.encoderPadding) * 31) + this.accessibilityChannel) * 31) + this.tileCountHorizontal) * 31) + this.tileCountVertical) * 31) + this.cryptoType;
        }
        return this.hashCode;
    }

    @UnstableApi
    public Bundle i(boolean z6) {
        Bundle bundle = new Bundle();
        bundle.putString(FIELD_ID, this.id);
        bundle.putString(FIELD_LABEL, this.label);
        bundle.putString(FIELD_LANGUAGE, this.language);
        bundle.putInt(FIELD_SELECTION_FLAGS, this.selectionFlags);
        bundle.putInt(FIELD_ROLE_FLAGS, this.roleFlags);
        bundle.putInt(FIELD_AVERAGE_BITRATE, this.averageBitrate);
        bundle.putInt(FIELD_PEAK_BITRATE, this.peakBitrate);
        bundle.putString(FIELD_CODECS, this.codecs);
        if (!z6) {
            bundle.putParcelable(FIELD_METADATA, this.metadata);
        }
        bundle.putString(FIELD_CONTAINER_MIME_TYPE, this.containerMimeType);
        bundle.putString(FIELD_SAMPLE_MIME_TYPE, this.sampleMimeType);
        bundle.putInt(FIELD_MAX_INPUT_SIZE, this.maxInputSize);
        for (int i10 = 0; i10 < this.initializationData.size(); i10++) {
            bundle.putByteArray(h(i10), this.initializationData.get(i10));
        }
        bundle.putParcelable(FIELD_DRM_INIT_DATA, this.drmInitData);
        bundle.putLong(FIELD_SUBSAMPLE_OFFSET_US, this.subsampleOffsetUs);
        bundle.putInt(FIELD_WIDTH, this.width);
        bundle.putInt(FIELD_HEIGHT, this.height);
        bundle.putFloat(FIELD_FRAME_RATE, this.frameRate);
        bundle.putInt(FIELD_ROTATION_DEGREES, this.rotationDegrees);
        bundle.putFloat(FIELD_PIXEL_WIDTH_HEIGHT_RATIO, this.pixelWidthHeightRatio);
        bundle.putByteArray(FIELD_PROJECTION_DATA, this.projectionData);
        bundle.putInt(FIELD_STEREO_MODE, this.stereoMode);
        ColorInfo colorInfo = this.colorInfo;
        if (colorInfo != null) {
            bundle.putBundle(FIELD_COLOR_INFO, colorInfo.toBundle());
        }
        bundle.putInt(FIELD_CHANNEL_COUNT, this.channelCount);
        bundle.putInt(FIELD_SAMPLE_RATE, this.sampleRate);
        bundle.putInt(FIELD_PCM_ENCODING, this.pcmEncoding);
        bundle.putInt(FIELD_ENCODER_DELAY, this.encoderDelay);
        bundle.putInt(FIELD_ENCODER_PADDING, this.encoderPadding);
        bundle.putInt(FIELD_ACCESSIBILITY_CHANNEL, this.accessibilityChannel);
        bundle.putInt(FIELD_TILE_COUNT_HORIZONTAL, this.tileCountHorizontal);
        bundle.putInt(FIELD_TILE_COUNT_VERTICAL, this.tileCountVertical);
        bundle.putInt(FIELD_CRYPTO_TYPE, this.cryptoType);
        return bundle;
    }

    @UnstableApi
    public Format k(Format format) {
        String str;
        if (this == format) {
            return this;
        }
        int iK = MimeTypes.k(this.sampleMimeType);
        String str2 = format.id;
        String str3 = format.label;
        if (str3 == null) {
            str3 = this.label;
        }
        String str4 = this.language;
        if ((iK == 3 || iK == 1) && (str = format.language) != null) {
            str4 = str;
        }
        int i10 = this.averageBitrate;
        if (i10 == -1) {
            i10 = format.averageBitrate;
        }
        int i11 = this.peakBitrate;
        if (i11 == -1) {
            i11 = format.peakBitrate;
        }
        String str5 = this.codecs;
        if (str5 == null) {
            String strM = Util.M(format.codecs, iK);
            if (Util.f1(strM).length == 1) {
                str5 = strM;
            }
        }
        Metadata metadata = this.metadata;
        Metadata metadataC = metadata == null ? format.metadata : metadata.c(format.metadata);
        float f = this.frameRate;
        if (f == -1.0f && iK == 2) {
            f = format.frameRate;
        }
        return b().U(str2).W(str3).X(str4).i0(this.selectionFlags | format.selectionFlags).e0(this.roleFlags | format.roleFlags).I(i10).b0(i11).K(str5).Z(metadataC).O(DrmInitData.g(format.drmInitData, this.drmInitData)).R(f).G();
    }

    public String toString() {
        return "Format(" + this.id + ", " + this.label + ", " + this.containerMimeType + ", " + this.sampleMimeType + ", " + this.codecs + ", " + this.bitrate + ", " + this.language + ", [" + this.width + ", " + this.height + ", " + this.frameRate + ", " + this.colorInfo + "], [" + this.channelCount + ", " + this.sampleRate + "])";
    }

    @UnstableApi
    public Format c(int i10) {
        return b().N(i10).G();
    }
}
