package com.google.android.exoplayer2.mediacodec;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.util.o0;
import com.google.common.collect.a0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes10.dex */
@SuppressLint({"InlinedApi"})
public final class v {
    private static final String CODEC_ID_AV01 = "av01";
    private static final String CODEC_ID_AVC1 = "avc1";
    private static final String CODEC_ID_AVC2 = "avc2";
    private static final String CODEC_ID_HEV1 = "hev1";
    private static final String CODEC_ID_HVC1 = "hvc1";
    private static final String CODEC_ID_MP4A = "mp4a";
    private static final String CODEC_ID_VP09 = "vp09";
    private static final String TAG = "MediaCodecUtil";
    private static final Pattern PROFILE_PATTERN = Pattern.compile("^\\D?(\\d+)$");

    @GuardedBy
    private static final HashMap<b, List<n>> decoderInfosCache = new HashMap<>();
    private static int maxH264DecodableFrameSize = -1;

    private static final class b {
        public final String mimeType;
        public final boolean secure;
        public final boolean tunneling;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != b.class) {
                return false;
            }
            b bVar = (b) obj;
            return TextUtils.equals(this.mimeType, bVar.mimeType) && this.secure == bVar.secure && this.tunneling == bVar.tunneling;
        }

        public int hashCode() {
            return ((((this.mimeType.hashCode() + 31) * 31) + (this.secure ? 1231 : 1237)) * 31) + (this.tunneling ? 1231 : 1237);
        }

        public b(String str, boolean z6, boolean z10) {
            this.mimeType = str;
            this.secure = z6;
            this.tunneling = z10;
        }
    }

    public static class c extends Exception {
        private c(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    private interface d {
        boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        int getCodecCount();

        MediaCodecInfo getCodecInfoAt(int i10);

        boolean secureDecodersExplicit();
    }

    private static final class e implements d {
        private e() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.v.d
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.v.d
        public boolean secureDecodersExplicit() {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.v.d
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // com.google.android.exoplayer2.mediacodec.v.d
        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer2.mediacodec.v.d
        public MediaCodecInfo getCodecInfoAt(int i10) {
            return MediaCodecList.getCodecInfoAt(i10);
        }
    }

    @RequiresApi
    private static final class f implements d {
        private final int codecKind;

        @Nullable
        private MediaCodecInfo[] mediaCodecInfos;

        @Override // com.google.android.exoplayer2.mediacodec.v.d
        public boolean secureDecodersExplicit() {
            return true;
        }

        private void c() {
            if (this.mediaCodecInfos == null) {
                this.mediaCodecInfos = new MediaCodecList(this.codecKind).getCodecInfos();
            }
        }

        public f(boolean z6, boolean z10) {
            int i10;
            if (!z6 && !z10) {
                i10 = 0;
            } else {
                i10 = 1;
            }
            this.codecKind = i10;
        }

        @Override // com.google.android.exoplayer2.mediacodec.v.d
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.v.d
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.v.d
        public int getCodecCount() {
            c();
            return this.mediaCodecInfos.length;
        }

        @Override // com.google.android.exoplayer2.mediacodec.v.d
        public MediaCodecInfo getCodecInfoAt(int i10) {
            c();
            return this.mediaCodecInfos[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface g<T> {
        int a(T t5);
    }

    private static int O(int i10) {
        int i11 = 17;
        if (i10 != 17) {
            i11 = 20;
            if (i10 != 20) {
                i11 = 23;
                if (i10 != 23) {
                    i11 = 29;
                    if (i10 != 29) {
                        i11 = 39;
                        if (i10 != 39) {
                            i11 = 42;
                            if (i10 != 42) {
                                switch (i10) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i11;
    }

    private static int Q(int i10) {
        if (i10 == 10) {
            return 1;
        }
        if (i10 == 11) {
            return 2;
        }
        if (i10 == 20) {
            return 4;
        }
        if (i10 == 21) {
            return 8;
        }
        if (i10 == 30) {
            return 16;
        }
        if (i10 == 31) {
            return 32;
        }
        if (i10 == 40) {
            return 64;
        }
        if (i10 == 41) {
            return 128;
        }
        if (i10 == 50) {
            return 256;
        }
        if (i10 == 51) {
            return 512;
        }
        switch (i10) {
            case 60:
                return 2048;
            case 61:
                return 4096;
            case 62:
                return 8192;
            default:
                return -1;
        }
    }

    private static int R(int i10) {
        if (i10 == 0) {
            return 1;
        }
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return i10 != 3 ? -1 : 8;
        }
        return 4;
    }

    private static int f(int i10) {
        switch (i10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    private static int g(int i10) {
        switch (i10) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i10) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i10) {
                            case 30:
                                return 256;
                            case 31:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i10) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i10) {
                                            case 50:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    private static int h(int i10) {
        if (i10 == 1 || i10 == 2) {
            return 25344;
        }
        switch (i10) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case 262144:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    private static int i(int i10) {
        if (i10 == 66) {
            return 1;
        }
        if (i10 == 77) {
            return 2;
        }
        if (i10 == 88) {
            return 4;
        }
        if (i10 == 100) {
            return 8;
        }
        if (i10 == 110) {
            return 16;
        }
        if (i10 != 122) {
            return i10 != 244 ? -1 : 64;
        }
        return 32;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Nullable
    private static Integer j(@Nullable String str) {
        if (str == null) {
            return null;
        }
        byte b7 = -1;
        switch (str.hashCode()) {
            case 1537:
                if (str.equals("01")) {
                    b7 = 0;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    b7 = 1;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    b7 = 2;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    b7 = 3;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    b7 = 4;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    b7 = 5;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    b7 = 6;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    b7 = 7;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    b7 = 8;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    b7 = 9;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    b7 = 10;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    b7 = com.google.common.base.c.VT;
                }
                break;
            case 1570:
                if (str.equals("13")) {
                    b7 = com.google.common.base.c.FF;
                }
                break;
        }
        switch (b7) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            default:
                return null;
        }
    }

    @Nullable
    private static Integer k(@Nullable String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "00":
                return 1;
            case "01":
                return 2;
            case "02":
                return 4;
            case "03":
                return 8;
            case "04":
                return 16;
            case "05":
                return 32;
            case "06":
                return 64;
            case "07":
                return 128;
            case "08":
                return 256;
            case "09":
                return 512;
            default:
                return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> l(String str, String[] strArr) {
        int iO;
        if (strArr.length != 3) {
            com.google.android.exoplayer2.util.t.i(TAG, "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if ("audio/mp4a-latm".equals(com.google.android.exoplayer2.util.x.f(Integer.parseInt(strArr[1], 16))) && (iO = O(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair<>(Integer.valueOf(iO), 0);
            }
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.t.i(TAG, "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, Integer> n(String str, String[] strArr, @Nullable com.google.android.exoplayer2.video.c cVar) {
        int i10;
        if (strArr.length < 4) {
            com.google.android.exoplayer2.util.t.i(TAG, "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        int i11 = 1;
        try {
            int i12 = Integer.parseInt(strArr[1]);
            int i13 = Integer.parseInt(strArr[2].substring(0, 2));
            int i14 = Integer.parseInt(strArr[3]);
            if (i12 != 0) {
                com.google.android.exoplayer2.util.t.i(TAG, "Unknown AV1 profile: " + i12);
                return null;
            }
            if (i14 != 8 && i14 != 10) {
                com.google.android.exoplayer2.util.t.i(TAG, "Unknown AV1 bit depth: " + i14);
                return null;
            }
            if (i14 != 8) {
                i11 = (cVar == null || !(cVar.hdrStaticInfo != null || (i10 = cVar.colorTransfer) == 7 || i10 == 6)) ? 2 : 4096;
            }
            int iF = f(i13);
            if (iF != -1) {
                return new Pair<>(Integer.valueOf(i11), Integer.valueOf(iF));
            }
            com.google.android.exoplayer2.util.t.i(TAG, "Unknown AV1 level: " + i13);
            return null;
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.t.i(TAG, "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> o(String str, String[] strArr) {
        int i10;
        int i11;
        if (strArr.length < 2) {
            com.google.android.exoplayer2.util.t.i(TAG, "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i11 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i10 = Integer.parseInt(strArr[1].substring(4), 16);
            } else {
                if (strArr.length < 3) {
                    com.google.android.exoplayer2.util.t.i(TAG, "Ignoring malformed AVC codec string: " + str);
                    return null;
                }
                int i12 = Integer.parseInt(strArr[1]);
                i10 = Integer.parseInt(strArr[2]);
                i11 = i12;
            }
            int i13 = i(i11);
            if (i13 == -1) {
                com.google.android.exoplayer2.util.t.i(TAG, "Unknown AVC profile: " + i11);
                return null;
            }
            int iG = g(i10);
            if (iG != -1) {
                return new Pair<>(Integer.valueOf(i13), Integer.valueOf(iG));
            }
            com.google.android.exoplayer2.util.t.i(TAG, "Unknown AVC level: " + i10);
            return null;
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.t.i(TAG, "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> w(String str, String[] strArr) {
        if (strArr.length < 3) {
            com.google.android.exoplayer2.util.t.i(TAG, "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
        if (!matcher.matches()) {
            com.google.android.exoplayer2.util.t.i(TAG, "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        Integer numK = k(strGroup);
        if (numK == null) {
            com.google.android.exoplayer2.util.t.i(TAG, "Unknown Dolby Vision profile string: " + strGroup);
            return null;
        }
        String str2 = strArr[2];
        Integer numJ = j(str2);
        if (numJ != null) {
            return new Pair<>(numK, numJ);
        }
        com.google.android.exoplayer2.util.t.i(TAG, "Unknown Dolby Vision level string: " + str2);
        return null;
    }

    @Nullable
    private static Pair<Integer, Integer> x(String str, String[] strArr) {
        if (strArr.length < 4) {
            com.google.android.exoplayer2.util.t.i(TAG, "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i10 = 1;
        Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
        if (!matcher.matches()) {
            com.google.android.exoplayer2.util.t.i(TAG, "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        if (!"1".equals(strGroup)) {
            if (!ExifInterface.GPS_MEASUREMENT_2D.equals(strGroup)) {
                com.google.android.exoplayer2.util.t.i(TAG, "Unknown HEVC profile string: " + strGroup);
                return null;
            }
            i10 = 2;
        }
        String str2 = strArr[3];
        Integer numZ = z(str2);
        if (numZ != null) {
            return new Pair<>(Integer.valueOf(i10), numZ);
        }
        com.google.android.exoplayer2.util.t.i(TAG, "Unknown HEVC level string: " + str2);
        return null;
    }

    @Nullable
    private static Pair<Integer, Integer> y(String str, String[] strArr) {
        if (strArr.length < 3) {
            com.google.android.exoplayer2.util.t.i(TAG, "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int i10 = Integer.parseInt(strArr[1]);
            int i11 = Integer.parseInt(strArr[2]);
            int iR = R(i10);
            if (iR == -1) {
                com.google.android.exoplayer2.util.t.i(TAG, "Unknown VP9 profile: " + i10);
                return null;
            }
            int iQ = Q(i11);
            if (iQ != -1) {
                return new Pair<>(Integer.valueOf(iR), Integer.valueOf(iQ));
            }
            com.google.android.exoplayer2.util.t.i(TAG, "Unknown VP9 level: " + i11);
            return null;
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.t.i(TAG, "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Nullable
    private static Integer z(@Nullable String str) {
        if (str == null) {
            return null;
        }
        byte b7 = -1;
        switch (str.hashCode()) {
            case 70821:
                if (str.equals("H30")) {
                    b7 = 0;
                }
                break;
            case 70914:
                if (str.equals("H60")) {
                    b7 = 1;
                }
                break;
            case 70917:
                if (str.equals("H63")) {
                    b7 = 2;
                }
                break;
            case 71007:
                if (str.equals("H90")) {
                    b7 = 3;
                }
                break;
            case 71010:
                if (str.equals("H93")) {
                    b7 = 4;
                }
                break;
            case 74665:
                if (str.equals("L30")) {
                    b7 = 5;
                }
                break;
            case 74758:
                if (str.equals("L60")) {
                    b7 = 6;
                }
                break;
            case 74761:
                if (str.equals("L63")) {
                    b7 = 7;
                }
                break;
            case 74851:
                if (str.equals("L90")) {
                    b7 = 8;
                }
                break;
            case 74854:
                if (str.equals("L93")) {
                    b7 = 9;
                }
                break;
            case 2193639:
                if (str.equals("H120")) {
                    b7 = 10;
                }
                break;
            case 2193642:
                if (str.equals("H123")) {
                    b7 = com.google.common.base.c.VT;
                }
                break;
            case 2193732:
                if (str.equals("H150")) {
                    b7 = com.google.common.base.c.FF;
                }
                break;
            case 2193735:
                if (str.equals("H153")) {
                    b7 = com.google.common.base.c.CR;
                }
                break;
            case 2193738:
                if (str.equals("H156")) {
                    b7 = com.google.common.base.c.SO;
                }
                break;
            case 2193825:
                if (str.equals("H180")) {
                    b7 = com.google.common.base.c.SI;
                }
                break;
            case 2193828:
                if (str.equals("H183")) {
                    b7 = 16;
                }
                break;
            case 2193831:
                if (str.equals("H186")) {
                    b7 = 17;
                }
                break;
            case 2312803:
                if (str.equals("L120")) {
                    b7 = com.google.common.base.c.DC2;
                }
                break;
            case 2312806:
                if (str.equals("L123")) {
                    b7 = 19;
                }
                break;
            case 2312896:
                if (str.equals("L150")) {
                    b7 = com.google.common.base.c.DC4;
                }
                break;
            case 2312899:
                if (str.equals("L153")) {
                    b7 = com.google.common.base.c.NAK;
                }
                break;
            case 2312902:
                if (str.equals("L156")) {
                    b7 = com.google.common.base.c.SYN;
                }
                break;
            case 2312989:
                if (str.equals("L180")) {
                    b7 = com.google.common.base.c.ETB;
                }
                break;
            case 2312992:
                if (str.equals("L183")) {
                    b7 = com.google.common.base.c.CAN;
                }
                break;
            case 2312995:
                if (str.equals("L186")) {
                    b7 = com.google.common.base.c.EM;
                }
                break;
        }
        switch (b7) {
            case 0:
                return 2;
            case 1:
                return 8;
            case 2:
                return 32;
            case 3:
                return 128;
            case 4:
                return 512;
            case 5:
                return 1;
            case 6:
                return 4;
            case 7:
                return 16;
            case 8:
                return 64;
            case 9:
                return 256;
            case 10:
                return 2048;
            case 11:
                return 8192;
            case 12:
                return 32768;
            case 13:
                return 131072;
            case 14:
                return 524288;
            case 15:
                return 2097152;
            case 16:
                return 8388608;
            case 17:
                return 33554432;
            case 18:
                return 1024;
            case 19:
                return 4096;
            case 20:
                return 16384;
            case 21:
                return 65536;
            case 22:
                return 262144;
            case 23:
                return 1048576;
            case 24:
                return 4194304;
            case 25:
                return 16777216;
            default:
                return null;
        }
    }

    private static boolean A(MediaCodecInfo mediaCodecInfo) {
        return o0.SDK_INT >= 29 && B(mediaCodecInfo);
    }

    private static boolean D(MediaCodecInfo mediaCodecInfo, String str) {
        return o0.SDK_INT >= 29 ? E(mediaCodecInfo) : !F(mediaCodecInfo, str);
    }

    private static boolean F(MediaCodecInfo mediaCodecInfo, String str) {
        if (o0.SDK_INT >= 29) {
            return G(mediaCodecInfo);
        }
        if (com.google.android.exoplayer2.util.x.l(str)) {
            return true;
        }
        String strE = com.google.common.base.c.e(mediaCodecInfo.getName());
        if (strE.startsWith("arc.")) {
            return false;
        }
        if (strE.startsWith("omx.google.") || strE.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strE.startsWith("omx.sec.") && strE.contains(".sw.")) || strE.equals("omx.qcom.video.decoder.hevcswvdec") || strE.startsWith("c2.android.") || strE.startsWith("c2.google.")) {
            return true;
        }
        return (strE.startsWith("omx.") || strE.startsWith("c2.")) ? false : true;
    }

    private static boolean H(MediaCodecInfo mediaCodecInfo) {
        if (o0.SDK_INT >= 29) {
            return I(mediaCodecInfo);
        }
        String strE = com.google.common.base.c.e(mediaCodecInfo.getName());
        return (strE.startsWith("omx.google.") || strE.startsWith("c2.android.") || strE.startsWith("c2.google.")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int J(n nVar) {
        String str = nVar.name;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (o0.SDK_INT >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int K(n nVar) {
        return nVar.name.startsWith("OMX.google") ? 1 : 0;
    }

    public static int N() throws c {
        if (maxH264DecodableFrameSize == -1) {
            int iMax = 0;
            n nVarR = r("video/avc", false, false);
            if (nVarR != null) {
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrG = nVarR.g();
                int length = codecProfileLevelArrG.length;
                int iMax2 = 0;
                while (iMax < length) {
                    iMax2 = Math.max(h(codecProfileLevelArrG[iMax].level), iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, o0.SDK_INT >= 21 ? 345600 : 172800);
            }
            maxH264DecodableFrameSize = iMax;
        }
        return maxH264DecodableFrameSize;
    }

    private static <T> void P(List<T> list, final g<T> gVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.exoplayer2.mediacodec.u
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return v.M(gVar, obj, obj2);
            }
        });
    }

    private static void e(String str, List<n> list) {
        if ("audio/raw".equals(str)) {
            if (o0.SDK_INT < 26 && o0.DEVICE.equals("R9") && list.size() == 1 && list.get(0).name.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(n.C("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
            }
            P(list, new g() { // from class: com.google.android.exoplayer2.mediacodec.r
                @Override // com.google.android.exoplayer2.mediacodec.v.g
                public final int a(Object obj) {
                    return v.J((n) obj);
                }
            });
        }
        int i10 = o0.SDK_INT;
        if (i10 < 21 && list.size() > 1) {
            String str2 = list.get(0).name;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                P(list, new g() { // from class: com.google.android.exoplayer2.mediacodec.s
                    @Override // com.google.android.exoplayer2.mediacodec.v.g
                    public final int a(Object obj) {
                        return v.K((n) obj);
                    }
                });
            }
        }
        if (i10 >= 32 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(list.get(0).name)) {
            return;
        }
        list.add(list.remove(0));
    }

    @Nullable
    public static String m(a2 a2Var) {
        Pair<Integer, Integer> pairQ;
        if ("audio/eac3-joc".equals(a2Var.sampleMimeType)) {
            return "audio/eac3";
        }
        if (!"video/dolby-vision".equals(a2Var.sampleMimeType) || (pairQ = q(a2Var)) == null) {
            return null;
        }
        int iIntValue = ((Integer) pairQ.first).intValue();
        if (iIntValue == 16 || iIntValue == 256) {
            return "video/hevc";
        }
        if (iIntValue == 512) {
            return "video/avc";
        }
        return null;
    }

    @Nullable
    public static Pair<Integer, Integer> q(a2 a2Var) {
        String str = a2Var.codecs;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        if ("video/dolby-vision".equals(a2Var.sampleMimeType)) {
            return w(a2Var.codecs, strArrSplit);
        }
        byte b7 = 0;
        String str2 = strArrSplit[0];
        str2.hashCode();
        switch (str2.hashCode()) {
            case 3004662:
                if (!str2.equals(CODEC_ID_AV01)) {
                    b7 = -1;
                }
                break;
            case 3006243:
                b7 = !str2.equals(CODEC_ID_AVC1) ? (byte) -1 : (byte) 1;
                break;
            case 3006244:
                b7 = !str2.equals(CODEC_ID_AVC2) ? (byte) -1 : (byte) 2;
                break;
            case 3199032:
                b7 = !str2.equals(CODEC_ID_HEV1) ? (byte) -1 : (byte) 3;
                break;
            case 3214780:
                b7 = !str2.equals(CODEC_ID_HVC1) ? (byte) -1 : (byte) 4;
                break;
            case 3356560:
                b7 = !str2.equals(CODEC_ID_MP4A) ? (byte) -1 : (byte) 5;
                break;
            case 3624515:
                b7 = !str2.equals(CODEC_ID_VP09) ? (byte) -1 : (byte) 6;
                break;
            default:
                b7 = -1;
                break;
        }
        switch (b7) {
            case 0:
                return n(a2Var.codecs, strArrSplit, a2Var.colorInfo);
            case 1:
            case 2:
                return o(a2Var.codecs, strArrSplit);
            case 3:
            case 4:
                return x(a2Var.codecs, strArrSplit);
            case 5:
                return l(a2Var.codecs, strArrSplit);
            case 6:
                return y(a2Var.codecs, strArrSplit);
            default:
                return null;
        }
    }

    public static synchronized List<n> s(String str, boolean z6, boolean z10) throws c {
        try {
            b bVar = new b(str, z6, z10);
            HashMap<b, List<n>> map = decoderInfosCache;
            List<n> list = map.get(bVar);
            if (list != null) {
                return list;
            }
            int i10 = o0.SDK_INT;
            ArrayList<n> arrayListT = t(bVar, i10 >= 21 ? new f(z6, z10) : new e());
            if (z6 && arrayListT.isEmpty() && 21 <= i10 && i10 <= 23) {
                arrayListT = t(bVar, new e());
                if (!arrayListT.isEmpty()) {
                    com.google.android.exoplayer2.util.t.i(TAG, "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + arrayListT.get(0).name);
                }
            }
            e(str, arrayListT);
            a0 a0VarT = a0.t(arrayListT);
            map.put(bVar, a0VarT);
            return a0VarT;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x008e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0105 A[Catch: Exception -> 0x012e, TRY_ENTER, TryCatch #1 {Exception -> 0x012e, blocks: (B:3:0x0008, B:5:0x001b, B:61:0x0124, B:8:0x002d, B:11:0x0038, B:55:0x00fd, B:58:0x0105, B:60:0x010b, B:64:0x0130, B:65:0x0153), top: B:71:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0025  */
    /* JADX WARN: Code duplicated, block: B:83:0x0130 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private static ArrayList<n> t(b bVar, d dVar) throws c {
        String strP;
        String str;
        int i10;
        boolean z6;
        int i11;
        b bVar2 = bVar;
        try {
            ArrayList<n> arrayList = new ArrayList<>();
            String str2 = bVar2.mimeType;
            int codecCount = dVar.getCodecCount();
            boolean zSecureDecodersExplicit = dVar.secureDecodersExplicit();
            int i12 = 0;
            while (i12 < codecCount) {
                MediaCodecInfo codecInfoAt = dVar.getCodecInfoAt(i12);
                if (A(codecInfoAt)) {
                    i10 = i12;
                    z6 = zSecureDecodersExplicit;
                    i11 = codecCount;
                } else {
                    String name = codecInfoAt.getName();
                    if (C(codecInfoAt, name, zSecureDecodersExplicit, str2) && (strP = p(codecInfoAt, name, str2)) != null) {
                        try {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(strP);
                            boolean zB = dVar.b("tunneled-playback", strP, capabilitiesForType);
                            boolean zA = dVar.a("tunneled-playback", strP, capabilitiesForType);
                            boolean z10 = bVar2.tunneling;
                            if ((z10 || !zA) && (!z10 || zB)) {
                                boolean zB2 = dVar.b("secure-playback", strP, capabilitiesForType);
                                boolean zA2 = dVar.a("secure-playback", strP, capabilitiesForType);
                                boolean z11 = bVar2.secure;
                                if ((z11 || !zA2) && (!z11 || zB2)) {
                                    boolean zD = D(codecInfoAt, str2);
                                    boolean zF = F(codecInfoAt, str2);
                                    boolean zH = H(codecInfoAt);
                                    if (zSecureDecodersExplicit && bVar2.secure == zB2) {
                                        i10 = i12;
                                        z6 = zSecureDecodersExplicit;
                                        i11 = codecCount;
                                        arrayList.add(n.C(name, str2, strP, capabilitiesForType, zD, zF, zH, false, false));
                                    } else {
                                        if (!zSecureDecodersExplicit) {
                                            try {
                                                if (!bVar2.secure) {
                                                    i10 = i12;
                                                    z6 = zSecureDecodersExplicit;
                                                    i11 = codecCount;
                                                    try {
                                                        arrayList.add(n.C(name, str2, strP, capabilitiesForType, zD, zF, zH, false, false));
                                                    } catch (Exception e2) {
                                                        e = e2;
                                                        str = name;
                                                        if (o0.SDK_INT <= 23) {
                                                        }
                                                        com.google.android.exoplayer2.util.t.c(TAG, "Failed to query codec " + str + " (" + strP + ")");
                                                        throw e;
                                                    }
                                                }
                                            } catch (Exception e6) {
                                                e = e6;
                                                i10 = i12;
                                                z6 = zSecureDecodersExplicit;
                                                i11 = codecCount;
                                                str = name;
                                                if (o0.SDK_INT <= 23 || arrayList.isEmpty()) {
                                                    com.google.android.exoplayer2.util.t.c(TAG, "Failed to query codec " + str + " (" + strP + ")");
                                                    throw e;
                                                }
                                                com.google.android.exoplayer2.util.t.c(TAG, "Skipping codec " + str + " (failed to query capabilities)");
                                                i12 = i10 + 1;
                                                bVar2 = bVar;
                                                codecCount = i11;
                                                zSecureDecodersExplicit = z6;
                                            }
                                        }
                                        strP = strP;
                                        i10 = i12;
                                        z6 = zSecureDecodersExplicit;
                                        i11 = codecCount;
                                        if (!z6 && zB2) {
                                            StringBuilder sb = new StringBuilder();
                                            try {
                                                sb.append(name);
                                                sb.append(".secure");
                                                str = name;
                                                try {
                                                    arrayList.add(n.C(sb.toString(), str2, strP, capabilitiesForType, zD, zF, zH, false, true));
                                                    return arrayList;
                                                } catch (Exception e7) {
                                                    e = e7;
                                                    if (o0.SDK_INT <= 23) {
                                                    }
                                                    com.google.android.exoplayer2.util.t.c(TAG, "Failed to query codec " + str + " (" + strP + ")");
                                                    throw e;
                                                }
                                            } catch (Exception e10) {
                                                e = e10;
                                                str = name;
                                            }
                                        }
                                    }
                                } else {
                                    i10 = i12;
                                    z6 = zSecureDecodersExplicit;
                                    i11 = codecCount;
                                }
                            } else {
                                i10 = i12;
                                z6 = zSecureDecodersExplicit;
                                i11 = codecCount;
                            }
                        } catch (Exception e11) {
                            e = e11;
                            strP = strP;
                            str = name;
                            i10 = i12;
                            z6 = zSecureDecodersExplicit;
                            i11 = codecCount;
                        }
                    } else {
                        i10 = i12;
                        z6 = zSecureDecodersExplicit;
                        i11 = codecCount;
                    }
                }
                i12 = i10 + 1;
                bVar2 = bVar;
                codecCount = i11;
                zSecureDecodersExplicit = z6;
            }
            return arrayList;
        } catch (Exception e12) {
            throw new c(e12);
        }
    }

    @CheckResult
    public static List<n> u(List<n> list, final a2 a2Var) {
        ArrayList arrayList = new ArrayList(list);
        P(arrayList, new g() { // from class: com.google.android.exoplayer2.mediacodec.t
            @Override // com.google.android.exoplayer2.mediacodec.v.g
            public final int a(Object obj) {
                return v.L(a2Var, (n) obj);
            }
        });
        return arrayList;
    }

    @Nullable
    public static n v() throws c {
        return r("audio/raw", false, false);
    }

    @RequiresApi
    private static boolean B(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    private static boolean C(MediaCodecInfo mediaCodecInfo, String str, boolean z6, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z6 && str.endsWith(".secure"))) {
            return false;
        }
        int i10 = o0.SDK_INT;
        if (i10 < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (i10 < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            String str3 = o0.DEVICE;
            if ("a70".equals(str3) || ("Xiaomi".equals(o0.MANUFACTURER) && str3.startsWith("HM"))) {
                return false;
            }
        }
        if (i10 == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
            String str4 = o0.DEVICE;
            if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                return false;
            }
        }
        if (i10 == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
            String str5 = o0.DEVICE;
            if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                return false;
            }
        }
        if (i10 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(o0.MANUFACTURER))) {
            String str6 = o0.DEVICE;
            if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                return false;
            }
        }
        if (i10 <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(o0.MANUFACTURER)) {
            String str7 = o0.DEVICE;
            if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                return false;
            }
        }
        if (i10 <= 19 && o0.DEVICE.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        if (i10 <= 23 && "audio/eac3-joc".equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) {
            return false;
        }
        return true;
    }

    @RequiresApi
    private static boolean E(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    @RequiresApi
    private static boolean G(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    @RequiresApi
    private static boolean I(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int L(a2 a2Var, n nVar) {
        try {
            return nVar.m(a2Var) ? 1 : 0;
        } catch (c unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int M(g gVar, Object obj, Object obj2) {
        return gVar.a(obj2) - gVar.a(obj);
    }

    @Nullable
    private static String p(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals("audio/ac3") && "OMX.lge.ac3.decoder".equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    @Nullable
    public static n r(String str, boolean z6, boolean z10) throws c {
        List<n> listS = s(str, z6, z10);
        if (listS.isEmpty()) {
            return null;
        }
        return listS.get(0);
    }
}
