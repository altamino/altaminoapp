package androidx.media3.extractor.metadata.id3;

import androidx.annotation.Nullable;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import com.google.common.base.c;
import com.google.common.base.e;
import com.google.common.collect.a0;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class Id3Decoder extends SimpleMetadataDecoder {
    private static final int FRAME_FLAG_V3_HAS_GROUP_IDENTIFIER = 32;
    private static final int FRAME_FLAG_V3_IS_COMPRESSED = 128;
    private static final int FRAME_FLAG_V3_IS_ENCRYPTED = 64;
    private static final int FRAME_FLAG_V4_HAS_DATA_LENGTH = 1;
    private static final int FRAME_FLAG_V4_HAS_GROUP_IDENTIFIER = 64;
    private static final int FRAME_FLAG_V4_IS_COMPRESSED = 8;
    private static final int FRAME_FLAG_V4_IS_ENCRYPTED = 4;
    private static final int FRAME_FLAG_V4_IS_UNSYNCHRONIZED = 2;
    public static final int ID3_HEADER_LENGTH = 10;
    public static final int ID3_TAG = 4801587;
    private static final int ID3_TEXT_ENCODING_ISO_8859_1 = 0;
    private static final int ID3_TEXT_ENCODING_UTF_16 = 1;
    private static final int ID3_TEXT_ENCODING_UTF_16BE = 2;
    private static final int ID3_TEXT_ENCODING_UTF_8 = 3;
    public static final FramePredicate NO_FRAMES_PREDICATE = new FramePredicate() { // from class: androidx.media3.extractor.metadata.id3.a
        @Override // androidx.media3.extractor.metadata.id3.Id3Decoder.FramePredicate
        public final boolean evaluate(int i10, int i11, int i12, int i13, int i14) {
            return Id3Decoder.A(i10, i11, i12, i13, i14);
        }
    };
    private static final String TAG = "Id3Decoder";

    @Nullable
    private final FramePredicate framePredicate;

    public interface FramePredicate {
        boolean evaluate(int i10, int i11, int i12, int i13, int i14);
    }

    private static final class Id3Header {
        private final int framesSize;
        private final boolean isUnsynchronized;
        private final int majorVersion;

        public Id3Header(int i10, boolean z6, int i11) {
            this.majorVersion = i10;
            this.isUnsynchronized = z6;
            this.framesSize = i11;
        }
    }

    public Id3Decoder() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean A(int i10, int i11, int i12, int i13, int i14) {
        return false;
    }

    private static ChapterFrame h(ParsableByteArray parsableByteArray, int i10, int i11, boolean z6, int i12, @Nullable FramePredicate framePredicate) {
        int iF = parsableByteArray.f();
        int iZ = z(parsableByteArray.e(), iF);
        String str = new String(parsableByteArray.e(), iF, iZ - iF, e.ISO_8859_1);
        parsableByteArray.U(iZ + 1);
        int iQ = parsableByteArray.q();
        int iQ2 = parsableByteArray.q();
        long J = parsableByteArray.J();
        long j6 = J == 4294967295L ? -1L : J;
        long J2 = parsableByteArray.J();
        long j10 = J2 == 4294967295L ? -1L : J2;
        ArrayList arrayList = new ArrayList();
        int i13 = iF + i10;
        while (parsableByteArray.f() < i13) {
            Id3Frame id3FrameK = k(i11, parsableByteArray, z6, i12, framePredicate);
            if (id3FrameK != null) {
                arrayList.add(id3FrameK);
            }
        }
        return new ChapterFrame(str, iQ, iQ2, j6, j10, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    @Nullable
    private static CommentFrame j(ParsableByteArray parsableByteArray, int i10) {
        if (i10 < 4) {
            return null;
        }
        int iH = parsableByteArray.H();
        Charset charsetW = w(iH);
        byte[] bArr = new byte[3];
        parsableByteArray.l(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i11 = i10 - 4;
        byte[] bArr2 = new byte[i11];
        parsableByteArray.l(bArr2, 0, i11);
        int iY = y(bArr2, 0, iH);
        String str2 = new String(bArr2, 0, iY, charsetW);
        int iV = iY + v(iH);
        return new CommentFrame(str, str2, p(bArr2, iV, y(bArr2, iV, iH), charsetW));
    }

    @Nullable
    private static TextInformationFrame q(ParsableByteArray parsableByteArray, int i10, String str) {
        if (i10 < 1) {
            return null;
        }
        int iH = parsableByteArray.H();
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        parsableByteArray.l(bArr, 0, i11);
        return new TextInformationFrame(str, (String) null, r(bArr, iH, 0));
    }

    private static a0<String> r(byte[] bArr, int i10, int i11) {
        if (i11 >= bArr.length) {
            return a0.y("");
        }
        a0.a aVarR = a0.r();
        int iY = y(bArr, i11, i10);
        while (i11 < iY) {
            aVarR.d(new String(bArr, i11, iY - i11, w(i10)));
            i11 = v(i10) + iY;
            iY = y(bArr, i11, i10);
        }
        a0<String> a0VarK = aVarR.k();
        return a0VarK.isEmpty() ? a0.y("") : a0VarK;
    }

    @Nullable
    private static TextInformationFrame s(ParsableByteArray parsableByteArray, int i10) {
        if (i10 < 1) {
            return null;
        }
        int iH = parsableByteArray.H();
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        parsableByteArray.l(bArr, 0, i11);
        int iY = y(bArr, 0, iH);
        return new TextInformationFrame("TXXX", new String(bArr, 0, iY, w(iH)), r(bArr, iH, iY + v(iH)));
    }

    @Nullable
    private static UrlLinkFrame u(ParsableByteArray parsableByteArray, int i10) {
        if (i10 < 1) {
            return null;
        }
        int iH = parsableByteArray.H();
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        parsableByteArray.l(bArr, 0, i11);
        int iY = y(bArr, 0, iH);
        String str = new String(bArr, 0, iY, w(iH));
        int iV = iY + v(iH);
        return new UrlLinkFrame("WXXX", str, p(bArr, iV, z(bArr, iV), e.ISO_8859_1));
    }

    private static int v(int i10) {
        return (i10 == 0 || i10 == 3) ? 1 : 2;
    }

    private static Charset w(int i10) {
        if (i10 == 1) {
            return e.UTF_16;
        }
        if (i10 != 2) {
            return i10 != 3 ? e.ISO_8859_1 : e.UTF_8;
        }
        return e.UTF_16BE;
    }

    private static String x(int i10, int i11, int i12, int i13, int i14) {
        return i10 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14));
    }

    private static int z(byte[] bArr, int i10) {
        while (i10 < bArr.length) {
            if (bArr[i10] == 0) {
                return i10;
            }
            i10++;
        }
        return bArr.length;
    }

    public Id3Decoder(@Nullable FramePredicate framePredicate) {
        this.framePredicate = framePredicate;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007c A[PHI: r3
      0x007c: PHI (r3v16 int) = (r3v5 int), (r3v19 int) binds: [B:42:0x0089, B:33:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    private static boolean C(ParsableByteArray parsableByteArray, int i10, int i11, boolean z6) {
        int iK;
        long jK;
        int iN;
        int i12;
        int iF = parsableByteArray.f();
        while (true) {
            try {
                boolean z10 = true;
                if (parsableByteArray.a() < i11) {
                    parsableByteArray.U(iF);
                    return true;
                }
                if (i10 >= 3) {
                    iK = parsableByteArray.q();
                    jK = parsableByteArray.J();
                    iN = parsableByteArray.N();
                } else {
                    iK = parsableByteArray.K();
                    jK = parsableByteArray.K();
                    iN = 0;
                }
                if (iK == 0 && jK == 0 && iN == 0) {
                    parsableByteArray.U(iF);
                    return true;
                }
                if (i10 == 4 && !z6) {
                    if ((8421504 & jK) != 0) {
                        parsableByteArray.U(iF);
                        return false;
                    }
                    jK = (((jK >> 24) & 255) << 21) | (jK & 255) | (((jK >> 8) & 255) << 7) | (((jK >> 16) & 255) << 14);
                }
                if (i10 == 4) {
                    i12 = (iN & 64) != 0 ? 1 : 0;
                    if ((iN & 1) == 0) {
                        z10 = false;
                    }
                } else if (i10 == 3) {
                    i12 = (iN & 32) != 0 ? 1 : 0;
                    if ((iN & 128) == 0) {
                        z10 = false;
                    }
                } else {
                    i12 = 0;
                    z10 = false;
                }
                if (z10) {
                    i12 += 4;
                }
                if (jK < i12) {
                    parsableByteArray.U(iF);
                    return false;
                }
                if (parsableByteArray.a() < jK) {
                    parsableByteArray.U(iF);
                    return false;
                }
                parsableByteArray.V((int) jK);
            } catch (Throwable th) {
                parsableByteArray.U(iF);
                throw th;
            }
        }
    }

    private static byte[] d(byte[] bArr, int i10, int i11) {
        return i11 <= i10 ? Util.EMPTY_BYTE_ARRAY : Arrays.copyOfRange(bArr, i10, i11);
    }

    private static BinaryFrame g(ParsableByteArray parsableByteArray, int i10, String str) {
        byte[] bArr = new byte[i10];
        parsableByteArray.l(bArr, 0, i10);
        return new BinaryFrame(str, bArr);
    }

    private static ChapterTocFrame i(ParsableByteArray parsableByteArray, int i10, int i11, boolean z6, int i12, @Nullable FramePredicate framePredicate) {
        int iF = parsableByteArray.f();
        int iZ = z(parsableByteArray.e(), iF);
        String str = new String(parsableByteArray.e(), iF, iZ - iF, e.ISO_8859_1);
        parsableByteArray.U(iZ + 1);
        int iH = parsableByteArray.H();
        boolean z10 = (iH & 2) != 0;
        boolean z11 = (iH & 1) != 0;
        int iH2 = parsableByteArray.H();
        String[] strArr = new String[iH2];
        for (int i13 = 0; i13 < iH2; i13++) {
            int iF2 = parsableByteArray.f();
            int iZ2 = z(parsableByteArray.e(), iF2);
            strArr[i13] = new String(parsableByteArray.e(), iF2, iZ2 - iF2, e.ISO_8859_1);
            parsableByteArray.U(iZ2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i14 = iF + i10;
        while (parsableByteArray.f() < i14) {
            Id3Frame id3FrameK = k(i11, parsableByteArray, z6, i12, framePredicate);
            if (id3FrameK != null) {
                arrayList.add(id3FrameK);
            }
        }
        return new ChapterTocFrame(str, z10, z11, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    /* JADX WARN: Code duplicated, block: B:133:0x0198  */
    /* JADX WARN: Code duplicated, block: B:140:0x01a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:146:0x01c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:147:0x01c5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:151:0x01db A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:152:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:157:0x01ea A[Catch: all -> 0x0122, TryCatch #0 {all -> 0x0122, blocks: (B:91:0x011c, B:159:0x01f4, B:95:0x0127, B:102:0x013d, B:104:0x0145, B:112:0x015f, B:121:0x0177, B:132:0x0192, B:139:0x01a4, B:145:0x01b3, B:150:0x01cb, B:156:0x01e5, B:157:0x01ea), top: B:166:0x0112 }] */
    @Nullable
    private static Id3Frame k(int i10, ParsableByteArray parsableByteArray, boolean z6, int i11, @Nullable FramePredicate framePredicate) {
        int iL;
        int i12;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        Id3Frame id3FrameG;
        int iH = parsableByteArray.H();
        int iH2 = parsableByteArray.H();
        int iH3 = parsableByteArray.H();
        int iH4 = i10 >= 3 ? parsableByteArray.H() : 0;
        if (i10 == 4) {
            iL = parsableByteArray.L();
            if (!z6) {
                iL = (((iL >> 24) & 255) << 21) | (iL & 255) | (((iL >> 8) & 255) << 7) | (((iL >> 16) & 255) << 14);
            }
        } else {
            iL = i10 == 3 ? parsableByteArray.L() : parsableByteArray.K();
        }
        int iB = iL;
        int iN = i10 >= 3 ? parsableByteArray.N() : 0;
        if (iH == 0 && iH2 == 0 && iH3 == 0 && iH4 == 0 && iB == 0 && iN == 0) {
            parsableByteArray.U(parsableByteArray.g());
            return null;
        }
        int iF = parsableByteArray.f() + iB;
        if (iF > parsableByteArray.g()) {
            Log.i(TAG, "Frame size exceeds remaining tag data");
            parsableByteArray.U(parsableByteArray.g());
            return null;
        }
        if (framePredicate != null) {
            i12 = iF;
            if (!framePredicate.evaluate(i10, iH, iH2, iH3, iH4)) {
                parsableByteArray.U(i12);
                return null;
            }
        } else {
            i12 = iF;
        }
        if (i10 == 3) {
            int i13 = iN;
            z11 = (i13 & 128) != 0;
            z12 = (i13 & 64) != 0;
            z10 = (i13 & 32) != 0;
            z14 = z11;
            z13 = false;
        } else {
            int i14 = iN;
            if (i10 == 4) {
                boolean z15 = (i14 & 64) != 0;
                boolean z16 = (i14 & 8) != 0;
                boolean z17 = (i14 & 4) != 0;
                z13 = (i14 & 2) != 0;
                boolean z18 = (i14 & 1) != 0;
                z10 = z15;
                z11 = z18;
                z14 = z16;
                z12 = z17;
            } else {
                z10 = false;
                z11 = false;
                z12 = false;
                z13 = false;
                z14 = false;
            }
        }
        if (z14 || z12) {
            Log.i(r4, "Skipping unsupported compressed or encrypted frame");
            parsableByteArray.U(i12);
            return null;
        }
        if (z10) {
            iB--;
            parsableByteArray.V(1);
        }
        if (z11) {
            iB -= 4;
            parsableByteArray.V(4);
        }
        if (z13) {
            iB = B(parsableByteArray, iB);
        }
        try {
            if (iH == 84 && iH2 == 88 && iH3 == 88 && (i10 == 2 || iH4 == 88)) {
                id3FrameG = s(parsableByteArray, iB);
            } else if (iH == 84) {
                id3FrameG = q(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
            } else if (iH == 87 && iH2 == 88 && iH3 == 88 && (i10 == 2 || iH4 == 88)) {
                id3FrameG = u(parsableByteArray, iB);
            } else if (iH == 87) {
                id3FrameG = t(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
            } else if (iH == 80 && iH2 == 82 && iH3 == 73 && iH4 == 86) {
                id3FrameG = o(parsableByteArray, iB);
            } else if (iH == 71 && iH2 == 69 && iH3 == 79 && (iH4 == 66 || i10 == 2)) {
                id3FrameG = l(parsableByteArray, iB);
            } else if (i10 == 2) {
                if (iH == 80 && iH2 == 73 && iH3 == 67) {
                    id3FrameG = f(parsableByteArray, iB, i10);
                } else if (iH != 67 && iH2 == 79 && iH3 == 77 && (iH4 == 77 || i10 == 2)) {
                    id3FrameG = j(parsableByteArray, iB);
                } else if (iH != 67 && iH2 == 72 && iH3 == 65 && iH4 == 80) {
                    id3FrameG = h(parsableByteArray, iB, i10, z6, i11, framePredicate);
                } else if (iH != 67 && iH2 == 84 && iH3 == 79 && iH4 == 67) {
                    id3FrameG = i(parsableByteArray, iB, i10, z6, i11, framePredicate);
                } else if (iH != 77 && iH2 == 76 && iH3 == 76 && iH4 == 84) {
                    id3FrameG = n(parsableByteArray, iB);
                } else {
                    id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                }
            } else if (iH == 65 && iH2 == 80 && iH3 == 73 && iH4 == 67) {
                id3FrameG = f(parsableByteArray, iB, i10);
            } else if (iH != 67) {
                if (iH != 67) {
                    if (iH != 67) {
                        if (iH != 77) {
                            id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                        } else {
                            id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                        }
                    } else if (iH != 77) {
                        id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                    } else {
                        id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                    }
                } else if (iH != 67) {
                    if (iH != 77) {
                        id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                    } else {
                        id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                    }
                } else if (iH != 77) {
                    id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                } else {
                    id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                }
            } else if (iH != 67) {
                if (iH != 67) {
                    if (iH != 77) {
                        id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                    } else {
                        id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                    }
                } else if (iH != 77) {
                    id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                } else {
                    id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                }
            } else if (iH != 67) {
                if (iH != 77) {
                    id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                } else {
                    id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
                }
            } else if (iH != 77) {
                id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
            } else {
                id3FrameG = g(parsableByteArray, iB, x(i10, iH, iH2, iH3, iH4));
            }
            if (id3FrameG == null) {
                Log.i(TAG, "Failed to decode frame: id=" + x(i10, iH, iH2, iH3, iH4) + ", frameSize=" + iB);
            }
            parsableByteArray.U(i12);
            return id3FrameG;
        } catch (Throwable th) {
            parsableByteArray.U(i12);
            throw th;
        }
    }

    private static PrivFrame o(ParsableByteArray parsableByteArray, int i10) {
        byte[] bArr = new byte[i10];
        parsableByteArray.l(bArr, 0, i10);
        int iZ = z(bArr, 0);
        return new PrivFrame(new String(bArr, 0, iZ, e.ISO_8859_1), d(bArr, iZ + 1, i10));
    }

    private static String p(byte[] bArr, int i10, int i11, Charset charset) {
        return (i11 <= i10 || i11 > bArr.length) ? "" : new String(bArr, i10, i11 - i10, charset);
    }

    private static UrlLinkFrame t(ParsableByteArray parsableByteArray, int i10, String str) {
        byte[] bArr = new byte[i10];
        parsableByteArray.l(bArr, 0, i10);
        return new UrlLinkFrame(str, null, new String(bArr, 0, z(bArr, 0), e.ISO_8859_1));
    }

    @Nullable
    public Metadata e(byte[] bArr, int i10) {
        ArrayList arrayList = new ArrayList();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i10);
        Id3Header id3HeaderM = m(parsableByteArray);
        if (id3HeaderM == null) {
            return null;
        }
        int iF = parsableByteArray.f();
        int i11 = id3HeaderM.majorVersion == 2 ? 6 : 10;
        int iB = id3HeaderM.framesSize;
        if (id3HeaderM.isUnsynchronized) {
            iB = B(parsableByteArray, id3HeaderM.framesSize);
        }
        parsableByteArray.T(iF + iB);
        boolean z6 = false;
        if (!C(parsableByteArray, id3HeaderM.majorVersion, i11, false)) {
            if (id3HeaderM.majorVersion != 4 || !C(parsableByteArray, 4, i11, true)) {
                Log.i(TAG, "Failed to validate ID3 tag with majorVersion=" + id3HeaderM.majorVersion);
                return null;
            }
            z6 = true;
        }
        while (parsableByteArray.a() >= i11) {
            Id3Frame id3FrameK = k(id3HeaderM.majorVersion, parsableByteArray, z6, i11, this.framePredicate);
            if (id3FrameK != null) {
                arrayList.add(id3FrameK);
            }
        }
        return new Metadata(arrayList);
    }

    private static int B(ParsableByteArray parsableByteArray, int i10) {
        byte[] bArrE = parsableByteArray.e();
        int iF = parsableByteArray.f();
        int i11 = iF;
        while (true) {
            int i12 = i11 + 1;
            if (i12 < iF + i10) {
                if ((bArrE[i11] & 255) == 255 && bArrE[i12] == 0) {
                    System.arraycopy(bArrE, i11 + 2, bArrE, i12, (i10 - (i11 - iF)) - 2);
                    i10--;
                }
                i11 = i12;
            } else {
                return i10;
            }
        }
    }

    private static ApicFrame f(ParsableByteArray parsableByteArray, int i10, int i11) {
        int iZ;
        String str;
        int iH = parsableByteArray.H();
        Charset charsetW = w(iH);
        int i12 = i10 - 1;
        byte[] bArr = new byte[i12];
        parsableByteArray.l(bArr, 0, i12);
        if (i11 == 2) {
            str = "image/" + c.e(new String(bArr, 0, 3, e.ISO_8859_1));
            if ("image/jpg".equals(str)) {
                str = "image/jpeg";
            }
            iZ = 2;
        } else {
            iZ = z(bArr, 0);
            String strE = c.e(new String(bArr, 0, iZ, e.ISO_8859_1));
            if (strE.indexOf(47) == -1) {
                str = "image/" + strE;
            } else {
                str = strE;
            }
        }
        int i13 = bArr[iZ + 1] & 255;
        int i14 = iZ + 2;
        int iY = y(bArr, i14, iH);
        return new ApicFrame(str, new String(bArr, i14, iY - i14, charsetW), i13, d(bArr, iY + v(iH), i12));
    }

    private static GeobFrame l(ParsableByteArray parsableByteArray, int i10) {
        int iH = parsableByteArray.H();
        Charset charsetW = w(iH);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        parsableByteArray.l(bArr, 0, i11);
        int iZ = z(bArr, 0);
        String str = new String(bArr, 0, iZ, e.ISO_8859_1);
        int i12 = iZ + 1;
        int iY = y(bArr, i12, iH);
        String strP = p(bArr, i12, iY, charsetW);
        int iV = iY + v(iH);
        int iY2 = y(bArr, iV, iH);
        return new GeobFrame(str, strP, p(bArr, iV, iY2, charsetW), d(bArr, iY2 + v(iH), i11));
    }

    @Nullable
    private static Id3Header m(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.a() < 10) {
            Log.i(TAG, "Data too short to be an ID3 tag");
            return null;
        }
        int iK = parsableByteArray.K();
        boolean z6 = false;
        if (iK != 4801587) {
            Log.i(TAG, "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(iK)));
            return null;
        }
        int iH = parsableByteArray.H();
        parsableByteArray.V(1);
        int iH2 = parsableByteArray.H();
        int iG = parsableByteArray.G();
        if (iH == 2) {
            if ((iH2 & 64) != 0) {
                Log.i(TAG, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (iH == 3) {
            if ((iH2 & 64) != 0) {
                int iQ = parsableByteArray.q();
                parsableByteArray.V(iQ);
                iG -= iQ + 4;
            }
        } else if (iH == 4) {
            if ((iH2 & 64) != 0) {
                int iG2 = parsableByteArray.G();
                parsableByteArray.V(iG2 - 4);
                iG -= iG2;
            }
            if ((iH2 & 16) != 0) {
                iG -= 10;
            }
        } else {
            Log.i(TAG, "Skipped ID3 tag with unsupported majorVersion=" + iH);
            return null;
        }
        if (iH < 4 && (iH2 & 128) != 0) {
            z6 = true;
        }
        return new Id3Header(iH, z6, iG);
    }

    private static MlltFrame n(ParsableByteArray parsableByteArray, int i10) {
        int iN = parsableByteArray.N();
        int iK = parsableByteArray.K();
        int iK2 = parsableByteArray.K();
        int iH = parsableByteArray.H();
        int iH2 = parsableByteArray.H();
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.m(parsableByteArray);
        int i11 = ((i10 - 10) * 8) / (iH + iH2);
        int[] iArr = new int[i11];
        int[] iArr2 = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            int iH3 = parsableBitArray.h(iH);
            int iH4 = parsableBitArray.h(iH2);
            iArr[i12] = iH3;
            iArr2[i12] = iH4;
        }
        return new MlltFrame(iN, iK, iK2, iArr, iArr2);
    }

    private static int y(byte[] bArr, int i10, int i11) {
        int iZ = z(bArr, i10);
        if (i11 != 0 && i11 != 3) {
            while (iZ < bArr.length - 1) {
                if ((iZ - i10) % 2 == 0 && bArr[iZ + 1] == 0) {
                    return iZ;
                }
                iZ = z(bArr, iZ + 1);
            }
            return bArr.length;
        }
        return iZ;
    }

    @Override // androidx.media3.extractor.metadata.SimpleMetadataDecoder
    @Nullable
    protected Metadata b(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        return e(byteBuffer.array(), byteBuffer.limit());
    }
}
