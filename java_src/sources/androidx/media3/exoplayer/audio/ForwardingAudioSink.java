package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public class ForwardingAudioSink implements AudioSink {
    private final AudioSink sink;

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public /* synthetic */ void release() {
        m.a(this);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean a(Format format) {
        return this.sink.a(format);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void b(PlaybackParameters playbackParameters) {
        this.sink.b(playbackParameters);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void c() {
        this.sink.c();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void d() {
        this.sink.d();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void disableTunneling() {
        this.sink.disableTunneling();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean e(ByteBuffer byteBuffer, long j6, int i10) throws AudioSink.WriteException, AudioSink.InitializationException {
        return this.sink.e(byteBuffer, j6, i10);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void f(long j6) {
        this.sink.f(j6);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void flush() {
        this.sink.flush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void g(boolean z6) {
        this.sink.g(z6);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public long getCurrentPositionUs(boolean z6) {
        return this.sink.getCurrentPositionUs(z6);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public PlaybackParameters getPlaybackParameters() {
        return this.sink.getPlaybackParameters();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void h(AudioAttributes audioAttributes) {
        this.sink.h(audioAttributes);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void handleDiscontinuity() {
        this.sink.handleDiscontinuity();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean hasPendingData() {
        return this.sink.hasPendingData();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void i(AudioSink.Listener listener) {
        this.sink.i(listener);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean isEnded() {
        return this.sink.isEnded();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void j(Format format, int i10, @Nullable int[] iArr) throws AudioSink.ConfigurationException {
        this.sink.j(format, i10, iArr);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public int k(Format format) {
        return this.sink.k(format);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void l(AuxEffectInfo auxEffectInfo) {
        this.sink.l(auxEffectInfo);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void m(@Nullable PlayerId playerId) {
        this.sink.m(playerId);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void pause() {
        this.sink.pause();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void play() {
        this.sink.play();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void playToEndOfStream() throws AudioSink.WriteException {
        this.sink.playToEndOfStream();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void reset() {
        this.sink.reset();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setAudioSessionId(int i10) {
        this.sink.setAudioSessionId(i10);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    @RequiresApi
    public void setPreferredDevice(@Nullable AudioDeviceInfo audioDeviceInfo) {
        this.sink.setPreferredDevice(audioDeviceInfo);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setVolume(float f) {
        this.sink.setVolume(f);
    }

    public ForwardingAudioSink(AudioSink audioSink) {
        this.sink = audioSink;
    }
}
