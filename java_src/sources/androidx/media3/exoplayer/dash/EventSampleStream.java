package androidx.media3.exoplayer.dash;

import androidx.media3.common.Format;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.dash.manifest.EventStream;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.extractor.metadata.emsg.EventMessageEncoder;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
final class EventSampleStream implements SampleStream {
    private int currentIndex;
    private EventStream eventStream;
    private boolean eventStreamAppendable;
    private long[] eventTimesUs;
    private boolean isFormatSentDownstream;
    private final Format upstreamFormat;
    private final EventMessageEncoder eventMessageEncoder = new EventMessageEncoder();
    private long pendingSeekPositionUs = -9223372036854775807L;

    @Override // androidx.media3.exoplayer.source.SampleStream
    public boolean isReady() {
        return true;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public void maybeThrowError() throws IOException {
    }

    public String a() {
        return this.eventStream.a();
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public int b(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i10) {
        int i11 = this.currentIndex;
        boolean z6 = i11 == this.eventTimesUs.length;
        if (z6 && !this.eventStreamAppendable) {
            decoderInputBuffer.l(4);
            return -4;
        }
        if ((i10 & 2) != 0 || !this.isFormatSentDownstream) {
            formatHolder.format = this.upstreamFormat;
            this.isFormatSentDownstream = true;
            return -5;
        }
        if (z6) {
            return -3;
        }
        if ((i10 & 1) == 0) {
            this.currentIndex = i11 + 1;
        }
        if ((i10 & 4) == 0) {
            byte[] bArrA = this.eventMessageEncoder.a(this.eventStream.events[i11]);
            decoderInputBuffer.o(bArrA.length);
            decoderInputBuffer.data.put(bArrA);
        }
        decoderInputBuffer.timeUs = this.eventTimesUs[i11];
        decoderInputBuffer.l(1);
        return -4;
    }

    public void c(long j6) {
        int iE = Util.e(this.eventTimesUs, j6, true, false);
        this.currentIndex = iE;
        if (!this.eventStreamAppendable || iE != this.eventTimesUs.length) {
            j6 = -9223372036854775807L;
        }
        this.pendingSeekPositionUs = j6;
    }

    public void d(EventStream eventStream, boolean z6) {
        int i10 = this.currentIndex;
        long j6 = i10 == 0 ? -9223372036854775807L : this.eventTimesUs[i10 - 1];
        this.eventStreamAppendable = z6;
        this.eventStream = eventStream;
        long[] jArr = eventStream.presentationTimesUs;
        this.eventTimesUs = jArr;
        long j10 = this.pendingSeekPositionUs;
        if (j10 != -9223372036854775807L) {
            c(j10);
        } else if (j6 != -9223372036854775807L) {
            this.currentIndex = Util.e(jArr, j6, false, false);
        }
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public int skipData(long j6) {
        int iMax = Math.max(this.currentIndex, Util.e(this.eventTimesUs, j6, true, false));
        int i10 = iMax - this.currentIndex;
        this.currentIndex = iMax;
        return i10;
    }

    public EventSampleStream(EventStream eventStream, Format format, boolean z6) {
        this.upstreamFormat = format;
        this.eventStream = eventStream;
        this.eventTimesUs = eventStream.presentationTimesUs;
        d(eventStream, z6);
    }
}
