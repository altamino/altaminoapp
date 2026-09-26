package androidx.media3.extractor.mp4;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
final class Sniffer {
    public static final int BRAND_HEIC = 1751476579;
    public static final int BRAND_QUICKTIME = 1903435808;
    private static final int[] COMPATIBLE_BRANDS = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};
    private static final int SEARCH_LENGTH = 4096;

    public static boolean b(ExtractorInput extractorInput) throws IOException {
        return c(extractorInput, true, false);
    }

    public static boolean d(ExtractorInput extractorInput, boolean z6) throws IOException {
        return c(extractorInput, false, z6);
    }

    private static boolean a(int i10, boolean z6) {
        if ((i10 >>> 8) == 3368816) {
            return true;
        }
        if (i10 == 1751476579 && z6) {
            return true;
        }
        for (int i11 : COMPATIBLE_BRANDS) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    private static boolean c(ExtractorInput extractorInput, boolean z6, boolean z10) throws IOException {
        boolean z11;
        boolean z12;
        boolean z13;
        int i10;
        boolean z14;
        boolean z15;
        long length = extractorInput.getLength();
        long j6 = -1;
        int i11 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        long j10 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        if (i11 != 0 && length <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j10 = length;
        }
        int i12 = (int) j10;
        ParsableByteArray parsableByteArray = new ParsableByteArray(64);
        boolean z16 = false;
        int i13 = 0;
        boolean z17 = false;
        while (true) {
            if (i13 < i12) {
                parsableByteArray.Q(8);
                if (extractorInput.peekFully(parsableByteArray.e(), z16 ? 1 : 0, 8, true)) {
                    long J = parsableByteArray.J();
                    int iQ = parsableByteArray.q();
                    if (J == 1) {
                        extractorInput.peekFully(parsableByteArray.e(), 8, 8);
                        parsableByteArray.T(16);
                        i10 = 16;
                        J = parsableByteArray.A();
                    } else {
                        if (J == 0) {
                            long length2 = extractorInput.getLength();
                            if (length2 != j6) {
                                J = (length2 - extractorInput.getPeekPosition()) + ((long) 8);
                            }
                        }
                        i10 = 8;
                    }
                    long j11 = i10;
                    if (J < j11) {
                        return z16;
                    }
                    i13 += i10;
                    if (iQ == 1836019574) {
                        i12 += (int) J;
                        if (i11 != 0 && i12 > length) {
                            i12 = (int) length;
                        }
                    } else if (iQ == 1836019558 || iQ == 1836475768) {
                        z11 = z16 ? 1 : 0;
                        z12 = true;
                        z13 = true;
                    } else {
                        int i14 = i11;
                        if ((((long) i13) + J) - j11 >= i12) {
                            z11 = false;
                            z12 = true;
                            z13 = z11 ? 1 : 0;
                        } else {
                            int i15 = (int) (J - j11);
                            i13 += i15;
                            if (iQ != 1718909296) {
                                z14 = false;
                                if (i15 != 0) {
                                    z17 = z17;
                                    extractorInput.advancePeekPosition(i15);
                                    z17 = z17;
                                }
                            } else {
                                if (i15 < 8) {
                                    return false;
                                }
                                parsableByteArray.Q(i15);
                                extractorInput.peekFully(parsableByteArray.e(), 0, i15);
                                int i16 = i15 / 4;
                                int i17 = 0;
                                while (true) {
                                    if (i17 >= i16) {
                                        z15 = z17;
                                        break;
                                    }
                                    if (i17 == 1) {
                                        parsableByteArray.V(4);
                                    } else if (a(parsableByteArray.q(), z10)) {
                                        z15 = true;
                                        break;
                                    }
                                    i17++;
                                }
                                if (!z15) {
                                    return false;
                                }
                                z14 = false;
                                z17 = z15;
                            }
                            z17 = z17;
                            z16 = z14;
                            i11 = i14;
                        }
                    }
                    j6 = -1;
                    z17 = z17;
                }
                return (z17 || z6 != z13) ? z11 : z12;
            }
            z11 = z16 ? 1 : 0;
            z12 = true;
            z13 = z11 ? 1 : 0;
            if (z17) {
            }
        }
    }

    private Sniffer() {
    }
}
