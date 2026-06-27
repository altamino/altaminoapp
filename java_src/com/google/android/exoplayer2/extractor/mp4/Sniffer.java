package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;

/* loaded from: classes.dex */
final class Sniffer {
    private static final int[] COMPATIBLE_BRANDS = {Util.getIntegerCodeForString("isom"), Util.getIntegerCodeForString("iso2"), Util.getIntegerCodeForString("iso3"), Util.getIntegerCodeForString("iso4"), Util.getIntegerCodeForString("iso5"), Util.getIntegerCodeForString("iso6"), Util.getIntegerCodeForString("avc1"), Util.getIntegerCodeForString("hvc1"), Util.getIntegerCodeForString("hev1"), Util.getIntegerCodeForString("av01"), Util.getIntegerCodeForString("mp41"), Util.getIntegerCodeForString("mp42"), Util.getIntegerCodeForString("3g2a"), Util.getIntegerCodeForString("3g2b"), Util.getIntegerCodeForString("3gr6"), Util.getIntegerCodeForString("3gs6"), Util.getIntegerCodeForString("3ge6"), Util.getIntegerCodeForString("3gg6"), Util.getIntegerCodeForString("M4V "), Util.getIntegerCodeForString("M4A "), Util.getIntegerCodeForString("f4v "), Util.getIntegerCodeForString("kddi"), Util.getIntegerCodeForString("M4VP"), Util.getIntegerCodeForString("qt  "), Util.getIntegerCodeForString("MSNV"), Util.getIntegerCodeForString("dby1")};
    private static final int SEARCH_LENGTH = 4096;

    public static boolean sniffFragmented(ExtractorInput extractorInput) throws InterruptedException, IOException {
        return sniffInternal(extractorInput, true);
    }

    public static boolean sniffUnfragmented(ExtractorInput extractorInput) throws InterruptedException, IOException {
        return sniffInternal(extractorInput, false);
    }

    private static boolean sniffInternal(ExtractorInput extractorInput, boolean z) throws InterruptedException, IOException {
        boolean z2;
        boolean z3;
        boolean z4;
        long length = extractorInput.getLength();
        long j = 4096;
        long j2 = -1;
        if (length != -1 && length <= 4096) {
            j = length;
        }
        int i = (int) j;
        ParsableByteArray parsableByteArray = new ParsableByteArray(64);
        boolean z5 = false;
        int i2 = i;
        int i3 = 0;
        boolean z6 = false;
        while (i3 < i2) {
            parsableByteArray.reset(8);
            extractorInput.peekFully(parsableByteArray.data, z5 ? 1 : 0, 8);
            long unsignedInt = parsableByteArray.readUnsignedInt();
            int i4 = parsableByteArray.readInt();
            int i5 = 16;
            if (unsignedInt == 1) {
                extractorInput.peekFully(parsableByteArray.data, 8, 8);
                parsableByteArray.setLimit(16);
                unsignedInt = parsableByteArray.readLong();
            } else {
                if (unsignedInt == 0) {
                    long length2 = extractorInput.getLength();
                    if (length2 != j2) {
                        unsignedInt = 8 + (length2 - extractorInput.getPeekPosition());
                    }
                }
                i5 = 8;
            }
            if (length != j2 && i3 + unsignedInt > length) {
                return z5;
            }
            long j3 = i5;
            if (unsignedInt < j3) {
                return z5;
            }
            i3 += i5;
            if (i4 == Atom.TYPE_moov) {
                i2 += (int) unsignedInt;
                if (length != -1 && i2 > length) {
                    i2 = (int) length;
                }
                j2 = -1;
            } else {
                if (i4 == Atom.TYPE_moof || i4 == Atom.TYPE_mvex) {
                    z2 = false;
                    z3 = true;
                    break;
                }
                int i6 = i2;
                long j4 = unsignedInt;
                if ((i3 + unsignedInt) - j3 >= i6) {
                    break;
                }
                int i7 = (int) (j4 - j3);
                i3 += i7;
                if (i4 == Atom.TYPE_ftyp) {
                    if (i7 < 8) {
                        return false;
                    }
                    parsableByteArray.reset(i7);
                    extractorInput.peekFully(parsableByteArray.data, 0, i7);
                    int i8 = i7 / 4;
                    int i9 = 0;
                    while (true) {
                        if (i9 >= i8) {
                            z4 = z6;
                            break;
                        }
                        z4 = true;
                        if (i9 == 1) {
                            parsableByteArray.skipBytes(4);
                        } else if (isCompatibleBrand(parsableByteArray.readInt())) {
                            break;
                        }
                        i9++;
                    }
                    if (!z4) {
                        return false;
                    }
                    z6 = z4;
                } else if (i7 != 0) {
                    extractorInput.advancePeekPosition(i7);
                }
                i2 = i6;
                j2 = -1;
                z5 = false;
            }
        }
        z2 = false;
        z3 = false;
        if (z6 && z == z3) {
            return true;
        }
        return z2;
    }

    private static boolean isCompatibleBrand(int i) {
        if ((i >>> 8) == Util.getIntegerCodeForString("3gp")) {
            return true;
        }
        for (int i2 : COMPATIBLE_BRANDS) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }
}
