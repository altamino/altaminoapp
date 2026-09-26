package androidx.media3.extractor.ogg;

import android.net.Uri;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.e;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public class OggExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.ogg.a
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return OggExtractor.e();
        }
    };
    private static final int MAX_VERIFICATION_BYTES = 8;
    private ExtractorOutput output;
    private StreamReader streamReader;
    private boolean streamReaderInitialized;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] e() {
        return new Extractor[]{new OggExtractor()};
    }

    private static ParsableByteArray f(ParsableByteArray parsableByteArray) {
        parsableByteArray.U(0);
        return parsableByteArray;
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    private boolean g(ExtractorInput extractorInput) throws IOException {
        OggPageHeader oggPageHeader = new OggPageHeader();
        if (oggPageHeader.a(extractorInput, true) && (oggPageHeader.type & 2) == 2) {
            int iMin = Math.min(oggPageHeader.bodySize, 8);
            ParsableByteArray parsableByteArray = new ParsableByteArray(iMin);
            extractorInput.peekFully(parsableByteArray.e(), 0, iMin);
            if (FlacReader.p(f(parsableByteArray))) {
                this.streamReader = new FlacReader();
            } else if (VorbisReader.r(f(parsableByteArray))) {
                this.streamReader = new VorbisReader();
            } else if (OpusReader.o(f(parsableByteArray))) {
                this.streamReader = new OpusReader();
            }
            return true;
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        Assertions.i(this.output);
        if (this.streamReader == null) {
            if (!g(extractorInput)) {
                throw ParserException.a("Failed to determine bitstream type", null);
            }
            extractorInput.resetPeekPosition();
        }
        if (!this.streamReaderInitialized) {
            TrackOutput trackOutputTrack = this.output.track(0, 1);
            this.output.endTracks();
            this.streamReader.d(this.output, trackOutputTrack);
            this.streamReaderInitialized = true;
        }
        return this.streamReader.g(extractorInput, positionHolder);
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        StreamReader streamReader = this.streamReader;
        if (streamReader != null) {
            streamReader.m(j6, j10);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        try {
            return g(extractorInput);
        } catch (ParserException unused) {
            return false;
        }
    }
}
