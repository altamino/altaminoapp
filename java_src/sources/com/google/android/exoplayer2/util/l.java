package com.google.android.exoplayer2.util;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class l {
    public static final int AC3 = 0;
    public static final int AC4 = 1;
    public static final int ADTS = 2;
    public static final int AMR = 3;
    public static final int AVI = 16;
    private static final String EXTENSION_AAC = ".aac";
    private static final String EXTENSION_AC3 = ".ac3";
    private static final String EXTENSION_AC4 = ".ac4";
    private static final String EXTENSION_ADTS = ".adts";
    private static final String EXTENSION_AMR = ".amr";
    private static final String EXTENSION_AVI = ".avi";
    private static final String EXTENSION_EC3 = ".ec3";
    private static final String EXTENSION_FLAC = ".flac";
    private static final String EXTENSION_FLV = ".flv";
    private static final String EXTENSION_JPEG = ".jpeg";
    private static final String EXTENSION_JPG = ".jpg";
    private static final String EXTENSION_M2P = ".m2p";
    private static final String EXTENSION_MID = ".mid";
    private static final String EXTENSION_MIDI = ".midi";
    private static final String EXTENSION_MP3 = ".mp3";
    private static final String EXTENSION_MP4 = ".mp4";
    private static final String EXTENSION_MPEG = ".mpeg";
    private static final String EXTENSION_MPG = ".mpg";
    private static final String EXTENSION_OPUS = ".opus";
    private static final String EXTENSION_PREFIX_CMF = ".cmf";
    private static final String EXTENSION_PREFIX_M4 = ".m4";
    private static final String EXTENSION_PREFIX_MK = ".mk";
    private static final String EXTENSION_PREFIX_MP4 = ".mp4";
    private static final String EXTENSION_PREFIX_OG = ".og";
    private static final String EXTENSION_PREFIX_TS = ".ts";
    private static final String EXTENSION_PS = ".ps";
    private static final String EXTENSION_SMF = ".smf";
    private static final String EXTENSION_TS = ".ts";
    private static final String EXTENSION_VTT = ".vtt";
    private static final String EXTENSION_WAV = ".wav";
    private static final String EXTENSION_WAVE = ".wave";
    private static final String EXTENSION_WEBM = ".webm";
    private static final String EXTENSION_WEBVTT = ".webvtt";
    public static final int FLAC = 4;
    public static final int FLV = 5;

    @VisibleForTesting
    static final String HEADER_CONTENT_TYPE = "Content-Type";
    public static final int JPEG = 14;
    public static final int MATROSKA = 6;
    public static final int MIDI = 15;
    public static final int MP3 = 7;
    public static final int MP4 = 8;
    public static final int OGG = 9;
    public static final int PS = 10;
    public static final int TS = 11;
    public static final int UNKNOWN = -1;
    public static final int WAV = 12;
    public static final int WEBVTT = 13;

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int a(@Nullable String str) {
        byte b7;
        if (str == null) {
            return -1;
        }
        String strP = x.p(str);
        strP.hashCode();
        switch (strP.hashCode()) {
            case -2123537834:
                b7 = !strP.equals("audio/eac3-joc") ? (byte) -1 : (byte) 0;
                break;
            case -1662384011:
                b7 = !strP.equals("video/mp2p") ? (byte) -1 : (byte) 1;
                break;
            case -1662384007:
                b7 = !strP.equals("video/mp2t") ? (byte) -1 : (byte) 2;
                break;
            case -1662095187:
                b7 = !strP.equals("video/webm") ? (byte) -1 : (byte) 3;
                break;
            case -1606874997:
                b7 = !strP.equals("audio/amr-wb") ? (byte) -1 : (byte) 4;
                break;
            case -1487394660:
                b7 = !strP.equals("image/jpeg") ? (byte) -1 : (byte) 5;
                break;
            case -1248337486:
                b7 = !strP.equals("application/mp4") ? (byte) -1 : (byte) 6;
                break;
            case -1079884372:
                b7 = !strP.equals("video/x-msvideo") ? (byte) -1 : (byte) 7;
                break;
            case -1004728940:
                b7 = !strP.equals("text/vtt") ? (byte) -1 : (byte) 8;
                break;
            case -387023398:
                b7 = !strP.equals("audio/x-matroska") ? (byte) -1 : (byte) 9;
                break;
            case -43467528:
                b7 = !strP.equals("application/webm") ? (byte) -1 : (byte) 10;
                break;
            case 13915911:
                b7 = !strP.equals("video/x-flv") ? (byte) -1 : (byte) 11;
                break;
            case 187078296:
                b7 = !strP.equals("audio/ac3") ? (byte) -1 : (byte) 12;
                break;
            case 187078297:
                b7 = !strP.equals("audio/ac4") ? (byte) -1 : (byte) 13;
                break;
            case 187078669:
                b7 = !strP.equals("audio/amr") ? (byte) -1 : (byte) 14;
                break;
            case 187090232:
                b7 = !strP.equals("audio/mp4") ? (byte) -1 : (byte) 15;
                break;
            case 187091926:
                b7 = !strP.equals("audio/ogg") ? (byte) -1 : (byte) 16;
                break;
            case 187099443:
                b7 = !strP.equals("audio/wav") ? (byte) -1 : (byte) 17;
                break;
            case 1331848029:
                b7 = !strP.equals("video/mp4") ? (byte) -1 : com.google.common.base.c.DC2;
                break;
            case 1503095341:
                b7 = !strP.equals("audio/3gpp") ? (byte) -1 : (byte) 19;
                break;
            case 1504578661:
                b7 = !strP.equals("audio/eac3") ? (byte) -1 : com.google.common.base.c.DC4;
                break;
            case 1504619009:
                b7 = !strP.equals("audio/flac") ? (byte) -1 : com.google.common.base.c.NAK;
                break;
            case 1504824762:
                b7 = !strP.equals("audio/midi") ? (byte) -1 : com.google.common.base.c.SYN;
                break;
            case 1504831518:
                b7 = !strP.equals("audio/mpeg") ? (byte) -1 : com.google.common.base.c.ETB;
                break;
            case 1505118770:
                b7 = !strP.equals("audio/webm") ? (byte) -1 : com.google.common.base.c.CAN;
                break;
            case 2039520277:
                b7 = !strP.equals("video/x-matroska") ? (byte) -1 : com.google.common.base.c.EM;
                break;
            default:
                b7 = -1;
                break;
        }
        switch (b7) {
            case 0:
            case 12:
            case 20:
                return 0;
            case 1:
                return 10;
            case 2:
                return 11;
            case 3:
            case 9:
            case 10:
            case 24:
            case 25:
                return 6;
            case 4:
            case 14:
            case 19:
                return 3;
            case 5:
                return 14;
            case 6:
            case 15:
            case 18:
                return 8;
            case 7:
                return 16;
            case 8:
                return 13;
            case 11:
                return 5;
            case 13:
                return 1;
            case 16:
                return 9;
            case 17:
                return 12;
            case 21:
                return 4;
            case 22:
                return 15;
            case 23:
                return 7;
            default:
                return -1;
        }
    }

    public static int b(Map<String, List<String>> map) {
        List<String> list = map.get("Content-Type");
        return a((list == null || list.isEmpty()) ? null : list.get(0));
    }

    public static int c(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return -1;
        }
        if (!lastPathSegment.endsWith(EXTENSION_AC3) && !lastPathSegment.endsWith(EXTENSION_EC3)) {
            if (lastPathSegment.endsWith(EXTENSION_AC4)) {
                return 1;
            }
            if (!lastPathSegment.endsWith(EXTENSION_ADTS) && !lastPathSegment.endsWith(EXTENSION_AAC)) {
                if (lastPathSegment.endsWith(EXTENSION_AMR)) {
                    return 3;
                }
                if (lastPathSegment.endsWith(EXTENSION_FLAC)) {
                    return 4;
                }
                if (lastPathSegment.endsWith(EXTENSION_FLV)) {
                    return 5;
                }
                if (!lastPathSegment.endsWith(EXTENSION_MID) && !lastPathSegment.endsWith(EXTENSION_MIDI) && !lastPathSegment.endsWith(EXTENSION_SMF)) {
                    if (!lastPathSegment.startsWith(EXTENSION_PREFIX_MK, lastPathSegment.length() - 4) && !lastPathSegment.endsWith(EXTENSION_WEBM)) {
                        if (lastPathSegment.endsWith(EXTENSION_MP3)) {
                            return 7;
                        }
                        if (!lastPathSegment.endsWith(".mp4") && !lastPathSegment.startsWith(EXTENSION_PREFIX_M4, lastPathSegment.length() - 4) && !lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) && !lastPathSegment.startsWith(EXTENSION_PREFIX_CMF, lastPathSegment.length() - 5)) {
                            if (!lastPathSegment.startsWith(EXTENSION_PREFIX_OG, lastPathSegment.length() - 4) && !lastPathSegment.endsWith(EXTENSION_OPUS)) {
                                if (!lastPathSegment.endsWith(EXTENSION_PS) && !lastPathSegment.endsWith(EXTENSION_MPEG) && !lastPathSegment.endsWith(EXTENSION_MPG) && !lastPathSegment.endsWith(EXTENSION_M2P)) {
                                    if (!lastPathSegment.endsWith(".ts") && !lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
                                        if (!lastPathSegment.endsWith(EXTENSION_WAV) && !lastPathSegment.endsWith(EXTENSION_WAVE)) {
                                            if (!lastPathSegment.endsWith(EXTENSION_VTT) && !lastPathSegment.endsWith(EXTENSION_WEBVTT)) {
                                                if (!lastPathSegment.endsWith(EXTENSION_JPG) && !lastPathSegment.endsWith(EXTENSION_JPEG)) {
                                                    if (!lastPathSegment.endsWith(EXTENSION_AVI)) {
                                                        return -1;
                                                    }
                                                    return 16;
                                                }
                                                return 14;
                                            }
                                            return 13;
                                        }
                                        return 12;
                                    }
                                    return 11;
                                }
                                return 10;
                            }
                            return 9;
                        }
                        return 8;
                    }
                    return 6;
                }
                return 15;
            }
            return 2;
        }
        return 0;
    }
}
