package androidx.media3.extractor;

import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.flac.PictureFrame;
import androidx.media3.extractor.metadata.vorbis.VorbisComment;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class VorbisUtil {
    private static final String TAG = "VorbisUtil";

    public static int a(int i10) {
        int i11 = 0;
        while (i10 > 0) {
            i11++;
            i10 >>>= 1;
        }
        return i11;
    }

    private static long b(long j6, long j10) {
        return (long) Math.floor(Math.pow(j6, 1.0d / j10));
    }

    private static void d(VorbisBitArray vorbisBitArray) throws ParserException {
        int iD = vorbisBitArray.d(6) + 1;
        for (int i10 = 0; i10 < iD; i10++) {
            int iD2 = vorbisBitArray.d(16);
            if (iD2 == 0) {
                vorbisBitArray.e(8);
                vorbisBitArray.e(16);
                vorbisBitArray.e(16);
                vorbisBitArray.e(6);
                vorbisBitArray.e(8);
                int iD3 = vorbisBitArray.d(4) + 1;
                for (int i11 = 0; i11 < iD3; i11++) {
                    vorbisBitArray.e(8);
                }
            } else {
                if (iD2 != 1) {
                    throw ParserException.a("floor type greater than 1 not decodable: " + iD2, null);
                }
                int iD4 = vorbisBitArray.d(5);
                int[] iArr = new int[iD4];
                int i12 = -1;
                for (int i13 = 0; i13 < iD4; i13++) {
                    int iD5 = vorbisBitArray.d(4);
                    iArr[i13] = iD5;
                    if (iD5 > i12) {
                        i12 = iD5;
                    }
                }
                int i14 = i12 + 1;
                int[] iArr2 = new int[i14];
                for (int i15 = 0; i15 < i14; i15++) {
                    iArr2[i15] = vorbisBitArray.d(3) + 1;
                    int iD6 = vorbisBitArray.d(2);
                    if (iD6 > 0) {
                        vorbisBitArray.e(8);
                    }
                    for (int i16 = 0; i16 < (1 << iD6); i16++) {
                        vorbisBitArray.e(8);
                    }
                }
                vorbisBitArray.e(2);
                int iD7 = vorbisBitArray.d(4);
                int i17 = 0;
                int i18 = 0;
                for (int i19 = 0; i19 < iD4; i19++) {
                    i17 += iArr2[iArr[i19]];
                    while (i18 < i17) {
                        vorbisBitArray.e(iD7);
                        i18++;
                    }
                }
            }
        }
    }

    private static void e(int i10, VorbisBitArray vorbisBitArray) throws ParserException {
        int iD = vorbisBitArray.d(6) + 1;
        for (int i11 = 0; i11 < iD; i11++) {
            int iD2 = vorbisBitArray.d(16);
            if (iD2 != 0) {
                Log.c(TAG, "mapping type other than 0 not supported: " + iD2);
            } else {
                int iD3 = vorbisBitArray.c() ? vorbisBitArray.d(4) + 1 : 1;
                if (vorbisBitArray.c()) {
                    int iD4 = vorbisBitArray.d(8) + 1;
                    for (int i12 = 0; i12 < iD4; i12++) {
                        int i13 = i10 - 1;
                        vorbisBitArray.e(a(i13));
                        vorbisBitArray.e(a(i13));
                    }
                }
                if (vorbisBitArray.d(2) != 0) {
                    throw ParserException.a("to reserved bits must be zero after mapping coupling steps", null);
                }
                if (iD3 > 1) {
                    for (int i14 = 0; i14 < i10; i14++) {
                        vorbisBitArray.e(4);
                    }
                }
                for (int i15 = 0; i15 < iD3; i15++) {
                    vorbisBitArray.e(8);
                    vorbisBitArray.e(8);
                    vorbisBitArray.e(8);
                }
            }
        }
    }

    private static Mode[] f(VorbisBitArray vorbisBitArray) {
        int iD = vorbisBitArray.d(6) + 1;
        Mode[] modeArr = new Mode[iD];
        for (int i10 = 0; i10 < iD; i10++) {
            modeArr[i10] = new Mode(vorbisBitArray.c(), vorbisBitArray.d(16), vorbisBitArray.d(16), vorbisBitArray.d(8));
        }
        return modeArr;
    }

    private static void g(VorbisBitArray vorbisBitArray) throws ParserException {
        int iD = vorbisBitArray.d(6) + 1;
        for (int i10 = 0; i10 < iD; i10++) {
            if (vorbisBitArray.d(16) > 2) {
                throw ParserException.a("residueType greater than 2 is not decodable", null);
            }
            vorbisBitArray.e(24);
            vorbisBitArray.e(24);
            vorbisBitArray.e(24);
            int iD2 = vorbisBitArray.d(6) + 1;
            vorbisBitArray.e(8);
            int[] iArr = new int[iD2];
            for (int i11 = 0; i11 < iD2; i11++) {
                iArr[i11] = ((vorbisBitArray.c() ? vorbisBitArray.d(5) : 0) * 8) + vorbisBitArray.d(3);
            }
            for (int i12 = 0; i12 < iD2; i12++) {
                for (int i13 = 0; i13 < 8; i13++) {
                    if ((iArr[i12] & (1 << i13)) != 0) {
                        vorbisBitArray.e(8);
                    }
                }
            }
        }
    }

    public static CommentHeader h(ParsableByteArray parsableByteArray) throws ParserException {
        return i(parsableByteArray, true, true);
    }

    public static CommentHeader i(ParsableByteArray parsableByteArray, boolean z6, boolean z10) throws ParserException {
        if (z6) {
            m(3, parsableByteArray, false);
        }
        String strE = parsableByteArray.E((int) parsableByteArray.x());
        int length = strE.length();
        long jX = parsableByteArray.x();
        String[] strArr = new String[(int) jX];
        int length2 = length + 15;
        for (int i10 = 0; i10 < jX; i10++) {
            String strE2 = parsableByteArray.E((int) parsableByteArray.x());
            strArr[i10] = strE2;
            length2 = length2 + 4 + strE2.length();
        }
        if (z10 && (parsableByteArray.H() & 1) == 0) {
            throw ParserException.a("framing bit expected to be set", null);
        }
        return new CommentHeader(strE, strArr, length2 + 1);
    }

    public static VorbisIdHeader j(ParsableByteArray parsableByteArray) throws ParserException {
        m(1, parsableByteArray, false);
        int iY = parsableByteArray.y();
        int iH = parsableByteArray.H();
        int iY2 = parsableByteArray.y();
        int iU = parsableByteArray.u();
        if (iU <= 0) {
            iU = -1;
        }
        int iU2 = parsableByteArray.u();
        if (iU2 <= 0) {
            iU2 = -1;
        }
        int iU3 = parsableByteArray.u();
        if (iU3 <= 0) {
            iU3 = -1;
        }
        int iH2 = parsableByteArray.H();
        return new VorbisIdHeader(iY, iH, iY2, iU, iU2, iU3, (int) Math.pow(2.0d, iH2 & 15), (int) Math.pow(2.0d, (iH2 & 240) >> 4), (parsableByteArray.H() & 1) > 0, Arrays.copyOf(parsableByteArray.e(), parsableByteArray.g()));
    }

    public static Mode[] k(ParsableByteArray parsableByteArray, int i10) throws ParserException {
        m(5, parsableByteArray, false);
        int iH = parsableByteArray.H() + 1;
        VorbisBitArray vorbisBitArray = new VorbisBitArray(parsableByteArray.e());
        vorbisBitArray.e(parsableByteArray.f() * 8);
        for (int i11 = 0; i11 < iH; i11++) {
            l(vorbisBitArray);
        }
        int iD = vorbisBitArray.d(6) + 1;
        for (int i12 = 0; i12 < iD; i12++) {
            if (vorbisBitArray.d(16) != 0) {
                throw ParserException.a("placeholder of time domain transforms not zeroed out", null);
            }
        }
        d(vorbisBitArray);
        g(vorbisBitArray);
        e(i10, vorbisBitArray);
        Mode[] modeArrF = f(vorbisBitArray);
        if (vorbisBitArray.c()) {
            return modeArrF;
        }
        throw ParserException.a("framing bit after modes not set as expected", null);
    }

    public static final class CommentHeader {
        public final String[] comments;
        public final int length;
        public final String vendor;

        public CommentHeader(String str, String[] strArr, int i10) {
            this.vendor = str;
            this.comments = strArr;
            this.length = i10;
        }
    }

    public static final class Mode {
        public final boolean blockFlag;
        public final int mapping;
        public final int transformType;
        public final int windowType;

        public Mode(boolean z6, int i10, int i11, int i12) {
            this.blockFlag = z6;
            this.windowType = i10;
            this.transformType = i11;
            this.mapping = i12;
        }
    }

    public static final class VorbisIdHeader {
        public final int bitrateMaximum;
        public final int bitrateMinimum;
        public final int bitrateNominal;
        public final int blockSize0;
        public final int blockSize1;
        public final int channels;
        public final byte[] data;
        public final boolean framingFlag;
        public final int sampleRate;
        public final int version;

        public VorbisIdHeader(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z6, byte[] bArr) {
            this.version = i10;
            this.channels = i11;
            this.sampleRate = i12;
            this.bitrateMaximum = i13;
            this.bitrateNominal = i14;
            this.bitrateMinimum = i15;
            this.blockSize0 = i16;
            this.blockSize1 = i17;
            this.framingFlag = z6;
            this.data = bArr;
        }
    }

    @Nullable
    public static Metadata c(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = list.get(i10);
            String[] strArrE1 = Util.e1(str, "=");
            if (strArrE1.length != 2) {
                Log.i(TAG, "Failed to parse Vorbis comment: " + str);
            } else if (strArrE1[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(PictureFrame.a(new ParsableByteArray(Base64.decode(strArrE1[1], 0))));
                } catch (RuntimeException e) {
                    Log.j(TAG, "Failed to parse vorbis picture", e);
                }
            } else {
                arrayList.add(new VorbisComment(strArrE1[0], strArrE1[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static void l(VorbisBitArray vorbisBitArray) throws ParserException {
        long jB;
        if (vorbisBitArray.d(24) != 5653314) {
            throw ParserException.a("expected code book to start with [0x56, 0x43, 0x42] at " + vorbisBitArray.b(), null);
        }
        int iD = vorbisBitArray.d(16);
        int iD2 = vorbisBitArray.d(24);
        int iD3 = 0;
        if (vorbisBitArray.c()) {
            vorbisBitArray.e(5);
            while (iD3 < iD2) {
                iD3 += vorbisBitArray.d(a(iD2 - iD3));
            }
        } else {
            boolean zC = vorbisBitArray.c();
            while (iD3 < iD2) {
                if (!zC) {
                    vorbisBitArray.e(5);
                } else if (vorbisBitArray.c()) {
                    vorbisBitArray.e(5);
                }
                iD3++;
            }
        }
        int iD4 = vorbisBitArray.d(4);
        if (iD4 > 2) {
            throw ParserException.a("lookup type greater than 2 not decodable: " + iD4, null);
        }
        if (iD4 == 1 || iD4 == 2) {
            vorbisBitArray.e(32);
            vorbisBitArray.e(32);
            int iD5 = vorbisBitArray.d(4) + 1;
            vorbisBitArray.e(1);
            if (iD4 == 1) {
                jB = iD != 0 ? b(iD2, iD) : 0L;
            } else {
                jB = ((long) iD) * ((long) iD2);
            }
            vorbisBitArray.e((int) (jB * ((long) iD5)));
        }
    }

    private VorbisUtil() {
    }

    public static boolean m(int i10, ParsableByteArray parsableByteArray, boolean z6) throws ParserException {
        if (parsableByteArray.a() < 7) {
            if (z6) {
                return false;
            }
            throw ParserException.a("too short header: " + parsableByteArray.a(), null);
        }
        if (parsableByteArray.H() != i10) {
            if (z6) {
                return false;
            }
            throw ParserException.a("expected header type " + Integer.toHexString(i10), null);
        }
        if (parsableByteArray.H() == 118 && parsableByteArray.H() == 111 && parsableByteArray.H() == 114 && parsableByteArray.H() == 98 && parsableByteArray.H() == 105 && parsableByteArray.H() == 115) {
            return true;
        }
        if (z6) {
            return false;
        }
        throw ParserException.a("expected characters 'vorbis'", null);
    }
}
