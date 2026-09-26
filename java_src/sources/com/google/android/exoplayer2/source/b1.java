package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.i2;
import com.google.android.exoplayer2.z3;

/* JADX INFO: loaded from: classes7.dex */
public final class b1 extends com.google.android.exoplayer2.source.a {
    private final com.google.android.exoplayer2.upstream.k.a dataSourceFactory;
    private final com.google.android.exoplayer2.upstream.o dataSpec;
    private final long durationUs;
    private final a2 format;
    private final com.google.android.exoplayer2.upstream.f0 loadErrorHandlingPolicy;
    private final i2 mediaItem;
    private final z3 timeline;

    @Nullable
    private com.google.android.exoplayer2.upstream.m0 transferListener;
    private final boolean treatLoadErrorsAsEndOfStream;

    public static final class b {
        private final com.google.android.exoplayer2.upstream.k.a dataSourceFactory;

        @Nullable
        private Object tag;

        @Nullable
        private String trackId;
        private com.google.android.exoplayer2.upstream.f0 loadErrorHandlingPolicy = new com.google.android.exoplayer2.upstream.w();
        private boolean treatLoadErrorsAsEndOfStream = true;

        public b1 a(i2.l lVar, long j6) {
            return new b1(this.trackId, lVar, this.dataSourceFactory, j6, this.loadErrorHandlingPolicy, this.treatLoadErrorsAsEndOfStream, this.tag);
        }

        public b b(@Nullable com.google.android.exoplayer2.upstream.f0 f0Var) {
            if (f0Var == null) {
                f0Var = new com.google.android.exoplayer2.upstream.w();
            }
            this.loadErrorHandlingPolicy = f0Var;
            return this;
        }

        public b(com.google.android.exoplayer2.upstream.k.a aVar) {
            this.dataSourceFactory = (com.google.android.exoplayer2.upstream.k.a) com.google.android.exoplayer2.util.a.e(aVar);
        }
    }

    @Override // com.google.android.exoplayer2.source.b0
    public i2 j() {
        return this.mediaItem;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void y() {
    }

    private b1(@Nullable String str, i2.l lVar, com.google.android.exoplayer2.upstream.k.a aVar, long j6, com.google.android.exoplayer2.upstream.f0 f0Var, boolean z6, @Nullable Object obj) {
        this.dataSourceFactory = aVar;
        this.durationUs = j6;
        this.loadErrorHandlingPolicy = f0Var;
        this.treatLoadErrorsAsEndOfStream = z6;
        i2 i2VarA = new i2.c().g(Uri.EMPTY).d(lVar.uri.toString()).e(com.google.common.collect.a0.y(lVar)).f(obj).a();
        this.mediaItem = i2VarA;
        a2.b bVarU = new a2.b().e0((String) com.google.common.base.i.a(lVar.mimeType, "text/x-unknown")).V(lVar.language).g0(lVar.selectionFlags).c0(lVar.roleFlags).U(lVar.label);
        String str2 = lVar.id;
        this.format = bVarU.S(str2 == null ? str : str2).E();
        this.dataSpec = new com.google.android.exoplayer2.upstream.o.b().h(lVar.uri).b(1).a();
        this.timeline = new z0(j6, true, false, false, (Object) null, i2VarA);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public y c(b0.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j6) {
        return new a1(this.dataSpec, this.dataSourceFactory, this.transferListener, this.format, this.durationUs, this.loadErrorHandlingPolicy, p(bVar), this.treatLoadErrorsAsEndOfStream);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public void f(y yVar) {
        ((a1) yVar).k();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void w(@Nullable com.google.android.exoplayer2.upstream.m0 m0Var) {
        this.transferListener = m0Var;
        x(this.timeline);
    }
}
