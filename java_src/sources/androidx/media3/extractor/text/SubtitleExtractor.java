package androidx.media3.extractor.text;

import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderException;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.TrackOutput;
import com.google.common.primitives.e;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@UnstableApi
public class SubtitleExtractor implements Extractor {
    private static final int DEFAULT_BUFFER_SIZE = 1024;
    private static final int STATE_CREATED = 0;
    private static final int STATE_EXTRACTING = 2;
    private static final int STATE_FINISHED = 4;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_RELEASED = 5;
    private static final int STATE_SEEKING = 3;
    private int bytesRead;
    private ExtractorOutput extractorOutput;
    private final Format format;
    private final SubtitleDecoder subtitleDecoder;
    private TrackOutput trackOutput;
    private final CueEncoder cueEncoder = new CueEncoder();
    private final ParsableByteArray subtitleData = new ParsableByteArray();
    private final List<Long> timestamps = new ArrayList();
    private final List<ParsableByteArray> samples = new ArrayList();
    private int state = 0;
    private long seekTimeUs = -9223372036854775807L;

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        return true;
    }

    private void a() throws DecoderException, IOException {
        try {
            SubtitleInputBuffer subtitleInputBufferDequeueInputBuffer = this.subtitleDecoder.dequeueInputBuffer();
            while (subtitleInputBufferDequeueInputBuffer == null) {
                Thread.sleep(5L);
                subtitleInputBufferDequeueInputBuffer = this.subtitleDecoder.dequeueInputBuffer();
            }
            subtitleInputBufferDequeueInputBuffer.o(this.bytesRead);
            subtitleInputBufferDequeueInputBuffer.data.put(this.subtitleData.e(), 0, this.bytesRead);
            subtitleInputBufferDequeueInputBuffer.data.limit(this.bytesRead);
            this.subtitleDecoder.queueInputBuffer(subtitleInputBufferDequeueInputBuffer);
            SubtitleOutputBuffer subtitleOutputBufferDequeueOutputBuffer = this.subtitleDecoder.dequeueOutputBuffer();
            while (subtitleOutputBufferDequeueOutputBuffer == null) {
                Thread.sleep(5L);
                subtitleOutputBufferDequeueOutputBuffer = this.subtitleDecoder.dequeueOutputBuffer();
            }
            for (int i10 = 0; i10 < subtitleOutputBufferDequeueOutputBuffer.getEventTimeCount(); i10++) {
                byte[] bArrA = this.cueEncoder.a(subtitleOutputBufferDequeueOutputBuffer.getCues(subtitleOutputBufferDequeueOutputBuffer.getEventTime(i10)));
                this.timestamps.add(Long.valueOf(subtitleOutputBufferDequeueOutputBuffer.getEventTime(i10)));
                this.samples.add(new ParsableByteArray(bArrA));
            }
            subtitleOutputBufferDequeueOutputBuffer.n();
        } catch (SubtitleDecoderException e) {
            throw ParserException.a("SubtitleDecoder failed.", e);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    private boolean e(ExtractorInput extractorInput) throws IOException {
        int iB = this.subtitleData.b();
        int i10 = this.bytesRead;
        if (iB == i10) {
            this.subtitleData.c(i10 + 1024);
        }
        int i11 = extractorInput.read(this.subtitleData.e(), this.bytesRead, this.subtitleData.b() - this.bytesRead);
        if (i11 != -1) {
            this.bytesRead += i11;
        }
        long length = extractorInput.getLength();
        return (length != -1 && ((long) this.bytesRead) == length) || i11 == -1;
    }

    private void g() {
        Assertions.i(this.trackOutput);
        Assertions.g(this.timestamps.size() == this.samples.size());
        long j6 = this.seekTimeUs;
        for (int iG = j6 == -9223372036854775807L ? 0 : Util.g(this.timestamps, Long.valueOf(j6), true, true); iG < this.samples.size(); iG++) {
            ParsableByteArray parsableByteArray = this.samples.get(iG);
            parsableByteArray.U(0);
            int length = parsableByteArray.e().length;
            this.trackOutput.b(parsableByteArray, length);
            this.trackOutput.f(this.timestamps.get(iG).longValue(), 1, length, 0, null);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        Assertions.g(this.state == 0);
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0, 3);
        this.extractorOutput.endTracks();
        this.extractorOutput.d(new IndexSeekMap(new long[]{0}, new long[]{0}, -9223372036854775807L));
        this.trackOutput.d(this.format);
        this.state = 1;
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws DecoderException, IOException {
        int i10 = this.state;
        Assertions.g((i10 == 0 || i10 == 5) ? false : true);
        if (this.state == 1) {
            this.subtitleData.Q(extractorInput.getLength() != -1 ? e.d(extractorInput.getLength()) : 1024);
            this.bytesRead = 0;
            this.state = 2;
        }
        if (this.state == 2 && e(extractorInput)) {
            a();
            g();
            this.state = 4;
        }
        if (this.state == 3 && f(extractorInput)) {
            g();
            this.state = 4;
        }
        return this.state == 4 ? -1 : 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
        if (this.state == 5) {
            return;
        }
        this.subtitleDecoder.release();
        this.state = 5;
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        int i10 = this.state;
        Assertions.g((i10 == 0 || i10 == 5) ? false : true);
        this.seekTimeUs = j10;
        if (this.state == 2) {
            this.state = 1;
        }
        if (this.state == 4) {
            this.state = 3;
        }
    }

    public SubtitleExtractor(SubtitleDecoder subtitleDecoder, Format format) {
        this.subtitleDecoder = subtitleDecoder;
        this.format = format.b().g0("text/x-exoplayer-cues").K(format.sampleMimeType).G();
    }

    private boolean f(ExtractorInput extractorInput) throws IOException {
        int iD;
        if (extractorInput.getLength() != -1) {
            iD = e.d(extractorInput.getLength());
        } else {
            iD = 1024;
        }
        if (extractorInput.skip(iD) == -1) {
            return true;
        }
        return false;
    }
}
