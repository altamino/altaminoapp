package androidx.compose.ui.input.pointer.util;

/* JADX INFO: loaded from: classes9.dex */
final class ImpulseCalculator {
    private float work;
    private long previousT = Long.MAX_VALUE;
    private float previousX = Float.NaN;
    private boolean initialCondition = true;

    public final void c() {
        this.work = 0.0f;
        this.previousT = Long.MAX_VALUE;
        this.previousX = Float.NaN;
        this.initialCondition = true;
    }

    public final void a(long j6, float f) {
        if (this.previousT == Long.MAX_VALUE || Float.isNaN(this.previousX)) {
            this.previousT = j6;
            this.previousX = f;
            return;
        }
        if (j6 == this.previousT) {
            this.previousX = f;
            return;
        }
        float fC = VelocityTrackerKt.c(this.work);
        float f6 = (f - this.previousX) / ((j6 - this.previousT) * 0.001f);
        float fAbs = this.work + ((f6 - fC) * Math.abs(f6));
        this.work = fAbs;
        if (this.initialCondition) {
            this.work = fAbs * 0.5f;
            this.initialCondition = false;
        }
        this.previousT = j6;
        this.previousX = f;
    }

    public final float b() {
        return VelocityTrackerKt.c(this.work);
    }
}
