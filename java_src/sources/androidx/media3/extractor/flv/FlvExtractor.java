package androidx.media3.extractor.flv;

import android.net.Uri;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.e;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class FlvExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.flv.a
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return FlvExtractor.g();
        }
    };
    private static final int FLV_HEADER_SIZE = 9;
    private static final int FLV_TAG = 4607062;
    private static final int FLV_TAG_HEADER_SIZE = 11;
    private static final int STATE_READING_FLV_HEADER = 1;
    private static final int STATE_READING_TAG_DATA = 4;
    private static final int STATE_READING_TAG_HEADER = 3;
    private static final int STATE_SKIPPING_TO_TAG_HEADER = 2;
    private static final int TAG_TYPE_AUDIO = 8;
    private static final int TAG_TYPE_SCRIPT_DATA = 18;
    private static final int TAG_TYPE_VIDEO = 9;
    private AudioTagPayloadReader audioReader;
    private int bytesToNextTagHeader;
    private ExtractorOutput extractorOutput;
    private long mediaTagTimestampOffsetUs;
    private boolean outputFirstSample;
    private boolean outputSeekMap;
    private int tagDataSize;
    private long tagTimestampUs;
    private int tagType;
    private VideoTagPayloadReader videoReader;
    private final ParsableByteArray scratch = new ParsableByteArray(4);
    private final ParsableByteArray headerBuffer = new ParsableByteArray(9);
    private final ParsableByteArray tagHeaderBuffer = new ParsableByteArray(11);
    private final ParsableByteArray tagData = new ParsableByteArray();
    private final ScriptTagPayloadReader metadataReader = new ScriptTagPayloadReader();
    private int state = 1;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] g() {
        return new Extractor[]{new FlvExtractor()};
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        if (j6 == 0) {
            this.state = 1;
            this.outputFirstSample = false;
        } else {
            this.state = 3;
        }
        this.bytesToNextTagHeader = 0;
    }

    private void e() {
        if (this.outputSeekMap) {
            return;
        }
        this.extractorOutput.d(new SeekMap.Unseekable(-9223372036854775807L));
        this.outputSeekMap = true;
    }

    private long f() {
        if (this.outputFirstSample) {
            return this.mediaTagTimestampOffsetUs + this.tagTimestampUs;
        }
        if (this.metadataReader.d() == -9223372036854775807L) {
            return 0L;
        }
        return this.tagTimestampUs;
    }

    private ParsableByteArray h(ExtractorInput extractorInput) throws IOException {
        if (this.tagDataSize > this.tagData.b()) {
            ParsableByteArray parsableByteArray = this.tagData;
            parsableByteArray.S(new byte[Math.max(parsableByteArray.b() * 2, this.tagDataSize)], 0);
        } else {
            this.tagData.U(0);
        }
        this.tagData.T(this.tagDataSize);
        extractorInput.readFully(this.tagData.e(), 0, this.tagDataSize);
        return this.tagData;
    }

    private boolean i(ExtractorInput extractorInput) throws IOException {
        if (!extractorInput.readFully(this.headerBuffer.e(), 0, 9, true)) {
            return false;
        }
        this.headerBuffer.U(0);
        this.headerBuffer.V(4);
        int iH = this.headerBuffer.H();
        boolean z6 = (iH & 4) != 0;
        boolean z10 = (iH & 1) != 0;
        if (z6 && this.audioReader == null) {
            this.audioReader = new AudioTagPayloadReader(this.extractorOutput.track(8, 1));
        }
        if (z10 && this.videoReader == null) {
            this.videoReader = new VideoTagPayloadReader(this.extractorOutput.track(9, 2));
        }
        this.extractorOutput.endTracks();
        this.bytesToNextTagHeader = this.headerBuffer.q() - 5;
        this.state = 2;
        return true;
    }

    private boolean k(ExtractorInput extractorInput) throws IOException {
        if (!extractorInput.readFully(this.tagHeaderBuffer.e(), 0, 11, true)) {
            return false;
        }
        this.tagHeaderBuffer.U(0);
        this.tagType = this.tagHeaderBuffer.H();
        this.tagDataSize = this.tagHeaderBuffer.K();
        this.tagTimestampUs = this.tagHeaderBuffer.K();
        this.tagTimestampUs = (((long) (this.tagHeaderBuffer.H() << 24)) | this.tagTimestampUs) * 1000;
        this.tagHeaderBuffer.V(3);
        this.state = 4;
        return true;
    }

    private void l(ExtractorInput extractorInput) throws IOException {
        extractorInput.skipFully(this.bytesToNextTagHeader);
        this.bytesToNextTagHeader = 0;
        this.state = 3;
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        Assertions.i(this.extractorOutput);
        while (true) {
            int i10 = this.state;
            if (i10 != 1) {
                if (i10 == 2) {
                    l(extractorInput);
                } else if (i10 != 3) {
                    if (i10 != 4) {
                        throw new IllegalStateException();
                    }
                    if (j(extractorInput)) {
                        return 0;
                    }
                } else if (!k(extractorInput)) {
                    return -1;
                }
            } else if (!i(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        extractorInput.peekFully(this.scratch.e(), 0, 3);
        this.scratch.U(0);
        if (this.scratch.K() != FLV_TAG) {
            return false;
        }
        extractorInput.peekFully(this.scratch.e(), 0, 2);
        this.scratch.U(0);
        if ((this.scratch.N() & 250) != 0) {
            return false;
        }
        extractorInput.peekFully(this.scratch.e(), 0, 4);
        this.scratch.U(0);
        int iQ = this.scratch.q();
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(iQ);
        extractorInput.peekFully(this.scratch.e(), 0, 4);
        this.scratch.U(0);
        return this.scratch.q() == 0;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0087  */
    /* JADX WARN: Code duplicated, block: B:27:0x008b  */
    private boolean j(ExtractorInput extractorInput) throws IOException {
        boolean zA;
        boolean z6;
        long j6;
        long jF = f();
        int i10 = this.tagType;
        if (i10 == 8 && this.audioReader != null) {
            e();
            zA = this.audioReader.a(h(extractorInput), jF);
        } else if (i10 == 9 && this.videoReader != null) {
            e();
            zA = this.videoReader.a(h(extractorInput), jF);
        } else {
            if (i10 == 18 && !this.outputSeekMap) {
                zA = this.metadataReader.a(h(extractorInput), jF);
                long jD = this.metadataReader.d();
                if (jD != -9223372036854775807L) {
                    this.extractorOutput.d(new IndexSeekMap(this.metadataReader.e(), this.metadataReader.f(), jD));
                    this.outputSeekMap = true;
                }
            } else {
                extractorInput.skipFully(this.tagDataSize);
                zA = false;
                z6 = false;
            }
            if (!this.outputFirstSample && zA) {
                this.outputFirstSample = true;
                if (this.metadataReader.d() == -9223372036854775807L) {
                    j6 = -this.tagTimestampUs;
                } else {
                    j6 = 0;
                }
                this.mediaTagTimestampOffsetUs = j6;
            }
            this.bytesToNextTagHeader = 4;
            this.state = 2;
            return z6;
        }
        z6 = true;
        if (!this.outputFirstSample) {
            this.outputFirstSample = true;
            if (this.metadataReader.d() == -9223372036854775807L) {
                j6 = -this.tagTimestampUs;
            } else {
                j6 = 0;
            }
            this.mediaTagTimestampOffsetUs = j6;
        }
        this.bytesToNextTagHeader = 4;
        this.state = 2;
        return z6;
    }
}
