package androidx.media3.extractor.mp4;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.CreationTime;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4LocationData;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.DolbyVisionConfig;
import androidx.media3.extractor.ExtractorUtil;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.HevcConfig;
import androidx.media3.extractor.OpusUtil;
import androidx.media3.extractor.metadata.mp4.SmtaMetadataEntry;
import androidx.work.WorkRequest;
import com.google.common.base.g;
import com.google.common.collect.a0;
import com.google.common.primitives.e;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes4.dex */
final class AtomParsers {
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
    private static final byte[] opusMagic = Util.q0("OpusHead");

    private static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public boolean a() {
            int i10 = this.index + 1;
            this.index = i10;
            if (i10 == this.length) {
                return false;
            }
            this.offset = this.chunkOffsetsAreLongs ? this.chunkOffsets.M() : this.chunkOffsets.J();
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.L();
                this.stsc.V(4);
                int i11 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i11;
                this.nextSamplesPerChunkChangeIndex = i11 > 0 ? this.stsc.L() - 1 : -1;
            }
            return true;
        }

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z6) throws ParserException {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z6;
            parsableByteArray2.U(12);
            this.length = parsableByteArray2.L();
            parsableByteArray.U(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.L();
            ExtractorUtil.a(parsableByteArray.q() == 1, "first_chunk must be 1");
            this.index = -1;
        }
    }

    private static final class EsdsData {
        private final long bitrate;
        private final byte[] initializationData;
        private final String mimeType;
        private final long peakBitrate;

        public EsdsData(String str, byte[] bArr, long j6, long j10) {
            this.mimeType = str;
            this.initializationData = bArr;
            this.bitrate = j6;
            this.peakBitrate = j10;
        }
    }

    private interface SampleSizeBox {
        int a();

        int getSampleCount();

        int readNextSampleSize();
    }

    static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize;
        private final int sampleCount;

        @Override // androidx.media3.extractor.mp4.AtomParsers.SampleSizeBox
        public int a() {
            return this.fixedSampleSize;
        }

        @Override // androidx.media3.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // androidx.media3.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i10 = this.fixedSampleSize;
            return i10 == -1 ? this.data.L() : i10;
        }

        public StszSampleSizeBox(Atom.LeafAtom leafAtom, Format format) {
            ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.U(12);
            int iL = parsableByteArray.L();
            if ("audio/raw".equals(format.sampleMimeType)) {
                int iH0 = Util.h0(format.pcmEncoding, format.channelCount);
                if (iL == 0 || iL % iH0 != 0) {
                    Log.i(AtomParsers.TAG, "Audio sample size mismatch. stsd sample size: " + iH0 + ", stsz sample size: " + iL);
                    iL = iH0;
                }
            }
            this.fixedSampleSize = iL == 0 ? -1 : iL;
            this.sampleCount = parsableByteArray.L();
        }
    }

    static final class Stz2SampleSizeBox implements SampleSizeBox {
        private int currentByte;
        private final ParsableByteArray data;
        private final int fieldSize;
        private final int sampleCount;
        private int sampleIndex;

        @Override // androidx.media3.extractor.mp4.AtomParsers.SampleSizeBox
        public int a() {
            return -1;
        }

        @Override // androidx.media3.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // androidx.media3.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i10 = this.fieldSize;
            if (i10 == 8) {
                return this.data.H();
            }
            if (i10 == 16) {
                return this.data.N();
            }
            int i11 = this.sampleIndex;
            this.sampleIndex = i11 + 1;
            if (i11 % 2 != 0) {
                return this.currentByte & 15;
            }
            int iH = this.data.H();
            this.currentByte = iH;
            return (iH & 240) >> 4;
        }

        public Stz2SampleSizeBox(Atom.LeafAtom leafAtom) {
            ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.U(12);
            this.fieldSize = parsableByteArray.L() & 255;
            this.sampleCount = parsableByteArray.L();
        }
    }

    private static final class TkhdData {
        private final long duration;
        private final int id;
        private final int rotationDegrees;

        public TkhdData(int i10, long j6, int i11) {
            this.id = i10;
            this.duration = j6;
            this.rotationDegrees = i11;
        }
    }

    public static List<TrackSampleTable> B(Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder, long j6, @Nullable DrmInitData drmInitData, boolean z6, boolean z10, g<Track, Track> gVar) throws ParserException {
        Track trackApply;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < containerAtom.containerChildren.size(); i10++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i10);
            if (containerAtom2.type == 1953653099 && (trackApply = gVar.apply(A(containerAtom2, (Atom.LeafAtom) Assertions.e(containerAtom.g(1836476516)), j6, drmInitData, z6, z10))) != null) {
                arrayList.add(w(trackApply, (Atom.ContainerAtom) Assertions.e(((Atom.ContainerAtom) Assertions.e(((Atom.ContainerAtom) Assertions.e(containerAtom2.f(1835297121))).f(1835626086))).f(1937007212)), gaplessInfoHolder));
            }
        }
        return arrayList;
    }

    private static void E(ParsableByteArray parsableByteArray, int i10, int i11, int i12, int i13, int i14, @Nullable DrmInitData drmInitData, StsdData stsdData, int i15) throws ParserException {
        String str;
        float f;
        List<byte[]> list;
        int i16;
        int i17;
        String str2;
        int i18;
        int i19;
        int i20;
        String str3;
        int i21 = i11;
        int i22 = i12;
        DrmInitData drmInitDataE = drmInitData;
        StsdData stsdData2 = stsdData;
        parsableByteArray.U(i21 + 16);
        parsableByteArray.V(16);
        int iN = parsableByteArray.N();
        int iN2 = parsableByteArray.N();
        parsableByteArray.V(50);
        int iF = parsableByteArray.f();
        int iIntValue = i10;
        if (iIntValue == 1701733238) {
            Pair<Integer, TrackEncryptionBox> pairT = t(parsableByteArray, i21, i22);
            if (pairT != null) {
                iIntValue = ((Integer) pairT.first).intValue();
                drmInitDataE = drmInitDataE == null ? null : drmInitDataE.e(((TrackEncryptionBox) pairT.second).schemeType);
                stsdData2.trackEncryptionBoxes[i15] = (TrackEncryptionBox) pairT.second;
            }
            parsableByteArray.U(iF);
        }
        String str4 = "video/3gpp";
        if (iIntValue == 1831958048) {
            str = "video/mpeg";
        } else {
            str = iIntValue == 1211250227 ? "video/3gpp" : null;
        }
        float fR = 1.0f;
        String str5 = null;
        List<byte[]> listY = null;
        byte[] bArrS = null;
        int i23 = -1;
        int iH = -1;
        int i24 = -1;
        int i25 = -1;
        ByteBuffer byteBufferA = null;
        EsdsData esdsDataJ = null;
        boolean z6 = false;
        while (iF - i21 < i22) {
            parsableByteArray.U(iF);
            int iF2 = parsableByteArray.f();
            int iQ = parsableByteArray.q();
            if (iQ == 0 && parsableByteArray.f() - i21 == i22) {
                break;
            }
            ExtractorUtil.a(iQ > 0, "childAtomSize must be positive");
            int iQ2 = parsableByteArray.q();
            if (iQ2 == 1635148611) {
                ExtractorUtil.a(str == null, null);
                parsableByteArray.U(iF2 + 8);
                AvcConfig avcConfigB = AvcConfig.b(parsableByteArray);
                listY = avcConfigB.initializationData;
                stsdData2.nalUnitLengthFieldLength = avcConfigB.nalUnitLengthFieldLength;
                if (!z6) {
                    fR = avcConfigB.pixelWidthHeightRatio;
                }
                str5 = avcConfigB.codecs;
                i18 = avcConfigB.colorSpace;
                i19 = avcConfigB.colorRange;
                i20 = avcConfigB.colorTransfer;
                str3 = "video/avc";
            } else {
                if (iQ2 == 1752589123) {
                    ExtractorUtil.a(str == null, null);
                    parsableByteArray.U(iF2 + 8);
                    HevcConfig hevcConfigA = HevcConfig.a(parsableByteArray);
                    listY = hevcConfigA.initializationData;
                    stsdData2.nalUnitLengthFieldLength = hevcConfigA.nalUnitLengthFieldLength;
                    if (!z6) {
                        fR = hevcConfigA.pixelWidthHeightRatio;
                    }
                    str5 = hevcConfigA.codecs;
                    i18 = hevcConfigA.colorSpace;
                    i19 = hevcConfigA.colorRange;
                    i20 = hevcConfigA.colorTransfer;
                    str3 = "video/hevc";
                } else {
                    if (iQ2 == 1685480259 || iQ2 == 1685485123) {
                        drmInitDataE = drmInitDataE;
                        iN2 = iN2;
                        iIntValue = iIntValue;
                        f = fR;
                        list = listY;
                        i16 = iH;
                        i17 = i25;
                        DolbyVisionConfig dolbyVisionConfigA = DolbyVisionConfig.a(parsableByteArray);
                        if (dolbyVisionConfigA != null) {
                            str5 = dolbyVisionConfigA.codecs;
                            str = "video/dolby-vision";
                        }
                    } else {
                        if (iQ2 == 1987076931) {
                            ExtractorUtil.a(str == null, null);
                            str2 = iIntValue == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                            parsableByteArray.U(iF2 + 12);
                            parsableByteArray.V(2);
                            boolean z10 = (parsableByteArray.H() & 1) != 0;
                            int iH2 = parsableByteArray.H();
                            int iH3 = parsableByteArray.H();
                            iH = ColorInfo.h(iH2);
                            i24 = z10 ? 1 : 2;
                            i25 = ColorInfo.i(iH3);
                        } else if (iQ2 == 1635135811) {
                            ExtractorUtil.a(str == null, null);
                            str2 = "video/av01";
                        } else if (iQ2 == 1668050025) {
                            if (byteBufferA == null) {
                                byteBufferA = a();
                            }
                            ByteBuffer byteBuffer = byteBufferA;
                            byteBuffer.position(21);
                            byteBuffer.putShort(parsableByteArray.D());
                            byteBuffer.putShort(parsableByteArray.D());
                            byteBufferA = byteBuffer;
                        } else if (iQ2 == 1835295606) {
                            if (byteBufferA == null) {
                                byteBufferA = a();
                            }
                            ByteBuffer byteBuffer2 = byteBufferA;
                            short sD = parsableByteArray.D();
                            short sD2 = parsableByteArray.D();
                            short sD3 = parsableByteArray.D();
                            short sD4 = parsableByteArray.D();
                            short sD5 = parsableByteArray.D();
                            short sD6 = parsableByteArray.D();
                            List<byte[]> list2 = listY;
                            short sD7 = parsableByteArray.D();
                            float f6 = fR;
                            short sD8 = parsableByteArray.D();
                            long J = parsableByteArray.J();
                            long J2 = parsableByteArray.J();
                            byteBuffer2.position(1);
                            byteBuffer2.putShort(sD5);
                            byteBuffer2.putShort(sD6);
                            byteBuffer2.putShort(sD);
                            byteBuffer2.putShort(sD2);
                            byteBuffer2.putShort(sD3);
                            byteBuffer2.putShort(sD4);
                            byteBuffer2.putShort(sD7);
                            byteBuffer2.putShort(sD8);
                            byteBuffer2.putShort((short) (J / WorkRequest.MIN_BACKOFF_MILLIS));
                            byteBuffer2.putShort((short) (J2 / WorkRequest.MIN_BACKOFF_MILLIS));
                            byteBufferA = byteBuffer2;
                            listY = list2;
                            fR = f6;
                        } else {
                            drmInitDataE = drmInitDataE;
                            iN2 = iN2;
                            iIntValue = iIntValue;
                            f = fR;
                            list = listY;
                            if (iQ2 == 1681012275) {
                                ExtractorUtil.a(str == null, null);
                                str = str4;
                            } else if (iQ2 == 1702061171) {
                                ExtractorUtil.a(str == null, null);
                                esdsDataJ = j(parsableByteArray, iF2);
                                String str6 = esdsDataJ.mimeType;
                                byte[] bArr = esdsDataJ.initializationData;
                                listY = bArr != null ? a0.y(bArr) : list;
                                str = str6;
                                fR = f;
                            } else if (iQ2 == 1885434736) {
                                fR = r(parsableByteArray, iF2);
                                listY = list;
                                z6 = true;
                            } else if (iQ2 == 1937126244) {
                                bArrS = s(parsableByteArray, iF2, iQ);
                            } else if (iQ2 == 1936995172) {
                                int iH4 = parsableByteArray.H();
                                parsableByteArray.V(3);
                                if (iH4 == 0) {
                                    int iH5 = parsableByteArray.H();
                                    if (iH5 == 0) {
                                        i23 = 0;
                                    } else if (iH5 == 1) {
                                        i23 = 1;
                                    } else if (iH5 == 2) {
                                        i23 = 2;
                                    } else if (iH5 == 3) {
                                        i23 = 3;
                                    }
                                }
                            } else {
                                i16 = iH;
                                if (iQ2 == 1668246642) {
                                    i17 = i25;
                                    if (i16 == -1 && i17 == -1) {
                                        int iQ3 = parsableByteArray.q();
                                        if (iQ3 == TYPE_nclx || iQ3 == TYPE_nclc) {
                                            int iN3 = parsableByteArray.N();
                                            int iN4 = parsableByteArray.N();
                                            parsableByteArray.V(2);
                                            boolean z11 = iQ == 19 && (parsableByteArray.H() & 128) != 0;
                                            iH = ColorInfo.h(iN3);
                                            i24 = z11 ? 1 : 2;
                                            i25 = ColorInfo.i(iN4);
                                        } else {
                                            Log.i(TAG, "Unsupported color type: " + Atom.a(iQ3));
                                        }
                                    }
                                } else {
                                    i17 = i25;
                                }
                            }
                            listY = list;
                            fR = f;
                        }
                        str = str2;
                    }
                    i25 = i17;
                    iH = i16;
                    listY = list;
                    fR = f;
                }
                iF += iQ;
                i21 = i11;
                i22 = i12;
                stsdData2 = stsdData;
                str4 = str4;
                iIntValue = iIntValue;
                drmInitDataE = drmInitDataE;
                iN2 = iN2;
            }
            i25 = i20;
            iH = i18;
            i24 = i19;
            str = str3;
            iF += iQ;
            i21 = i11;
            i22 = i12;
            stsdData2 = stsdData;
            str4 = str4;
            iIntValue = iIntValue;
            drmInitDataE = drmInitDataE;
            iN2 = iN2;
        }
        DrmInitData drmInitData2 = drmInitDataE;
        int i26 = iN2;
        float f7 = fR;
        List<byte[]> list3 = listY;
        int i27 = iH;
        int i28 = i25;
        if (str == null) {
            return;
        }
        Format.Builder builderO = new Format.Builder().T(i13).g0(str).K(str5).n0(iN).S(i26).c0(f7).f0(i14).d0(bArrS).j0(i23).V(list3).O(drmInitData2);
        int i29 = i24;
        if (i27 != -1 || i29 != -1 || i28 != -1 || byteBufferA != null) {
            builderO.L(new ColorInfo(i27, i29, i28, byteBufferA != null ? byteBufferA.array() : null));
        }
        if (esdsDataJ != null) {
            builderO.I(e.k(esdsDataJ.bitrate)).b0(e.k(esdsDataJ.peakBitrate));
        }
        stsdData.format = builderO.G();
    }

    private static boolean b(long[] jArr, long j6, long j10, long j11) {
        int length = jArr.length - 1;
        return jArr[0] <= j10 && j10 < jArr[Util.q(4, 0, length)] && jArr[Util.q(jArr.length - 4, 0, length)] < j11 && j11 <= j6;
    }

    private static boolean c(int i10) {
        return i10 != 1;
    }

    private static int e(int i10) {
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
    /* JADX WARN: Code duplicated, block: B:150:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:152:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:154:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:156:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:158:0x0300  */
    /* JADX WARN: Code duplicated, block: B:174:0x0310 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:175:0x0310 A[SYNTHETIC] */
    private static void g(ParsableByteArray parsableByteArray, int i10, int i11, int i12, int i13, String str, boolean z6, @Nullable DrmInitData drmInitData, StsdData stsdData, int i14) throws ParserException {
        int iN;
        int I;
        int iQ;
        int iL;
        String str2;
        String str3;
        int i15;
        String str4;
        EsdsData esdsDataJ;
        String str5;
        List<byte[]> listY;
        int iQ2;
        boolean z10;
        int iQ3;
        char c7;
        int iD;
        byte[] bArr;
        int i16 = i11;
        int i17 = i12;
        DrmInitData drmInitDataE = drmInitData;
        parsableByteArray.U(i16 + 16);
        if (z6) {
            iN = parsableByteArray.N();
            parsableByteArray.V(6);
        } else {
            parsableByteArray.V(8);
            iN = 0;
        }
        if (iN == 0 || iN == 1) {
            int iN2 = parsableByteArray.N();
            parsableByteArray.V(6);
            I = parsableByteArray.I();
            parsableByteArray.U(parsableByteArray.f() - 4);
            iQ = parsableByteArray.q();
            if (iN == 1) {
                parsableByteArray.V(16);
            }
            iL = iN2;
        } else {
            if (iN != 2) {
                return;
            }
            parsableByteArray.V(16);
            I = (int) Math.round(parsableByteArray.o());
            iL = parsableByteArray.L();
            parsableByteArray.V(20);
            iQ = 0;
        }
        int iF = parsableByteArray.f();
        int iIntValue = i10;
        if (iIntValue == 1701733217) {
            Pair<Integer, TrackEncryptionBox> pairT = t(parsableByteArray, i16, i17);
            if (pairT != null) {
                iIntValue = ((Integer) pairT.first).intValue();
                drmInitDataE = drmInitDataE == null ? null : drmInitDataE.e(((TrackEncryptionBox) pairT.second).schemeType);
                stsdData.trackEncryptionBoxes[i14] = (TrackEncryptionBox) pairT.second;
            }
            parsableByteArray.U(iF);
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
                esdsDataJ = null;
                str5 = null;
                listY = null;
                while (iF - i16 < i17) {
                    parsableByteArray.U(iF);
                    iQ2 = parsableByteArray.q();
                    if (iQ2 > 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    ExtractorUtil.a(z10, "childAtomSize must be positive");
                    iQ3 = parsableByteArray.q();
                    if (iQ3 == 1835557187) {
                        int i18 = iQ2 - 13;
                        byte[] bArr2 = new byte[i18];
                        parsableByteArray.U(iF + 13);
                        parsableByteArray.l(bArr2, 0, i18);
                        listY = a0.y(bArr2);
                    } else {
                        if (iQ3 != 1702061171 || (z6 && iQ3 == 2002876005)) {
                            c7 = 24931;
                            if (iQ3 == 1702061171) {
                                iD = iF;
                            } else {
                                iD = d(parsableByteArray, 1702061171, iF, iQ2);
                            }
                            if (iD != -1) {
                                esdsDataJ = j(parsableByteArray, iD);
                                str4 = esdsDataJ.mimeType;
                                bArr = esdsDataJ.initializationData;
                                if (bArr != null) {
                                    if ("audio/mp4a-latm".equals(str4)) {
                                        AacUtil.Config configF = AacUtil.f(bArr);
                                        I = configF.sampleRateHz;
                                        iL = configF.channelCount;
                                        str5 = configF.codecs;
                                    }
                                    listY = a0.y(bArr);
                                }
                            }
                        } else {
                            if (iQ3 == 1684103987) {
                                parsableByteArray.U(iF + 8);
                                stsdData.format = Ac3Util.d(parsableByteArray, Integer.toString(i13), str, drmInitDataE);
                            } else if (iQ3 == 1684366131) {
                                parsableByteArray.U(iF + 8);
                                stsdData.format = Ac3Util.h(parsableByteArray, Integer.toString(i13), str, drmInitDataE);
                            } else if (iQ3 == 1684103988) {
                                parsableByteArray.U(iF + 8);
                                stsdData.format = Ac4Util.b(parsableByteArray, Integer.toString(i13), str, drmInitDataE);
                            } else if (iQ3 != 1684892784) {
                                if (iQ3 == 1684305011 || iQ3 == 1969517683) {
                                    stsdData.format = new Format.Builder().T(i13).g0(str4).J(iL).h0(I).O(drmInitDataE).X(str).G();
                                } else if (iQ3 == 1682927731) {
                                    int i19 = iQ2 - 8;
                                    byte[] bArr3 = opusMagic;
                                    byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length + i19);
                                    parsableByteArray.U(iF + 8);
                                    parsableByteArray.l(bArrCopyOf, bArr3.length, i19);
                                    listY = OpusUtil.a(bArrCopyOf);
                                } else if (iQ3 == 1684425825) {
                                    byte[] bArr4 = new byte[iQ2 - 8];
                                    bArr4[0] = 102;
                                    bArr4[1] = TarConstants.LF_GNUTYPE_LONGNAME;
                                    bArr4[2] = 97;
                                    bArr4[3] = 67;
                                    parsableByteArray.U(iF + 12);
                                    parsableByteArray.l(bArr4, 4, iQ2 - 12);
                                    listY = a0.y(bArr4);
                                    c7 = 24931;
                                } else if (iQ3 == 1634492771) {
                                    int i20 = iQ2 - 12;
                                    byte[] bArr5 = new byte[i20];
                                    parsableByteArray.U(iF + 12);
                                    parsableByteArray.l(bArr5, 0, i20);
                                    Pair<Integer, Integer> pairG = CodecSpecificDataUtil.g(bArr5);
                                    int iIntValue2 = ((Integer) pairG.first).intValue();
                                    int iIntValue3 = ((Integer) pairG.second).intValue();
                                    listY = a0.y(bArr5);
                                    c7 = 24931;
                                    iL = iIntValue3;
                                    I = iIntValue2;
                                }
                                c7 = 24931;
                            } else {
                                if (iQ <= 0) {
                                    throw ParserException.a("Invalid sample rate for Dolby TrueHD MLP stream: " + iQ, null);
                                }
                                I = iQ;
                                iL = 2;
                                c7 = 24931;
                            }
                            c7 = 24931;
                        }
                        iF += iQ2;
                        i16 = i11;
                        i17 = i12;
                    }
                    c7 = 24931;
                    iF += iQ2;
                    i16 = i11;
                    i17 = i12;
                }
                if (stsdData.format == null || str4 == null) {
                }
                Format.Builder builderX = new Format.Builder().T(i13).g0(str4).K(str5).J(iL).h0(I).a0(i15).V(listY).O(drmInitDataE).X(str);
                if (esdsDataJ != null) {
                    builderX.I(e.k(esdsDataJ.bitrate)).b0(e.k(esdsDataJ.peakBitrate));
                }
                stsdData.format = builderX.G();
                return;
            }
            str2 = "audio/amr-wb";
        }
        str3 = str2;
        i15 = -1;
        str4 = str3;
        esdsDataJ = null;
        str5 = null;
        listY = null;
        while (iF - i16 < i17) {
            parsableByteArray.U(iF);
            iQ2 = parsableByteArray.q();
            if (iQ2 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            ExtractorUtil.a(z10, "childAtomSize must be positive");
            iQ3 = parsableByteArray.q();
            if (iQ3 == 1835557187) {
                int i110 = iQ2 - 13;
                byte[] bArr6 = new byte[i110];
                parsableByteArray.U(iF + 13);
                parsableByteArray.l(bArr6, 0, i110);
                listY = a0.y(bArr6);
            } else {
                if (iQ3 != 1702061171) {
                    c7 = 24931;
                    if (iQ3 == 1702061171) {
                        iD = iF;
                    } else {
                        iD = d(parsableByteArray, 1702061171, iF, iQ2);
                    }
                    if (iD != -1) {
                        esdsDataJ = j(parsableByteArray, iD);
                        str4 = esdsDataJ.mimeType;
                        bArr = esdsDataJ.initializationData;
                        if (bArr != null) {
                            if ("audio/mp4a-latm".equals(str4)) {
                                AacUtil.Config configF2 = AacUtil.f(bArr);
                                I = configF2.sampleRateHz;
                                iL = configF2.channelCount;
                                str5 = configF2.codecs;
                            }
                            listY = a0.y(bArr);
                        }
                    }
                } else {
                    c7 = 24931;
                    if (iQ3 == 1702061171) {
                        iD = iF;
                    } else {
                        iD = d(parsableByteArray, 1702061171, iF, iQ2);
                    }
                    if (iD != -1) {
                        esdsDataJ = j(parsableByteArray, iD);
                        str4 = esdsDataJ.mimeType;
                        bArr = esdsDataJ.initializationData;
                        if (bArr != null) {
                            if ("audio/mp4a-latm".equals(str4)) {
                                AacUtil.Config configF3 = AacUtil.f(bArr);
                                I = configF3.sampleRateHz;
                                iL = configF3.channelCount;
                                str5 = configF3.codecs;
                            }
                            listY = a0.y(bArr);
                        }
                    }
                }
                iF += iQ2;
                i16 = i11;
                i17 = i12;
            }
            c7 = 24931;
            iF += iQ2;
            i16 = i11;
            i17 = i12;
        }
        if (stsdData.format == null) {
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
    /* JADX WARN: Code duplicated, block: B:198:0x04b5  */
    /* JADX WARN: Code duplicated, block: B:199:0x04bc  */
    /* JADX WARN: Code duplicated, block: B:202:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:204:0x04c9  */
    /* JADX WARN: Code duplicated, block: B:205:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:215:0x042b A[EDGE_INSN: B:215:0x042b->B:170:0x042b BREAK  A[LOOP:2: B:153:0x03ca->B:169:0x0424], SYNTHETIC] */
    private static TrackSampleTable w(Track track, Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder) throws ParserException {
        SampleSizeBox stz2SampleSizeBox;
        boolean z6;
        int iL;
        int iL2;
        int iL3;
        int i10;
        int i11;
        int i12;
        boolean z10;
        int i13;
        Track track2;
        int i14;
        long[] jArr;
        int[] iArr;
        int i15;
        long j6;
        long[] jArr2;
        int[] iArr2;
        int iQ;
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
        long jX0;
        int i30;
        long j12;
        boolean z14;
        int i31;
        int i32;
        int i33;
        boolean z15;
        Atom.LeafAtom leafAtomG = containerAtom.g(1937011578);
        if (leafAtomG != null) {
            stz2SampleSizeBox = new StszSampleSizeBox(leafAtomG, track.format);
        } else {
            Atom.LeafAtom leafAtomG2 = containerAtom.g(1937013298);
            if (leafAtomG2 == null) {
                throw ParserException.a("Track has no sample table size information", null);
            }
            stz2SampleSizeBox = new Stz2SampleSizeBox(leafAtomG2);
        }
        int sampleCount = stz2SampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(track, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        Atom.LeafAtom leafAtomG3 = containerAtom.g(1937007471);
        if (leafAtomG3 == null) {
            leafAtomG3 = (Atom.LeafAtom) Assertions.e(containerAtom.g(1668232756));
            z6 = true;
        } else {
            z6 = false;
        }
        ParsableByteArray parsableByteArray = leafAtomG3.data;
        ParsableByteArray parsableByteArray2 = ((Atom.LeafAtom) Assertions.e(containerAtom.g(1937011555))).data;
        ParsableByteArray parsableByteArray3 = ((Atom.LeafAtom) Assertions.e(containerAtom.g(1937011827))).data;
        Atom.LeafAtom leafAtomG4 = containerAtom.g(1937011571);
        ParsableByteArray parsableByteArray4 = leafAtomG4 != null ? leafAtomG4.data : null;
        Atom.LeafAtom leafAtomG5 = containerAtom.g(1668576371);
        ParsableByteArray parsableByteArray5 = leafAtomG5 != null ? leafAtomG5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z6);
        parsableByteArray3.U(12);
        int iL4 = parsableByteArray3.L() - 1;
        int iL5 = parsableByteArray3.L();
        int iL6 = parsableByteArray3.L();
        if (parsableByteArray5 != null) {
            parsableByteArray5.U(12);
            iL = parsableByteArray5.L();
        } else {
            iL = 0;
        }
        if (parsableByteArray4 != null) {
            parsableByteArray4.U(12);
            iL3 = parsableByteArray4.L();
            if (iL3 > 0) {
                iL2 = parsableByteArray4.L() - 1;
            } else {
                iL2 = -1;
                parsableByteArray4 = null;
            }
        } else {
            iL2 = -1;
            iL3 = 0;
        }
        int iA = stz2SampleSizeBox.a();
        String str = track.format.sampleMimeType;
        if (iA != -1 && ("audio/raw".equals(str) || "audio/g711-mlaw".equals(str) || "audio/g711-alaw".equals(str)) && iL4 == 0 && iL == 0 && iL3 == 0) {
            int i34 = chunkIterator.length;
            long[] jArr9 = new long[i34];
            int[] iArr10 = new int[i34];
            while (chunkIterator.a()) {
                int i35 = chunkIterator.index;
                jArr9[i35] = chunkIterator.offset;
                iArr10[i35] = chunkIterator.numSamples;
            }
            FixedSampleSizeRechunker.Results resultsA = FixedSampleSizeRechunker.a(iA, jArr9, iArr10, iL6);
            long[] jArr10 = resultsA.offsets;
            int[] iArr11 = resultsA.sizes;
            int i36 = resultsA.maximumSize;
            long[] jArr11 = resultsA.timestamps;
            int[] iArr12 = resultsA.flags;
            long j13 = resultsA.duration;
            track2 = track;
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
            int iL7 = iL2;
            int i37 = 0;
            int i38 = 0;
            int i39 = 0;
            int iQ2 = 0;
            int iL8 = 0;
            long j14 = 0;
            long j15 = 0;
            int i40 = iL;
            int i41 = iL6;
            int i42 = iL5;
            int i43 = iL4;
            int i44 = iL3;
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
                    zA = chunkIterator.a();
                    if (!zA) {
                        break;
                    }
                    int i46 = i42;
                    long j17 = chunkIterator.offset;
                    i45 = chunkIterator.numSamples;
                    j16 = j17;
                    i42 = i46;
                    i41 = i41;
                    sampleCount = sampleCount;
                }
                int i47 = sampleCount;
                i11 = i42;
                int i48 = i41;
                if (!zA) {
                    Log.i(TAG, "Unexpected end of chunk data");
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i37);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i37);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i37);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i37);
                    sampleCount = i37;
                    i12 = i45;
                    break;
                }
                if (parsableByteArray5 != null) {
                    while (iL8 == 0 && i40 > 0) {
                        iL8 = parsableByteArray5.L();
                        iQ2 = parsableByteArray5.q();
                        i40--;
                    }
                    iL8--;
                }
                int i49 = iQ2;
                jArrCopyOf[i37] = j16;
                int nextSampleSize = stz2SampleSizeBox.readNextSampleSize();
                iArrCopyOf[i37] = nextSampleSize;
                if (nextSampleSize > i38) {
                    i38 = nextSampleSize;
                }
                jArrCopyOf2[i37] = j14 + ((long) i49);
                iArrCopyOf2[i37] = parsableByteArray4 == null ? 1 : 0;
                if (i37 == iL7) {
                    iArrCopyOf2[i37] = 1;
                    i44--;
                    if (i44 > 0) {
                        iL7 = ((ParsableByteArray) Assertions.e(parsableByteArray4)).L() - 1;
                    }
                }
                int i50 = iL7;
                j14 += (long) i48;
                int iL9 = i11 - 1;
                if (iL9 != 0 || i10 <= 0) {
                    iQ = i48;
                    i16 = i10;
                } else {
                    iL9 = parsableByteArray3.L();
                    iQ = parsableByteArray3.q();
                    i16 = i10 - 1;
                }
                int i51 = iL9;
                long j18 = j16 + ((long) iArrCopyOf[i37]);
                int i52 = i45 - 1;
                i37++;
                j15 = j18;
                iL7 = i50;
                i41 = iQ;
                i39 = i52;
                sampleCount = i47;
                iQ2 = i49;
                i43 = i16;
                i42 = i51;
            }
            long j19 = j14 + ((long) iQ2);
            if (parsableByteArray5 == null) {
                z10 = true;
                break;
            }
            while (true) {
                if (i40 <= 0) {
                    z10 = true;
                    break;
                }
                if (parsableByteArray5.L() != 0) {
                    z10 = false;
                    break;
                }
                parsableByteArray5.q();
                i40--;
            }
            if (i44 == 0 && i11 == 0 && i12 == 0 && i10 == 0) {
                i13 = iL8;
                if (i13 == 0 && z10) {
                    track2 = track;
                }
                i14 = sampleCount;
                jArr = jArrCopyOf;
                iArr = iArrCopyOf;
                i15 = i38;
                j6 = j19;
                jArr2 = jArrCopyOf2;
                iArr2 = iArrCopyOf2;
            } else {
                i13 = iL8;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Inconsistent stbl box for track ");
            track2 = track;
            sb.append(track2.id);
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
            Log.i(TAG, sb.toString());
            i14 = sampleCount;
            jArr = jArrCopyOf;
            iArr = iArrCopyOf;
            i15 = i38;
            j6 = j19;
            jArr2 = jArrCopyOf2;
            iArr2 = iArrCopyOf2;
        }
        long jX1 = Util.X0(j6, 1000000L, track2.timescale);
        long[] jArr12 = track2.editListDurations;
        if (jArr12 == null) {
            Util.Z0(jArr2, 1000000L, track2.timescale);
            return new TrackSampleTable(track, jArr, iArr, i15, jArr2, iArr2, jX1);
        }
        if (jArr12.length == 1 && track2.type == 1 && jArr2.length >= 2) {
            long j20 = ((long[]) Assertions.e(track2.editListMediaTimes))[0];
            long jX2 = j20 + Util.X0(track2.editListDurations[0], track2.timescale, track2.movieTimescale);
            i17 = i14;
            if (b(jArr2, j6, j20, jX2)) {
                long jX3 = Util.X0(j20 - jArr2[0], track2.format.sampleRate, track2.timescale);
                i18 = i15;
                long jX4 = Util.X0(j6 - jX2, track2.format.sampleRate, track2.timescale);
                if ((jX3 != 0 || jX4 != 0) && jX3 <= 2147483647L && jX4 <= 2147483647L) {
                    gaplessInfoHolder.encoderDelay = (int) jX3;
                    gaplessInfoHolder.encoderPadding = (int) jX4;
                    Util.Z0(jArr2, 1000000L, track2.timescale);
                    return new TrackSampleTable(track, jArr, iArr, i18, jArr2, iArr2, Util.X0(track2.editListDurations[0], 1000000L, track2.movieTimescale));
                }
            }
            jArr3 = track2.editListDurations;
            if (jArr3.length != 1 && jArr3[0] == 0) {
                long j21 = ((long[]) Assertions.e(track2.editListMediaTimes))[0];
                for (int i53 = 0; i53 < jArr2.length; i53++) {
                    jArr2[i53] = Util.X0(jArr2[i53] - j21, 1000000L, track2.timescale);
                }
                return new TrackSampleTable(track, jArr, iArr, i18, jArr2, iArr2, Util.X0(j6 - j21, 1000000L, track2.timescale));
            }
            if (track2.type == 1) {
                z11 = true;
            } else {
                z11 = false;
            }
            iArr3 = new int[jArr3.length];
            iArr4 = new int[jArr3.length];
            jArr4 = (long[]) Assertions.e(track2.editListMediaTimes);
            i19 = 0;
            z12 = false;
            i20 = 0;
            i21 = 0;
            while (true) {
                jArr5 = track2.editListDurations;
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
                    long jX5 = Util.X0(jArr5[i19], track2.timescale, track2.movieTimescale);
                    iArr3[i19] = Util.i(jArr2, j12, true, true);
                    iArr4[i19] = Util.e(jArr2, j12 + jX5, z11, false);
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
            while (i22 < track2.editListDurations.length) {
                j11 = track2.editListMediaTimes[i22];
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
                    long jX6 = Util.X0(j10, 1000000L, track2.movieTimescale);
                    long[] jArr14 = jArr2;
                    int[] iArr16 = iArr2;
                    jX0 = Util.X0(jArr2[i26] - j11, 1000000L, track2.timescale);
                    int[] iArr17 = iArr7;
                    long j22 = j10;
                    if (c(track2.type)) {
                        jX0 = Math.max(0L, jX0);
                    }
                    jArr8[i25] = jX6 + jX0;
                    if (z13) {
                        i30 = i29;
                        if (iArr6[i25] > i30) {
                            i28 = iArr9[i26];
                        }
                        i25++;
                        i26++;
                        i27 = i56;
                        jArr2 = jArr14;
                        iArr2 = iArr16;
                        j10 = j22;
                        iArr7 = iArr17;
                    } else {
                        i30 = i29;
                    }
                    i28 = i30;
                    i25++;
                    i26++;
                    i27 = i56;
                    jArr2 = jArr14;
                    iArr2 = iArr16;
                    j10 = j22;
                    iArr7 = iArr17;
                }
                long[] jArr15 = jArr2;
                long j23 = j10 + track2.editListDurations[i22];
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
            return new TrackSampleTable(track, jArr7, iArr6, i24, jArr8, iArr7, Util.X0(j10, 1000000L, track2.movieTimescale));
        }
        i17 = i14;
        i18 = i15;
        jArr3 = track2.editListDurations;
        if (jArr3.length != 1) {
        }
        if (track2.type == 1) {
            z11 = true;
        } else {
            z11 = false;
        }
        iArr3 = new int[jArr3.length];
        iArr4 = new int[jArr3.length];
        jArr4 = (long[]) Assertions.e(track2.editListMediaTimes);
        i19 = 0;
        z12 = false;
        i20 = 0;
        i21 = 0;
        while (true) {
            jArr5 = track2.editListDurations;
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
                long jX7 = Util.X0(jArr5[i19], track2.timescale, track2.movieTimescale);
                iArr3[i19] = Util.i(jArr2, j12, true, true);
                iArr4[i19] = Util.e(jArr2, j12 + jX7, z11, false);
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
        while (i22 < track2.editListDurations.length) {
            j11 = track2.editListMediaTimes[i22];
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
                long jX8 = Util.X0(j10, 1000000L, track2.movieTimescale);
                long[] jArr17 = jArr2;
                int[] iArr111 = iArr2;
                jX0 = Util.X0(jArr2[i26] - j11, 1000000L, track2.timescale);
                int[] iArr112 = iArr7;
                long j24 = j10;
                if (c(track2.type)) {
                    jX0 = Math.max(0L, jX0);
                }
                jArr8[i25] = jX8 + jX0;
                if (z13) {
                    i30 = i29;
                    if (iArr6[i25] > i30) {
                        i28 = iArr9[i26];
                    }
                    i25++;
                    i26++;
                    i27 = i59;
                    jArr2 = jArr17;
                    iArr2 = iArr111;
                    j10 = j24;
                    iArr7 = iArr112;
                } else {
                    i30 = i29;
                }
                i28 = i30;
                i25++;
                i26++;
                i27 = i59;
                jArr2 = jArr17;
                iArr2 = iArr111;
                j10 = j24;
                iArr7 = iArr112;
            }
            long[] jArr18 = jArr2;
            long j25 = j10 + track2.editListDurations[i22];
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
        return new TrackSampleTable(track, jArr7, iArr6, i24, jArr8, iArr7, Util.X0(j10, 1000000L, track2.movieTimescale));
    }

    public static final class MvhdInfo {
        public final Metadata metadata;
        public final long timescale;

        public MvhdInfo(Metadata metadata, long j6) {
            this.metadata = metadata;
            this.timescale = j6;
        }
    }

    private static final class StsdData {
        public static final int STSD_HEADER_SIZE = 8;

        @Nullable
        public Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i10) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i10];
        }
    }

    public static final class UdtaInfo {

        @Nullable
        public final Metadata metaMetadata;

        @Nullable
        public final Metadata smtaMetadata;

        @Nullable
        public final Metadata xyzMetadata;

        public UdtaInfo(@Nullable Metadata metadata, @Nullable Metadata metadata2, @Nullable Metadata metadata3) {
            this.metaMetadata = metadata;
            this.smtaMetadata = metadata2;
            this.xyzMetadata = metadata3;
        }
    }

    @Nullable
    private static Track A(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom, long j6, @Nullable DrmInitData drmInitData, boolean z6, boolean z10) throws ParserException {
        long[] jArr;
        long[] jArr2;
        Atom.ContainerAtom containerAtomF;
        Pair<long[], long[]> pairI;
        Atom.ContainerAtom containerAtom2 = (Atom.ContainerAtom) Assertions.e(containerAtom.f(1835297121));
        int iE = e(l(((Atom.LeafAtom) Assertions.e(containerAtom2.g(1751411826))).data));
        if (iE == -1) {
            return null;
        }
        TkhdData tkhdDataZ = z(((Atom.LeafAtom) Assertions.e(containerAtom.g(1953196132))).data);
        long j10 = j6 == -9223372036854775807L ? tkhdDataZ.duration : j6;
        long j11 = q(leafAtom.data).timescale;
        long jX0 = j10 != -9223372036854775807L ? Util.X0(j10, 1000000L, j11) : -9223372036854775807L;
        Atom.ContainerAtom containerAtom3 = (Atom.ContainerAtom) Assertions.e(((Atom.ContainerAtom) Assertions.e(containerAtom2.f(1835626086))).f(1937007212));
        Pair<Long, String> pairN = n(((Atom.LeafAtom) Assertions.e(containerAtom2.g(1835296868))).data);
        Atom.LeafAtom leafAtomG = containerAtom3.g(1937011556);
        if (leafAtomG == null) {
            throw ParserException.a("Malformed sample table (stbl) missing sample description (stsd)", null);
        }
        StsdData stsdDataX = x(leafAtomG.data, tkhdDataZ.id, tkhdDataZ.rotationDegrees, (String) pairN.second, drmInitData, z10);
        if (z6 || (containerAtomF = containerAtom.f(1701082227)) == null || (pairI = i(containerAtomF)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) pairI.first;
            jArr2 = (long[]) pairI.second;
            jArr = jArr3;
        }
        if (stsdDataX.format == null) {
            return null;
        }
        return new Track(tkhdDataZ.id, iE, ((Long) pairN.first).longValue(), j11, jX0, stsdDataX.format, stsdDataX.requiredSampleTransformation, stsdDataX.trackEncryptionBoxes, stsdDataX.nalUnitLengthFieldLength, jArr, jArr2);
    }

    public static UdtaInfo C(Atom.LeafAtom leafAtom) {
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.U(8);
        Metadata metadataD = null;
        Metadata metadataV = null;
        Metadata metadataF = null;
        while (parsableByteArray.a() >= 8) {
            int iF = parsableByteArray.f();
            int iQ = parsableByteArray.q();
            int iQ2 = parsableByteArray.q();
            if (iQ2 == 1835365473) {
                parsableByteArray.U(iF);
                metadataD = D(parsableByteArray, iF + iQ);
            } else if (iQ2 == 1936553057) {
                parsableByteArray.U(iF);
                metadataV = v(parsableByteArray, iF + iQ);
            } else if (iQ2 == -1451722374) {
                metadataF = F(parsableByteArray);
            }
            parsableByteArray.U(iF + iQ);
        }
        return new UdtaInfo(metadataD, metadataV, metadataF);
    }

    @Nullable
    private static Metadata D(ParsableByteArray parsableByteArray, int i10) {
        parsableByteArray.V(8);
        f(parsableByteArray);
        while (parsableByteArray.f() < i10) {
            int iF = parsableByteArray.f();
            int iQ = parsableByteArray.q();
            if (parsableByteArray.q() == 1768715124) {
                parsableByteArray.U(iF);
                return m(parsableByteArray, iF + iQ);
            }
            parsableByteArray.U(iF + iQ);
        }
        return null;
    }

    private static ByteBuffer a() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    @Nullable
    static Pair<Integer, TrackEncryptionBox> h(ParsableByteArray parsableByteArray, int i10, int i11) throws ParserException {
        int i12 = i10 + 8;
        int i13 = -1;
        int i14 = 0;
        String strE = null;
        Integer numValueOf = null;
        while (i12 - i10 < i11) {
            parsableByteArray.U(i12);
            int iQ = parsableByteArray.q();
            int iQ2 = parsableByteArray.q();
            if (iQ2 == 1718775137) {
                numValueOf = Integer.valueOf(parsableByteArray.q());
            } else if (iQ2 == 1935894637) {
                parsableByteArray.V(4);
                strE = parsableByteArray.E(4);
            } else if (iQ2 == 1935894633) {
                i13 = i12;
                i14 = iQ;
            }
            i12 += iQ;
        }
        if (!"cenc".equals(strE) && !"cbc1".equals(strE) && !"cens".equals(strE) && !"cbcs".equals(strE)) {
            return null;
        }
        ExtractorUtil.a(numValueOf != null, "frma atom is mandatory");
        ExtractorUtil.a(i13 != -1, "schi atom is mandatory");
        TrackEncryptionBox trackEncryptionBoxU = u(parsableByteArray, i13, i14, strE);
        ExtractorUtil.a(trackEncryptionBoxU != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, (TrackEncryptionBox) Util.j(trackEncryptionBoxU));
    }

    private static EsdsData j(ParsableByteArray parsableByteArray, int i10) {
        parsableByteArray.U(i10 + 12);
        parsableByteArray.V(1);
        k(parsableByteArray);
        parsableByteArray.V(2);
        int iH = parsableByteArray.H();
        if ((iH & 128) != 0) {
            parsableByteArray.V(2);
        }
        if ((iH & 64) != 0) {
            parsableByteArray.V(parsableByteArray.H());
        }
        if ((iH & 32) != 0) {
            parsableByteArray.V(2);
        }
        parsableByteArray.V(1);
        k(parsableByteArray);
        String strH = MimeTypes.h(parsableByteArray.H());
        if ("audio/mpeg".equals(strH) || "audio/vnd.dts".equals(strH) || "audio/vnd.dts.hd".equals(strH)) {
            return new EsdsData(strH, null, -1L, -1L);
        }
        parsableByteArray.V(4);
        long J = parsableByteArray.J();
        long J2 = parsableByteArray.J();
        parsableByteArray.V(1);
        int iK = k(parsableByteArray);
        byte[] bArr = new byte[iK];
        parsableByteArray.l(bArr, 0, iK);
        return new EsdsData(strH, bArr, J2 > 0 ? J2 : -1L, J > 0 ? J : -1L);
    }

    private static int l(ParsableByteArray parsableByteArray) {
        parsableByteArray.U(16);
        return parsableByteArray.q();
    }

    @Nullable
    private static Metadata m(ParsableByteArray parsableByteArray, int i10) {
        parsableByteArray.V(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.f() < i10) {
            Metadata.Entry entryC = MetadataUtil.c(parsableByteArray);
            if (entryC != null) {
                arrayList.add(entryC);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Pair<Long, String> n(ParsableByteArray parsableByteArray) {
        parsableByteArray.U(8);
        int iC = Atom.c(parsableByteArray.q());
        parsableByteArray.V(iC == 0 ? 8 : 16);
        long J = parsableByteArray.J();
        parsableByteArray.V(iC == 0 ? 4 : 8);
        int iN = parsableByteArray.N();
        return Pair.create(Long.valueOf(J), "" + ((char) (((iN >> 10) & 31) + 96)) + ((char) (((iN >> 5) & 31) + 96)) + ((char) ((iN & 31) + 96)));
    }

    private static void p(ParsableByteArray parsableByteArray, int i10, int i11, int i12, StsdData stsdData) {
        parsableByteArray.U(i11 + 16);
        if (i10 == 1835365492) {
            parsableByteArray.B();
            String strB = parsableByteArray.B();
            if (strB != null) {
                stsdData.format = new Format.Builder().T(i12).g0(strB).G();
            }
        }
    }

    public static MvhdInfo q(ParsableByteArray parsableByteArray) {
        long J;
        parsableByteArray.U(8);
        if (Atom.c(parsableByteArray.q()) == 0) {
            J = parsableByteArray.J();
            parsableByteArray.V(4);
        } else {
            long jA = parsableByteArray.A();
            parsableByteArray.V(8);
            J = jA;
        }
        return new MvhdInfo(new Metadata(new CreationTime((J - ((long) 2082844800)) * 1000)), parsableByteArray.J());
    }

    private static float r(ParsableByteArray parsableByteArray, int i10) {
        parsableByteArray.U(i10 + 8);
        return parsableByteArray.L() / parsableByteArray.L();
    }

    @Nullable
    private static byte[] s(ParsableByteArray parsableByteArray, int i10, int i11) {
        int i12 = i10 + 8;
        while (i12 - i10 < i11) {
            parsableByteArray.U(i12);
            int iQ = parsableByteArray.q();
            if (parsableByteArray.q() == 1886547818) {
                return Arrays.copyOfRange(parsableByteArray.e(), i12, iQ + i12);
            }
            i12 += iQ;
        }
        return null;
    }

    @Nullable
    private static TrackEncryptionBox u(ParsableByteArray parsableByteArray, int i10, int i11, String str) {
        int i12;
        int i13;
        int i14 = i10 + 8;
        while (true) {
            byte[] bArr = null;
            if (i14 - i10 >= i11) {
                return null;
            }
            parsableByteArray.U(i14);
            int iQ = parsableByteArray.q();
            if (parsableByteArray.q() == 1952804451) {
                int iC = Atom.c(parsableByteArray.q());
                parsableByteArray.V(1);
                if (iC == 0) {
                    parsableByteArray.V(1);
                    i13 = 0;
                    i12 = 0;
                } else {
                    int iH = parsableByteArray.H();
                    i12 = iH & 15;
                    i13 = (iH & 240) >> 4;
                }
                boolean z6 = parsableByteArray.H() == 1;
                int iH2 = parsableByteArray.H();
                byte[] bArr2 = new byte[16];
                parsableByteArray.l(bArr2, 0, 16);
                if (z6 && iH2 == 0) {
                    int iH3 = parsableByteArray.H();
                    bArr = new byte[iH3];
                    parsableByteArray.l(bArr, 0, iH3);
                }
                return new TrackEncryptionBox(z6, str, iH2, bArr2, i13, i12, bArr);
            }
            i14 += iQ;
        }
    }

    @Nullable
    private static Metadata v(ParsableByteArray parsableByteArray, int i10) {
        parsableByteArray.V(12);
        while (parsableByteArray.f() < i10) {
            int iF = parsableByteArray.f();
            int iQ = parsableByteArray.q();
            if (parsableByteArray.q() == 1935766900) {
                if (iQ < 14) {
                    return null;
                }
                parsableByteArray.V(5);
                int iH = parsableByteArray.H();
                if (iH != 12 && iH != 13) {
                    return null;
                }
                float f = iH == 12 ? 240.0f : 120.0f;
                parsableByteArray.V(1);
                return new Metadata(new SmtaMetadataEntry(f, parsableByteArray.H()));
            }
            parsableByteArray.U(iF + iQ);
        }
        return null;
    }

    private static StsdData x(ParsableByteArray parsableByteArray, int i10, int i11, String str, @Nullable DrmInitData drmInitData, boolean z6) throws ParserException {
        int i12;
        parsableByteArray.U(12);
        int iQ = parsableByteArray.q();
        StsdData stsdData = new StsdData(iQ);
        for (int i13 = 0; i13 < iQ; i13++) {
            int iF = parsableByteArray.f();
            int iQ2 = parsableByteArray.q();
            ExtractorUtil.a(iQ2 > 0, "childAtomSize must be positive");
            int iQ3 = parsableByteArray.q();
            if (iQ3 == 1635148593 || iQ3 == 1635148595 || iQ3 == 1701733238 || iQ3 == 1831958048 || iQ3 == 1836070006 || iQ3 == 1752589105 || iQ3 == 1751479857 || iQ3 == 1932670515 || iQ3 == 1211250227 || iQ3 == 1987063864 || iQ3 == 1987063865 || iQ3 == 1635135537 || iQ3 == 1685479798 || iQ3 == 1685479729 || iQ3 == 1685481573 || iQ3 == 1685481521) {
                i12 = iF;
                E(parsableByteArray, iQ3, i12, iQ2, i10, i11, drmInitData, stsdData, i13);
            } else if (iQ3 == 1836069985 || iQ3 == 1701733217 || iQ3 == 1633889587 || iQ3 == 1700998451 || iQ3 == 1633889588 || iQ3 == 1835823201 || iQ3 == 1685353315 || iQ3 == 1685353317 || iQ3 == 1685353320 || iQ3 == 1685353324 || iQ3 == 1685353336 || iQ3 == 1935764850 || iQ3 == 1935767394 || iQ3 == 1819304813 || iQ3 == 1936684916 || iQ3 == 1953984371 || iQ3 == 778924082 || iQ3 == 778924083 || iQ3 == 1835557169 || iQ3 == 1835560241 || iQ3 == 1634492771 || iQ3 == 1634492791 || iQ3 == 1970037111 || iQ3 == 1332770163 || iQ3 == 1716281667) {
                i12 = iF;
                g(parsableByteArray, iQ3, iF, iQ2, i10, str, z6, drmInitData, stsdData, i13);
            } else {
                if (iQ3 == 1414810956 || iQ3 == 1954034535 || iQ3 == 2004251764 || iQ3 == 1937010800 || iQ3 == 1664495672) {
                    y(parsableByteArray, iQ3, iF, iQ2, i10, str, stsdData);
                } else if (iQ3 == 1835365492) {
                    p(parsableByteArray, iQ3, iF, i10, stsdData);
                } else if (iQ3 == 1667329389) {
                    stsdData.format = new Format.Builder().T(i10).g0("application/x-camera-motion").G();
                }
                i12 = iF;
            }
            parsableByteArray.U(i12 + iQ2);
        }
        return stsdData;
    }

    private static void y(ParsableByteArray parsableByteArray, int i10, int i11, int i12, int i13, String str, StsdData stsdData) {
        parsableByteArray.U(i11 + 16);
        String str2 = "application/ttml+xml";
        a0 a0VarY = null;
        long j6 = Long.MAX_VALUE;
        if (i10 != 1414810956) {
            if (i10 == 1954034535) {
                int i14 = i12 - 16;
                byte[] bArr = new byte[i14];
                parsableByteArray.l(bArr, 0, i14);
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
                stsdData.requiredSampleTransformation = 1;
                str2 = "application/x-mp4-cea-608";
            }
        }
        stsdData.format = new Format.Builder().T(i13).g0(str2).X(str).k0(j6).V(a0VarY).G();
    }

    private static TkhdData z(ParsableByteArray parsableByteArray) {
        long j6;
        parsableByteArray.U(8);
        int iC = Atom.c(parsableByteArray.q());
        parsableByteArray.V(iC == 0 ? 8 : 16);
        int iQ = parsableByteArray.q();
        parsableByteArray.V(4);
        int iF = parsableByteArray.f();
        int i10 = iC == 0 ? 4 : 8;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            j6 = -9223372036854775807L;
            if (i12 >= i10) {
                parsableByteArray.V(i10);
                break;
            }
            if (parsableByteArray.e()[iF + i12] != -1) {
                long J = iC == 0 ? parsableByteArray.J() : parsableByteArray.M();
                if (J == 0) {
                    break;
                }
                j6 = J;
                break;
            }
            i12++;
        }
        parsableByteArray.V(16);
        int iQ2 = parsableByteArray.q();
        int iQ3 = parsableByteArray.q();
        parsableByteArray.V(4);
        int iQ4 = parsableByteArray.q();
        int iQ5 = parsableByteArray.q();
        if (iQ2 == 0 && iQ3 == 65536 && iQ4 == -65536 && iQ5 == 0) {
            i11 = 90;
        } else if (iQ2 == 0 && iQ3 == -65536 && iQ4 == 65536 && iQ5 == 0) {
            i11 = 270;
        } else if (iQ2 == -65536 && iQ3 == 0 && iQ4 == 0 && iQ5 == -65536) {
            i11 = 180;
        }
        return new TkhdData(iQ, j6, i11);
    }

    private AtomParsers() {
    }

    @Nullable
    private static Metadata F(ParsableByteArray parsableByteArray) {
        short sD = parsableByteArray.D();
        parsableByteArray.V(2);
        String strE = parsableByteArray.E(sD);
        int iMax = Math.max(strE.lastIndexOf(43), strE.lastIndexOf(45));
        try {
            return new Metadata(new Mp4LocationData(Float.parseFloat(strE.substring(0, iMax)), Float.parseFloat(strE.substring(iMax, strE.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    private static int d(ParsableByteArray parsableByteArray, int i10, int i11, int i12) throws ParserException {
        boolean z6;
        boolean z10;
        int iF = parsableByteArray.f();
        if (iF >= i11) {
            z6 = true;
        } else {
            z6 = false;
        }
        ExtractorUtil.a(z6, null);
        while (iF - i11 < i12) {
            parsableByteArray.U(iF);
            int iQ = parsableByteArray.q();
            if (iQ > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            ExtractorUtil.a(z10, "childAtomSize must be positive");
            if (parsableByteArray.q() == i10) {
                return iF;
            }
            iF += iQ;
        }
        return -1;
    }

    public static void f(ParsableByteArray parsableByteArray) {
        int iF = parsableByteArray.f();
        parsableByteArray.V(4);
        if (parsableByteArray.q() != 1751411826) {
            iF += 4;
        }
        parsableByteArray.U(iF);
    }

    @Nullable
    private static Pair<long[], long[]> i(Atom.ContainerAtom containerAtom) {
        long J;
        long jQ;
        Atom.LeafAtom leafAtomG = containerAtom.g(1701606260);
        if (leafAtomG == null) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtomG.data;
        parsableByteArray.U(8);
        int iC = Atom.c(parsableByteArray.q());
        int iL = parsableByteArray.L();
        long[] jArr = new long[iL];
        long[] jArr2 = new long[iL];
        for (int i10 = 0; i10 < iL; i10++) {
            if (iC == 1) {
                J = parsableByteArray.M();
            } else {
                J = parsableByteArray.J();
            }
            jArr[i10] = J;
            if (iC == 1) {
                jQ = parsableByteArray.A();
            } else {
                jQ = parsableByteArray.q();
            }
            jArr2[i10] = jQ;
            if (parsableByteArray.D() == 1) {
                parsableByteArray.V(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static int k(ParsableByteArray parsableByteArray) {
        int iH = parsableByteArray.H();
        int i10 = iH & 127;
        while ((iH & 128) == 128) {
            iH = parsableByteArray.H();
            i10 = (i10 << 7) | (iH & 127);
        }
        return i10;
    }

    @Nullable
    public static Metadata o(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomG = containerAtom.g(1751411826);
        Atom.LeafAtom leafAtomG2 = containerAtom.g(1801812339);
        Atom.LeafAtom leafAtomG3 = containerAtom.g(1768715124);
        if (leafAtomG == null || leafAtomG2 == null || leafAtomG3 == null || l(leafAtomG.data) != TYPE_mdta) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtomG2.data;
        parsableByteArray.U(12);
        int iQ = parsableByteArray.q();
        String[] strArr = new String[iQ];
        for (int i10 = 0; i10 < iQ; i10++) {
            int iQ2 = parsableByteArray.q();
            parsableByteArray.V(4);
            strArr[i10] = parsableByteArray.E(iQ2 - 8);
        }
        ParsableByteArray parsableByteArray2 = leafAtomG3.data;
        parsableByteArray2.U(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray2.a() > 8) {
            int iF = parsableByteArray2.f();
            int iQ3 = parsableByteArray2.q();
            int iQ4 = parsableByteArray2.q() - 1;
            if (iQ4 >= 0 && iQ4 < iQ) {
                MdtaMetadataEntry mdtaMetadataEntryF = MetadataUtil.f(parsableByteArray2, iF + iQ3, strArr[iQ4]);
                if (mdtaMetadataEntryF != null) {
                    arrayList.add(mdtaMetadataEntryF);
                }
            } else {
                Log.i(TAG, "Skipped metadata with unknown key index: " + iQ4);
            }
            parsableByteArray2.U(iF + iQ3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    @Nullable
    private static Pair<Integer, TrackEncryptionBox> t(ParsableByteArray parsableByteArray, int i10, int i11) throws ParserException {
        boolean z6;
        Pair<Integer, TrackEncryptionBox> pairH;
        int iF = parsableByteArray.f();
        while (iF - i10 < i11) {
            parsableByteArray.U(iF);
            int iQ = parsableByteArray.q();
            if (iQ > 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            ExtractorUtil.a(z6, "childAtomSize must be positive");
            if (parsableByteArray.q() == 1936289382 && (pairH = h(parsableByteArray, iF, iQ)) != null) {
                return pairH;
            }
            iF += iQ;
        }
        return null;
    }
}
