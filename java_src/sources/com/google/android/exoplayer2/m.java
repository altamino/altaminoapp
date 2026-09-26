package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class m implements q3 {
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
    private final com.google.android.exoplayer2.mediacodec.j codecAdapterFactory = new com.google.android.exoplayer2.mediacodec.j();
    private int extensionRendererMode = 0;
    private long allowedVideoJoiningTimeMs = 5000;
    private com.google.android.exoplayer2.mediacodec.q mediaCodecSelector = com.google.android.exoplayer2.mediacodec.q.DEFAULT;

    @Override // com.google.android.exoplayer2.q3
    public m3[] a(Handler handler, com.google.android.exoplayer2.video.y yVar, com.google.android.exoplayer2.audio.t tVar, com.google.android.exoplayer2.text.p pVar, r2.e eVar) {
        ArrayList<m3> arrayList = new ArrayList<>();
        h(this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, handler, yVar, this.allowedVideoJoiningTimeMs, arrayList);
        com.google.android.exoplayer2.audio.v vVarC = c(this.context, this.enableFloatOutput, this.enableAudioTrackPlaybackParams, this.enableOffload);
        if (vVarC != null) {
            b(this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, vVarC, handler, tVar, arrayList);
        }
        g(this.context, pVar, handler.getLooper(), this.extensionRendererMode, arrayList);
        e(this.context, eVar, handler.getLooper(), this.extensionRendererMode, arrayList);
        d(this.context, this.extensionRendererMode, arrayList);
        f(this.context, handler, this.extensionRendererMode, arrayList);
        return (m3[]) arrayList.toArray(new m3[0]);
    }

    protected void f(Context context, Handler handler, int i10, ArrayList<m3> arrayList) {
    }

    protected com.google.android.exoplayer2.mediacodec.l.b i() {
        return this.codecAdapterFactory;
    }

    protected void b(Context context, int i10, com.google.android.exoplayer2.mediacodec.q qVar, boolean z6, com.google.android.exoplayer2.audio.v vVar, Handler handler, com.google.android.exoplayer2.audio.t tVar, ArrayList<m3> arrayList) {
        int i11;
        int i12;
        int i13;
        arrayList.add(new com.google.android.exoplayer2.audio.g0(context, i(), qVar, z6, handler, tVar, vVar));
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
                    arrayList.add(size, (m3) Class.forName("com.google.android.exoplayer2.decoder.midi.MidiRenderer").getConstructor(new Class[0]).newInstance(new Object[0]));
                    com.google.android.exoplayer2.util.t.f(TAG, "Loaded MidiRenderer.");
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
                        arrayList.add(i11, (m3) Class.forName("com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.t.class, com.google.android.exoplayer2.audio.v.class).newInstance(handler, tVar, vVar));
                        com.google.android.exoplayer2.util.t.f(TAG, "Loaded LibopusAudioRenderer.");
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
                            arrayList.add(i12, (m3) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.t.class, com.google.android.exoplayer2.audio.v.class).newInstance(handler, tVar, vVar));
                            com.google.android.exoplayer2.util.t.f(TAG, "Loaded LibflacAudioRenderer.");
                        } catch (ClassNotFoundException unused5) {
                            i12 = i13;
                            i13 = i12;
                        }
                    } catch (ClassNotFoundException unused6) {
                    }
                    try {
                        arrayList.add(i13, (m3) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.t.class, com.google.android.exoplayer2.audio.v.class).newInstance(handler, tVar, vVar));
                        com.google.android.exoplayer2.util.t.f(TAG, "Loaded FfmpegAudioRenderer.");
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
    protected com.google.android.exoplayer2.audio.v c(Context context, boolean z6, boolean z10, boolean z11) {
        return new com.google.android.exoplayer2.audio.c0.g().g(com.google.android.exoplayer2.audio.f.c(context)).k(z6).j(z10).l(z11 ? 1 : 0).f();
    }

    protected void d(Context context, int i10, ArrayList<m3> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.video.spherical.b());
    }

    protected void e(Context context, r2.e eVar, Looper looper, int i10, ArrayList<m3> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.metadata.a(eVar, looper));
    }

    protected void g(Context context, com.google.android.exoplayer2.text.p pVar, Looper looper, int i10, ArrayList<m3> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.text.q(pVar, looper));
    }

    protected void h(Context context, int i10, com.google.android.exoplayer2.mediacodec.q qVar, boolean z6, Handler handler, com.google.android.exoplayer2.video.y yVar, long j6, ArrayList<m3> arrayList) {
        int i11;
        arrayList.add(new com.google.android.exoplayer2.video.h(context, i(), qVar, j6, z6, handler, yVar, 50));
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
                    arrayList.add(size, (m3) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, com.google.android.exoplayer2.video.y.class, Integer.TYPE).newInstance(Long.valueOf(j6), handler, yVar, 50));
                    com.google.android.exoplayer2.util.t.f(TAG, "Loaded LibvpxVideoRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i11;
                    i11 = size;
                }
            } catch (ClassNotFoundException unused2) {
            }
            try {
                arrayList.add(i11, (m3) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, com.google.android.exoplayer2.video.y.class, Integer.TYPE).newInstance(Long.valueOf(j6), handler, yVar, 50));
                com.google.android.exoplayer2.util.t.f(TAG, "Loaded Libgav1VideoRenderer.");
            } catch (ClassNotFoundException unused3) {
            } catch (Exception e) {
                throw new RuntimeException("Error instantiating AV1 extension", e);
            }
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating VP9 extension", e2);
        }
    }

    public m(Context context) {
        this.context = context;
    }
}
