package androidx.media3.extractor.text;

import androidx.annotation.Nullable;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.DecoderOutputBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public abstract class SubtitleOutputBuffer extends DecoderOutputBuffer implements Subtitle {
    private long subsampleOffsetUs;

    @Nullable
    private Subtitle subtitle;

    public void o(long j6, Subtitle subtitle, long j10) {
        this.timeUs = j6;
        this.subtitle = subtitle;
        if (j10 != Long.MAX_VALUE) {
            j6 = j10;
        }
        this.subsampleOffsetUs = j6;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public List<Cue> getCues(long j6) {
        return ((Subtitle) Assertions.e(this.subtitle)).getCues(j6 - this.subsampleOffsetUs);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public long getEventTime(int i10) {
        return ((Subtitle) Assertions.e(this.subtitle)).getEventTime(i10) + this.subsampleOffsetUs;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getEventTimeCount() {
        return ((Subtitle) Assertions.e(this.subtitle)).getEventTimeCount();
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getNextEventTimeIndex(long j6) {
        return ((Subtitle) Assertions.e(this.subtitle)).getNextEventTimeIndex(j6 - this.subsampleOffsetUs);
    }

    @Override // androidx.media3.decoder.Buffer
    public void b() {
        super.b();
        this.subtitle = null;
    }
}
