package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.DataReader;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.mp3.Mp3Extractor;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class BundledExtractorsAdapter implements ProgressiveMediaExtractor {

    @Nullable
    private Extractor extractor;

    @Nullable
    private ExtractorInput extractorInput;
    private final ExtractorsFactory extractorsFactory;

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public long a() {
        ExtractorInput extractorInput = this.extractorInput;
        if (extractorInput != null) {
            return extractorInput.getPosition();
        }
        return -1L;
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void b() {
        Extractor extractor = this.extractor;
        if (extractor instanceof Mp3Extractor) {
            ((Mp3Extractor) extractor).i();
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0046  */
    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void c(DataReader dataReader, Uri uri, Map<String, List<String>> map, long j6, long j10, ExtractorOutput extractorOutput) throws IOException {
        DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(dataReader, j6, j10);
        this.extractorInput = defaultExtractorInput;
        if (this.extractor != null) {
            return;
        }
        Extractor[] extractorArrA = this.extractorsFactory.a(uri, map);
        if (extractorArrA.length == 1) {
            this.extractor = extractorArrA[0];
        } else {
            for (Extractor extractor : extractorArrA) {
                try {
                    if (extractor.d(defaultExtractorInput)) {
                        this.extractor = extractor;
                        Assertions.g(true);
                        defaultExtractorInput.resetPeekPosition();
                        break;
                    } else {
                        boolean z6 = this.extractor != null || defaultExtractorInput.getPosition() == j6;
                        Assertions.g(z6);
                        defaultExtractorInput.resetPeekPosition();
                    }
                } catch (EOFException unused) {
                    if (this.extractor != null || defaultExtractorInput.getPosition() == j6) {
                    }
                } catch (Throwable th) {
                    Assertions.g(this.extractor != null || defaultExtractorInput.getPosition() == j6);
                    defaultExtractorInput.resetPeekPosition();
                    throw th;
                }
                Assertions.g(z6);
                defaultExtractorInput.resetPeekPosition();
            }
            if (this.extractor == null) {
                throw new UnrecognizedInputFormatException("None of the available extractors (" + Util.N(extractorArrA) + ") could read the stream.", (Uri) Assertions.e(uri));
            }
        }
        this.extractor.b(extractorOutput);
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public int d(PositionHolder positionHolder) throws IOException {
        return ((Extractor) Assertions.e(this.extractor)).c((ExtractorInput) Assertions.e(this.extractorInput), positionHolder);
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void release() {
        Extractor extractor = this.extractor;
        if (extractor != null) {
            extractor.release();
            this.extractor = null;
        }
        this.extractorInput = null;
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void seek(long j6, long j10) {
        ((Extractor) Assertions.e(this.extractor)).seek(j6, j10);
    }

    public BundledExtractorsAdapter(ExtractorsFactory extractorsFactory) {
        this.extractorsFactory = extractorsFactory;
    }
}
