package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.audio.MediaCodecAudioRenderer;
import androidx.media3.exoplayer.mediacodec.DefaultMediaCodecAdapterFactory;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.metadata.MetadataRenderer;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.text.TextRenderer;
import androidx.media3.exoplayer.video.MediaCodecVideoRenderer;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionRenderer;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
@UnstableApi
public class DefaultRenderersFactory implements RenderersFactory {
    public static final long DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS = 5000;
    public static final int EXTENSION_RENDERER_MODE_OFF = 0;
    public static final int EXTENSION_RENDERER_MODE_ON = 1;
    public static final int EXTENSION_RENDERER_MODE_PREFER = 2;
    public static final int MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY = 50;
    private static final String TAG = "DefaultRenderersFactory";
    private final Context context;
    private boolean enableAudioTrackPlaybackParams;
    private boolean enableDecoderFallback;
    private boolean enableFloatOutput;
    private boolean enableOffload;
    private final DefaultMediaCodecAdapterFactory codecAdapterFactory = new DefaultMediaCodecAdapterFactory();
    private int extensionRendererMode = 0;
    private long allowedVideoJoiningTimeMs = 5000;
    private MediaCodecSelector mediaCodecSelector = MediaCodecSelector.DEFAULT;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ExtensionRendererMode {
    }

    @Override // androidx.media3.exoplayer.RenderersFactory
    public Renderer[] a(Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
        ArrayList<Renderer> arrayList = new ArrayList<>();
        h(this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, handler, videoRendererEventListener, this.allowedVideoJoiningTimeMs, arrayList);
        AudioSink audioSinkC = c(this.context, this.enableFloatOutput, this.enableAudioTrackPlaybackParams, this.enableOffload);
        if (audioSinkC != null) {
            b(this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, audioSinkC, handler, audioRendererEventListener, arrayList);
        }
        g(this.context, textOutput, handler.getLooper(), this.extensionRendererMode, arrayList);
        e(this.context, metadataOutput, handler.getLooper(), this.extensionRendererMode, arrayList);
        d(this.context, this.extensionRendererMode, arrayList);
        f(this.context, handler, this.extensionRendererMode, arrayList);
        return (Renderer[]) arrayList.toArray(new Renderer[0]);
    }

    protected void f(Context context, Handler handler, int i10, ArrayList<Renderer> arrayList) {
    }

    protected MediaCodecAdapter.Factory i() {
        return this.codecAdapterFactory;
    }

    protected void b(Context context, int i10, MediaCodecSelector mediaCodecSelector, boolean z6, AudioSink audioSink, Handler handler, AudioRendererEventListener audioRendererEventListener, ArrayList<Renderer> arrayList) {
        int i11;
        int i12;
        int i13;
        arrayList.add(new MediaCodecAudioRenderer(context, i(), mediaCodecSelector, z6, handler, audioRendererEventListener, audioSink));
        if (i10 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i10 == 2) {
            size--;
        }
        try {
            try {
                i11 = size + 1;
                try {
                    arrayList.add(size, (Renderer) Class.forName("androidx.media3.decoder.midi.MidiRenderer").getConstructor(new Class[0]).newInstance(new Object[0]));
                    Log.f(TAG, "Loaded MidiRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i11;
                    i11 = size;
                }
            } catch (ClassNotFoundException unused2) {
            }
            try {
                try {
                    i12 = i11 + 1;
                    try {
                        arrayList.add(i11, (Renderer) Class.forName("androidx.media3.decoder.opus.LibopusAudioRenderer").getConstructor(Handler.class, AudioRendererEventListener.class, AudioSink.class).newInstance(handler, audioRendererEventListener, audioSink));
                        Log.f(TAG, "Loaded LibopusAudioRenderer.");
                    } catch (ClassNotFoundException unused3) {
                        i11 = i12;
                        i12 = i11;
                    }
                } catch (ClassNotFoundException unused4) {
                }
                try {
                    try {
                        i13 = i12 + 1;
                        try {
                            arrayList.add(i12, (Renderer) Class.forName("androidx.media3.decoder.flac.LibflacAudioRenderer").getConstructor(Handler.class, AudioRendererEventListener.class, AudioSink.class).newInstance(handler, audioRendererEventListener, audioSink));
                            Log.f(TAG, "Loaded LibflacAudioRenderer.");
                        } catch (ClassNotFoundException unused5) {
                            i12 = i13;
                            i13 = i12;
                        }
                    } catch (ClassNotFoundException unused6) {
                    }
                    try {
                        arrayList.add(i13, (Renderer) Class.forName("androidx.media3.decoder.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, AudioRendererEventListener.class, AudioSink.class).newInstance(handler, audioRendererEventListener, audioSink));
                        Log.f(TAG, "Loaded FfmpegAudioRenderer.");
                    } catch (ClassNotFoundException unused7) {
                    } catch (Exception e) {
                        throw new RuntimeException("Error instantiating FFmpeg extension", e);
                    }
                } catch (Exception e2) {
                    throw new RuntimeException("Error instantiating FLAC extension", e2);
                }
            } catch (Exception e6) {
                throw new RuntimeException("Error instantiating Opus extension", e6);
            }
        } catch (Exception e7) {
            throw new RuntimeException("Error instantiating MIDI extension", e7);
        }
    }

    @Nullable
    protected AudioSink c(Context context, boolean z6, boolean z10, boolean z11) {
        return new DefaultAudioSink.Builder(context).l(z6).k(z10).m(z11 ? 1 : 0).g();
    }

    protected void d(Context context, int i10, ArrayList<Renderer> arrayList) {
        arrayList.add(new CameraMotionRenderer());
    }

    protected void e(Context context, MetadataOutput metadataOutput, Looper looper, int i10, ArrayList<Renderer> arrayList) {
        arrayList.add(new MetadataRenderer(metadataOutput, looper));
    }

    protected void g(Context context, TextOutput textOutput, Looper looper, int i10, ArrayList<Renderer> arrayList) {
        arrayList.add(new TextRenderer(textOutput, looper));
    }

    protected void h(Context context, int i10, MediaCodecSelector mediaCodecSelector, boolean z6, Handler handler, VideoRendererEventListener videoRendererEventListener, long j6, ArrayList<Renderer> arrayList) {
        int i11;
        arrayList.add(new MediaCodecVideoRenderer(context, i(), mediaCodecSelector, j6, z6, handler, videoRendererEventListener, 50));
        if (i10 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i10 == 2) {
            size--;
        }
        try {
            try {
                i11 = size + 1;
                try {
                    arrayList.add(size, (Renderer) Class.forName("androidx.media3.decoder.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, VideoRendererEventListener.class, Integer.TYPE).newInstance(Long.valueOf(j6), handler, videoRendererEventListener, 50));
                    Log.f(TAG, "Loaded LibvpxVideoRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i11;
                    i11 = size;
                }
            } catch (ClassNotFoundException unused2) {
            }
            try {
                arrayList.add(i11, (Renderer) Class.forName("androidx.media3.decoder.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, VideoRendererEventListener.class, Integer.TYPE).newInstance(Long.valueOf(j6), handler, videoRendererEventListener, 50));
                Log.f(TAG, "Loaded Libgav1VideoRenderer.");
            } catch (ClassNotFoundException unused3) {
            } catch (Exception e) {
                throw new RuntimeException("Error instantiating AV1 extension", e);
            }
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating VP9 extension", e2);
        }
    }

    public DefaultRenderersFactory(Context context) {
        this.context = context;
    }
}
