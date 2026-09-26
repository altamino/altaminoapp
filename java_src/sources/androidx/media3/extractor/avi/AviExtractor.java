package androidx.media3.extractor.avi;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.DummyExtractorOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import com.google.common.collect.l1;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class AviExtractor implements Extractor {
    private static final int AVIIF_KEYFRAME = 16;
    public static final int FOURCC_AVI_ = 541677121;
    public static final int FOURCC_JUNK = 1263424842;
    public static final int FOURCC_LIST = 1414744396;
    public static final int FOURCC_RIFF = 1179011410;
    public static final int FOURCC_auds = 1935963489;
    public static final int FOURCC_avih = 1751742049;
    public static final int FOURCC_hdrl = 1819436136;
    public static final int FOURCC_idx1 = 829973609;
    public static final int FOURCC_movi = 1769369453;
    public static final int FOURCC_strf = 1718776947;
    public static final int FOURCC_strh = 1752331379;
    public static final int FOURCC_strl = 1819440243;
    public static final int FOURCC_strn = 1852994675;
    public static final int FOURCC_txts = 1937012852;
    public static final int FOURCC_vids = 1935960438;
    private static final long RELOAD_MINIMUM_SEEK_DISTANCE = 262144;
    private static final int STATE_FINDING_IDX1_HEADER = 4;
    private static final int STATE_FINDING_MOVI_HEADER = 3;
    private static final int STATE_READING_HDRL_BODY = 2;
    private static final int STATE_READING_HDRL_HEADER = 1;
    private static final int STATE_READING_IDX1_BODY = 5;
    private static final int STATE_READING_SAMPLES = 6;
    private static final int STATE_SKIPPING_TO_HDRL = 0;
    private static final String TAG = "AviExtractor";
    private AviMainHeaderChunk aviHeader;

    @Nullable
    private ChunkReader currentChunkReader;
    private int idx1BodySize;
    private long pendingReposition;
    private boolean seekMapHasBeenOutput;
    private int state;
    private final ParsableByteArray scratch = new ParsableByteArray(12);
    private final ChunkHeaderHolder chunkHeaderHolder = new ChunkHeaderHolder();
    private ExtractorOutput extractorOutput = new DummyExtractorOutput();
    private ChunkReader[] chunkReaders = new ChunkReader[0];
    private long moviStart = -1;
    private long moviEnd = -1;
    private int hdrlSize = -1;
    private long durationUs = -9223372036854775807L;

    private class AviSeekMap implements SeekMap {
        private final long durationUs;

        @Override // androidx.media3.extractor.SeekMap
        public long getDurationUs() {
            return this.durationUs;
        }

        @Override // androidx.media3.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }

        public AviSeekMap(long j6) {
            this.durationUs = j6;
        }

        @Override // androidx.media3.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j6) {
            SeekMap.SeekPoints seekPointsI = AviExtractor.this.chunkReaders[0].i(j6);
            for (int i10 = 1; i10 < AviExtractor.this.chunkReaders.length; i10++) {
                SeekMap.SeekPoints seekPointsI2 = AviExtractor.this.chunkReaders[i10].i(j6);
                if (seekPointsI2.first.position < seekPointsI.first.position) {
                    seekPointsI = seekPointsI2;
                }
            }
            return seekPointsI;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.state = 0;
        this.extractorOutput = extractorOutput;
        this.pendingReposition = -1L;
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    private static class ChunkHeaderHolder {
        public int chunkType;
        public int listType;
        public int size;

        private ChunkHeaderHolder() {
        }

        public void a(ParsableByteArray parsableByteArray) {
            this.chunkType = parsableByteArray.u();
            this.size = parsableByteArray.u();
            this.listType = 0;
        }

        public void b(ParsableByteArray parsableByteArray) throws ParserException {
            a(parsableByteArray);
            if (this.chunkType == 1414744396) {
                this.listType = parsableByteArray.u();
                return;
            }
            throw ParserException.a("LIST expected, found: " + this.chunkType, null);
        }
    }

    @Nullable
    private ChunkReader f(int i10) {
        for (ChunkReader chunkReader : this.chunkReaders) {
            if (chunkReader.j(i10)) {
                return chunkReader;
            }
        }
        return null;
    }

    @Nullable
    private ChunkReader j(ListChunk listChunk, int i10) {
        AviStreamHeaderChunk aviStreamHeaderChunk = (AviStreamHeaderChunk) listChunk.b(AviStreamHeaderChunk.class);
        StreamFormatChunk streamFormatChunk = (StreamFormatChunk) listChunk.b(StreamFormatChunk.class);
        if (aviStreamHeaderChunk == null) {
            Log.i(TAG, "Missing Stream Header");
            return null;
        }
        if (streamFormatChunk == null) {
            Log.i(TAG, "Missing Stream Format");
            return null;
        }
        long jA = aviStreamHeaderChunk.a();
        Format format = streamFormatChunk.format;
        Format.Builder builderB = format.b();
        builderB.T(i10);
        int i11 = aviStreamHeaderChunk.suggestedBufferSize;
        if (i11 != 0) {
            builderB.Y(i11);
        }
        StreamNameChunk streamNameChunk = (StreamNameChunk) listChunk.b(StreamNameChunk.class);
        if (streamNameChunk != null) {
            builderB.W(streamNameChunk.name);
        }
        int iK = MimeTypes.k(format.sampleMimeType);
        if (iK != 1 && iK != 2) {
            return null;
        }
        TrackOutput trackOutputTrack = this.extractorOutput.track(i10, iK);
        trackOutputTrack.d(builderB.G());
        ChunkReader chunkReader = new ChunkReader(i10, iK, jA, aviStreamHeaderChunk.length, trackOutputTrack);
        this.durationUs = jA;
        return chunkReader;
    }

    private boolean l(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        boolean z6;
        if (this.pendingReposition != -1) {
            long position = extractorInput.getPosition();
            long j6 = this.pendingReposition;
            if (j6 < position || j6 > 262144 + position) {
                positionHolder.position = j6;
                z6 = true;
            } else {
                extractorInput.skipFully((int) (j6 - position));
                z6 = false;
            }
        } else {
            z6 = false;
        }
        this.pendingReposition = -1L;
        return z6;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        extractorInput.peekFully(this.scratch.e(), 0, 12);
        this.scratch.U(0);
        if (this.scratch.u() != 1179011410) {
            return false;
        }
        this.scratch.V(4);
        return this.scratch.u() == 541677121;
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        this.pendingReposition = -1L;
        this.currentChunkReader = null;
        for (ChunkReader chunkReader : this.chunkReaders) {
            chunkReader.o(j6);
        }
        if (j6 != 0) {
            this.state = 6;
        } else if (this.chunkReaders.length == 0) {
            this.state = 0;
        } else {
            this.state = 3;
        }
    }

    private static void e(ExtractorInput extractorInput) throws IOException {
        if ((extractorInput.getPosition() & 1) == 1) {
            extractorInput.skipFully(1);
        }
    }

    private void g(ParsableByteArray parsableByteArray) throws IOException {
        ListChunk listChunkC = ListChunk.c(1819436136, parsableByteArray);
        if (listChunkC.getType() == 1819436136) {
            AviMainHeaderChunk aviMainHeaderChunk = (AviMainHeaderChunk) listChunkC.b(AviMainHeaderChunk.class);
            if (aviMainHeaderChunk != null) {
                this.aviHeader = aviMainHeaderChunk;
                this.durationUs = ((long) aviMainHeaderChunk.totalFrames) * ((long) aviMainHeaderChunk.frameDurationUs);
                ArrayList arrayList = new ArrayList();
                l1<AviChunk> it = listChunkC.children.iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    AviChunk next = it.next();
                    if (next.getType() == 1819440243) {
                        int i11 = i10 + 1;
                        ChunkReader chunkReaderJ = j((ListChunk) next, i10);
                        if (chunkReaderJ != null) {
                            arrayList.add(chunkReaderJ);
                        }
                        i10 = i11;
                    }
                }
                this.chunkReaders = (ChunkReader[]) arrayList.toArray(new ChunkReader[0]);
                this.extractorOutput.endTracks();
                return;
            }
            throw ParserException.a("AviHeader not found", null);
        }
        throw ParserException.a("Unexpected header list type " + listChunkC.getType(), null);
    }

    private void h(ParsableByteArray parsableByteArray) {
        long jI = i(parsableByteArray);
        while (parsableByteArray.a() >= 16) {
            int iU = parsableByteArray.u();
            int iU2 = parsableByteArray.u();
            long jU = ((long) parsableByteArray.u()) + jI;
            parsableByteArray.u();
            ChunkReader chunkReaderF = f(iU);
            if (chunkReaderF != null) {
                if ((iU2 & 16) == 16) {
                    chunkReaderF.b(jU);
                }
                chunkReaderF.k();
            }
        }
        for (ChunkReader chunkReader : this.chunkReaders) {
            chunkReader.c();
        }
        this.seekMapHasBeenOutput = true;
        this.extractorOutput.d(new AviSeekMap(this.durationUs));
    }

    private long i(ParsableByteArray parsableByteArray) {
        long j6 = 0;
        if (parsableByteArray.a() < 16) {
            return 0L;
        }
        int iF = parsableByteArray.f();
        parsableByteArray.V(8);
        long jU = parsableByteArray.u();
        long j10 = this.moviStart;
        if (jU <= j10) {
            j6 = j10 + 8;
        }
        parsableByteArray.U(iF);
        return j6;
    }

    private int k(ExtractorInput extractorInput) throws IOException {
        if (extractorInput.getPosition() >= this.moviEnd) {
            return -1;
        }
        ChunkReader chunkReader = this.currentChunkReader;
        if (chunkReader != null) {
            if (chunkReader.m(extractorInput)) {
                this.currentChunkReader = null;
            }
        } else {
            e(extractorInput);
            int i10 = 12;
            extractorInput.peekFully(this.scratch.e(), 0, 12);
            this.scratch.U(0);
            int iU = this.scratch.u();
            if (iU == 1414744396) {
                this.scratch.U(8);
                if (this.scratch.u() != 1769369453) {
                    i10 = 8;
                }
                extractorInput.skipFully(i10);
                extractorInput.resetPeekPosition();
                return 0;
            }
            int iU2 = this.scratch.u();
            if (iU == 1263424842) {
                this.pendingReposition = extractorInput.getPosition() + ((long) iU2) + 8;
                return 0;
            }
            extractorInput.skipFully(8);
            extractorInput.resetPeekPosition();
            ChunkReader chunkReaderF = f(iU);
            if (chunkReaderF == null) {
                this.pendingReposition = extractorInput.getPosition() + ((long) iU2);
                return 0;
            }
            chunkReaderF.n(iU2);
            this.currentChunkReader = chunkReaderF;
        }
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        if (l(extractorInput, positionHolder)) {
            return 1;
        }
        switch (this.state) {
            case 0:
                if (d(extractorInput)) {
                    extractorInput.skipFully(12);
                    this.state = 1;
                    return 0;
                }
                throw ParserException.a("AVI Header List not found", null);
            case 1:
                extractorInput.readFully(this.scratch.e(), 0, 12);
                this.scratch.U(0);
                this.chunkHeaderHolder.b(this.scratch);
                ChunkHeaderHolder chunkHeaderHolder = this.chunkHeaderHolder;
                if (chunkHeaderHolder.listType == 1819436136) {
                    this.hdrlSize = chunkHeaderHolder.size;
                    this.state = 2;
                    return 0;
                }
                throw ParserException.a("hdrl expected, found: " + this.chunkHeaderHolder.listType, null);
            case 2:
                int i10 = this.hdrlSize - 4;
                ParsableByteArray parsableByteArray = new ParsableByteArray(i10);
                extractorInput.readFully(parsableByteArray.e(), 0, i10);
                g(parsableByteArray);
                this.state = 3;
                return 0;
            case 3:
                if (this.moviStart != -1) {
                    long position = extractorInput.getPosition();
                    long j6 = this.moviStart;
                    if (position != j6) {
                        this.pendingReposition = j6;
                        return 0;
                    }
                }
                extractorInput.peekFully(this.scratch.e(), 0, 12);
                extractorInput.resetPeekPosition();
                this.scratch.U(0);
                this.chunkHeaderHolder.a(this.scratch);
                int iU = this.scratch.u();
                int i11 = this.chunkHeaderHolder.chunkType;
                if (i11 == 1179011410) {
                    extractorInput.skipFully(12);
                    return 0;
                }
                if (i11 == 1414744396 && iU == 1769369453) {
                    long position2 = extractorInput.getPosition();
                    this.moviStart = position2;
                    this.moviEnd = position2 + ((long) this.chunkHeaderHolder.size) + 8;
                    if (!this.seekMapHasBeenOutput) {
                        if (((AviMainHeaderChunk) Assertions.e(this.aviHeader)).a()) {
                            this.state = 4;
                            this.pendingReposition = this.moviEnd;
                            return 0;
                        }
                        this.extractorOutput.d(new SeekMap.Unseekable(this.durationUs));
                        this.seekMapHasBeenOutput = true;
                    }
                    this.pendingReposition = extractorInput.getPosition() + 12;
                    this.state = 6;
                    return 0;
                }
                this.pendingReposition = extractorInput.getPosition() + ((long) this.chunkHeaderHolder.size) + 8;
                return 0;
            case 4:
                extractorInput.readFully(this.scratch.e(), 0, 8);
                this.scratch.U(0);
                int iU2 = this.scratch.u();
                int iU3 = this.scratch.u();
                if (iU2 == 829973609) {
                    this.state = 5;
                    this.idx1BodySize = iU3;
                } else {
                    this.pendingReposition = extractorInput.getPosition() + ((long) iU3);
                }
                return 0;
            case 5:
                ParsableByteArray parsableByteArray2 = new ParsableByteArray(this.idx1BodySize);
                extractorInput.readFully(parsableByteArray2.e(), 0, this.idx1BodySize);
                h(parsableByteArray2);
                this.state = 6;
                this.pendingReposition = this.moviStart;
                return 0;
            case 6:
                return k(extractorInput);
            default:
                throw new AssertionError();
        }
    }
}
