package androidx.media3.extractor.jpeg;

import androidx.media3.common.util.Assertions;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ForwardingExtractorInput;

/* JADX INFO: loaded from: classes8.dex */
final class StartOffsetExtractorInput extends ForwardingExtractorInput {
    private final long startOffset;

    public StartOffsetExtractorInput(ExtractorInput extractorInput, long j6) {
        boolean z6;
        super(extractorInput);
        if (extractorInput.getPosition() >= j6) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.a(z6);
        this.startOffset = j6;
    }

    @Override // androidx.media3.extractor.ForwardingExtractorInput, androidx.media3.extractor.ExtractorInput
    public long getLength() {
        return super.getLength() - this.startOffset;
    }

    @Override // androidx.media3.extractor.ForwardingExtractorInput, androidx.media3.extractor.ExtractorInput
    public long getPeekPosition() {
        return super.getPeekPosition() - this.startOffset;
    }

    @Override // androidx.media3.extractor.ForwardingExtractorInput, androidx.media3.extractor.ExtractorInput
    public long getPosition() {
        return super.getPosition() - this.startOffset;
    }
}
