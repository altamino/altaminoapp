package androidx.media3.extractor.jpeg;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class StartOffsetExtractorOutput implements ExtractorOutput {
    private final ExtractorOutput extractorOutput;
    private final long startOffset;

    @Override // androidx.media3.extractor.ExtractorOutput
    public void d(final SeekMap seekMap) {
        this.extractorOutput.d(new SeekMap() { // from class: androidx.media3.extractor.jpeg.StartOffsetExtractorOutput.1
            @Override // androidx.media3.extractor.SeekMap
            public long getDurationUs() {
                return seekMap.getDurationUs();
            }

            @Override // androidx.media3.extractor.SeekMap
            public SeekMap.SeekPoints getSeekPoints(long j6) {
                SeekMap.SeekPoints seekPoints = seekMap.getSeekPoints(j6);
                SeekPoint seekPoint = seekPoints.first;
                SeekPoint seekPoint2 = new SeekPoint(seekPoint.timeUs, seekPoint.position + StartOffsetExtractorOutput.this.startOffset);
                SeekPoint seekPoint3 = seekPoints.second;
                return new SeekMap.SeekPoints(seekPoint2, new SeekPoint(seekPoint3.timeUs, seekPoint3.position + StartOffsetExtractorOutput.this.startOffset));
            }

            @Override // androidx.media3.extractor.SeekMap
            public boolean isSeekable() {
                return seekMap.isSeekable();
            }
        });
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void endTracks() {
        this.extractorOutput.endTracks();
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public TrackOutput track(int i10, int i11) {
        return this.extractorOutput.track(i10, i11);
    }

    public StartOffsetExtractorOutput(long j6, ExtractorOutput extractorOutput) {
        this.startOffset = j6;
        this.extractorOutput = extractorOutput;
    }
}
