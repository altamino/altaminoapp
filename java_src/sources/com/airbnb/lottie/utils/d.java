package com.airbnb.lottie.utils;

/* JADX INFO: loaded from: classes8.dex */
public class d {
    private int n;
    private float sum;

    public void a(float f) {
        float f6 = this.sum + f;
        this.sum = f6;
        int i10 = this.n + 1;
        this.n = i10;
        if (i10 == Integer.MAX_VALUE) {
            this.sum = f6 / 2.0f;
            this.n = i10 / 2;
        }
    }
}
