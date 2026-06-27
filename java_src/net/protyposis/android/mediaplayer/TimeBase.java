package net.protyposis.android.mediaplayer;

/* loaded from: classes4.dex */
class TimeBase {
    private double mSpeed = 1.0d;
    private long mStartTime;

    public TimeBase() {
        start();
    }

    public void start() {
        startAt(0L);
    }

    public void startAt(long j) {
        this.mStartTime = microTime() - j;
    }

    public long getCurrentTime() {
        return microTime() - this.mStartTime;
    }

    public long getOffsetFrom(long j) {
        return j - getCurrentTime();
    }

    public double getSpeed() {
        return this.mSpeed;
    }

    private long microTime() {
        double dNanoTime = System.nanoTime() / 1000;
        double d = this.mSpeed;
        Double.isNaN(dNanoTime);
        return (long) (dNanoTime * d);
    }
}
