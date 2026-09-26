package com.google.android.exoplayer2.drm;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.analytics.t1;

/* JADX INFO: loaded from: classes5.dex */
public interface x {
    public static final x DRM_UNSUPPORTED;

    @Deprecated
    public static final x DUMMY;

    class a implements x {
        @Override // com.google.android.exoplayer2.drm.x
        public /* synthetic */ b b(v.a aVar, a2 a2Var) {
            return w.a(this, aVar, a2Var);
        }

        @Override // com.google.android.exoplayer2.drm.x
        public void d(Looper looper, t1 t1Var) {
        }

        @Override // com.google.android.exoplayer2.drm.x
        public /* synthetic */ void prepare() {
            w.b(this);
        }

        @Override // com.google.android.exoplayer2.drm.x
        public /* synthetic */ void release() {
            w.c(this);
        }

        @Override // com.google.android.exoplayer2.drm.x
        @Nullable
        public n a(@Nullable v.a aVar, a2 a2Var) {
            if (a2Var.drmInitData == null) {
                return null;
            }
            return new d0(new n.a(new o0(1), 6001));
        }

        @Override // com.google.android.exoplayer2.drm.x
        public int c(a2 a2Var) {
            return a2Var.drmInitData != null ? 1 : 0;
        }

        a() {
        }
    }

    public interface b {
        public static final b EMPTY = new b() { // from class: com.google.android.exoplayer2.drm.y
            @Override // com.google.android.exoplayer2.drm.x.b
            public final void release() {
                z.a();
            }
        };

        void release();
    }

    @Nullable
    n a(@Nullable v.a aVar, a2 a2Var);

    b b(@Nullable v.a aVar, a2 a2Var);

    int c(a2 a2Var);

    void d(Looper looper, t1 t1Var);

    void prepare();

    void release();

    static {
        a aVar = new a();
        DRM_UNSUPPORTED = aVar;
        DUMMY = aVar;
    }
}
