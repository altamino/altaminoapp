package androidx.media3.extractor.ts;

import android.net.Uri;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class TsExtractor implements Extractor {
    private static final long AC3_FORMAT_IDENTIFIER = 1094921523;
    private static final long AC4_FORMAT_IDENTIFIER = 1094921524;
    private static final int BUFFER_SIZE = 9400;
    public static final int DEFAULT_TIMESTAMP_SEARCH_BYTES = 112800;
    private static final long E_AC3_FORMAT_IDENTIFIER = 1161904947;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.ts.e
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return androidx.media3.extractor.e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return TsExtractor.v();
        }
    };
    private static final long HEVC_FORMAT_IDENTIFIER = 1212503619;
    private static final int MAX_PID_PLUS_ONE = 8192;
    public static final int MODE_HLS = 2;
    public static final int MODE_MULTI_PMT = 0;
    public static final int MODE_SINGLE_PMT = 1;
    private static final int SNIFF_TS_PACKET_COUNT = 5;
    public static final int TS_PACKET_SIZE = 188;
    private static final int TS_PAT_PID = 0;
    public static final int TS_STREAM_TYPE_AAC_ADTS = 15;
    public static final int TS_STREAM_TYPE_AAC_LATM = 17;
    public static final int TS_STREAM_TYPE_AC3 = 129;
    public static final int TS_STREAM_TYPE_AC4 = 172;
    public static final int TS_STREAM_TYPE_AIT = 257;
    public static final int TS_STREAM_TYPE_DC2_H262 = 128;
    public static final int TS_STREAM_TYPE_DTS = 138;
    public static final int TS_STREAM_TYPE_DVBSUBS = 89;
    public static final int TS_STREAM_TYPE_E_AC3 = 135;
    public static final int TS_STREAM_TYPE_H262 = 2;
    public static final int TS_STREAM_TYPE_H263 = 16;
    public static final int TS_STREAM_TYPE_H264 = 27;
    public static final int TS_STREAM_TYPE_H265 = 36;
    public static final int TS_STREAM_TYPE_HDMV_DTS = 130;
    public static final int TS_STREAM_TYPE_ID3 = 21;
    public static final int TS_STREAM_TYPE_MPA = 3;
    public static final int TS_STREAM_TYPE_MPA_LSF = 4;
    public static final int TS_STREAM_TYPE_SPLICE_INFO = 134;
    public static final int TS_SYNC_BYTE = 71;
    private int bytesSinceLastSync;
    private final SparseIntArray continuityCounters;
    private final TsDurationReader durationReader;
    private boolean hasOutputSeekMap;

    @Nullable
    private TsPayloadReader id3Reader;
    private final int mode;
    private ExtractorOutput output;
    private final TsPayloadReader.Factory payloadReaderFactory;
    private int pcrPid;
    private boolean pendingSeekToStart;
    private int remainingPmts;
    private final List<TimestampAdjuster> timestampAdjusters;
    private final int timestampSearchBytes;
    private final SparseBooleanArray trackIds;
    private final SparseBooleanArray trackPids;
    private boolean tracksEnded;
    private TsBinarySearchSeeker tsBinarySearchSeeker;
    private final ParsableByteArray tsPacketBuffer;
    private final SparseArray<TsPayloadReader> tsPayloadReaders;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    private class PatReader implements SectionPayloadReader {
        private final ParsableBitArray patScratch = new ParsableBitArray(new byte[4]);

        @Override // androidx.media3.extractor.ts.SectionPayloadReader
        public void b(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }

        public PatReader() {
        }

        @Override // androidx.media3.extractor.ts.SectionPayloadReader
        public void a(ParsableByteArray parsableByteArray) {
            if (parsableByteArray.H() != 0 || (parsableByteArray.H() & 128) == 0) {
                return;
            }
            parsableByteArray.V(6);
            int iA = parsableByteArray.a() / 4;
            for (int i10 = 0; i10 < iA; i10++) {
                parsableByteArray.k(this.patScratch, 4);
                int iH = this.patScratch.h(16);
                this.patScratch.r(3);
                if (iH == 0) {
                    this.patScratch.r(13);
                } else {
                    int iH2 = this.patScratch.h(13);
                    if (TsExtractor.this.tsPayloadReaders.get(iH2) == null) {
                        TsExtractor.this.tsPayloadReaders.put(iH2, new SectionReader(TsExtractor.this.new PmtReader(iH2)));
                        TsExtractor.j(TsExtractor.this);
                    }
                }
            }
            if (TsExtractor.this.mode != 2) {
                TsExtractor.this.tsPayloadReaders.remove(0);
            }
        }
    }

    private class PmtReader implements SectionPayloadReader {
        private static final int TS_PMT_DESC_AC3 = 106;
        private static final int TS_PMT_DESC_AIT = 111;
        private static final int TS_PMT_DESC_DTS = 123;
        private static final int TS_PMT_DESC_DVBSUBS = 89;
        private static final int TS_PMT_DESC_DVB_EXT = 127;
        private static final int TS_PMT_DESC_DVB_EXT_AC4 = 21;
        private static final int TS_PMT_DESC_EAC3 = 122;
        private static final int TS_PMT_DESC_ISO639_LANG = 10;
        private static final int TS_PMT_DESC_REGISTRATION = 5;
        private final int pid;
        private final ParsableBitArray pmtScratch = new ParsableBitArray(new byte[5]);
        private final SparseArray<TsPayloadReader> trackIdToReaderScratch = new SparseArray<>();
        private final SparseIntArray trackIdToPidScratch = new SparseIntArray();

        @Override // androidx.media3.extractor.ts.SectionPayloadReader
        public void b(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }

        public PmtReader(int i10) {
            this.pid = i10;
        }

        @Override // androidx.media3.extractor.ts.SectionPayloadReader
        public void a(ParsableByteArray parsableByteArray) {
            TimestampAdjuster timestampAdjuster;
            if (parsableByteArray.H() != 2) {
                return;
            }
            if (TsExtractor.this.mode == 1 || TsExtractor.this.mode == 2 || TsExtractor.this.remainingPmts == 1) {
                timestampAdjuster = (TimestampAdjuster) TsExtractor.this.timestampAdjusters.get(0);
            } else {
                timestampAdjuster = new TimestampAdjuster(((TimestampAdjuster) TsExtractor.this.timestampAdjusters.get(0)).c());
                TsExtractor.this.timestampAdjusters.add(timestampAdjuster);
            }
            if ((parsableByteArray.H() & 128) == 0) {
                return;
            }
            parsableByteArray.V(1);
            int iN = parsableByteArray.N();
            int i10 = 3;
            parsableByteArray.V(3);
            parsableByteArray.k(this.pmtScratch, 2);
            this.pmtScratch.r(3);
            int i11 = 13;
            TsExtractor.this.pcrPid = this.pmtScratch.h(13);
            parsableByteArray.k(this.pmtScratch, 2);
            int i12 = 4;
            this.pmtScratch.r(4);
            parsableByteArray.V(this.pmtScratch.h(12));
            if (TsExtractor.this.mode == 2 && TsExtractor.this.id3Reader == null) {
                TsPayloadReader.EsInfo esInfo = new TsPayloadReader.EsInfo(21, null, null, Util.EMPTY_BYTE_ARRAY);
                TsExtractor tsExtractor = TsExtractor.this;
                tsExtractor.id3Reader = tsExtractor.payloadReaderFactory.a(21, esInfo);
                if (TsExtractor.this.id3Reader != null) {
                    TsExtractor.this.id3Reader.b(timestampAdjuster, TsExtractor.this.output, new TsPayloadReader.TrackIdGenerator(iN, 21, 8192));
                }
            }
            this.trackIdToReaderScratch.clear();
            this.trackIdToPidScratch.clear();
            int iA = parsableByteArray.a();
            while (iA > 0) {
                parsableByteArray.k(this.pmtScratch, 5);
                int iH = this.pmtScratch.h(8);
                this.pmtScratch.r(i10);
                int iH2 = this.pmtScratch.h(i11);
                this.pmtScratch.r(i12);
                int iH3 = this.pmtScratch.h(12);
                TsPayloadReader.EsInfo esInfoC = c(parsableByteArray, iH3);
                if (iH == 6 || iH == 5) {
                    iH = esInfoC.streamType;
                }
                iA -= iH3 + 5;
                int i13 = TsExtractor.this.mode == 2 ? iH : iH2;
                if (!TsExtractor.this.trackIds.get(i13)) {
                    TsPayloadReader tsPayloadReaderA = (TsExtractor.this.mode == 2 && iH == 21) ? TsExtractor.this.id3Reader : TsExtractor.this.payloadReaderFactory.a(iH, esInfoC);
                    if (TsExtractor.this.mode != 2 || iH2 < this.trackIdToPidScratch.get(i13, 8192)) {
                        this.trackIdToPidScratch.put(i13, iH2);
                        this.trackIdToReaderScratch.put(i13, tsPayloadReaderA);
                    }
                }
                i10 = 3;
                i12 = 4;
                i11 = 13;
            }
            int size = this.trackIdToPidScratch.size();
            for (int i14 = 0; i14 < size; i14++) {
                int iKeyAt = this.trackIdToPidScratch.keyAt(i14);
                int iValueAt = this.trackIdToPidScratch.valueAt(i14);
                TsExtractor.this.trackIds.put(iKeyAt, true);
                TsExtractor.this.trackPids.put(iValueAt, true);
                TsPayloadReader tsPayloadReaderValueAt = this.trackIdToReaderScratch.valueAt(i14);
                if (tsPayloadReaderValueAt != null) {
                    if (tsPayloadReaderValueAt != TsExtractor.this.id3Reader) {
                        tsPayloadReaderValueAt.b(timestampAdjuster, TsExtractor.this.output, new TsPayloadReader.TrackIdGenerator(iN, iKeyAt, 8192));
                    }
                    TsExtractor.this.tsPayloadReaders.put(iValueAt, tsPayloadReaderValueAt);
                }
            }
            if (TsExtractor.this.mode == 2) {
                if (TsExtractor.this.tracksEnded) {
                    return;
                }
                TsExtractor.this.output.endTracks();
                TsExtractor.this.remainingPmts = 0;
                TsExtractor.this.tracksEnded = true;
                return;
            }
            TsExtractor.this.tsPayloadReaders.remove(this.pid);
            TsExtractor tsExtractor2 = TsExtractor.this;
            tsExtractor2.remainingPmts = tsExtractor2.mode == 1 ? 0 : TsExtractor.this.remainingPmts - 1;
            if (TsExtractor.this.remainingPmts == 0) {
                TsExtractor.this.output.endTracks();
                TsExtractor.this.tracksEnded = true;
            }
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0043  */
        /* JADX WARN: Code duplicated, block: B:24:0x0055  */
        /* JADX WARN: Code duplicated, block: B:27:0x005b  */
        private TsPayloadReader.EsInfo c(ParsableByteArray parsableByteArray, int i10) {
            int iF = parsableByteArray.f();
            int i11 = i10 + iF;
            int i12 = -1;
            String strTrim = null;
            ArrayList arrayList = null;
            while (parsableByteArray.f() < i11) {
                int iH = parsableByteArray.H();
                int iF2 = parsableByteArray.f() + parsableByteArray.H();
                if (iF2 > i11) {
                    break;
                }
                if (iH == 5) {
                    long J = parsableByteArray.J();
                    if (J != TsExtractor.AC3_FORMAT_IDENTIFIER) {
                        if (J != TsExtractor.E_AC3_FORMAT_IDENTIFIER) {
                            if (J == TsExtractor.AC4_FORMAT_IDENTIFIER) {
                                i12 = 172;
                            } else if (J == TsExtractor.HEVC_FORMAT_IDENTIFIER) {
                                i12 = 36;
                            }
                        } else {
                            i12 = 135;
                        }
                    } else {
                        i12 = 129;
                    }
                } else if (iH == 106) {
                    i12 = 129;
                } else if (iH == 122) {
                    i12 = 135;
                } else if (iH == 127) {
                    if (parsableByteArray.H() == 21) {
                        i12 = 172;
                    }
                } else if (iH == 123) {
                    i12 = 138;
                } else if (iH == 10) {
                    strTrim = parsableByteArray.E(3).trim();
                } else if (iH == 89) {
                    ArrayList arrayList2 = new ArrayList();
                    while (parsableByteArray.f() < iF2) {
                        String strTrim2 = parsableByteArray.E(3).trim();
                        int iH2 = parsableByteArray.H();
                        byte[] bArr = new byte[4];
                        parsableByteArray.l(bArr, 0, 4);
                        arrayList2.add(new TsPayloadReader.DvbSubtitleInfo(strTrim2, iH2, bArr));
                    }
                    arrayList = arrayList2;
                    i12 = 89;
                } else if (iH == 111) {
                    i12 = 257;
                }
                parsableByteArray.V(iF2 - parsableByteArray.f());
            }
            parsableByteArray.U(i11);
            return new TsPayloadReader.EsInfo(i12, strTrim, arrayList, Arrays.copyOfRange(parsableByteArray.e(), iF, i11));
        }
    }

    public TsExtractor() {
        this(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] v() {
        return new Extractor[]{new TsExtractor()};
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    public TsExtractor(int i10) {
        this(1, i10, 112800);
    }

    static /* synthetic */ int j(TsExtractor tsExtractor) {
        int i10 = tsExtractor.remainingPmts;
        tsExtractor.remainingPmts = i10 + 1;
        return i10;
    }

    private boolean t(ExtractorInput extractorInput) throws IOException {
        byte[] bArrE = this.tsPacketBuffer.e();
        if (9400 - this.tsPacketBuffer.f() < 188) {
            int iA = this.tsPacketBuffer.a();
            if (iA > 0) {
                System.arraycopy(bArrE, this.tsPacketBuffer.f(), bArrE, 0, iA);
            }
            this.tsPacketBuffer.S(bArrE, iA);
        }
        while (this.tsPacketBuffer.a() < 188) {
            int iG = this.tsPacketBuffer.g();
            int i10 = extractorInput.read(bArrE, iG, 9400 - iG);
            if (i10 == -1) {
                return false;
            }
            this.tsPacketBuffer.T(iG + i10);
        }
        return true;
    }

    private int u() throws ParserException {
        int iF = this.tsPacketBuffer.f();
        int iG = this.tsPacketBuffer.g();
        int iA = TsUtil.a(this.tsPacketBuffer.e(), iF, iG);
        this.tsPacketBuffer.U(iA);
        int i10 = iA + 188;
        if (i10 > iG) {
            int i11 = this.bytesSinceLastSync + (iA - iF);
            this.bytesSinceLastSync = i11;
            if (this.mode == 2 && i11 > 376) {
                throw ParserException.a("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.bytesSinceLastSync = 0;
        }
        return i10;
    }

    private void w(long j6) {
        if (this.hasOutputSeekMap) {
            return;
        }
        this.hasOutputSeekMap = true;
        if (this.durationReader.b() == -9223372036854775807L) {
            this.output.d(new SeekMap.Unseekable(this.durationReader.b()));
            return;
        }
        TsBinarySearchSeeker tsBinarySearchSeeker = new TsBinarySearchSeeker(this.durationReader.c(), this.durationReader.b(), j6, this.pcrPid, this.timestampSearchBytes);
        this.tsBinarySearchSeeker = tsBinarySearchSeeker;
        this.output.d(tsBinarySearchSeeker.b());
    }

    private void x() {
        this.trackIds.clear();
        this.tsPayloadReaders.clear();
        SparseArray<TsPayloadReader> sparseArrayCreateInitialPayloadReaders = this.payloadReaderFactory.createInitialPayloadReaders();
        int size = sparseArrayCreateInitialPayloadReaders.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.tsPayloadReaders.put(sparseArrayCreateInitialPayloadReaders.keyAt(i10), sparseArrayCreateInitialPayloadReaders.valueAt(i10));
        }
        this.tsPayloadReaders.put(0, new SectionReader(new PatReader()));
        this.id3Reader = null;
    }

    private boolean y(int i10) {
        return this.mode == 2 || this.tracksEnded || !this.trackPids.get(i10, false);
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        long length = extractorInput.getLength();
        if (this.tracksEnded) {
            if (length != -1 && this.mode != 2 && !this.durationReader.d()) {
                return this.durationReader.e(extractorInput, positionHolder, this.pcrPid);
            }
            w(length);
            if (this.pendingSeekToStart) {
                this.pendingSeekToStart = false;
                seek(0L, 0L);
                if (extractorInput.getPosition() != 0) {
                    positionHolder.position = 0L;
                    return 1;
                }
            }
            TsBinarySearchSeeker tsBinarySearchSeeker = this.tsBinarySearchSeeker;
            if (tsBinarySearchSeeker != null && tsBinarySearchSeeker.d()) {
                return this.tsBinarySearchSeeker.c(extractorInput, positionHolder);
            }
        }
        if (!t(extractorInput)) {
            return -1;
        }
        int iU = u();
        int iG = this.tsPacketBuffer.g();
        if (iU > iG) {
            return 0;
        }
        int iQ = this.tsPacketBuffer.q();
        if ((8388608 & iQ) != 0) {
            this.tsPacketBuffer.U(iU);
            return 0;
        }
        int i10 = (4194304 & iQ) != 0 ? 1 : 0;
        int i11 = (2096896 & iQ) >> 8;
        boolean z6 = (iQ & 32) != 0;
        TsPayloadReader tsPayloadReader = (iQ & 16) != 0 ? this.tsPayloadReaders.get(i11) : null;
        if (tsPayloadReader == null) {
            this.tsPacketBuffer.U(iU);
            return 0;
        }
        if (this.mode != 2) {
            int i12 = iQ & 15;
            int i13 = this.continuityCounters.get(i11, i12 - 1);
            this.continuityCounters.put(i11, i12);
            if (i13 == i12) {
                this.tsPacketBuffer.U(iU);
                return 0;
            }
            if (i12 != ((i13 + 1) & 15)) {
                tsPayloadReader.seek();
            }
        }
        if (z6) {
            int iH = this.tsPacketBuffer.H();
            i10 |= (this.tsPacketBuffer.H() & 64) != 0 ? 2 : 0;
            this.tsPacketBuffer.V(iH - 1);
        }
        boolean z10 = this.tracksEnded;
        if (y(i11)) {
            this.tsPacketBuffer.T(iU);
            tsPayloadReader.a(this.tsPacketBuffer, i10);
            this.tsPacketBuffer.T(iG);
        }
        if (this.mode != 2 && !z10 && this.tracksEnded && length != -1) {
            this.pendingSeekToStart = true;
        }
        this.tsPacketBuffer.U(iU);
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        byte[] bArrE = this.tsPacketBuffer.e();
        extractorInput.peekFully(bArrE, 0, 940);
        for (int i10 = 0; i10 < 188; i10++) {
            int i11 = 0;
            while (true) {
                if (i11 >= 5) {
                    extractorInput.skipFully(i10);
                    return true;
                }
                if (bArrE[(i11 * 188) + i10] != 71) {
                    break;
                }
                i11++;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0045  */
    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        TsBinarySearchSeeker tsBinarySearchSeeker;
        Assertions.g(this.mode != 2);
        int size = this.timestampAdjusters.size();
        for (int i10 = 0; i10 < size; i10++) {
            TimestampAdjuster timestampAdjuster = this.timestampAdjusters.get(i10);
            boolean z6 = timestampAdjuster.e() == -9223372036854775807L;
            if (!z6) {
                long jC = timestampAdjuster.c();
                if (jC != -9223372036854775807L && jC != 0 && jC != j10) {
                    timestampAdjuster.h(j10);
                }
            } else if (z6) {
                timestampAdjuster.h(j10);
            }
        }
        if (j10 != 0 && (tsBinarySearchSeeker = this.tsBinarySearchSeeker) != null) {
            tsBinarySearchSeeker.h(j10);
        }
        this.tsPacketBuffer.Q(0);
        this.continuityCounters.clear();
        for (int i11 = 0; i11 < this.tsPayloadReaders.size(); i11++) {
            this.tsPayloadReaders.valueAt(i11).seek();
        }
        this.bytesSinceLastSync = 0;
    }

    public TsExtractor(int i10, int i11, int i12) {
        this(i10, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(i11), i12);
    }

    public TsExtractor(int i10, TimestampAdjuster timestampAdjuster, TsPayloadReader.Factory factory) {
        this(i10, timestampAdjuster, factory, 112800);
    }

    public TsExtractor(int i10, TimestampAdjuster timestampAdjuster, TsPayloadReader.Factory factory, int i11) {
        this.payloadReaderFactory = (TsPayloadReader.Factory) Assertions.e(factory);
        this.timestampSearchBytes = i11;
        this.mode = i10;
        if (i10 != 1 && i10 != 2) {
            ArrayList arrayList = new ArrayList();
            this.timestampAdjusters = arrayList;
            arrayList.add(timestampAdjuster);
        } else {
            this.timestampAdjusters = Collections.singletonList(timestampAdjuster);
        }
        this.tsPacketBuffer = new ParsableByteArray(new byte[BUFFER_SIZE], 0);
        this.trackIds = new SparseBooleanArray();
        this.trackPids = new SparseBooleanArray();
        this.tsPayloadReaders = new SparseArray<>();
        this.continuityCounters = new SparseIntArray();
        this.durationReader = new TsDurationReader(i11);
        this.output = ExtractorOutput.PLACEHOLDER;
        this.pcrPid = -1;
        x();
    }
}
