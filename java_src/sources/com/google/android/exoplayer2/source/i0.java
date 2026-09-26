package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.i2;

/* JADX INFO: loaded from: classes9.dex */
@Deprecated
public interface i0 extends b0.a {
    public static final i0 UNSUPPORTED = new a();

    class a implements i0 {
        @Override // com.google.android.exoplayer2.source.b0.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public i0 a(@Nullable com.google.android.exoplayer2.drm.a0 a0Var) {
            return this;
        }

        @Override // com.google.android.exoplayer2.source.b0.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public i0 b(@Nullable com.google.android.exoplayer2.upstream.f0 f0Var) {
            return this;
        }

        @Override // com.google.android.exoplayer2.source.b0.a
        public b0 c(i2 i2Var) {
            throw new UnsupportedOperationException();
        }

        a() {
        }
    }
}
