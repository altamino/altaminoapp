package com.google.android.exoplayer2.analytics;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.d3;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface a extends d3.d, com.google.android.exoplayer2.source.h0, com.google.android.exoplayer2.upstream.e.a, com.google.android.exoplayer2.drm.v {
    void A(com.google.android.exoplayer2.decoder.e eVar);

    void C(d3 d3Var, Looper looper);

    void D(c cVar);

    void Q(List<com.google.android.exoplayer2.source.b0.b> list, @Nullable com.google.android.exoplayer2.source.b0.b bVar);

    void a(Exception exc);

    void b(String str);

    void c(String str);

    void d(Exception exc);

    void e(long j6, int i10);

    void f(long j6);

    void g(Exception exc);

    void h(Object obj, long j6);

    void i(int i10, long j6, long j10);

    void l(a2 a2Var, @Nullable com.google.android.exoplayer2.decoder.i iVar);

    void m(com.google.android.exoplayer2.decoder.e eVar);

    void onAudioDecoderInitialized(String str, long j6, long j10);

    void onDroppedFrames(int i10, long j6);

    void onVideoDecoderInitialized(String str, long j6, long j10);

    void p();

    void release();

    void t(a2 a2Var, @Nullable com.google.android.exoplayer2.decoder.i iVar);

    void u(com.google.android.exoplayer2.decoder.e eVar);

    void w(com.google.android.exoplayer2.decoder.e eVar);
}
