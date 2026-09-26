package androidx.media3.common;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.base.c;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class MimeTypes {
    public static final String APPLICATION_AIT = "application/vnd.dvb.ait";

    @UnstableApi
    public static final String APPLICATION_CAMERA_MOTION = "application/x-camera-motion";
    public static final String APPLICATION_CEA608 = "application/cea-608";
    public static final String APPLICATION_CEA708 = "application/cea-708";
    public static final String APPLICATION_DVBSUBS = "application/dvbsubs";

    @UnstableApi
    public static final String APPLICATION_EMSG = "application/x-emsg";

    @UnstableApi
    public static final String APPLICATION_EXIF = "application/x-exif";

    @UnstableApi
    public static final String APPLICATION_ICY = "application/x-icy";
    public static final String APPLICATION_ID3 = "application/id3";
    public static final String APPLICATION_M3U8 = "application/x-mpegURL";
    public static final String APPLICATION_MATROSKA = "application/x-matroska";
    public static final String APPLICATION_MP4 = "application/mp4";
    public static final String APPLICATION_MP4CEA608 = "application/x-mp4-cea-608";
    public static final String APPLICATION_MP4VTT = "application/x-mp4-vtt";
    public static final String APPLICATION_MPD = "application/dash+xml";
    public static final String APPLICATION_PGS = "application/pgs";

    @Deprecated
    public static final String APPLICATION_RAWCC = "application/x-rawcc";
    public static final String APPLICATION_RTSP = "application/x-rtsp";

    @UnstableApi
    public static final String APPLICATION_SCTE35 = "application/x-scte35";
    public static final String APPLICATION_SS = "application/vnd.ms-sstr+xml";
    public static final String APPLICATION_SUBRIP = "application/x-subrip";
    public static final String APPLICATION_TTML = "application/ttml+xml";
    public static final String APPLICATION_TX3G = "application/x-quicktime-tx3g";
    public static final String APPLICATION_VOBSUB = "application/vobsub";
    public static final String APPLICATION_WEBM = "application/webm";
    public static final String AUDIO_AAC = "audio/mp4a-latm";
    public static final String AUDIO_AC3 = "audio/ac3";
    public static final String AUDIO_AC4 = "audio/ac4";
    public static final String AUDIO_ALAC = "audio/alac";
    public static final String AUDIO_ALAW = "audio/g711-alaw";
    public static final String AUDIO_AMR = "audio/amr";
    public static final String AUDIO_AMR_NB = "audio/3gpp";
    public static final String AUDIO_AMR_WB = "audio/amr-wb";
    public static final String AUDIO_DTS = "audio/vnd.dts";
    public static final String AUDIO_DTS_EXPRESS = "audio/vnd.dts.hd;profile=lbr";
    public static final String AUDIO_DTS_HD = "audio/vnd.dts.hd";

    @UnstableApi
    public static final String AUDIO_DTS_X = "audio/vnd.dts.uhd;profile=p2";

    @UnstableApi
    public static final String AUDIO_EXOPLAYER_MIDI = "audio/x-exoplayer-midi";
    public static final String AUDIO_E_AC3 = "audio/eac3";
    public static final String AUDIO_E_AC3_JOC = "audio/eac3-joc";
    public static final String AUDIO_FLAC = "audio/flac";

    @UnstableApi
    public static final String AUDIO_MATROSKA = "audio/x-matroska";
    public static final String AUDIO_MIDI = "audio/midi";
    public static final String AUDIO_MLAW = "audio/g711-mlaw";
    public static final String AUDIO_MP4 = "audio/mp4";
    public static final String AUDIO_MPEG = "audio/mpeg";
    public static final String AUDIO_MPEGH_MHA1 = "audio/mha1";
    public static final String AUDIO_MPEGH_MHM1 = "audio/mhm1";
    public static final String AUDIO_MPEG_L1 = "audio/mpeg-L1";
    public static final String AUDIO_MPEG_L2 = "audio/mpeg-L2";
    public static final String AUDIO_MSGSM = "audio/gsm";
    public static final String AUDIO_OGG = "audio/ogg";
    public static final String AUDIO_OPUS = "audio/opus";
    public static final String AUDIO_RAW = "audio/raw";
    public static final String AUDIO_TRUEHD = "audio/true-hd";

    @UnstableApi
    public static final String AUDIO_UNKNOWN = "audio/x-unknown";
    public static final String AUDIO_VORBIS = "audio/vorbis";
    public static final String AUDIO_WAV = "audio/wav";
    public static final String AUDIO_WEBM = "audio/webm";

    @UnstableApi
    public static final String BASE_TYPE_APPLICATION = "application";

    @UnstableApi
    public static final String BASE_TYPE_AUDIO = "audio";

    @UnstableApi
    public static final String BASE_TYPE_IMAGE = "image";

    @UnstableApi
    public static final String BASE_TYPE_TEXT = "text";

    @UnstableApi
    public static final String BASE_TYPE_VIDEO = "video";

    @UnstableApi
    public static final String CODEC_E_AC3_JOC = "ec+3";
    public static final String IMAGE_HEIC = "image/heic";
    public static final String IMAGE_HEIF = "image/heif";
    public static final String IMAGE_JPEG = "image/jpeg";
    public static final String IMAGE_PNG = "image/png";
    public static final String IMAGE_WEBP = "image/webp";

    @UnstableApi
    public static final String TEXT_EXOPLAYER_CUES = "text/x-exoplayer-cues";
    public static final String TEXT_SSA = "text/x-ssa";

    @UnstableApi
    public static final String TEXT_UNKNOWN = "text/x-unknown";
    public static final String TEXT_VTT = "text/vtt";
    public static final String VIDEO_AV1 = "video/av01";
    public static final String VIDEO_AVI = "video/x-msvideo";
    public static final String VIDEO_DIVX = "video/divx";
    public static final String VIDEO_DOLBY_VISION = "video/dolby-vision";

    @UnstableApi
    public static final String VIDEO_FLV = "video/x-flv";
    public static final String VIDEO_H263 = "video/3gpp";
    public static final String VIDEO_H264 = "video/avc";
    public static final String VIDEO_H265 = "video/hevc";

    @UnstableApi
    public static final String VIDEO_MATROSKA = "video/x-matroska";
    public static final String VIDEO_MJPEG = "video/mjpeg";
    public static final String VIDEO_MP2T = "video/mp2t";
    public static final String VIDEO_MP4 = "video/mp4";
    public static final String VIDEO_MP42 = "video/mp42";
    public static final String VIDEO_MP43 = "video/mp43";
    public static final String VIDEO_MP4V = "video/mp4v-es";
    public static final String VIDEO_MPEG = "video/mpeg";
    public static final String VIDEO_MPEG2 = "video/mpeg2";
    public static final String VIDEO_OGG = "video/ogg";
    public static final String VIDEO_PS = "video/mp2p";

    @UnstableApi
    public static final String VIDEO_RAW = "video/raw";

    @UnstableApi
    public static final String VIDEO_UNKNOWN = "video/x-unknown";
    public static final String VIDEO_VC1 = "video/wvc1";

    @UnstableApi
    public static final String VIDEO_VP8 = "video/x-vnd.on2.vp8";

    @UnstableApi
    public static final String VIDEO_VP9 = "video/x-vnd.on2.vp9";
    public static final String VIDEO_WEBM = "video/webm";
    private static final ArrayList<CustomMimeType> customMimeTypes = new ArrayList<>();
    private static final Pattern MP4A_RFC_6381_CODEC_PATTERN = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    @UnstableApi
    public static boolean a(@Nullable String str, @Nullable String str2) {
        Mp4aObjectType mp4aObjectTypeI;
        int iA;
        if (str == null) {
            return false;
        }
        switch (str) {
            case "audio/eac3-joc":
            case "audio/mpeg-L1":
            case "audio/mpeg-L2":
            case "audio/ac3":
            case "audio/raw":
            case "audio/eac3":
            case "audio/flac":
            case "audio/mpeg":
            case "audio/g711-alaw":
            case "audio/g711-mlaw":
                return true;
            case "audio/mp4a-latm":
                return (str2 == null || (mp4aObjectTypeI = i(str2)) == null || (iA = mp4aObjectTypeI.a()) == 0 || iA == 16) ? false : true;
            default:
                return false;
        }
    }

    @Nullable
    @UnstableApi
    public static String c(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : Util.f1(str)) {
            String strG = g(str2);
            if (strG != null && o(strG)) {
                return strG;
            }
        }
        return null;
    }

    @Nullable
    @UnstableApi
    public static String d(@Nullable String str, @Nullable String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        String[] strArrF1 = Util.f1(str);
        StringBuilder sb = new StringBuilder();
        for (String str3 : strArrF1) {
            if (str2.equals(g(str3))) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str3);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    @Nullable
    @UnstableApi
    public static String g(@Nullable String str) {
        Mp4aObjectType mp4aObjectTypeI;
        String strH = null;
        if (str == null) {
            return null;
        }
        String strE = c.e(str.trim());
        if (strE.startsWith("avc1") || strE.startsWith("avc3")) {
            return "video/avc";
        }
        if (strE.startsWith("hev1") || strE.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (strE.startsWith("dvav") || strE.startsWith("dva1") || strE.startsWith("dvhe") || strE.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (strE.startsWith("av01")) {
            return "video/av01";
        }
        if (strE.startsWith("vp9") || strE.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (strE.startsWith("vp8") || strE.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (strE.startsWith("mp4a")) {
            if (strE.startsWith("mp4a.") && (mp4aObjectTypeI = i(strE)) != null) {
                strH = h(mp4aObjectTypeI.objectTypeIndication);
            }
            return strH == null ? "audio/mp4a-latm" : strH;
        }
        if (strE.startsWith("mha1")) {
            return "audio/mha1";
        }
        if (strE.startsWith("mhm1")) {
            return "audio/mhm1";
        }
        if (strE.startsWith("ac-3") || strE.startsWith("dac3")) {
            return "audio/ac3";
        }
        if (strE.startsWith("ec-3") || strE.startsWith("dec3")) {
            return "audio/eac3";
        }
        if (strE.startsWith("ec+3")) {
            return "audio/eac3-joc";
        }
        if (strE.startsWith("ac-4") || strE.startsWith("dac4")) {
            return "audio/ac4";
        }
        if (strE.startsWith("dtsc")) {
            return "audio/vnd.dts";
        }
        if (strE.startsWith("dtse")) {
            return "audio/vnd.dts.hd;profile=lbr";
        }
        if (strE.startsWith("dtsh") || strE.startsWith("dtsl")) {
            return "audio/vnd.dts.hd";
        }
        if (strE.startsWith("dtsx")) {
            return "audio/vnd.dts.uhd;profile=p2";
        }
        if (strE.startsWith("opus")) {
            return "audio/opus";
        }
        if (strE.startsWith("vorbis")) {
            return "audio/vorbis";
        }
        if (strE.startsWith("flac")) {
            return "audio/flac";
        }
        if (strE.startsWith("stpp")) {
            return "application/ttml+xml";
        }
        if (strE.startsWith("wvtt")) {
            return "text/vtt";
        }
        if (strE.contains("cea708")) {
            return "application/cea-708";
        }
        return (strE.contains("eia608") || strE.contains("cea608")) ? "application/cea-608" : e(strE);
    }

    @Nullable
    @UnstableApi
    public static String h(int i10) {
        if (i10 == 32) {
            return "video/mp4v-es";
        }
        if (i10 == 33) {
            return "video/avc";
        }
        if (i10 == 35) {
            return "video/hevc";
        }
        if (i10 == 64) {
            return "audio/mp4a-latm";
        }
        if (i10 == 163) {
            return "video/wvc1";
        }
        if (i10 == 177) {
            return "video/x-vnd.on2.vp9";
        }
        if (i10 == 165) {
            return "audio/ac3";
        }
        if (i10 == 166) {
            return "audio/eac3";
        }
        switch (i10) {
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
                return "video/mpeg2";
            case 102:
            case 103:
            case 104:
                return "audio/mp4a-latm";
            case 105:
            case 107:
                return "audio/mpeg";
            case 106:
                return "video/mpeg";
            default:
                switch (i10) {
                    case 169:
                    case 172:
                        return "audio/vnd.dts";
                    case 170:
                    case 171:
                        return "audio/vnd.dts.hd";
                    case 173:
                        return "audio/opus";
                    case 174:
                        return "audio/ac4";
                    default:
                        return null;
                }
        }
    }

    @Nullable
    @UnstableApi
    private static String j(@Nullable String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }

    @Nullable
    @UnstableApi
    public static String n(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : Util.f1(str)) {
            String strG = g(str2);
            if (strG != null && s(strG)) {
                return strG;
            }
        }
        return null;
    }

    @UnstableApi
    public static boolean q(@Nullable String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("video/webm") || str.startsWith("audio/webm") || str.startsWith("application/webm") || str.startsWith("video/x-matroska") || str.startsWith("audio/x-matroska") || str.startsWith("application/x-matroska");
    }

    private static final class CustomMimeType {
        public final String codecPrefix;
        public final String mimeType;
        public final int trackType;

        public CustomMimeType(String str, String str2, int i10) {
            this.mimeType = str;
            this.codecPrefix = str2;
            this.trackType = i10;
        }
    }

    @VisibleForTesting
    static final class Mp4aObjectType {
        public final int audioObjectTypeIndication;
        public final int objectTypeIndication;

        public int a() {
            int i10 = this.audioObjectTypeIndication;
            if (i10 == 2) {
                return 10;
            }
            if (i10 == 5) {
                return 11;
            }
            if (i10 == 29) {
                return 12;
            }
            if (i10 == 42) {
                return 16;
            }
            if (i10 != 22) {
                return i10 != 23 ? 0 : 15;
            }
            return 1073741824;
        }

        public Mp4aObjectType(int i10, int i11) {
            this.objectTypeIndication = i10;
            this.audioObjectTypeIndication = i11;
        }
    }

    @Nullable
    private static String e(String str) {
        int size = customMimeTypes.size();
        for (int i10 = 0; i10 < size; i10++) {
            CustomMimeType customMimeType = customMimeTypes.get(i10);
            if (str.startsWith(customMimeType.codecPrefix)) {
                return customMimeType.mimeType;
            }
        }
        return null;
    }

    @Nullable
    @VisibleForTesting
    static Mp4aObjectType i(String str) {
        Matcher matcher = MP4A_RFC_6381_CODEC_PATTERN.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String str2 = (String) Assertions.e(matcher.group(1));
        String strGroup = matcher.group(2);
        try {
            return new Mp4aObjectType(Integer.parseInt(str2, 16), strGroup != null ? Integer.parseInt(strGroup) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private static int l(String str) {
        int size = customMimeTypes.size();
        for (int i10 = 0; i10 < size; i10++) {
            CustomMimeType customMimeType = customMimeTypes.get(i10);
            if (str.equals(customMimeType.mimeType)) {
                return customMimeType.trackType;
            }
        }
        return -1;
    }

    @UnstableApi
    public static boolean o(@Nullable String str) {
        return "audio".equals(j(str));
    }

    @UnstableApi
    public static boolean p(@Nullable String str) {
        return "image".equals(j(str));
    }

    @UnstableApi
    public static boolean r(@Nullable String str) {
        return "text".equals(j(str)) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str);
    }

    @UnstableApi
    public static boolean s(@Nullable String str) {
        return "video".equals(j(str));
    }

    private MimeTypes() {
    }

    @UnstableApi
    public static boolean b(@Nullable String str, String str2) {
        if (d(str, str2) != null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @UnstableApi
    public static int f(String str, @Nullable String str2) {
        Mp4aObjectType mp4aObjectTypeI;
        str.hashCode();
        byte b7 = -1;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    b7 = 0;
                }
                break;
            case -1365340241:
                if (str.equals("audio/vnd.dts.hd;profile=lbr")) {
                    b7 = 1;
                }
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    b7 = 2;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    b7 = 3;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    b7 = 4;
                }
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    b7 = 5;
                }
                break;
            case 550520934:
                if (str.equals("audio/vnd.dts.uhd;profile=p2")) {
                    b7 = 6;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    b7 = 7;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    b7 = 8;
                }
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    b7 = 9;
                }
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    b7 = 10;
                }
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    b7 = c.VT;
                }
                break;
        }
        switch (b7) {
            case 0:
                return 18;
            case 1:
                return 8;
            case 2:
                return 7;
            case 3:
                if (str2 == null || (mp4aObjectTypeI = i(str2)) == null) {
                    return 0;
                }
                return mp4aObjectTypeI.a();
            case 4:
                return 5;
            case 5:
                return 17;
            case 6:
                return 30;
            case 7:
                return 6;
            case 8:
                return 9;
            case 9:
                return 20;
            case 10:
                return 8;
            case 11:
                return 14;
            default:
                return 0;
        }
    }

    @UnstableApi
    public static int k(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (o(str)) {
            return 1;
        }
        if (s(str)) {
            return 2;
        }
        if (r(str)) {
            return 3;
        }
        if (p(str)) {
            return 4;
        }
        if (!"application/id3".equals(str) && !"application/x-emsg".equals(str) && !"application/x-scte35".equals(str)) {
            if ("application/x-camera-motion".equals(str)) {
                return 6;
            }
            return l(str);
        }
        return 5;
    }

    @UnstableApi
    public static int m(String str) {
        return k(g(str));
    }

    @UnstableApi
    public static String t(String str) {
        str.hashCode();
        switch (str) {
            case "audio/x-flac":
                return "audio/flac";
            case "audio/x-wav":
                return "audio/wav";
            case "audio/mp3":
                return "audio/mpeg";
            default:
                return str;
        }
    }
}
