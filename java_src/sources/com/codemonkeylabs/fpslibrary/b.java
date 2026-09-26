package com.codemonkeylabs.fpslibrary;

import java.io.Serializable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public class b implements Serializable {
    public static int DEFAULT_GRAVITY = 8388659;
    public e frameDataCallback;
    public float redFlagPercentage = 0.2f;
    public float yellowFlagPercentage = 0.05f;
    public float refreshRate = 60.0f;
    public float deviceRefreshRateInMs = 16.6f;
    public int startingXPosition = 200;
    public int startingYPosition = 600;
    public int startingGravity = DEFAULT_GRAVITY;
    public boolean xOrYSpecified = false;
    public boolean gravitySpecified = false;
    public final long sampleTimeInMs = 736;

    public long a() {
        return TimeUnit.NANOSECONDS.convert(736L, TimeUnit.MILLISECONDS);
    }

    protected b() {
    }
}
