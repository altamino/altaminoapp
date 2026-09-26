package androidx.media3.exoplayer;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.SampleStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public abstract class NoSampleRenderer implements Renderer, RendererCapabilities {
    private RendererConfiguration configuration;
    private int index;
    private int state;

    @Nullable
    private SampleStream stream;
    private boolean streamIsFinal;

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int a(Format format) throws ExoPlaybackException {
        return h2.c(0);
    }

    protected void b() {
    }

    @Override // androidx.media3.exoplayer.Renderer
    public long c() {
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public /* synthetic */ void d(float f, float f6) throws ExoPlaybackException {
        g2.b(this, f, f6);
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public /* synthetic */ void e() {
        h2.a(this);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void g(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j6, boolean z6, boolean z10, long j10, long j11) throws ExoPlaybackException {
        Assertions.g(this.state == 0);
        this.configuration = rendererConfiguration;
        this.state = 1;
        j(z6);
        f(formatArr, sampleStream, j10, j11);
        k(j6, z6);
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
        return -2;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void h(int i10, PlayerId playerId) {
        this.index = i10;
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean hasReadStreamToEnd() {
        return true;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public /* synthetic */ void i(RendererCapabilities.Listener listener) {
        h2.b(this, listener);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean isCurrentStreamFinal() {
        return this.streamIsFinal;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return true;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return true;
    }

    protected void j(boolean z6) throws ExoPlaybackException {
    }

    protected void k(long j6, boolean z6) throws ExoPlaybackException {
    }

    protected void l(long j6) throws ExoPlaybackException {
    }

    protected void m() {
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void maybeThrowStreamError() throws IOException {
    }

    protected void n() throws ExoPlaybackException {
    }

    protected void o() {
    }

    @Override // androidx.media3.exoplayer.Renderer
    public /* synthetic */ void release() {
        g2.a(this);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void resetPosition(long j6) throws ExoPlaybackException {
        this.streamIsFinal = false;
        k(j6, false);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void setCurrentStreamFinal() {
        this.streamIsFinal = true;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException {
        return 0;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void disable() {
        Assertions.g(this.state == 1);
        this.state = 0;
        this.stream = null;
        this.streamIsFinal = false;
        b();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void f(Format[] formatArr, SampleStream sampleStream, long j6, long j10) throws ExoPlaybackException {
        Assertions.g(!this.streamIsFinal);
        this.stream = sampleStream;
        l(j10);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void reset() {
        Assertions.g(this.state == 0);
        m();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void start() throws ExoPlaybackException {
        Assertions.g(this.state == 1);
        this.state = 2;
        n();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void stop() {
        Assertions.g(this.state == 2);
        this.state = 1;
        o();
    }
}
