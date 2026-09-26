package androidx.media3.exoplayer.hls;

import androidx.annotation.VisibleForTesting;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.mp3.Mp3Extractor;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.ts.Ac3Extractor;
import androidx.media3.extractor.ts.Ac4Extractor;
import androidx.media3.extractor.ts.AdtsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class BundledHlsMediaChunkExtractor implements HlsMediaChunkExtractor {
    private static final PositionHolder POSITION_HOLDER = new PositionHolder();

    @VisibleForTesting
    final Extractor extractor;
    private final Format multivariantPlaylistFormat;
    private final TimestampAdjuster timestampAdjuster;

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public boolean a(ExtractorInput extractorInput) throws IOException {
        return this.extractor.c(extractorInput, POSITION_HOLDER) == 0;
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public void b(ExtractorOutput extractorOutput) {
        this.extractor.b(extractorOutput);
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public void c() {
        this.extractor.seek(0L, 0L);
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public boolean d() {
        Extractor extractor = this.extractor;
        return (extractor instanceof TsExtractor) || (extractor instanceof FragmentedMp4Extractor);
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public boolean e() {
        Extractor extractor = this.extractor;
        return (extractor instanceof AdtsExtractor) || (extractor instanceof Ac3Extractor) || (extractor instanceof Ac4Extractor) || (extractor instanceof Mp3Extractor);
    }

    public BundledHlsMediaChunkExtractor(Extractor extractor, Format format, TimestampAdjuster timestampAdjuster) {
        this.extractor = extractor;
        this.multivariantPlaylistFormat = format;
        this.timestampAdjuster = timestampAdjuster;
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public HlsMediaChunkExtractor f() {
        Extractor mp3Extractor;
        Assertions.g(!d());
        Extractor extractor = this.extractor;
        if (extractor instanceof WebvttExtractor) {
            mp3Extractor = new WebvttExtractor(this.multivariantPlaylistFormat.language, this.timestampAdjuster);
        } else if (extractor instanceof AdtsExtractor) {
            mp3Extractor = new AdtsExtractor();
        } else if (extractor instanceof Ac3Extractor) {
            mp3Extractor = new Ac3Extractor();
        } else if (extractor instanceof Ac4Extractor) {
            mp3Extractor = new Ac4Extractor();
        } else if (extractor instanceof Mp3Extractor) {
            mp3Extractor = new Mp3Extractor();
        } else {
            throw new IllegalStateException("Unexpected extractor type for recreation: " + this.extractor.getClass().getSimpleName());
        }
        return new BundledHlsMediaChunkExtractor(mp3Extractor, this.multivariantPlaylistFormat, this.timestampAdjuster);
    }
}
