package com.google.android.exoplayer2.source;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.analytics.t1;
import com.google.android.exoplayer2.i2;
import com.google.android.exoplayer2.z3;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public interface b0 {

    public interface a {
        public static final a UNSUPPORTED = i0.UNSUPPORTED;

        a a(com.google.android.exoplayer2.drm.a0 a0Var);

        a b(com.google.android.exoplayer2.upstream.f0 f0Var);

        b0 c(i2 i2Var);
    }

    public static final class b extends z {
        public b(Object obj) {
            super(obj);
        }

        public b(Object obj, long j6) {
            super(obj, j6);
        }

        public b c(Object obj) {
            return new b(super.a(obj));
        }

        public b(Object obj, long j6, int i10) {
            super(obj, j6, i10);
        }

        public b(Object obj, int i10, int i11, long j6) {
            super(obj, i10, i11, j6);
        }

        public b(z zVar) {
            super(zVar);
        }
    }

    public interface c {
        void a(b0 b0Var, z3 z3Var);
    }

    void a(c cVar);

    void b(h0 h0Var);

    y c(b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j6);

    void d(Handler handler, h0 h0Var);

    void e(c cVar, @Nullable com.google.android.exoplayer2.upstream.m0 m0Var, t1 t1Var);

    void f(y yVar);

    void g(c cVar);

    void h(c cVar);

    void i(Handler handler, com.google.android.exoplayer2.drm.v vVar);

    i2 j();

    void k(com.google.android.exoplayer2.drm.v vVar);

    void maybeThrowSourceInfoRefreshError() throws IOException;

    @Nullable
    z3 o();

    boolean r();
}
