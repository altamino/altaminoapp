package androidx.media3.extractor.ts;

import android.net.Uri;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class Ac3Extractor implements Extractor {
    private static final int AC3_SYNC_WORD = 2935;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.ts.a
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return androidx.media3.extractor.e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return Ac3Extractor.e();
        }
    };
    private static final int MAX_SNIFF_BYTES = 8192;
    private static final int MAX_SYNC_FRAME_SIZE = 2786;
    private final Ac3Reader reader = new Ac3Reader();
    private final ParsableByteArray sampleData = new ParsableByteArray(MAX_SYNC_FRAME_SIZE);
    private boolean startedPacket;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] e() {
        return new Extractor[]{new Ac3Extractor()};
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
        int i10 = extractorInput.read(this.sampleData.e(), 0, MAX_SYNC_FRAME_SIZE);
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
            extractorInput.peekFully(parsableByteArray.e(), 0, 6);
            parsableByteArray.U(0);
            if (parsableByteArray.N() != AC3_SYNC_WORD) {
                extractorInput.resetPeekPosition();
                i12++;
                if (i12 - i10 >= 8192) {
                    return false;
                }
                extractorInput.advancePeekPosition(i12);
                i11 = 0;
            } else {
                i11++;
                if (i11 >= 4) {
                    return true;
                }
                int iG2 = Ac3Util.g(parsableByteArray.e());
                if (iG2 == -1) {
                    return false;
                }
                extractorInput.advancePeekPosition(iG2 - 6);
            }
        }
    }
}
