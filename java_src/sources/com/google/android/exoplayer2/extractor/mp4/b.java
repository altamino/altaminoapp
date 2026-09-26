package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.work.WorkRequest;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.audio.i0;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.v2;
import com.google.common.collect.a0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes8.dex */
final class b {
    private static final int MAX_GAPLESS_TRIM_SIZE_SAMPLES = 4;
    private static final String TAG = "AtomParsers";
    private static final int TYPE_clcp = 1668047728;
    private static final int TYPE_mdta = 1835299937;
    private static final int TYPE_meta = 1835365473;
    private static final int TYPE_nclc = 1852009571;
    private static final int TYPE_nclx = 1852009592;
    private static final int TYPE_sbtl = 1935832172;
    private static final int TYPE_soun = 1936684398;
    private static final int TYPE_subt = 1937072756;
    private static final int TYPE_text = 1952807028;
    private static final int TYPE_vide = 1986618469;
    private static final byte[] opusMagic = o0.h0("OpusHead");

    private static final class a {
        private final c0 chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final c0 stsc;

        public boolean a() {
            int i10 = this.index + 1;
            this.index = i10;
            if (i10 == this.length) {
                return false;
            }
            this.offset = this.chunkOffsetsAreLongs ? this.chunkOffsets.I() : this.chunkOffsets.F();
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.H();
                this.stsc.Q(4);
                int i11 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i11;
                this.nextSamplesPerChunkChangeIndex = i11 > 0 ? this.stsc.H() - 1 : -1;
            }
            return true;
        }

        public a(c0 c0Var, c0 c0Var2, boolean z6) throws v2 {
            this.stsc = c0Var;
            this.chunkOffsets = c0Var2;
            this.chunkOffsetsAreLongs = z6;
            c0Var2.P(12);
            this.length = c0Var2.H();
            c0Var.P(12);
            this.remainingSamplesPerChunkChanges = c0Var.H();
            com.google.android.exoplayer2.extractor.o.a(c0Var.n() == 1, "first_chunk must be 1");
            this.index = -1;
        }
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.extractor.mp4.b$b, reason: collision with other inner class name */
    private static final class C0174b {
        private final long bitrate;
        private final byte[] initializationData;
        private final String mimeType;
        private final long peakBitrate;

        public C0174b(String str, byte[] bArr, long j6, long j10) {
            this.mimeType = str;
            this.initializationData = bArr;
            this.bitrate = j6;
            this.peakBitrate = j10;
        }
    }

    private interface c {
        int a();

        int getSampleCount();

        int readNextSampleSize();
    }

    static final class e implements c {
        private final c0 data;
        private final int fixedSampleSize;
        private final int sampleCount;

        @Override // com.google.android.exoplayer2.extractor.mp4.b.c
        public int a() {
            return this.fixedSampleSize;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.b.c
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.b.c
        public int readNextSampleSize() {
            int i10 = this.fixedSampleSize;
            return i10 == -1 ? this.data.H() : i10;
        }

        public e(com.google.android.exoplayer2.extractor.mp4.a.b bVar, a2 a2Var) {
            c0 c0Var = bVar.data;
            this.data = c0Var;
            c0Var.P(12);
            int iH = c0Var.H();
            if ("audio/raw".equals(a2Var.sampleMimeType)) {
                int iY = o0.Y(a2Var.pcmEncoding, a2Var.channelCount);
                if (iH == 0 || iH % iY != 0) {
                    t.i(b.TAG, "Audio sample size mismatch. stsd sample size: " + iY + ", stsz sample size: " + iH);
                    iH = iY;
                }
            }
            this.fixedSampleSize = iH == 0 ? -1 : iH;
            this.sampleCount = c0Var.H();
        }
    }

    static final class f implements c {
        private int currentByte;
        private final c0 data;
        private final int fieldSize;
        private final int sampleCount;
        private int sampleIndex;

        @Override // com.google.android.exoplayer2.extractor.mp4.b.c
        public int a() {
            return -1;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.b.c
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.b.c
        public int readNextSampleSize() {
            int i10 = this.fieldSize;
            if (i10 == 8) {
                return this.data.D();
            }
            if (i10 == 16) {
                return this.data.J();
            }
            int i11 = this.sampleIndex;
            this.sampleIndex = i11 + 1;
            if (i11 % 2 != 0) {
                return this.currentByte & 15;
            }
            int iD = this.data.D();
            this.currentByte = iD;
            return (iD & 240) >> 4;
        }

        public f(com.google.android.exoplayer2.extractor.mp4.a.b bVar) {
            c0 c0Var = bVar.data;
            this.data = c0Var;
            c0Var.P(12);
            this.fieldSize = c0Var.H() & 255;
            this.sampleCount = c0Var.H();
        }
    }

    private static final class g {
        private final long duration;
        private final int id;
        private final int rotationDegrees;

        public g(int i10, long j6, int i11) {
            this.id = i10;
            this.duration = j6;
            this.rotationDegrees = i11;
        }
    }

    public static List<r> A(com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a, x xVar, long j6, @Nullable DrmInitData drmInitData, boolean z6, boolean z10, com.google.common.base.g<o, o> gVar) throws v2 {
        o oVarApply;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < c0173a.containerChildren.size(); i10++) {
            com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a2 = c0173a.containerChildren.get(i10);
            if (c0173a2.type == 1953653099 && (oVarApply = gVar.apply(z(c0173a2, (com.google.android.exoplayer2.extractor.mp4.a.b) com.google.android.exoplayer2.util.a.e(c0173a.g(1836476516)), j6, drmInitData, z6, z10))) != null) {
                arrayList.add(v(oVarApply, (com.google.android.exoplayer2.extractor.mp4.a.C0173a) com.google.android.exoplayer2.util.a.e(((com.google.android.exoplayer2.extractor.mp4.a.C0173a) com.google.android.exoplayer2.util.a.e(((com.google.android.exoplayer2.extractor.mp4.a.C0173a) com.google.android.exoplayer2.util.a.e(c0173a2.f(1835297121))).f(1835626086))).f(1937007212)), xVar));
            }
        }
        return arrayList;
    }

    private static void D(c0 c0Var, int i10, int i11, int i12, int i13, int i14, @Nullable DrmInitData drmInitData, d dVar, int i15) throws v2 {
        String str;
        DrmInitData drmInitData2;
        byte[] bArr;
        float f6;
        List<byte[]> list;
        String str2;
        int i16 = i11;
        int i17 = i12;
        DrmInitData drmInitDataC = drmInitData;
        d dVar2 = dVar;
        c0Var.P(i16 + 16);
        c0Var.Q(16);
        int iJ = c0Var.J();
        int iJ2 = c0Var.J();
        c0Var.Q(50);
        int iE = c0Var.e();
        int iIntValue = i10;
        if (iIntValue == 1701733238) {
            Pair<Integer, p> pairS = s(c0Var, i16, i17);
            if (pairS != null) {
                iIntValue = ((Integer) pairS.first).intValue();
                drmInitDataC = drmInitDataC == null ? null : drmInitDataC.c(((p) pairS.second).schemeType);
                dVar2.trackEncryptionBoxes[i15] = (p) pairS.second;
            }
            c0Var.P(iE);
        }
        String str3 = "video/3gpp";
        if (iIntValue == 1831958048) {
            str = "video/mpeg";
        } else {
            str = iIntValue == 1211250227 ? "video/3gpp" : null;
        }
        float fQ = 1.0f;
        byte[] bArrR = null;
        String str4 = null;
        List<byte[]> listY = null;
        int i18 = -1;
        int iB = -1;
        int i19 = -1;
        int iC = -1;
        ByteBuffer byteBufferA = null;
        C0174b c0174bI = null;
        boolean z6 = false;
        while (true) {
            if (iE - i16 >= i17) {
                drmInitData2 = drmInitDataC;
                break;
            }
            c0Var.P(iE);
            int iE2 = c0Var.e();
            String str5 = str3;
            int iN = c0Var.n();
            if (iN == 0) {
                drmInitData2 = drmInitDataC;
                if (c0Var.e() - i16 == i17) {
                    break;
                }
            } else {
                drmInitData2 = drmInitDataC;
            }
            com.google.android.exoplayer2.extractor.o.a(iN > 0, "childAtomSize must be positive");
            int iN2 = c0Var.n();
            if (iN2 == 1635148611) {
                com.google.android.exoplayer2.extractor.o.a(str == null, null);
                c0Var.P(iE2 + 8);
                com.google.android.exoplayer2.video.a aVarB = com.google.android.exoplayer2.video.a.b(c0Var);
                listY = aVarB.initializationData;
                dVar2.nalUnitLengthFieldLength = aVarB.nalUnitLengthFieldLength;
                if (!z6) {
                    fQ = aVarB.pixelWidthHeightRatio;
                }
                str4 = aVarB.codecs;
                str2 = "video/avc";
            } else if (iN2 == 1752589123) {
                com.google.android.exoplayer2.extractor.o.a(str == null, null);
                c0Var.P(iE2 + 8);
                com.google.android.exoplayer2.video.f fVarA = com.google.android.exoplayer2.video.f.a(c0Var);
                listY = fVarA.initializationData;
                dVar2.nalUnitLengthFieldLength = fVarA.nalUnitLengthFieldLength;
                if (!z6) {
                    fQ = fVarA.pixelWidthHeightRatio;
                }
                str4 = fVarA.codecs;
                str2 = "video/hevc";
            } else {
                if (iN2 == 1685480259 || iN2 == 1685485123) {
                    iJ2 = iJ2;
                    iIntValue = iIntValue;
                    bArr = bArrR;
                    f6 = fQ;
                    list = listY;
                    com.google.android.exoplayer2.video.d dVarA = com.google.android.exoplayer2.video.d.a(c0Var);
                    if (dVarA != null) {
                        str4 = dVarA.codecs;
                        str = "video/dolby-vision";
                    }
                } else if (iN2 == 1987076931) {
                    com.google.android.exoplayer2.extractor.o.a(str == null, null);
                    str2 = iIntValue == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                } else {
                    if (iN2 == 1635135811) {
                        com.google.android.exoplayer2.extractor.o.a(str == null, null);
                        str2 = "video/av01";
                    } else if (iN2 == 1668050025) {
                        if (byteBufferA == null) {
                            byteBufferA = a();
                        }
                        ByteBuffer byteBuffer = byteBufferA;
                        byteBuffer.position(21);
                        byteBuffer.putShort(c0Var.z());
                        byteBuffer.putShort(c0Var.z());
                        byteBufferA = byteBuffer;
                    } else if (iN2 == 1835295606) {
                        if (byteBufferA == null) {
                            byteBufferA = a();
                        }
                        ByteBuffer byteBuffer2 = byteBufferA;
                        short sZ = c0Var.z();
                        short sZ2 = c0Var.z();
                        short sZ3 = c0Var.z();
                        short sZ4 = c0Var.z();
                        short sZ5 = c0Var.z();
                        List<byte[]> list2 = listY;
                        short sZ6 = c0Var.z();
                        byte[] bArr2 = bArrR;
                        short sZ7 = c0Var.z();
                        float f7 = fQ;
                        short sZ8 = c0Var.z();
                        long jF = c0Var.F();
                        long jF2 = c0Var.F();
                        byteBuffer2.position(1);
                        byteBuffer2.putShort(sZ5);
                        byteBuffer2.putShort(sZ6);
                        byteBuffer2.putShort(sZ);
                        byteBuffer2.putShort(sZ2);
                        byteBuffer2.putShort(sZ3);
                        byteBuffer2.putShort(sZ4);
                        byteBuffer2.putShort(sZ7);
                        byteBuffer2.putShort(sZ8);
                        byteBuffer2.putShort((short) (jF / WorkRequest.MIN_BACKOFF_MILLIS));
                        byteBuffer2.putShort((short) (jF2 / WorkRequest.MIN_BACKOFF_MILLIS));
                        byteBufferA = byteBuffer2;
                        listY = list2;
                        bArrR = bArr2;
                        fQ = f7;
                    } else {
                        iJ2 = iJ2;
                        iIntValue = iIntValue;
                        bArr = bArrR;
                        f6 = fQ;
                        list = listY;
                        if (iN2 == 1681012275) {
                            com.google.android.exoplayer2.extractor.o.a(str == null, null);
                            str = str5;
                        } else if (iN2 == 1702061171) {
                            com.google.android.exoplayer2.extractor.o.a(str == null, null);
                            c0174bI = i(c0Var, iE2);
                            String str6 = c0174bI.mimeType;
                            byte[] bArr3 = c0174bI.initializationData;
                            listY = bArr3 != null ? a0.y(bArr3) : list;
                            str = str6;
                            bArrR = bArr;
                            fQ = f6;
                        } else if (iN2 == 1885434736) {
                            fQ = q(c0Var, iE2);
                            listY = list;
                            bArrR = bArr;
                            z6 = true;
                        } else {
                            if (iN2 == 1937126244) {
                                bArrR = r(c0Var, iE2, iN);
                                listY = list;
                            } else if (iN2 == 1936995172) {
                                int iD = c0Var.D();
                                c0Var.Q(3);
                                if (iD == 0) {
                                    int iD2 = c0Var.D();
                                    if (iD2 == 0) {
                                        i18 = 0;
                                    } else if (iD2 == 1) {
                                        i18 = 1;
                                    } else if (iD2 == 2) {
                                        i18 = 2;
                                    } else if (iD2 == 3) {
                                        i18 = 3;
                                    }
                                }
                            } else if (iN2 == 1668246642) {
                                int iN3 = c0Var.n();
                                if (iN3 == TYPE_nclx || iN3 == TYPE_nclc) {
                                    int iJ3 = c0Var.J();
                                    int iJ4 = c0Var.J();
                                    c0Var.Q(2);
                                    boolean z10 = iN == 19 && (c0Var.D() & 128) != 0;
                                    iB = com.google.android.exoplayer2.video.c.b(iJ3);
                                    i19 = z10 ? 1 : 2;
                                    iC = com.google.android.exoplayer2.video.c.c(iJ4);
                                } else {
                                    t.i(TAG, "Unsupported color type: " + com.google.android.exoplayer2.extractor.mp4.a.a(iN3));
                                }
                            }
                            fQ = f6;
                        }
                    }
                    iE += iN;
                    i16 = i11;
                    i17 = i12;
                    dVar2 = dVar;
                    str3 = str5;
                    drmInitDataC = drmInitData2;
                    iIntValue = iIntValue;
                    iJ2 = iJ2;
                }
                listY = list;
                bArrR = bArr;
                fQ = f6;
                iE += iN;
                i16 = i11;
                i17 = i12;
                dVar2 = dVar;
                str3 = str5;
                drmInitDataC = drmInitData2;
                iIntValue = iIntValue;
                iJ2 = iJ2;
            }
            str = str2;
            iE += iN;
            i16 = i11;
            i17 = i12;
            dVar2 = dVar;
            str3 = str5;
            drmInitDataC = drmInitData2;
            iIntValue = iIntValue;
            iJ2 = iJ2;
        }
        int i20 = iJ2;
        byte[] bArr4 = bArrR;
        float f10 = fQ;
        List<byte[]> list3 = listY;
        if (str == null) {
            return;
        }
        a2.b bVarM = new a2.b().R(i13).e0(str).I(str4).j0(iJ).Q(i20).a0(f10).d0(i14).b0(bArr4).h0(i18).T(list3).M(drmInitData2);
        int i21 = iB;
        int i22 = i19;
        int i23 = iC;
        if (i21 != -1 || i22 != -1 || i23 != -1 || byteBufferA != null) {
            bVarM.J(new com.google.android.exoplayer2.video.c(i21, i22, i23, byteBufferA != null ? byteBufferA.array() : null));
        }
        if (c0174bI != null) {
            bVarM.G(com.google.common.primitives.e.k(c0174bI.bitrate)).Z(com.google.common.primitives.e.k(c0174bI.peakBitrate));
        }
        dVar.format = bVarM.E();
    }

    private static boolean b(long[] jArr, long j6, long j10, long j11) {
        int length = jArr.length - 1;
        return jArr[0] <= j10 && j10 < jArr[o0.p(4, 0, length)] && jArr[o0.p(jArr.length - 4, 0, length)] < j11 && j11 <= j6;
    }

    private static int d(int i10) {
        if (i10 == TYPE_soun) {
            return 1;
        }
        if (i10 == TYPE_vide) {
            return 2;
        }
        if (i10 == TYPE_text || i10 == TYPE_sbtl || i10 == TYPE_subt || i10 == TYPE_clcp) {
            return 3;
        }
        return i10 == 1835365473 ? 5 : -1;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0166  */
    /* JADX WARN: Code duplicated, block: B:102:0x016f  */
    /* JADX WARN: Code duplicated, block: B:103:0x0171  */
    /* JADX WARN: Code duplicated, block: B:106:0x0180  */
    /* JADX WARN: Code duplicated, block: B:110:0x019c  */
    /* JADX WARN: Code duplicated, block: B:115:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:147:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:149:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:151:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:153:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:155:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:171:0x0303 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:0x0303 A[SYNTHETIC] */
    private static void f(c0 c0Var, int i10, int i11, int i12, int i13, String str, boolean z6, @Nullable DrmInitData drmInitData, d dVar, int i14) throws v2 {
        int iJ;
        int iE;
        int iN;
        int iH;
        String str2;
        String str3;
        int i15;
        String str4;
        C0174b c0174bI;
        String str5;
        List<byte[]> listY;
        int iN2;
        boolean z10;
        int iN3;
        char c7;
        int iC;
        byte[] bArr;
        int i16 = i11;
        int i17 = i12;
        DrmInitData drmInitDataC = drmInitData;
        c0Var.P(i16 + 16);
        if (z6) {
            iJ = c0Var.J();
            c0Var.Q(6);
        } else {
            c0Var.Q(8);
            iJ = 0;
        }
        if (iJ == 0 || iJ == 1) {
            int iJ2 = c0Var.J();
            c0Var.Q(6);
            iE = c0Var.E();
            c0Var.P(c0Var.e() - 4);
            iN = c0Var.n();
            if (iJ == 1) {
                c0Var.Q(16);
            }
            iH = iJ2;
        } else {
            if (iJ != 2) {
                return;
            }
            c0Var.Q(16);
            iE = (int) Math.round(c0Var.l());
            iH = c0Var.H();
            c0Var.Q(20);
            iN = 0;
        }
        int iE2 = c0Var.e();
        int iIntValue = i10;
        if (iIntValue == 1701733217) {
            Pair<Integer, p> pairS = s(c0Var, i16, i17);
            if (pairS != null) {
                iIntValue = ((Integer) pairS.first).intValue();
                drmInitDataC = drmInitDataC == null ? null : drmInitDataC.c(((p) pairS.second).schemeType);
                dVar.trackEncryptionBoxes[i14] = (p) pairS.second;
            }
            c0Var.P(iE2);
        }
        if (iIntValue == 1633889587) {
            str2 = "audio/ac3";
        } else if (iIntValue == 1700998451) {
            str2 = "audio/eac3";
        } else if (iIntValue == 1633889588) {
            str2 = "audio/ac4";
        } else if (iIntValue == 1685353315) {
            str2 = "audio/vnd.dts";
        } else if (iIntValue == 1685353320 || iIntValue == 1685353324) {
            str2 = "audio/vnd.dts.hd";
        } else if (iIntValue == 1685353317) {
            str2 = "audio/vnd.dts.hd;profile=lbr";
        } else if (iIntValue == 1685353336) {
            str2 = "audio/vnd.dts.uhd;profile=p2";
        } else if (iIntValue == 1935764850) {
            str2 = "audio/3gpp";
        } else {
            if (iIntValue != 1935767394) {
                str3 = "audio/raw";
                if (iIntValue == 1819304813 || iIntValue == 1936684916) {
                    i15 = 2;
                } else if (iIntValue == 1953984371) {
                    i15 = 268435456;
                } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                    str2 = "audio/mpeg";
                } else if (iIntValue == 1835557169) {
                    str2 = "audio/mha1";
                } else if (iIntValue == 1835560241) {
                    str2 = "audio/mhm1";
                } else if (iIntValue == 1634492771) {
                    str2 = "audio/alac";
                } else if (iIntValue == 1634492791) {
                    str2 = "audio/g711-alaw";
                } else if (iIntValue == 1970037111) {
                    str2 = "audio/g711-mlaw";
                } else if (iIntValue == 1332770163) {
                    str2 = "audio/opus";
                } else if (iIntValue == 1716281667) {
                    str2 = "audio/flac";
                } else if (iIntValue == 1835823201) {
                    str2 = "audio/true-hd";
                } else {
                    i15 = -1;
                    str3 = null;
                }
                str4 = str3;
                c0174bI = null;
                str5 = null;
                listY = null;
                while (iE2 - i16 < i17) {
                    c0Var.P(iE2);
                    iN2 = c0Var.n();
                    if (iN2 > 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    com.google.android.exoplayer2.extractor.o.a(z10, "childAtomSize must be positive");
                    iN3 = c0Var.n();
                    if (iN3 == 1835557187) {
                        int i18 = iN2 - 13;
                        byte[] bArr2 = new byte[i18];
                        c0Var.P(iE2 + 13);
                        c0Var.j(bArr2, 0, i18);
                        listY = a0.y(bArr2);
                    } else {
                        if (iN3 != 1702061171 || (z6 && iN3 == 2002876005)) {
                            c7 = 24931;
                            if (iN3 == 1702061171) {
                                iC = iE2;
                            } else {
                                iC = c(c0Var, 1702061171, iE2, iN2);
                            }
                            if (iC != -1) {
                                c0174bI = i(c0Var, iC);
                                str4 = c0174bI.mimeType;
                                bArr = c0174bI.initializationData;
                                if (bArr != null) {
                                    if ("audio/mp4a-latm".equals(str4)) {
                                        com.google.android.exoplayer2.audio.a.b bVarE = com.google.android.exoplayer2.audio.a.e(bArr);
                                        iE = bVarE.sampleRateHz;
                                        iH = bVarE.channelCount;
                                        str5 = bVarE.codecs;
                                    }
                                    listY = a0.y(bArr);
                                }
                            }
                        } else {
                            if (iN3 == 1684103987) {
                                c0Var.P(iE2 + 8);
                                dVar.format = com.google.android.exoplayer2.audio.b.c(c0Var, Integer.toString(i13), str, drmInitDataC);
                            } else if (iN3 == 1684366131) {
                                c0Var.P(iE2 + 8);
                                dVar.format = com.google.android.exoplayer2.audio.b.g(c0Var, Integer.toString(i13), str, drmInitDataC);
                            } else if (iN3 == 1684103988) {
                                c0Var.P(iE2 + 8);
                                dVar.format = com.google.android.exoplayer2.audio.c.b(c0Var, Integer.toString(i13), str, drmInitDataC);
                            } else if (iN3 == 1684892784) {
                                if (iN <= 0) {
                                    throw v2.a("Invalid sample rate for Dolby TrueHD MLP stream: " + iN, null);
                                }
                                iE = iN;
                                iH = 2;
                                c7 = 24931;
                            } else if (iN3 == 1684305011) {
                                dVar.format = new a2.b().R(i13).e0(str4).H(iH).f0(iE).M(drmInitDataC).V(str).E();
                            } else if (iN3 == 1682927731) {
                                int i19 = iN2 - 8;
                                byte[] bArr3 = opusMagic;
                                byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length + i19);
                                c0Var.P(iE2 + 8);
                                c0Var.j(bArrCopyOf, bArr3.length, i19);
                                listY = i0.a(bArrCopyOf);
                            } else if (iN3 == 1684425825) {
                                byte[] bArr4 = new byte[iN2 - 8];
                                bArr4[0] = 102;
                                bArr4[1] = TarConstants.LF_GNUTYPE_LONGNAME;
                                bArr4[2] = 97;
                                bArr4[3] = 67;
                                c0Var.P(iE2 + 12);
                                c0Var.j(bArr4, 4, iN2 - 12);
                                listY = a0.y(bArr4);
                                c7 = 24931;
                            } else if (iN3 == 1634492771) {
                                int i20 = iN2 - 12;
                                byte[] bArr5 = new byte[i20];
                                c0Var.P(iE2 + 12);
                                c0Var.j(bArr5, 0, i20);
                                Pair<Integer, Integer> pairE = com.google.android.exoplayer2.util.e.e(bArr5);
                                int iIntValue2 = ((Integer) pairE.first).intValue();
                                int iIntValue3 = ((Integer) pairE.second).intValue();
                                listY = a0.y(bArr5);
                                c7 = 24931;
                                iH = iIntValue3;
                                iE = iIntValue2;
                            } else {
                                c7 = 24931;
                            }
                            c7 = 24931;
                        }
                        iE2 += iN2;
                        i16 = i11;
                        i17 = i12;
                    }
                    c7 = 24931;
                    iE2 += iN2;
                    i16 = i11;
                    i17 = i12;
                }
                if (dVar.format == null || str4 == null) {
                }
                a2.b bVarV = new a2.b().R(i13).e0(str4).I(str5).H(iH).f0(iE).Y(i15).T(listY).M(drmInitDataC).V(str);
                if (c0174bI != null) {
                    bVarV.G(com.google.common.primitives.e.k(c0174bI.bitrate)).Z(com.google.common.primitives.e.k(c0174bI.peakBitrate));
                }
                dVar.format = bVarV.E();
                return;
            }
            str2 = "audio/amr-wb";
        }
        str3 = str2;
        i15 = -1;
        str4 = str3;
        c0174bI = null;
        str5 = null;
        listY = null;
        while (iE2 - i16 < i17) {
            c0Var.P(iE2);
            iN2 = c0Var.n();
            if (iN2 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            com.google.android.exoplayer2.extractor.o.a(z10, "childAtomSize must be positive");
            iN3 = c0Var.n();
            if (iN3 == 1835557187) {
                int i110 = iN2 - 13;
                byte[] bArr6 = new byte[i110];
                c0Var.P(iE2 + 13);
                c0Var.j(bArr6, 0, i110);
                listY = a0.y(bArr6);
            } else {
                if (iN3 != 1702061171) {
                    c7 = 24931;
                    if (iN3 == 1702061171) {
                        iC = iE2;
                    } else {
                        iC = c(c0Var, 1702061171, iE2, iN2);
                    }
                    if (iC != -1) {
                        c0174bI = i(c0Var, iC);
                        str4 = c0174bI.mimeType;
                        bArr = c0174bI.initializationData;
                        if (bArr != null) {
                            if ("audio/mp4a-latm".equals(str4)) {
                                com.google.android.exoplayer2.audio.a.b bVarE2 = com.google.android.exoplayer2.audio.a.e(bArr);
                                iE = bVarE2.sampleRateHz;
                                iH = bVarE2.channelCount;
                                str5 = bVarE2.codecs;
                            }
                            listY = a0.y(bArr);
                        }
                    }
                } else {
                    c7 = 24931;
                    if (iN3 == 1702061171) {
                        iC = iE2;
                    } else {
                        iC = c(c0Var, 1702061171, iE2, iN2);
                    }
                    if (iC != -1) {
                        c0174bI = i(c0Var, iC);
                        str4 = c0174bI.mimeType;
                        bArr = c0174bI.initializationData;
                        if (bArr != null) {
                            if ("audio/mp4a-latm".equals(str4)) {
                                com.google.android.exoplayer2.audio.a.b bVarE3 = com.google.android.exoplayer2.audio.a.e(bArr);
                                iE = bVarE3.sampleRateHz;
                                iH = bVarE3.channelCount;
                                str5 = bVarE3.codecs;
                            }
                            listY = a0.y(bArr);
                        }
                    }
                }
                iE2 += iN2;
                i16 = i11;
                i17 = i12;
            }
            c7 = 24931;
            iE2 += iN2;
            i16 = i11;
            i17 = i12;
        }
        if (dVar.format == null) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:150:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:151:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:155:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:157:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:165:0x0414  */
    /* JADX WARN: Code duplicated, block: B:166:0x0416  */
    /* JADX WARN: Code duplicated, block: B:168:0x041a  */
    /* JADX WARN: Code duplicated, block: B:173:0x0436  */
    /* JADX WARN: Code duplicated, block: B:176:0x043b  */
    /* JADX WARN: Code duplicated, block: B:177:0x043e  */
    /* JADX WARN: Code duplicated, block: B:179:0x0441  */
    /* JADX WARN: Code duplicated, block: B:180:0x0444  */
    /* JADX WARN: Code duplicated, block: B:182:0x0447  */
    /* JADX WARN: Code duplicated, block: B:183:0x0449  */
    /* JADX WARN: Code duplicated, block: B:185:0x044d  */
    /* JADX WARN: Code duplicated, block: B:186:0x0450  */
    /* JADX WARN: Code duplicated, block: B:190:0x045f  */
    /* JADX WARN: Code duplicated, block: B:192:0x046d  */
    /* JADX WARN: Code duplicated, block: B:193:0x047d  */
    /* JADX WARN: Code duplicated, block: B:196:0x0485  */
    /* JADX WARN: Code duplicated, block: B:198:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:200:0x04be  */
    /* JADX WARN: Code duplicated, block: B:201:0x04c1  */
    /* JADX WARN: Code duplicated, block: B:211:0x042b A[EDGE_INSN: B:211:0x042b->B:170:0x042b BREAK  A[LOOP:2: B:153:0x03ca->B:169:0x0424], SYNTHETIC] */
    private static r v(o oVar, com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a, x xVar) throws v2 {
        c fVar;
        boolean z6;
        int iH;
        int iH2;
        int iH3;
        int i10;
        int i11;
        int i12;
        boolean z10;
        int i13;
        o oVar2;
        int i14;
        long[] jArr;
        int[] iArr;
        int i15;
        long j6;
        long[] jArr2;
        int[] iArr2;
        int iN;
        int i16;
        int i17;
        int i18;
        long[] jArr3;
        boolean z11;
        int[] iArr3;
        int[] iArr4;
        long[] jArr4;
        int i19;
        boolean z12;
        int i20;
        int i21;
        long[] jArr5;
        long[] jArr6;
        int[] iArr5;
        int i22;
        boolean z13;
        long[] jArr7;
        int[] iArr6;
        int i23;
        int[] iArr7;
        long[] jArr8;
        int i24;
        int[] iArr8;
        long j10;
        int i25;
        long j11;
        int i26;
        int i27;
        int[] iArr9;
        int i28;
        int i29;
        int i30;
        long j12;
        boolean z14;
        int i31;
        int i32;
        int i33;
        boolean z15;
        com.google.android.exoplayer2.extractor.mp4.a.b bVarG = c0173a.g(1937011578);
        if (bVarG != null) {
            fVar = new e(bVarG, oVar.format);
        } else {
            com.google.android.exoplayer2.extractor.mp4.a.b bVarG2 = c0173a.g(1937013298);
            if (bVarG2 == null) {
                throw v2.a("Track has no sample table size information", null);
            }
            fVar = new f(bVarG2);
        }
        int sampleCount = fVar.getSampleCount();
        if (sampleCount == 0) {
            return new r(oVar, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        com.google.android.exoplayer2.extractor.mp4.a.b bVarG3 = c0173a.g(1937007471);
        if (bVarG3 == null) {
            bVarG3 = (com.google.android.exoplayer2.extractor.mp4.a.b) com.google.android.exoplayer2.util.a.e(c0173a.g(1668232756));
            z6 = true;
        } else {
            z6 = false;
        }
        c0 c0Var = bVarG3.data;
        c0 c0Var2 = ((com.google.android.exoplayer2.extractor.mp4.a.b) com.google.android.exoplayer2.util.a.e(c0173a.g(1937011555))).data;
        c0 c0Var3 = ((com.google.android.exoplayer2.extractor.mp4.a.b) com.google.android.exoplayer2.util.a.e(c0173a.g(1937011827))).data;
        com.google.android.exoplayer2.extractor.mp4.a.b bVarG4 = c0173a.g(1937011571);
        c0 c0Var4 = bVarG4 != null ? bVarG4.data : null;
        com.google.android.exoplayer2.extractor.mp4.a.b bVarG5 = c0173a.g(1668576371);
        c0 c0Var5 = bVarG5 != null ? bVarG5.data : null;
        a aVar = new a(c0Var2, c0Var, z6);
        c0Var3.P(12);
        int iH4 = c0Var3.H() - 1;
        int iH5 = c0Var3.H();
        int iH6 = c0Var3.H();
        if (c0Var5 != null) {
            c0Var5.P(12);
            iH = c0Var5.H();
        } else {
            iH = 0;
        }
        if (c0Var4 != null) {
            c0Var4.P(12);
            iH3 = c0Var4.H();
            if (iH3 > 0) {
                iH2 = c0Var4.H() - 1;
            } else {
                iH2 = -1;
                c0Var4 = null;
            }
        } else {
            iH2 = -1;
            iH3 = 0;
        }
        int iA = fVar.a();
        String str = oVar.format.sampleMimeType;
        if (iA != -1 && ("audio/raw".equals(str) || "audio/g711-mlaw".equals(str) || "audio/g711-alaw".equals(str)) && iH4 == 0 && iH == 0 && iH3 == 0) {
            int i34 = aVar.length;
            long[] jArr9 = new long[i34];
            int[] iArr10 = new int[i34];
            while (aVar.a()) {
                int i35 = aVar.index;
                jArr9[i35] = aVar.offset;
                iArr10[i35] = aVar.numSamples;
            }
            com.google.android.exoplayer2.extractor.mp4.d.b bVarA = com.google.android.exoplayer2.extractor.mp4.d.a(iA, jArr9, iArr10, iH6);
            long[] jArr10 = bVarA.offsets;
            int[] iArr11 = bVarA.sizes;
            int i36 = bVarA.maximumSize;
            long[] jArr11 = bVarA.timestamps;
            int[] iArr12 = bVarA.flags;
            long j13 = bVarA.duration;
            oVar2 = oVar;
            i14 = sampleCount;
            jArr = jArr10;
            iArr = iArr11;
            i15 = i36;
            iArr2 = iArr12;
            j6 = j13;
            jArr2 = jArr11;
        } else {
            long[] jArrCopyOf = new long[sampleCount];
            int[] iArrCopyOf = new int[sampleCount];
            long[] jArrCopyOf2 = new long[sampleCount];
            int[] iArrCopyOf2 = new int[sampleCount];
            int iH7 = iH2;
            int i37 = 0;
            int i38 = 0;
            int i39 = 0;
            int iN2 = 0;
            int iH8 = 0;
            long j14 = 0;
            long j15 = 0;
            int i40 = iH;
            int i41 = iH6;
            int i42 = iH5;
            int i43 = iH4;
            int i44 = iH3;
            while (true) {
                i10 = i43;
                if (i37 >= sampleCount) {
                    i11 = i42;
                    i12 = i39;
                    break;
                }
                long j16 = j15;
                int i45 = i39;
                boolean zA = true;
                while (i45 == 0) {
                    zA = aVar.a();
                    if (!zA) {
                        break;
                    }
                    int i46 = i42;
                    long j17 = aVar.offset;
                    i45 = aVar.numSamples;
                    j16 = j17;
                    i42 = i46;
                    i41 = i41;
                    sampleCount = sampleCount;
                }
                int i47 = sampleCount;
                i11 = i42;
                int i48 = i41;
                if (!zA) {
                    t.i(TAG, "Unexpected end of chunk data");
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i37);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i37);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i37);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i37);
                    sampleCount = i37;
                    i12 = i45;
                    break;
                }
                if (c0Var5 != null) {
                    while (iH8 == 0 && i40 > 0) {
                        iH8 = c0Var5.H();
                        iN2 = c0Var5.n();
                        i40--;
                    }
                    iH8--;
                }
                int i49 = iN2;
                jArrCopyOf[i37] = j16;
                int nextSampleSize = fVar.readNextSampleSize();
                iArrCopyOf[i37] = nextSampleSize;
                if (nextSampleSize > i38) {
                    i38 = nextSampleSize;
                }
                jArrCopyOf2[i37] = j14 + ((long) i49);
                iArrCopyOf2[i37] = c0Var4 == null ? 1 : 0;
                if (i37 == iH7) {
                    iArrCopyOf2[i37] = 1;
                    i44--;
                    if (i44 > 0) {
                        iH7 = ((c0) com.google.android.exoplayer2.util.a.e(c0Var4)).H() - 1;
                    }
                }
                int i50 = iH7;
                j14 += (long) i48;
                int iH9 = i11 - 1;
                if (iH9 != 0 || i10 <= 0) {
                    iN = i48;
                    i16 = i10;
                } else {
                    iH9 = c0Var3.H();
                    iN = c0Var3.n();
                    i16 = i10 - 1;
                }
                int i51 = iH9;
                long j18 = j16 + ((long) iArrCopyOf[i37]);
                int i52 = i45 - 1;
                i37++;
                j15 = j18;
                iH7 = i50;
                i41 = iN;
                i39 = i52;
                sampleCount = i47;
                iN2 = i49;
                i43 = i16;
                i42 = i51;
            }
            long j19 = j14 + ((long) iN2);
            if (c0Var5 == null) {
                z10 = true;
                break;
            }
            while (true) {
                if (i40 <= 0) {
                    z10 = true;
                    break;
                }
                if (c0Var5.H() != 0) {
                    z10 = false;
                    break;
                }
                c0Var5.n();
                i40--;
            }
            if (i44 == 0 && i11 == 0 && i12 == 0 && i10 == 0) {
                i13 = iH8;
                if (i13 == 0 && z10) {
                    oVar2 = oVar;
                }
                i14 = sampleCount;
                jArr = jArrCopyOf;
                iArr = iArrCopyOf;
                i15 = i38;
                j6 = j19;
                jArr2 = jArrCopyOf2;
                iArr2 = iArrCopyOf2;
            } else {
                i13 = iH8;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Inconsistent stbl box for track ");
            oVar2 = oVar;
            sb.append(oVar2.id);
            sb.append(": remainingSynchronizationSamples ");
            sb.append(i44);
            sb.append(", remainingSamplesAtTimestampDelta ");
            sb.append(i11);
            sb.append(", remainingSamplesInChunk ");
            sb.append(i12);
            sb.append(", remainingTimestampDeltaChanges ");
            sb.append(i10);
            sb.append(", remainingSamplesAtTimestampOffset ");
            sb.append(i13);
            sb.append(!z10 ? ", ctts invalid" : "");
            t.i(TAG, sb.toString());
            i14 = sampleCount;
            jArr = jArrCopyOf;
            iArr = iArrCopyOf;
            i15 = i38;
            j6 = j19;
            jArr2 = jArrCopyOf2;
            iArr2 = iArrCopyOf2;
        }
        long jF0 = o0.F0(j6, 1000000L, oVar2.timescale);
        long[] jArr12 = oVar2.editListDurations;
        if (jArr12 == null) {
            o0.G0(jArr2, 1000000L, oVar2.timescale);
            return new r(oVar, jArr, iArr, i15, jArr2, iArr2, jF0);
        }
        if (jArr12.length == 1 && oVar2.type == 1 && jArr2.length >= 2) {
            long j20 = ((long[]) com.google.android.exoplayer2.util.a.e(oVar2.editListMediaTimes))[0];
            long jF1 = j20 + o0.F0(oVar2.editListDurations[0], oVar2.timescale, oVar2.movieTimescale);
            i17 = i14;
            if (b(jArr2, j6, j20, jF1)) {
                long jF2 = o0.F0(j20 - jArr2[0], oVar2.format.sampleRate, oVar2.timescale);
                i18 = i15;
                long jF3 = o0.F0(j6 - jF1, oVar2.format.sampleRate, oVar2.timescale);
                if ((jF2 != 0 || jF3 != 0) && jF2 <= 2147483647L && jF3 <= 2147483647L) {
                    xVar.encoderDelay = (int) jF2;
                    xVar.encoderPadding = (int) jF3;
                    o0.G0(jArr2, 1000000L, oVar2.timescale);
                    return new r(oVar, jArr, iArr, i18, jArr2, iArr2, o0.F0(oVar2.editListDurations[0], 1000000L, oVar2.movieTimescale));
                }
            }
            jArr3 = oVar2.editListDurations;
            if (jArr3.length != 1 && jArr3[0] == 0) {
                long j21 = ((long[]) com.google.android.exoplayer2.util.a.e(oVar2.editListMediaTimes))[0];
                for (int i53 = 0; i53 < jArr2.length; i53++) {
                    jArr2[i53] = o0.F0(jArr2[i53] - j21, 1000000L, oVar2.timescale);
                }
                return new r(oVar, jArr, iArr, i18, jArr2, iArr2, o0.F0(j6 - j21, 1000000L, oVar2.timescale));
            }
            if (oVar2.type == 1) {
                z11 = true;
            } else {
                z11 = false;
            }
            iArr3 = new int[jArr3.length];
            iArr4 = new int[jArr3.length];
            jArr4 = (long[]) com.google.android.exoplayer2.util.a.e(oVar2.editListMediaTimes);
            i19 = 0;
            z12 = false;
            i20 = 0;
            i21 = 0;
            while (true) {
                jArr5 = oVar2.editListDurations;
                if (i19 < jArr5.length) {
                    break;
                }
                long[] jArr13 = jArr;
                int[] iArr13 = iArr;
                j12 = jArr4[i19];
                if (j12 != -1) {
                    i32 = i21;
                    boolean z16 = z12;
                    int i54 = i20;
                    long jF4 = o0.F0(jArr5[i19], oVar2.timescale, oVar2.movieTimescale);
                    iArr3[i19] = o0.i(jArr2, j12, true, true);
                    iArr4[i19] = o0.e(jArr2, j12 + jF4, z11, false);
                    while (true) {
                        i33 = iArr3[i19];
                        i31 = iArr4[i19];
                        if (i33 >= i31 || (iArr2[i33] & 1) != 0) {
                            break;
                        }
                        iArr3[i19] = i33 + 1;
                    }
                    i20 = i54 + (i31 - i33);
                    if (i32 != i33) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    z14 = z16 | z15;
                } else {
                    z14 = z12;
                    i31 = i21;
                }
                i19++;
                z12 = z14;
                i21 = i31;
                jArr = jArr13;
                iArr = iArr13;
            }
            jArr6 = jArr;
            iArr5 = iArr;
            boolean z17 = z12;
            i22 = 0;
            z13 = z17 | (i20 != i17);
            if (z13) {
                jArr7 = new long[i20];
            } else {
                jArr7 = jArr6;
            }
            if (z13) {
                iArr6 = new int[i20];
            } else {
                iArr6 = iArr5;
            }
            if (z13) {
                i23 = 0;
            } else {
                i23 = i18;
            }
            if (z13) {
                iArr7 = new int[i20];
            } else {
                iArr7 = iArr2;
            }
            jArr8 = new long[i20];
            i24 = i23;
            iArr8 = iArr5;
            j10 = 0;
            i25 = 0;
            while (i22 < oVar2.editListDurations.length) {
                j11 = oVar2.editListMediaTimes[i22];
                i26 = iArr3[i22];
                int[] iArr14 = iArr3;
                i27 = iArr4[i22];
                int[] iArr15 = iArr4;
                if (z13) {
                    int i55 = i27 - i26;
                    System.arraycopy(jArr6, i26, jArr7, i25, i55);
                    iArr9 = iArr8;
                    System.arraycopy(iArr9, i26, iArr6, i25, i55);
                    System.arraycopy(iArr2, i26, iArr7, i25, i55);
                } else {
                    iArr9 = iArr8;
                }
                i28 = i24;
                while (i26 < i27) {
                    i29 = i28;
                    int i56 = i27;
                    long[] jArr14 = jArr2;
                    int[] iArr16 = iArr2;
                    int[] iArr17 = iArr7;
                    long j22 = j10;
                    jArr8[i25] = o0.F0(j10, 1000000L, oVar2.movieTimescale) + o0.F0(Math.max(0L, jArr2[i26] - j11), 1000000L, oVar2.timescale);
                    if (z13) {
                        i30 = i29;
                        if (iArr6[i25] > i30) {
                            i28 = iArr9[i26];
                        }
                        i25++;
                        i26++;
                        i27 = i56;
                        j10 = j22;
                        jArr2 = jArr14;
                        iArr2 = iArr16;
                        iArr7 = iArr17;
                    } else {
                        i30 = i29;
                    }
                    i28 = i30;
                    i25++;
                    i26++;
                    i27 = i56;
                    j10 = j22;
                    jArr2 = jArr14;
                    iArr2 = iArr16;
                    iArr7 = iArr17;
                }
                long[] jArr15 = jArr2;
                long j23 = j10 + oVar2.editListDurations[i22];
                i22++;
                i24 = i28;
                iArr8 = iArr9;
                j10 = j23;
                iArr3 = iArr14;
                jArr2 = jArr15;
                iArr2 = iArr2;
                iArr4 = iArr15;
                jArr6 = jArr6;
                iArr7 = iArr7;
            }
            return new r(oVar, jArr7, iArr6, i24, jArr8, iArr7, o0.F0(j10, 1000000L, oVar2.movieTimescale));
        }
        i17 = i14;
        i18 = i15;
        jArr3 = oVar2.editListDurations;
        if (jArr3.length != 1) {
        }
        if (oVar2.type == 1) {
            z11 = true;
        } else {
            z11 = false;
        }
        iArr3 = new int[jArr3.length];
        iArr4 = new int[jArr3.length];
        jArr4 = (long[]) com.google.android.exoplayer2.util.a.e(oVar2.editListMediaTimes);
        i19 = 0;
        z12 = false;
        i20 = 0;
        i21 = 0;
        while (true) {
            jArr5 = oVar2.editListDurations;
            if (i19 < jArr5.length) {
                break;
                break;
            }
            long[] jArr16 = jArr;
            int[] iArr18 = iArr;
            j12 = jArr4[i19];
            if (j12 != -1) {
                i32 = i21;
                boolean z18 = z12;
                int i57 = i20;
                long jF5 = o0.F0(jArr5[i19], oVar2.timescale, oVar2.movieTimescale);
                iArr3[i19] = o0.i(jArr2, j12, true, true);
                iArr4[i19] = o0.e(jArr2, j12 + jF5, z11, false);
                while (true) {
                    i33 = iArr3[i19];
                    i31 = iArr4[i19];
                    if (i33 >= i31) {
                        break;
                    }
                    break;
                    break;
                    iArr3[i19] = i33 + 1;
                }
                i20 = i57 + (i31 - i33);
                if (i32 != i33) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                z14 = z18 | z15;
            } else {
                z14 = z12;
                i31 = i21;
            }
            i19++;
            z12 = z14;
            i21 = i31;
            jArr = jArr16;
            iArr = iArr18;
        }
        jArr6 = jArr;
        iArr5 = iArr;
        boolean z19 = z12;
        i22 = 0;
        z13 = z19 | (i20 != i17);
        if (z13) {
            jArr7 = new long[i20];
        } else {
            jArr7 = jArr6;
        }
        if (z13) {
            iArr6 = new int[i20];
        } else {
            iArr6 = iArr5;
        }
        if (z13) {
            i23 = 0;
        } else {
            i23 = i18;
        }
        if (z13) {
            iArr7 = new int[i20];
        } else {
            iArr7 = iArr2;
        }
        jArr8 = new long[i20];
        i24 = i23;
        iArr8 = iArr5;
        j10 = 0;
        i25 = 0;
        while (i22 < oVar2.editListDurations.length) {
            j11 = oVar2.editListMediaTimes[i22];
            i26 = iArr3[i22];
            int[] iArr19 = iArr3;
            i27 = iArr4[i22];
            int[] iArr110 = iArr4;
            if (z13) {
                int i58 = i27 - i26;
                System.arraycopy(jArr6, i26, jArr7, i25, i58);
                iArr9 = iArr8;
                System.arraycopy(iArr9, i26, iArr6, i25, i58);
                System.arraycopy(iArr2, i26, iArr7, i25, i58);
            } else {
                iArr9 = iArr8;
            }
            i28 = i24;
            while (i26 < i27) {
                i29 = i28;
                int i59 = i27;
                long[] jArr17 = jArr2;
                int[] iArr111 = iArr2;
                int[] iArr112 = iArr7;
                long j24 = j10;
                jArr8[i25] = o0.F0(j10, 1000000L, oVar2.movieTimescale) + o0.F0(Math.max(0L, jArr2[i26] - j11), 1000000L, oVar2.timescale);
                if (z13) {
                    i30 = i29;
                    if (iArr6[i25] > i30) {
                        i28 = iArr9[i26];
                    }
                    i25++;
                    i26++;
                    i27 = i59;
                    j10 = j24;
                    jArr2 = jArr17;
                    iArr2 = iArr111;
                    iArr7 = iArr112;
                } else {
                    i30 = i29;
                }
                i28 = i30;
                i25++;
                i26++;
                i27 = i59;
                j10 = j24;
                jArr2 = jArr17;
                iArr2 = iArr111;
                iArr7 = iArr112;
            }
            long[] jArr18 = jArr2;
            long j25 = j10 + oVar2.editListDurations[i22];
            i22++;
            i24 = i28;
            iArr8 = iArr9;
            j10 = j25;
            iArr3 = iArr19;
            jArr2 = jArr18;
            iArr2 = iArr2;
            iArr4 = iArr110;
            jArr6 = jArr6;
            iArr7 = iArr7;
        }
        return new r(oVar, jArr7, iArr6, i24, jArr8, iArr7, o0.F0(j10, 1000000L, oVar2.movieTimescale));
    }

    private static final class d {
        public static final int STSD_HEADER_SIZE = 8;

        @Nullable
        public a2 format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final p[] trackEncryptionBoxes;

        public d(int i10) {
            this.trackEncryptionBoxes = new p[i10];
        }
    }

    public static Pair<Metadata, Metadata> B(com.google.android.exoplayer2.extractor.mp4.a.b bVar) {
        c0 c0Var = bVar.data;
        c0Var.P(8);
        Metadata metadataC = null;
        Metadata metadataU = null;
        while (c0Var.a() >= 8) {
            int iE = c0Var.e();
            int iN = c0Var.n();
            int iN2 = c0Var.n();
            if (iN2 == 1835365473) {
                c0Var.P(iE);
                metadataC = C(c0Var, iE + iN);
            } else if (iN2 == 1936553057) {
                c0Var.P(iE);
                metadataU = u(c0Var, iE + iN);
            }
            c0Var.P(iE + iN);
        }
        return Pair.create(metadataC, metadataU);
    }

    @Nullable
    private static Metadata C(c0 c0Var, int i10) {
        c0Var.Q(8);
        e(c0Var);
        while (c0Var.e() < i10) {
            int iE = c0Var.e();
            int iN = c0Var.n();
            if (c0Var.n() == 1768715124) {
                c0Var.P(iE);
                return l(c0Var, iE + iN);
            }
            c0Var.P(iE + iN);
        }
        return null;
    }

    private static ByteBuffer a() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    @Nullable
    static Pair<Integer, p> g(c0 c0Var, int i10, int i11) throws v2 {
        int i12 = i10 + 8;
        int i13 = -1;
        int i14 = 0;
        String strA = null;
        Integer numValueOf = null;
        while (i12 - i10 < i11) {
            c0Var.P(i12);
            int iN = c0Var.n();
            int iN2 = c0Var.n();
            if (iN2 == 1718775137) {
                numValueOf = Integer.valueOf(c0Var.n());
            } else if (iN2 == 1935894637) {
                c0Var.Q(4);
                strA = c0Var.A(4);
            } else if (iN2 == 1935894633) {
                i13 = i12;
                i14 = iN;
            }
            i12 += iN;
        }
        if (!"cenc".equals(strA) && !"cbc1".equals(strA) && !"cens".equals(strA) && !"cbcs".equals(strA)) {
            return null;
        }
        com.google.android.exoplayer2.extractor.o.a(numValueOf != null, "frma atom is mandatory");
        com.google.android.exoplayer2.extractor.o.a(i13 != -1, "schi atom is mandatory");
        p pVarT = t(c0Var, i13, i14, strA);
        com.google.android.exoplayer2.extractor.o.a(pVarT != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, (p) o0.j(pVarT));
    }

    private static C0174b i(c0 c0Var, int i10) {
        c0Var.P(i10 + 12);
        c0Var.Q(1);
        j(c0Var);
        c0Var.Q(2);
        int iD = c0Var.D();
        if ((iD & 128) != 0) {
            c0Var.Q(2);
        }
        if ((iD & 64) != 0) {
            c0Var.Q(c0Var.D());
        }
        if ((iD & 32) != 0) {
            c0Var.Q(2);
        }
        c0Var.Q(1);
        j(c0Var);
        String strF = com.google.android.exoplayer2.util.x.f(c0Var.D());
        if ("audio/mpeg".equals(strF) || "audio/vnd.dts".equals(strF) || "audio/vnd.dts.hd".equals(strF)) {
            return new C0174b(strF, null, -1L, -1L);
        }
        c0Var.Q(4);
        long jF = c0Var.F();
        long jF2 = c0Var.F();
        c0Var.Q(1);
        int iJ = j(c0Var);
        byte[] bArr = new byte[iJ];
        c0Var.j(bArr, 0, iJ);
        return new C0174b(strF, bArr, jF2 > 0 ? jF2 : -1L, jF > 0 ? jF : -1L);
    }

    private static int k(c0 c0Var) {
        c0Var.P(16);
        return c0Var.n();
    }

    @Nullable
    private static Metadata l(c0 c0Var, int i10) {
        c0Var.Q(8);
        ArrayList arrayList = new ArrayList();
        while (c0Var.e() < i10) {
            Metadata.Entry entryC = h.c(c0Var);
            if (entryC != null) {
                arrayList.add(entryC);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Pair<Long, String> m(c0 c0Var) {
        c0Var.P(8);
        int iC = com.google.android.exoplayer2.extractor.mp4.a.c(c0Var.n());
        c0Var.Q(iC == 0 ? 8 : 16);
        long jF = c0Var.F();
        c0Var.Q(iC == 0 ? 4 : 8);
        int iJ = c0Var.J();
        return Pair.create(Long.valueOf(jF), "" + ((char) (((iJ >> 10) & 31) + 96)) + ((char) (((iJ >> 5) & 31) + 96)) + ((char) ((iJ & 31) + 96)));
    }

    private static void o(c0 c0Var, int i10, int i11, int i12, d dVar) {
        c0Var.P(i11 + 16);
        if (i10 == 1835365492) {
            c0Var.x();
            String strX = c0Var.x();
            if (strX != null) {
                dVar.format = new a2.b().R(i12).e0(strX).E();
            }
        }
    }

    private static long p(c0 c0Var) {
        c0Var.P(8);
        c0Var.Q(com.google.android.exoplayer2.extractor.mp4.a.c(c0Var.n()) != 0 ? 16 : 8);
        return c0Var.F();
    }

    private static float q(c0 c0Var, int i10) {
        c0Var.P(i10 + 8);
        return c0Var.H() / c0Var.H();
    }

    @Nullable
    private static byte[] r(c0 c0Var, int i10, int i11) {
        int i12 = i10 + 8;
        while (i12 - i10 < i11) {
            c0Var.P(i12);
            int iN = c0Var.n();
            if (c0Var.n() == 1886547818) {
                return Arrays.copyOfRange(c0Var.d(), i12, iN + i12);
            }
            i12 += iN;
        }
        return null;
    }

    @Nullable
    private static p t(c0 c0Var, int i10, int i11, String str) {
        int i12;
        int i13;
        int i14 = i10 + 8;
        while (true) {
            byte[] bArr = null;
            if (i14 - i10 >= i11) {
                return null;
            }
            c0Var.P(i14);
            int iN = c0Var.n();
            if (c0Var.n() == 1952804451) {
                int iC = com.google.android.exoplayer2.extractor.mp4.a.c(c0Var.n());
                c0Var.Q(1);
                if (iC == 0) {
                    c0Var.Q(1);
                    i13 = 0;
                    i12 = 0;
                } else {
                    int iD = c0Var.D();
                    i12 = iD & 15;
                    i13 = (iD & 240) >> 4;
                }
                boolean z6 = c0Var.D() == 1;
                int iD2 = c0Var.D();
                byte[] bArr2 = new byte[16];
                c0Var.j(bArr2, 0, 16);
                if (z6 && iD2 == 0) {
                    int iD3 = c0Var.D();
                    bArr = new byte[iD3];
                    c0Var.j(bArr, 0, iD3);
                }
                return new p(z6, str, iD2, bArr2, i13, i12, bArr);
            }
            i14 += iN;
        }
    }

    @Nullable
    private static Metadata u(c0 c0Var, int i10) {
        c0Var.Q(12);
        while (c0Var.e() < i10) {
            int iE = c0Var.e();
            int iN = c0Var.n();
            if (c0Var.n() == 1935766900) {
                if (iN < 14) {
                    return null;
                }
                c0Var.Q(5);
                int iD = c0Var.D();
                if (iD != 12 && iD != 13) {
                    return null;
                }
                float f6 = iD == 12 ? 240.0f : 120.0f;
                c0Var.Q(1);
                return new Metadata(new SmtaMetadataEntry(f6, c0Var.D()));
            }
            c0Var.P(iE + iN);
        }
        return null;
    }

    private static d w(c0 c0Var, int i10, int i11, String str, @Nullable DrmInitData drmInitData, boolean z6) throws v2 {
        int i12;
        c0Var.P(12);
        int iN = c0Var.n();
        d dVar = new d(iN);
        for (int i13 = 0; i13 < iN; i13++) {
            int iE = c0Var.e();
            int iN2 = c0Var.n();
            com.google.android.exoplayer2.extractor.o.a(iN2 > 0, "childAtomSize must be positive");
            int iN3 = c0Var.n();
            if (iN3 == 1635148593 || iN3 == 1635148595 || iN3 == 1701733238 || iN3 == 1831958048 || iN3 == 1836070006 || iN3 == 1752589105 || iN3 == 1751479857 || iN3 == 1932670515 || iN3 == 1211250227 || iN3 == 1987063864 || iN3 == 1987063865 || iN3 == 1635135537 || iN3 == 1685479798 || iN3 == 1685479729 || iN3 == 1685481573 || iN3 == 1685481521) {
                i12 = iE;
                D(c0Var, iN3, i12, iN2, i10, i11, drmInitData, dVar, i13);
            } else if (iN3 == 1836069985 || iN3 == 1701733217 || iN3 == 1633889587 || iN3 == 1700998451 || iN3 == 1633889588 || iN3 == 1835823201 || iN3 == 1685353315 || iN3 == 1685353317 || iN3 == 1685353320 || iN3 == 1685353324 || iN3 == 1685353336 || iN3 == 1935764850 || iN3 == 1935767394 || iN3 == 1819304813 || iN3 == 1936684916 || iN3 == 1953984371 || iN3 == 778924082 || iN3 == 778924083 || iN3 == 1835557169 || iN3 == 1835560241 || iN3 == 1634492771 || iN3 == 1634492791 || iN3 == 1970037111 || iN3 == 1332770163 || iN3 == 1716281667) {
                i12 = iE;
                f(c0Var, iN3, iE, iN2, i10, str, z6, drmInitData, dVar, i13);
            } else {
                if (iN3 == 1414810956 || iN3 == 1954034535 || iN3 == 2004251764 || iN3 == 1937010800 || iN3 == 1664495672) {
                    x(c0Var, iN3, iE, iN2, i10, str, dVar);
                } else if (iN3 == 1835365492) {
                    o(c0Var, iN3, iE, i10, dVar);
                } else if (iN3 == 1667329389) {
                    dVar.format = new a2.b().R(i10).e0("application/x-camera-motion").E();
                }
                i12 = iE;
            }
            c0Var.P(i12 + iN2);
        }
        return dVar;
    }

    private static void x(c0 c0Var, int i10, int i11, int i12, int i13, String str, d dVar) {
        c0Var.P(i11 + 16);
        String str2 = "application/ttml+xml";
        a0 a0VarY = null;
        long j6 = Long.MAX_VALUE;
        if (i10 != 1414810956) {
            if (i10 == 1954034535) {
                int i14 = i12 - 16;
                byte[] bArr = new byte[i14];
                c0Var.j(bArr, 0, i14);
                a0VarY = a0.y(bArr);
                str2 = "application/x-quicktime-tx3g";
            } else if (i10 == 2004251764) {
                str2 = "application/x-mp4-vtt";
            } else if (i10 == 1937010800) {
                j6 = 0;
            } else {
                if (i10 != 1664495672) {
                    throw new IllegalStateException();
                }
                dVar.requiredSampleTransformation = 1;
                str2 = "application/x-mp4-cea-608";
            }
        }
        dVar.format = new a2.b().R(i13).e0(str2).V(str).i0(j6).T(a0VarY).E();
    }

    private static g y(c0 c0Var) {
        long j6;
        c0Var.P(8);
        int iC = com.google.android.exoplayer2.extractor.mp4.a.c(c0Var.n());
        c0Var.Q(iC == 0 ? 8 : 16);
        int iN = c0Var.n();
        c0Var.Q(4);
        int iE = c0Var.e();
        int i10 = iC == 0 ? 4 : 8;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            j6 = -9223372036854775807L;
            if (i12 >= i10) {
                c0Var.Q(i10);
                break;
            }
            if (c0Var.d()[iE + i12] != -1) {
                long jF = iC == 0 ? c0Var.F() : c0Var.I();
                if (jF == 0) {
                    break;
                }
                j6 = jF;
                break;
            }
            i12++;
        }
        c0Var.Q(16);
        int iN2 = c0Var.n();
        int iN3 = c0Var.n();
        c0Var.Q(4);
        int iN4 = c0Var.n();
        int iN5 = c0Var.n();
        if (iN2 == 0 && iN3 == 65536 && iN4 == -65536 && iN5 == 0) {
            i11 = 90;
        } else if (iN2 == 0 && iN3 == -65536 && iN4 == 65536 && iN5 == 0) {
            i11 = 270;
        } else if (iN2 == -65536 && iN3 == 0 && iN4 == 0 && iN5 == -65536) {
            i11 = 180;
        }
        return new g(iN, j6, i11);
    }

    @Nullable
    private static o z(com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a, com.google.android.exoplayer2.extractor.mp4.a.b bVar, long j6, @Nullable DrmInitData drmInitData, boolean z6, boolean z10) throws v2 {
        long[] jArr;
        long[] jArr2;
        com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173aF;
        Pair<long[], long[]> pairH;
        com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a2 = (com.google.android.exoplayer2.extractor.mp4.a.C0173a) com.google.android.exoplayer2.util.a.e(c0173a.f(1835297121));
        int iD = d(k(((com.google.android.exoplayer2.extractor.mp4.a.b) com.google.android.exoplayer2.util.a.e(c0173a2.g(1751411826))).data));
        if (iD == -1) {
            return null;
        }
        g gVarY = y(((com.google.android.exoplayer2.extractor.mp4.a.b) com.google.android.exoplayer2.util.a.e(c0173a.g(1953196132))).data);
        long j10 = j6 == -9223372036854775807L ? gVarY.duration : j6;
        long jP = p(bVar.data);
        long jF0 = j10 != -9223372036854775807L ? o0.F0(j10, 1000000L, jP) : -9223372036854775807L;
        com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a3 = (com.google.android.exoplayer2.extractor.mp4.a.C0173a) com.google.android.exoplayer2.util.a.e(((com.google.android.exoplayer2.extractor.mp4.a.C0173a) com.google.android.exoplayer2.util.a.e(c0173a2.f(1835626086))).f(1937007212));
        Pair<Long, String> pairM = m(((com.google.android.exoplayer2.extractor.mp4.a.b) com.google.android.exoplayer2.util.a.e(c0173a2.g(1835296868))).data);
        d dVarW = w(((com.google.android.exoplayer2.extractor.mp4.a.b) com.google.android.exoplayer2.util.a.e(c0173a3.g(1937011556))).data, gVarY.id, gVarY.rotationDegrees, (String) pairM.second, drmInitData, z10);
        if (z6 || (c0173aF = c0173a.f(1701082227)) == null || (pairH = h(c0173aF)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) pairH.first;
            jArr2 = (long[]) pairH.second;
            jArr = jArr3;
        }
        if (dVarW.format == null) {
            return null;
        }
        return new o(gVarY.id, iD, ((Long) pairM.first).longValue(), jP, jF0, dVarW.format, dVarW.requiredSampleTransformation, dVarW.trackEncryptionBoxes, dVarW.nalUnitLengthFieldLength, jArr, jArr2);
    }

    private static int c(c0 c0Var, int i10, int i11, int i12) throws v2 {
        boolean z6;
        boolean z10;
        int iE = c0Var.e();
        if (iE >= i11) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.extractor.o.a(z6, null);
        while (iE - i11 < i12) {
            c0Var.P(iE);
            int iN = c0Var.n();
            if (iN > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            com.google.android.exoplayer2.extractor.o.a(z10, "childAtomSize must be positive");
            if (c0Var.n() == i10) {
                return iE;
            }
            iE += iN;
        }
        return -1;
    }

    public static void e(c0 c0Var) {
        int iE = c0Var.e();
        c0Var.Q(4);
        if (c0Var.n() != 1751411826) {
            iE += 4;
        }
        c0Var.P(iE);
    }

    @Nullable
    private static Pair<long[], long[]> h(com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a) {
        long jF;
        long jN;
        com.google.android.exoplayer2.extractor.mp4.a.b bVarG = c0173a.g(1701606260);
        if (bVarG == null) {
            return null;
        }
        c0 c0Var = bVarG.data;
        c0Var.P(8);
        int iC = com.google.android.exoplayer2.extractor.mp4.a.c(c0Var.n());
        int iH = c0Var.H();
        long[] jArr = new long[iH];
        long[] jArr2 = new long[iH];
        for (int i10 = 0; i10 < iH; i10++) {
            if (iC == 1) {
                jF = c0Var.I();
            } else {
                jF = c0Var.F();
            }
            jArr[i10] = jF;
            if (iC == 1) {
                jN = c0Var.w();
            } else {
                jN = c0Var.n();
            }
            jArr2[i10] = jN;
            if (c0Var.z() == 1) {
                c0Var.Q(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static int j(c0 c0Var) {
        int iD = c0Var.D();
        int i10 = iD & 127;
        while ((iD & 128) == 128) {
            iD = c0Var.D();
            i10 = (i10 << 7) | (iD & 127);
        }
        return i10;
    }

    @Nullable
    public static Metadata n(com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a) {
        com.google.android.exoplayer2.extractor.mp4.a.b bVarG = c0173a.g(1751411826);
        com.google.android.exoplayer2.extractor.mp4.a.b bVarG2 = c0173a.g(1801812339);
        com.google.android.exoplayer2.extractor.mp4.a.b bVarG3 = c0173a.g(1768715124);
        if (bVarG == null || bVarG2 == null || bVarG3 == null || k(bVarG.data) != TYPE_mdta) {
            return null;
        }
        c0 c0Var = bVarG2.data;
        c0Var.P(12);
        int iN = c0Var.n();
        String[] strArr = new String[iN];
        for (int i10 = 0; i10 < iN; i10++) {
            int iN2 = c0Var.n();
            c0Var.Q(4);
            strArr[i10] = c0Var.A(iN2 - 8);
        }
        c0 c0Var2 = bVarG3.data;
        c0Var2.P(8);
        ArrayList arrayList = new ArrayList();
        while (c0Var2.a() > 8) {
            int iE = c0Var2.e();
            int iN3 = c0Var2.n();
            int iN4 = c0Var2.n() - 1;
            if (iN4 >= 0 && iN4 < iN) {
                MdtaMetadataEntry mdtaMetadataEntryF = h.f(c0Var2, iE + iN3, strArr[iN4]);
                if (mdtaMetadataEntryF != null) {
                    arrayList.add(mdtaMetadataEntryF);
                }
            } else {
                t.i(TAG, "Skipped metadata with unknown key index: " + iN4);
            }
            c0Var2.P(iE + iN3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    @Nullable
    private static Pair<Integer, p> s(c0 c0Var, int i10, int i11) throws v2 {
        boolean z6;
        Pair<Integer, p> pairG;
        int iE = c0Var.e();
        while (iE - i10 < i11) {
            c0Var.P(iE);
            int iN = c0Var.n();
            if (iN > 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            com.google.android.exoplayer2.extractor.o.a(z6, "childAtomSize must be positive");
            if (c0Var.n() == 1936289382 && (pairG = g(c0Var, iE, iN)) != null) {
                return pairG;
            }
            iE += iN;
        }
        return null;
    }
}
