package androidx.media3.extractor.ts;

import android.net.Uri;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class Ac4Extractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.ts.b
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return androidx.media3.extractor.e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return Ac4Extractor.e();
        }
    };
    private static final int FRAME_HEADER_SIZE = 7;
    private static final int MAX_SNIFF_BYTES = 8192;
    private static final int READ_BUFFER_SIZE = 16384;
    private final Ac4Reader reader = new Ac4Reader();
    private final ParsableByteArray sampleData = new ParsableByteArray(16384);
    private boolean startedPacket;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] e() {
        return new Extractor[]{new Ac4Extractor()};
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        this.startedPacket = false;
        this.reader.seek();
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.reader.c(extractorOutput, new TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.endTracks();
        extractorOutput.d(new SeekMap.Unseekable(-9223372036854775807L));
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i10 = extractorInput.read(this.sampleData.e(), 0, 16384);
        if (i10 == -1) {
            return -1;
        }
        this.sampleData.U(0);
        this.sampleData.T(i10);
        if (!this.startedPacket) {
            this.reader.b(0L, 4);
            this.startedPacket = true;
        }
        this.reader.a(this.sampleData);
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        int i10 = 0;
        while (true) {
            extractorInput.peekFully(parsableByteArray.e(), 0, 10);
            parsableByteArray.U(0);
            if (parsableByteArray.K() != 4801587) {
                break;
            }
            parsableByteArray.V(3);
            int iG = parsableByteArray.G();
            i10 += iG + 10;
            extractorInput.advancePeekPosition(iG);
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i10);
        int i11 = 0;
        int i12 = i10;
        while (true) {
            extractorInput.peekFully(parsableByteArray.e(), 0, 7);
            parsableByteArray.U(0);
            int iN = parsableByteArray.N();
            if (iN == 44096 || iN == 44097) {
                i11++;
                if (i11 >= 4) {
                    return true;
                }
                int iE = Ac4Util.e(parsableByteArray.e(), iN);
                if (iE == -1) {
                    return false;
                }
                extractorInput.advancePeekPosition(iE - 7);
            } else {
                extractorInput.resetPeekPosition();
                i12++;
                if (i12 - i10 >= 8192) {
                    return false;
                }
                extractorInput.advancePeekPosition(i12);
                i11 = 0;
            }
        }
    }
}
