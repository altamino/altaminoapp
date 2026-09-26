package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface s extends d3 {
    public static final long DEFAULT_DETACH_SURFACE_TIMEOUT_MS = 2000;
    public static final long DEFAULT_RELEASE_TIMEOUT_MS = 500;

    public interface a {
        void o(boolean z6);

        void v(boolean z6);
    }

    public static final class b {
        com.google.common.base.g<com.google.android.exoplayer2.util.d, com.google.android.exoplayer2.analytics.a> analyticsCollectorFunction;
        com.google.android.exoplayer2.audio.e audioAttributes;
        com.google.common.base.u<com.google.android.exoplayer2.upstream.e> bandwidthMeterSupplier;
        boolean buildCalled;
        com.google.android.exoplayer2.util.d clock;
        final Context context;
        long detachSurfaceTimeoutMs;
        long foregroundModeTimeoutMs;
        boolean handleAudioBecomingNoisy;
        boolean handleAudioFocus;
        f2 livePlaybackSpeedControl;
        com.google.common.base.u<g2> loadControlSupplier;
        Looper looper;
        com.google.common.base.u<com.google.android.exoplayer2.source.b0.a> mediaSourceFactorySupplier;
        boolean pauseAtEndOfMediaItems;

        @Nullable
        com.google.android.exoplayer2.util.e0 priorityTaskManager;
        long releaseTimeoutMs;
        com.google.common.base.u<q3> renderersFactorySupplier;
        long seekBackIncrementMs;
        long seekForwardIncrementMs;
        r3 seekParameters;
        boolean skipSilenceEnabled;
        com.google.common.base.u<com.google.android.exoplayer2.trackselection.b0> trackSelectorSupplier;
        boolean useLazyPreparation;
        boolean usePlatformDiagnostics;
        int videoChangeFrameRateStrategy;
        int videoScalingMode;
        int wakeMode;

        public b(final Context context) {
            this(context, (com.google.common.base.u<q3>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.t
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.r(context);
                }
            }, (com.google.common.base.u<com.google.android.exoplayer2.source.b0.a>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.c0
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.s(context);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ com.google.android.exoplayer2.source.b0.a C(com.google.android.exoplayer2.source.b0.a aVar) {
            return aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ q3 D(q3 q3Var) {
            return q3Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ com.google.android.exoplayer2.source.b0.a E(com.google.android.exoplayer2.source.b0.a aVar) {
            return aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ q3 F(q3 q3Var) {
            return q3Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ com.google.android.exoplayer2.source.b0.a G(com.google.android.exoplayer2.source.b0.a aVar) {
            return aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ com.google.android.exoplayer2.trackselection.b0 t(com.google.android.exoplayer2.trackselection.b0 b0Var) {
            return b0Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ g2 u(g2 g2Var) {
            return g2Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ com.google.android.exoplayer2.upstream.e v(com.google.android.exoplayer2.upstream.e eVar) {
            return eVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ com.google.android.exoplayer2.analytics.a w(com.google.android.exoplayer2.analytics.a aVar, com.google.android.exoplayer2.util.d dVar) {
            return aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ q3 z(q3 q3Var) {
            return q3Var;
        }

        public b(final Context context, final q3 q3Var) {
            this(context, (com.google.common.base.u<q3>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.h0
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.z(q3Var);
                }
            }, (com.google.common.base.u<com.google.android.exoplayer2.source.b0.a>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.i0
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.A(context);
                }
            });
            com.google.android.exoplayer2.util.a.e(q3Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ com.google.android.exoplayer2.source.b0.a A(Context context) {
            return new com.google.android.exoplayer2.source.q(context, new com.google.android.exoplayer2.extractor.i());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ q3 B(Context context) {
            return new m(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ q3 r(Context context) {
            return new m(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ com.google.android.exoplayer2.source.b0.a s(Context context) {
            return new com.google.android.exoplayer2.source.q(context, new com.google.android.exoplayer2.extractor.i());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ com.google.android.exoplayer2.trackselection.b0 x(Context context) {
            return new com.google.android.exoplayer2.trackselection.m(context);
        }

        public b H(Looper looper) {
            com.google.android.exoplayer2.util.a.g(!this.buildCalled);
            com.google.android.exoplayer2.util.a.e(looper);
            this.looper = looper;
            return this;
        }

        public b I(boolean z6) {
            com.google.android.exoplayer2.util.a.g(!this.buildCalled);
            this.pauseAtEndOfMediaItems = z6;
            return this;
        }

        public s q() {
            com.google.android.exoplayer2.util.a.g(!this.buildCalled);
            this.buildCalled = true;
            return new k1(this, null);
        }

        public b(final Context context, final com.google.android.exoplayer2.source.b0.a aVar) {
            this(context, (com.google.common.base.u<q3>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.d0
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.B(context);
                }
            }, (com.google.common.base.u<com.google.android.exoplayer2.source.b0.a>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.e0
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.C(aVar);
                }
            });
            com.google.android.exoplayer2.util.a.e(aVar);
        }

        public b(Context context, final q3 q3Var, final com.google.android.exoplayer2.source.b0.a aVar) {
            this(context, (com.google.common.base.u<q3>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.f0
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.D(q3Var);
                }
            }, (com.google.common.base.u<com.google.android.exoplayer2.source.b0.a>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.g0
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.E(aVar);
                }
            });
            com.google.android.exoplayer2.util.a.e(q3Var);
            com.google.android.exoplayer2.util.a.e(aVar);
        }

        public b(Context context, final q3 q3Var, final com.google.android.exoplayer2.source.b0.a aVar, final com.google.android.exoplayer2.trackselection.b0 b0Var, final g2 g2Var, final com.google.android.exoplayer2.upstream.e eVar, final com.google.android.exoplayer2.analytics.a aVar2) {
            this(context, (com.google.common.base.u<q3>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.j0
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.F(q3Var);
                }
            }, (com.google.common.base.u<com.google.android.exoplayer2.source.b0.a>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.k0
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.G(aVar);
                }
            }, (com.google.common.base.u<com.google.android.exoplayer2.trackselection.b0>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.u
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.t(b0Var);
                }
            }, (com.google.common.base.u<g2>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.v
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.u(g2Var);
                }
            }, (com.google.common.base.u<com.google.android.exoplayer2.upstream.e>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.w
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.v(eVar);
                }
            }, (com.google.common.base.g<com.google.android.exoplayer2.util.d, com.google.android.exoplayer2.analytics.a>) new com.google.common.base.g() { // from class: com.google.android.exoplayer2.x
                @Override // com.google.common.base.g
                public final Object apply(Object obj) {
                    return s.b.w(aVar2, (com.google.android.exoplayer2.util.d) obj);
                }
            });
            com.google.android.exoplayer2.util.a.e(q3Var);
            com.google.android.exoplayer2.util.a.e(aVar);
            com.google.android.exoplayer2.util.a.e(b0Var);
            com.google.android.exoplayer2.util.a.e(eVar);
            com.google.android.exoplayer2.util.a.e(aVar2);
        }

        private b(final Context context, com.google.common.base.u<q3> uVar, com.google.common.base.u<com.google.android.exoplayer2.source.b0.a> uVar2) {
            this(context, uVar, uVar2, (com.google.common.base.u<com.google.android.exoplayer2.trackselection.b0>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.y
                @Override // com.google.common.base.u
                public final Object get() {
                    return s.b.x(context);
                }
            }, (com.google.common.base.u<g2>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.z
                @Override // com.google.common.base.u
                public final Object get() {
                    return new k();
                }
            }, (com.google.common.base.u<com.google.android.exoplayer2.upstream.e>) new com.google.common.base.u() { // from class: com.google.android.exoplayer2.a0
                @Override // com.google.common.base.u
                public final Object get() {
                    return com.google.android.exoplayer2.upstream.r.l(context);
                }
            }, (com.google.common.base.g<com.google.android.exoplayer2.util.d, com.google.android.exoplayer2.analytics.a>) new com.google.common.base.g() { // from class: com.google.android.exoplayer2.b0
                @Override // com.google.common.base.g
                public final Object apply(Object obj) {
                    return new com.google.android.exoplayer2.analytics.o1((com.google.android.exoplayer2.util.d) obj);
                }
            });
        }

        private b(Context context, com.google.common.base.u<q3> uVar, com.google.common.base.u<com.google.android.exoplayer2.source.b0.a> uVar2, com.google.common.base.u<com.google.android.exoplayer2.trackselection.b0> uVar3, com.google.common.base.u<g2> uVar4, com.google.common.base.u<com.google.android.exoplayer2.upstream.e> uVar5, com.google.common.base.g<com.google.android.exoplayer2.util.d, com.google.android.exoplayer2.analytics.a> gVar) {
            this.context = (Context) com.google.android.exoplayer2.util.a.e(context);
            this.renderersFactorySupplier = uVar;
            this.mediaSourceFactorySupplier = uVar2;
            this.trackSelectorSupplier = uVar3;
            this.loadControlSupplier = uVar4;
            this.bandwidthMeterSupplier = uVar5;
            this.analyticsCollectorFunction = gVar;
            this.looper = com.google.android.exoplayer2.util.o0.K();
            this.audioAttributes = com.google.android.exoplayer2.audio.e.DEFAULT;
            this.wakeMode = 0;
            this.videoScalingMode = 1;
            this.videoChangeFrameRateStrategy = 0;
            this.useLazyPreparation = true;
            this.seekParameters = r3.DEFAULT;
            this.seekBackIncrementMs = 5000L;
            this.seekForwardIncrementMs = 15000L;
            this.livePlaybackSpeedControl = new j.b().a();
            this.clock = com.google.android.exoplayer2.util.d.DEFAULT;
            this.releaseTimeoutMs = 500L;
            this.detachSurfaceTimeoutMs = 2000L;
            this.usePlatformDiagnostics = true;
        }
    }

    void a(com.google.android.exoplayer2.source.b0 b0Var);
}
