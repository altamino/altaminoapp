package b6;

import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: loaded from: classes2.dex */
public class a implements b {
    private float mDuration;
    private long mEndTime;
    private int mFinalValue;
    private int mInitialValue;
    private Interpolator mInterpolator;
    private long mStartTime;
    private float mValueIncrement;

    public a(int i10, int i11, long j6, long j10, Interpolator interpolator) {
        this.mInitialValue = i10;
        this.mFinalValue = i11;
        this.mStartTime = j6;
        this.mEndTime = j10;
        this.mDuration = j10 - j6;
        this.mValueIncrement = i11 - i10;
        this.mInterpolator = interpolator;
    }

    public a(int i10, int i11, long j6, long j10) {
        this(i10, i11, j6, j10, new LinearInterpolator());
    }

    @Override // b6.b
    public void apply(com.plattysoft.leonids.b bVar, long j6) {
        long j10 = this.mStartTime;
        if (j6 < j10) {
            bVar.mAlpha = this.mInitialValue;
        } else if (j6 > this.mEndTime) {
            bVar.mAlpha = this.mFinalValue;
        } else {
            bVar.mAlpha = (int) (this.mInitialValue + (this.mValueIncrement * this.mInterpolator.getInterpolation(((j6 - j10) * 1.0f) / this.mDuration)));
        }
    }
}
