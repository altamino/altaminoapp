package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes.dex */
public final class WavUtil {
    private static final int TYPE_A_LAW = 6;
    private static final int TYPE_FLOAT = 3;
    private static final int TYPE_MU_LAW = 7;
    private static final int TYPE_PCM = 1;
    private static final int TYPE_WAVE_FORMAT_EXTENSIBLE = 65534;
    public static final int RIFF_FOURCC = Util.getIntegerCodeForString("RIFF");
    public static final int WAVE_FOURCC = Util.getIntegerCodeForString("WAVE");
    public static final int FMT_FOURCC = Util.getIntegerCodeForString("fmt ");
    public static final int DATA_FOURCC = Util.getIntegerCodeForString("data");

    public static int getEncodingForType(int i, int i2) {
        if (i != 1) {
            if (i == 3) {
                return i2 == 32 ? 4 : 0;
            }
            if (i != TYPE_WAVE_FORMAT_EXTENSIBLE) {
                if (i == 6) {
                    return 536870912;
                }
                if (i != 7) {
                    return 0;
                }
                return C.ENCODING_PCM_MU_LAW;
            }
        }
        return Util.getPcmEncoding(i2);
    }
}
