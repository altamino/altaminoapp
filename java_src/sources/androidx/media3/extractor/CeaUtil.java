package androidx.media3.extractor;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class CeaUtil {
    private static final int COUNTRY_CODE = 181;
    private static final int PAYLOAD_TYPE_CC = 4;
    private static final int PROVIDER_CODE_ATSC = 49;
    private static final int PROVIDER_CODE_DIRECTV = 47;
    private static final String TAG = "CeaUtil";
    public static final int USER_DATA_IDENTIFIER_GA94 = 1195456820;
    public static final int USER_DATA_TYPE_CODE_MPEG_CC = 3;

    private static int c(ParsableByteArray parsableByteArray) {
        int i10 = 0;
        while (parsableByteArray.a() != 0) {
            int iH = parsableByteArray.H();
            i10 += iH;
            if (iH != 255) {
                return i10;
            }
        }
        return -1;
    }

    private CeaUtil() {
    }

    public static void a(long j6, ParsableByteArray parsableByteArray, TrackOutput[] trackOutputArr) {
        int iQ;
        boolean z6;
        while (true) {
            boolean z10 = true;
            if (parsableByteArray.a() > 1) {
                int iC = c(parsableByteArray);
                int iC2 = c(parsableByteArray);
                int iF = parsableByteArray.f() + iC2;
                if (iC2 != -1 && iC2 <= parsableByteArray.a()) {
                    if (iC == 4 && iC2 >= 8) {
                        int iH = parsableByteArray.H();
                        int iN = parsableByteArray.N();
                        if (iN == 49) {
                            iQ = parsableByteArray.q();
                        } else {
                            iQ = 0;
                        }
                        int iH2 = parsableByteArray.H();
                        if (iN == 47) {
                            parsableByteArray.V(1);
                        }
                        if (iH == COUNTRY_CODE && ((iN == 49 || iN == 47) && iH2 == 3)) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (iN == 49) {
                            if (iQ != 1195456820) {
                                z10 = false;
                            }
                            z6 &= z10;
                        }
                        if (z6) {
                            b(j6, parsableByteArray, trackOutputArr);
                        }
                    }
                } else {
                    Log.i(TAG, "Skipping remainder of malformed SEI NAL unit.");
                    iF = parsableByteArray.g();
                }
                parsableByteArray.U(iF);
            } else {
                return;
            }
        }
    }

    public static void b(long j6, ParsableByteArray parsableByteArray, TrackOutput[] trackOutputArr) {
        int iH = parsableByteArray.H();
        if ((iH & 64) != 0) {
            parsableByteArray.V(1);
            int i10 = (iH & 31) * 3;
            int iF = parsableByteArray.f();
            for (TrackOutput trackOutput : trackOutputArr) {
                parsableByteArray.U(iF);
                trackOutput.b(parsableByteArray, i10);
                if (j6 != -9223372036854775807L) {
                    trackOutput.f(j6, 1, i10, 0, null);
                }
            }
        }
    }
}
