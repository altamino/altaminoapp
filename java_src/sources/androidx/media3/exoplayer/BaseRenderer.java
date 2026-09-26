package androidx.media3.exoplayer;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.SampleStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public abstract class BaseRenderer implements Renderer, RendererCapabilities {

    @Nullable
    private RendererConfiguration configuration;
    private int index;
    private long lastResetPositionUs;
    private PlayerId playerId;

    @Nullable
    @GuardedBy
    private RendererCapabilities.Listener rendererCapabilitiesListener;
    private int state;

    @Nullable
    private SampleStream stream;

    @Nullable
    private Format[] streamFormats;
    private boolean streamIsFinal;
    private long streamOffsetUs;
    private boolean throwRendererExceptionIsExecuting;
    private final int trackType;
    private final Object lock = new Object();
    private final FormatHolder formatHolder = new FormatHolder();
    private long readingPositionUs = Long.MIN_VALUE;

    private void B(long j6, boolean z6) throws ExoPlaybackException {
        this.streamIsFinal = false;
        this.lastResetPositionUs = j6;
        this.readingPositionUs = j6;
        t(j6, z6);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final long c() {
        return this.readingPositionUs;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public /* synthetic */ void d(float f, float f6) throws ExoPlaybackException {
        g2.b(this, f, f6);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void g(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j6, boolean z6, boolean z10, long j10, long j11) throws ExoPlaybackException {
        Assertions.g(this.state == 0);
        this.configuration = rendererConfiguration;
        this.state = 1;
        s(z6, z10);
        f(formatArr, sampleStream, j10, j11);
        B(j6, z6);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final RendererCapabilities getCapabilities() {
        return this;
    }

    @Override // androidx.media3.exoplayer.Renderer
    @Nullable
    public MediaClock getMediaClock() {
        return null;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final int getState() {
        return this.state;
    }

    @Override // androidx.media3.exoplayer.Renderer
    @Nullable
    public final SampleStream getStream() {
        return this.stream;
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final int getTrackType() {
        return this.trackType;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void h(int i10, PlayerId playerId) {
        this.index = i10;
        this.playerId = playerId;
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean hasReadStreamToEnd() {
        return this.readingPositionUs == Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean isCurrentStreamFinal() {
        return this.streamIsFinal;
    }

    protected final ExoPlaybackException j(Throwable th, @Nullable Format format, int i10) {
        return k(th, format, false, i10);
    }

    protected final int n() {
        return this.index;
    }

    protected void r() {
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void resetPosition(long j6) throws ExoPlaybackException {
        B(j6, false);
    }

    protected void s(boolean z6, boolean z10) throws ExoPlaybackException {
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void setCurrentStreamFinal() {
        this.streamIsFinal = true;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException {
        return 0;
    }

    protected void t(long j6, boolean z6) throws ExoPlaybackException {
    }

    protected void u() {
    }

    protected void w() {
    }

    protected void x() throws ExoPlaybackException {
    }

    protected void y() {
    }

    protected void z(Format[] formatArr, long j6, long j10) throws ExoPlaybackException {
    }

    protected final int A(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i10) {
        int iB = ((SampleStream) Assertions.e(this.stream)).b(formatHolder, decoderInputBuffer, i10);
        if (iB == -4) {
            if (decoderInputBuffer.h()) {
                this.readingPositionUs = Long.MIN_VALUE;
                return this.streamIsFinal ? -4 : -3;
            }
            long j6 = decoderInputBuffer.timeUs + this.streamOffsetUs;
            decoderInputBuffer.timeUs = j6;
            this.readingPositionUs = Math.max(this.readingPositionUs, j6);
        } else if (iB == -5) {
            Format format = (Format) Assertions.e(formatHolder.format);
            if (format.subsampleOffsetUs != Long.MAX_VALUE) {
                formatHolder.format = format.b().k0(format.subsampleOffsetUs + this.streamOffsetUs).G();
            }
        }
        return iB;
    }

    protected int C(long j6) {
        return ((SampleStream) Assertions.e(this.stream)).skipData(j6 - this.streamOffsetUs);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void disable() {
        Assertions.g(this.state == 1);
        this.formatHolder.a();
        this.state = 0;
        this.stream = null;
        this.streamFormats = null;
        this.streamIsFinal = false;
        r();
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final void e() {
        synchronized (this.lock) {
            this.rendererCapabilitiesListener = null;
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void f(Format[] formatArr, SampleStream sampleStream, long j6, long j10) throws ExoPlaybackException {
        Assertions.g(!this.streamIsFinal);
        this.stream = sampleStream;
        if (this.readingPositionUs == Long.MIN_VALUE) {
            this.readingPositionUs = j6;
        }
        this.streamFormats = formatArr;
        this.streamOffsetUs = j10;
        z(formatArr, j6, j10);
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final void i(RendererCapabilities.Listener listener) {
        synchronized (this.lock) {
            this.rendererCapabilitiesListener = listener;
        }
    }

    protected final ExoPlaybackException k(Throwable th, @Nullable Format format, boolean z6, int i10) {
        int iH;
        if (format == null || this.throwRendererExceptionIsExecuting) {
            iH = 4;
        } else {
            this.throwRendererExceptionIsExecuting = true;
            try {
                iH = h2.h(a(format));
                this.throwRendererExceptionIsExecuting = false;
            } catch (ExoPlaybackException unused) {
                this.throwRendererExceptionIsExecuting = false;
                iH = 4;
            } catch (Throwable th2) {
                this.throwRendererExceptionIsExecuting = false;
                throw th2;
            }
        }
        return ExoPlaybackException.h(th, getName(), n(), format, iH, z6, i10);
    }

    protected final RendererConfiguration l() {
        return (RendererConfiguration) Assertions.e(this.configuration);
    }

    protected final FormatHolder m() {
        this.formatHolder.a();
        return this.formatHolder;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void maybeThrowStreamError() throws IOException {
        ((SampleStream) Assertions.e(this.stream)).maybeThrowError();
    }

    protected final PlayerId o() {
        return (PlayerId) Assertions.e(this.playerId);
    }

    protected final Format[] p() {
        return (Format[]) Assertions.e(this.streamFormats);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void release() {
        Assertions.g(this.state == 0);
        u();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void reset() {
        Assertions.g(this.state == 0);
        this.formatHolder.a();
        w();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void start() throws ExoPlaybackException {
        Assertions.g(this.state == 1);
        this.state = 2;
        x();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void stop() {
        Assertions.g(this.state == 2);
        this.state = 1;
        y();
    }

    protected final void v() {
        RendererCapabilities.Listener listener;
        synchronized (this.lock) {
            listener = this.rendererCapabilitiesListener;
        }
        if (listener != null) {
            listener.b(this);
        }
    }

    public BaseRenderer(int i10) {
        this.trackType = i10;
    }

    protected final boolean q() {
        if (hasReadStreamToEnd()) {
            return this.streamIsFinal;
        }
        return ((SampleStream) Assertions.e(this.stream)).isReady();
    }
}
