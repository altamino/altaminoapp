package com.facebook.rebound;

import android.annotation.TargetApi;
import android.os.SystemClock;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes8.dex */
abstract class a {

    /* JADX INFO: renamed from: com.facebook.rebound.a$a, reason: collision with other inner class name */
    @TargetApi(16)
    private static class C0153a extends h {
        private final Choreographer mChoreographer;
        private final Choreographer.FrameCallback mFrameCallback = new ChoreographerFrameCallbackC0154a();
        private long mLastTime;
        private boolean mStarted;

        /* JADX INFO: renamed from: com.facebook.rebound.a$a$a, reason: collision with other inner class name */
        class ChoreographerFrameCallbackC0154a implements Choreographer.FrameCallback {
            ChoreographerFrameCallbackC0154a() {
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j6) {
                if (!C0153a.this.mStarted || C0153a.this.mSpringSystem == null) {
                    return;
                }
                long jUptimeMillis = SystemClock.uptimeMillis();
                C0153a c0153a = C0153a.this;
                c0153a.mSpringSystem.e(jUptimeMillis - c0153a.mLastTime);
                C0153a.this.mLastTime = jUptimeMillis;
                C0153a.this.mChoreographer.postFrameCallback(C0153a.this.mFrameCallback);
            }
        }

        @Override // com.facebook.rebound.h
        public void c() {
            this.mStarted = false;
            this.mChoreographer.removeFrameCallback(this.mFrameCallback);
        }

        public static C0153a i() {
            return new C0153a(Choreographer.getInstance());
        }

        @Override // com.facebook.rebound.h
        public void b() {
            if (this.mStarted) {
                return;
            }
            this.mStarted = true;
            this.mLastTime = SystemClock.uptimeMillis();
            this.mChoreographer.removeFrameCallback(this.mFrameCallback);
            this.mChoreographer.postFrameCallback(this.mFrameCallback);
        }

        public C0153a(Choreographer choreographer) {
            this.mChoreographer = choreographer;
        }
    }

    public static h a() {
        return C0153a.i();
    }
}
