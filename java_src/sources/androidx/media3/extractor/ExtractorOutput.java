package androidx.media3.extractor;

import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public interface ExtractorOutput {
    public static final ExtractorOutput PLACEHOLDER = new ExtractorOutput() { // from class: androidx.media3.extractor.ExtractorOutput.1
        @Override // androidx.media3.extractor.ExtractorOutput
        public void d(SeekMap seekMap) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public void endTracks() {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public TrackOutput track(int i10, int i11) {
            throw new UnsupportedOperationException();
        }
    };

    void d(SeekMap seekMap);

    void endTracks();

    TrackOutput track(int i10, int i11);
}
