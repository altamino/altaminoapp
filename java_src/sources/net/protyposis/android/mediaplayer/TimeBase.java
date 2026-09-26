package net.protyposis.android.mediaplayer;

/* JADX INFO: loaded from: classes6.dex */
class TimeBase {
    private double mSpeed = 1.0d;
    private long mStartTime;

    public double getSpeed() {
        return this.mSpeed;
    }

    public void setSpeed(double d) {
        this.mSpeed = d;
    }

    public void start() {
        startAt(0L);
    }

    public TimeBase() {
        start();
    }

    private long microTime() {
        return (long) ((System.nanoTime() / 1000) * this.mSpeed);
    }

    public long getCurrentTime() {
        return microTime() - this.mStartTime;
    }

    public long getOffsetFrom(long j6) {
        return j6 - getCurrentTime();
    }

    public void startAt(long j6) {
        this.mStartTime = microTime() - j6;
    }
}
