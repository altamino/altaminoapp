package com.narvii.util;

/* loaded from: classes3.dex */
public class AnimSwitch {
    private boolean anim;
    private long animDuration;
    private float current;
    private boolean o;
    private float target;
    private long time;
    private float width;

    public AnimSwitch(float f, long j) {
        this.width = f;
        this.animDuration = j;
    }

    public void setCurrent(float f) {
        this.current = f;
        this.anim = this.current != this.target;
    }

    public void setTarget(float f) {
        this.target = f;
        this.anim = this.current != this.target;
    }

    public boolean inAnim() {
        return this.anim;
    }

    public float getCurrent() {
        return this.current;
    }

    public float anim(long j) {
        float fMin = ((this.width * 1.0f) * (this.time == 0 ? 16L : Math.min(50L, j - r0))) / this.animDuration;
        float f = this.current;
        float f2 = this.target;
        if (f < f2) {
            this.current = f + fMin;
            if (this.current >= f2) {
                this.current = f2;
                this.anim = false;
            } else {
                this.time = j;
                this.anim = true;
            }
        } else {
            this.current = f - fMin;
            if (this.current <= f2) {
                this.current = f2;
                this.anim = false;
            } else {
                this.time = j;
                this.anim = true;
            }
        }
        return this.current;
    }
}
