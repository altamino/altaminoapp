package pl.droidsonroids.gif;

import android.os.SystemClock;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes8.dex */
class j extends l {
    @Override // pl.droidsonroids.gif.l
    public void a() {
        b bVar = this.mGifDrawable;
        long jP = bVar.mNativeInfoHandle.p(bVar.mBuffer);
        if (jP >= 0) {
            this.mGifDrawable.mNextFrameRenderTime = SystemClock.uptimeMillis() + jP;
            if (this.mGifDrawable.isVisible() && this.mGifDrawable.mIsRunning) {
                b bVar2 = this.mGifDrawable;
                if (!bVar2.mIsRenderingTriggeredOnDraw) {
                    bVar2.mExecutor.remove(this);
                    b bVar3 = this.mGifDrawable;
                    bVar3.mRenderTaskSchedule = bVar3.mExecutor.schedule(this, jP, TimeUnit.MILLISECONDS);
                }
            }
            if (!this.mGifDrawable.mListeners.isEmpty() && this.mGifDrawable.b() == this.mGifDrawable.mNativeInfoHandle.i() - 1) {
                b bVar4 = this.mGifDrawable;
                bVar4.mInvalidationHandler.sendEmptyMessageAtTime(bVar4.c(), this.mGifDrawable.mNextFrameRenderTime);
            }
        } else {
            b bVar5 = this.mGifDrawable;
            bVar5.mNextFrameRenderTime = Long.MIN_VALUE;
            bVar5.mIsRunning = false;
        }
        if (!this.mGifDrawable.isVisible() || this.mGifDrawable.mInvalidationHandler.hasMessages(-1)) {
            return;
        }
        this.mGifDrawable.mInvalidationHandler.sendEmptyMessageAtTime(-1, 0L);
    }

    j(b bVar) {
        super(bVar);
    }
}
