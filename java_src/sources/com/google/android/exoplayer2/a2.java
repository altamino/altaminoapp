package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public final class a2 implements h {
    private static final int FIELD_ACCESSIBILITY_CHANNEL = 28;
    private static final int FIELD_AVERAGE_BITRATE = 5;
    private static final int FIELD_CHANNEL_COUNT = 23;
    private static final int FIELD_CODECS = 7;
    private static final int FIELD_COLOR_INFO = 22;
    private static final int FIELD_CONTAINER_MIME_TYPE = 9;
    private static final int FIELD_CRYPTO_TYPE = 29;
    private static final int FIELD_DRM_INIT_DATA = 13;
    private static final int FIELD_ENCODER_DELAY = 26;
    private static final int FIELD_ENCODER_PADDING = 27;
    private static final int FIELD_FRAME_RATE = 17;
    private static final int FIELD_HEIGHT = 16;
    private static final int FIELD_ID = 0;
    private static final int FIELD_INITIALIZATION_DATA = 12;
    private static final int FIELD_LABEL = 1;
    private static final int FIELD_LANGUAGE = 2;
    private static final int FIELD_MAX_INPUT_SIZE = 11;
    private static final int FIELD_METADATA = 8;
    private static final int FIELD_PCM_ENCODING = 25;
    private static final int FIELD_PEAK_BITRATE = 6;
    private static final int FIELD_PIXEL_WIDTH_HEIGHT_RATIO = 19;
    private static final int FIELD_PROJECTION_DATA = 20;
    private static final int FIELD_ROLE_FLAGS = 4;
    private static final int FIELD_ROTATION_DEGREES = 18;
    private static final int FIELD_SAMPLE_MIME_TYPE = 10;
    private static final int FIELD_SAMPLE_RATE = 24;
    private static final int FIELD_SELECTION_FLAGS = 3;
    private static final int FIELD_STEREO_MODE = 21;
    private static final int FIELD_SUBSAMPLE_OFFSET_US = 14;
    private static final int FIELD_WIDTH = 15;
    public static final int NO_VALUE = -1;
    public static final long OFFSET_SAMPLE_RELATIVE = Long.MAX_VALUE;
    public final int accessibilityChannel;
    public final int averageBitrate;
    public final int bitrate;
    public final int channelCount;

    @Nullable
    public final String codecs;

    @Nullable
    public final com.google.android.exoplayer2.video.c colorInfo;

    @Nullable
    public final String containerMimeType;
    public final int cryptoType;

    @Nullable
    public final DrmInitData drmInitData;
    public final int encoderDelay;
    public final int encoderPadding;
    public final float frameRate;
    private int hashCode;
    public final int height;

    @Nullable
    public final String id;
    public final List<byte[]> initializationData;

    @Nullable
    public final String label;

    @Nullable
    public final String language;
    public final int maxInputSize;

    @Nullable
    public final Metadata metadata;
    public final int pcmEncoding;
    public final int peakBitrate;
    public final float pixelWidthHeightRatio;

    @Nullable
    public final byte[] projectionData;
    public final int roleFlags;
    public final int rotationDegrees;

    @Nullable
    public final String sampleMimeType;
    public final int sampleRate;
    public final int selectionFlags;
    public final int stereoMode;
    public final long subsampleOffsetUs;
    public final int width;
    private static final a2 DEFAULT = new b().E();
    public static final h.a<a2> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.z1
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return a2.e(bundle);
        }
    };

    public static final class b {
        private int accessibilityChannel;
        private int averageBitrate;
        private int channelCount;

        @Nullable
        private String codecs;

        @Nullable
        private com.google.android.exoplayer2.video.c colorInfo;

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
        private int width;

        public b F(int i10) {
            this.accessibilityChannel = i10;
            return this;
        }

        public b G(int i10) {
            this.averageBitrate = i10;
            return this;
        }

        public b H(int i10) {
            this.channelCount = i10;
            return this;
        }

        public b I(@Nullable String str) {
            this.codecs = str;
            return this;
        }

        public b J(@Nullable com.google.android.exoplayer2.video.c cVar) {
            this.colorInfo = cVar;
            return this;
        }

        public b K(@Nullable String str) {
            this.containerMimeType = str;
            return this;
        }

        public b L(int i10) {
            this.cryptoType = i10;
            return this;
        }

        public b M(@Nullable DrmInitData drmInitData) {
            this.drmInitData = drmInitData;
            return this;
        }

        public b N(int i10) {
            this.encoderDelay = i10;
            return this;
        }

        public b O(int i10) {
            this.encoderPadding = i10;
            return this;
        }

        public b P(float f) {
            this.frameRate = f;
            return this;
        }

        public b Q(int i10) {
            this.height = i10;
            return this;
        }

        public b S(@Nullable String str) {
            this.id = str;
            return this;
        }

        public b T(@Nullable List<byte[]> list) {
            this.initializationData = list;
            return this;
        }

        public b U(@Nullable String str) {
            this.label = str;
            return this;
        }

        public b V(@Nullable String str) {
            this.language = str;
            return this;
        }

        public b W(int i10) {
            this.maxInputSize = i10;
            return this;
        }

        public b X(@Nullable Metadata metadata) {
            this.metadata = metadata;
            return this;
        }

        public b Y(int i10) {
            this.pcmEncoding = i10;
            return this;
        }

        public b Z(int i10) {
            this.peakBitrate = i10;
            return this;
        }

        public b a0(float f) {
            this.pixelWidthHeightRatio = f;
            return this;
        }

        public b b0(@Nullable byte[] bArr) {
            this.projectionData = bArr;
            return this;
        }

        public b c0(int i10) {
            this.roleFlags = i10;
            return this;
        }

        public b d0(int i10) {
            this.rotationDegrees = i10;
            return this;
        }

        public b e0(@Nullable String str) {
            this.sampleMimeType = str;
            return this;
        }

        public b f0(int i10) {
            this.sampleRate = i10;
            return this;
        }

        public b g0(int i10) {
            this.selectionFlags = i10;
            return this;
        }

        public b h0(int i10) {
            this.stereoMode = i10;
            return this;
        }

        public b i0(long j6) {
            this.subsampleOffsetUs = j6;
            return this;
        }

        public b j0(int i10) {
            this.width = i10;
            return this;
        }

        public b() {
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
            this.cryptoType = 0;
        }

        public a2 E() {
            return new a2(this);
        }

        private b(a2 a2Var) {
            this.id = a2Var.id;
            this.label = a2Var.label;
            this.language = a2Var.language;
            this.selectionFlags = a2Var.selectionFlags;
            this.roleFlags = a2Var.roleFlags;
            this.averageBitrate = a2Var.averageBitrate;
            this.peakBitrate = a2Var.peakBitrate;
            this.codecs = a2Var.codecs;
            this.metadata = a2Var.metadata;
            this.containerMimeType = a2Var.containerMimeType;
            this.sampleMimeType = a2Var.sampleMimeType;
            this.maxInputSize = a2Var.maxInputSize;
            this.initializationData = a2Var.initializationData;
            this.drmInitData = a2Var.drmInitData;
            this.subsampleOffsetUs = a2Var.subsampleOffsetUs;
            this.width = a2Var.width;
            this.height = a2Var.height;
            this.frameRate = a2Var.frameRate;
            this.rotationDegrees = a2Var.rotationDegrees;
            this.pixelWidthHeightRatio = a2Var.pixelWidthHeightRatio;
            this.projectionData = a2Var.projectionData;
            this.stereoMode = a2Var.stereoMode;
            this.colorInfo = a2Var.colorInfo;
            this.channelCount = a2Var.channelCount;
            this.sampleRate = a2Var.sampleRate;
            this.pcmEncoding = a2Var.pcmEncoding;
            this.encoderDelay = a2Var.encoderDelay;
            this.encoderPadding = a2Var.encoderPadding;
            this.accessibilityChannel = a2Var.accessibilityChannel;
            this.cryptoType = a2Var.cryptoType;
        }

        public b R(int i10) {
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
        if (obj == null || a2.class != obj.getClass()) {
            return false;
        }
        a2 a2Var = (a2) obj;
        int i11 = this.hashCode;
        if (i11 == 0 || (i10 = a2Var.hashCode) == 0 || i11 == i10) {
            return this.selectionFlags == a2Var.selectionFlags && this.roleFlags == a2Var.roleFlags && this.averageBitrate == a2Var.averageBitrate && this.peakBitrate == a2Var.peakBitrate && this.maxInputSize == a2Var.maxInputSize && this.subsampleOffsetUs == a2Var.subsampleOffsetUs && this.width == a2Var.width && this.height == a2Var.height && this.rotationDegrees == a2Var.rotationDegrees && this.stereoMode == a2Var.stereoMode && this.channelCount == a2Var.channelCount && this.sampleRate == a2Var.sampleRate && this.pcmEncoding == a2Var.pcmEncoding && this.encoderDelay == a2Var.encoderDelay && this.encoderPadding == a2Var.encoderPadding && this.accessibilityChannel == a2Var.accessibilityChannel && this.cryptoType == a2Var.cryptoType && Float.compare(this.frameRate, a2Var.frameRate) == 0 && Float.compare(this.pixelWidthHeightRatio, a2Var.pixelWidthHeightRatio) == 0 && com.google.android.exoplayer2.util.o0.c(this.id, a2Var.id) && com.google.android.exoplayer2.util.o0.c(this.label, a2Var.label) && com.google.android.exoplayer2.util.o0.c(this.codecs, a2Var.codecs) && com.google.android.exoplayer2.util.o0.c(this.containerMimeType, a2Var.containerMimeType) && com.google.android.exoplayer2.util.o0.c(this.sampleMimeType, a2Var.sampleMimeType) && com.google.android.exoplayer2.util.o0.c(this.language, a2Var.language) && Arrays.equals(this.projectionData, a2Var.projectionData) && com.google.android.exoplayer2.util.o0.c(this.metadata, a2Var.metadata) && com.google.android.exoplayer2.util.o0.c(this.colorInfo, a2Var.colorInfo) && com.google.android.exoplayer2.util.o0.c(this.drmInitData, a2Var.drmInitData) && g(a2Var);
        }
        return false;
    }

    public int f() {
        int i10;
        int i11 = this.width;
        if (i11 == -1 || (i10 = this.height) == -1) {
            return -1;
        }
        return i11 * i10;
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        return j(false);
    }

    private a2(b bVar) {
        this.id = bVar.id;
        this.label = bVar.label;
        this.language = com.google.android.exoplayer2.util.o0.y0(bVar.language);
        this.selectionFlags = bVar.selectionFlags;
        this.roleFlags = bVar.roleFlags;
        int i10 = bVar.averageBitrate;
        this.averageBitrate = i10;
        int i11 = bVar.peakBitrate;
        this.peakBitrate = i11;
        this.bitrate = i11 != -1 ? i11 : i10;
        this.codecs = bVar.codecs;
        this.metadata = bVar.metadata;
        this.containerMimeType = bVar.containerMimeType;
        this.sampleMimeType = bVar.sampleMimeType;
        this.maxInputSize = bVar.maxInputSize;
        this.initializationData = bVar.initializationData == null ? Collections.emptyList() : bVar.initializationData;
        DrmInitData drmInitData = bVar.drmInitData;
        this.drmInitData = drmInitData;
        this.subsampleOffsetUs = bVar.subsampleOffsetUs;
        this.width = bVar.width;
        this.height = bVar.height;
        this.frameRate = bVar.frameRate;
        this.rotationDegrees = bVar.rotationDegrees == -1 ? 0 : bVar.rotationDegrees;
        this.pixelWidthHeightRatio = bVar.pixelWidthHeightRatio == -1.0f ? 1.0f : bVar.pixelWidthHeightRatio;
        this.projectionData = bVar.projectionData;
        this.stereoMode = bVar.stereoMode;
        this.colorInfo = bVar.colorInfo;
        this.channelCount = bVar.channelCount;
        this.sampleRate = bVar.sampleRate;
        this.pcmEncoding = bVar.pcmEncoding;
        this.encoderDelay = bVar.encoderDelay == -1 ? 0 : bVar.encoderDelay;
        this.encoderPadding = bVar.encoderPadding != -1 ? bVar.encoderPadding : 0;
        this.accessibilityChannel = bVar.accessibilityChannel;
        if (bVar.cryptoType != 0 || drmInitData == null) {
            this.cryptoType = bVar.cryptoType;
        } else {
            this.cryptoType = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static a2 e(Bundle bundle) {
        b bVar = new b();
        com.google.android.exoplayer2.util.c.a(bundle);
        int i10 = 0;
        String string = bundle.getString(h(0));
        a2 a2Var = DEFAULT;
        bVar.S((String) d(string, a2Var.id)).U((String) d(bundle.getString(h(1)), a2Var.label)).V((String) d(bundle.getString(h(2)), a2Var.language)).g0(bundle.getInt(h(3), a2Var.selectionFlags)).c0(bundle.getInt(h(4), a2Var.roleFlags)).G(bundle.getInt(h(5), a2Var.averageBitrate)).Z(bundle.getInt(h(6), a2Var.peakBitrate)).I((String) d(bundle.getString(h(7)), a2Var.codecs)).X((Metadata) d((Metadata) bundle.getParcelable(h(8)), a2Var.metadata)).K((String) d(bundle.getString(h(9)), a2Var.containerMimeType)).e0((String) d(bundle.getString(h(10)), a2Var.sampleMimeType)).W(bundle.getInt(h(11), a2Var.maxInputSize));
        ArrayList arrayList = new ArrayList();
        while (true) {
            byte[] byteArray = bundle.getByteArray(i(i10));
            if (byteArray == null) {
                break;
            }
            arrayList.add(byteArray);
            i10++;
        }
        b bVarM = bVar.T(arrayList).M((DrmInitData) bundle.getParcelable(h(13)));
        String strH = h(14);
        a2 a2Var2 = DEFAULT;
        bVarM.i0(bundle.getLong(strH, a2Var2.subsampleOffsetUs)).j0(bundle.getInt(h(15), a2Var2.width)).Q(bundle.getInt(h(16), a2Var2.height)).P(bundle.getFloat(h(17), a2Var2.frameRate)).d0(bundle.getInt(h(18), a2Var2.rotationDegrees)).a0(bundle.getFloat(h(19), a2Var2.pixelWidthHeightRatio)).b0(bundle.getByteArray(h(20))).h0(bundle.getInt(h(21), a2Var2.stereoMode));
        Bundle bundle2 = bundle.getBundle(h(22));
        if (bundle2 != null) {
            bVar.J((com.google.android.exoplayer2.video.c) com.google.android.exoplayer2.video.c.CREATOR.a(bundle2));
        }
        bVar.H(bundle.getInt(h(23), a2Var2.channelCount)).f0(bundle.getInt(h(24), a2Var2.sampleRate)).Y(bundle.getInt(h(25), a2Var2.pcmEncoding)).N(bundle.getInt(h(26), a2Var2.encoderDelay)).O(bundle.getInt(h(27), a2Var2.encoderPadding)).F(bundle.getInt(h(28), a2Var2.accessibilityChannel)).L(bundle.getInt(h(29), a2Var2.cryptoType));
        return bVar.E();
    }

    private static String h(int i10) {
        return Integer.toString(i10, 36);
    }

    private static String i(int i10) {
        return h(12) + "_" + Integer.toString(i10, 36);
    }

    public b b() {
        return new b();
    }

    public boolean g(a2 a2Var) {
        if (this.initializationData.size() != a2Var.initializationData.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.initializationData.size(); i10++) {
            if (!Arrays.equals(this.initializationData.get(i10), a2Var.initializationData.get(i10))) {
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
            this.hashCode = ((((((((((((((((((((((((((((((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.maxInputSize) * 31) + ((int) this.subsampleOffsetUs)) * 31) + this.width) * 31) + this.height) * 31) + Float.floatToIntBits(this.frameRate)) * 31) + this.rotationDegrees) * 31) + Float.floatToIntBits(this.pixelWidthHeightRatio)) * 31) + this.stereoMode) * 31) + this.channelCount) * 31) + this.sampleRate) * 31) + this.pcmEncoding) * 31) + this.encoderDelay) * 31) + this.encoderPadding) * 31) + this.accessibilityChannel) * 31) + this.cryptoType;
        }
        return this.hashCode;
    }

    public Bundle j(boolean z6) {
        Bundle bundle = new Bundle();
        bundle.putString(h(0), this.id);
        bundle.putString(h(1), this.label);
        bundle.putString(h(2), this.language);
        bundle.putInt(h(3), this.selectionFlags);
        bundle.putInt(h(4), this.roleFlags);
        bundle.putInt(h(5), this.averageBitrate);
        bundle.putInt(h(6), this.peakBitrate);
        bundle.putString(h(7), this.codecs);
        if (!z6) {
            bundle.putParcelable(h(8), this.metadata);
        }
        bundle.putString(h(9), this.containerMimeType);
        bundle.putString(h(10), this.sampleMimeType);
        bundle.putInt(h(11), this.maxInputSize);
        for (int i10 = 0; i10 < this.initializationData.size(); i10++) {
            bundle.putByteArray(i(i10), this.initializationData.get(i10));
        }
        bundle.putParcelable(h(13), this.drmInitData);
        bundle.putLong(h(14), this.subsampleOffsetUs);
        bundle.putInt(h(15), this.width);
        bundle.putInt(h(16), this.height);
        bundle.putFloat(h(17), this.frameRate);
        bundle.putInt(h(18), this.rotationDegrees);
        bundle.putFloat(h(19), this.pixelWidthHeightRatio);
        bundle.putByteArray(h(20), this.projectionData);
        bundle.putInt(h(21), this.stereoMode);
        if (this.colorInfo != null) {
            bundle.putBundle(h(22), this.colorInfo.toBundle());
        }
        bundle.putInt(h(23), this.channelCount);
        bundle.putInt(h(24), this.sampleRate);
        bundle.putInt(h(25), this.pcmEncoding);
        bundle.putInt(h(26), this.encoderDelay);
        bundle.putInt(h(27), this.encoderPadding);
        bundle.putInt(h(28), this.accessibilityChannel);
        bundle.putInt(h(29), this.cryptoType);
        return bundle;
    }

    public String toString() {
        return "Format(" + this.id + ", " + this.label + ", " + this.containerMimeType + ", " + this.sampleMimeType + ", " + this.codecs + ", " + this.bitrate + ", " + this.language + ", [" + this.width + ", " + this.height + ", " + this.frameRate + "], [" + this.channelCount + ", " + this.sampleRate + "])";
    }

    public a2 c(int i10) {
        return b().L(i10).E();
    }
}
