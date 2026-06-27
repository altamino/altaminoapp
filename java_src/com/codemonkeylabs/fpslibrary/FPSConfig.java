package com.codemonkeylabs.fpslibrary;

import java.io.Serializable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class FPSConfig implements Serializable {
    public static int DEFAULT_GRAVITY = 8388659;
    public float redFlagPercentage = 0.2f;
    public float yellowFlagPercentage = 0.05f;
    public float refreshRate = 60.0f;
    public float deviceRefreshRateInMs = 16.6f;
    public int startingXPosition = 200;
    public int startingYPosition = 600;
    public int startingGravity = DEFAULT_GRAVITY;
    public boolean xOrYSpecified = false;
    public boolean gravitySpecified = false;
    public FrameDataCallback frameDataCallback = null;
    public final long sampleTimeInMs = 736;

    protected FPSConfig() {
    }

    public long getSampleTimeInNs() {
        return TimeUnit.NANOSECONDS.convert(736L, TimeUnit.MILLISECONDS);
    }
}
