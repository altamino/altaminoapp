package com.narvii.util;

/* JADX INFO: loaded from: classes10.dex */
public class AnimSwitch {
    private boolean anim;
    private long animDuration;
    private float current;
    private boolean o;
    private float target;
    private long time;
    private float width;

    public float getCurrent() {
        return this.current;
    }

    public boolean inAnim() {
        return this.anim;
    }

    public void setCurrent(float f) {
        this.current = f;
        this.anim = f != this.target;
    }

    public void setTarget(float f) {
        this.target = f;
        this.anim = this.current != f;
    }

    public float anim(long j6) {
        long j10 = this.time;
        float fMin = ((this.width * 1.0f) * (j10 == 0 ? 16L : Math.min(50L, j6 - j10))) / this.animDuration;
        float f = this.current;
        float f6 = this.target;
        if (f < f6) {
            float f7 = f + fMin;
            this.current = f7;
            if (f7 >= f6) {
                this.current = f6;
                this.anim = false;
            } else {
                this.time = j6;
                this.anim = true;
            }
        } else {
            float f10 = f - fMin;
            this.current = f10;
            if (f10 <= f6) {
                this.current = f6;
                this.anim = false;
            } else {
                this.time = j6;
                this.anim = true;
            }
        }
        return this.current;
    }

    public AnimSwitch(float f, long j6) {
        this.width = f;
        this.animDuration = j6;
    }
}
