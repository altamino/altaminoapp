package com.bumptech.glide.gifdecoder;

import androidx.annotation.ColorInt;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class c {
    public static final int NETSCAPE_LOOP_COUNT_DOES_NOT_EXIST = -1;
    public static final int NETSCAPE_LOOP_COUNT_FOREVER = 0;

    @ColorInt
    int bgColor;
    int bgIndex;
    b currentFrame;
    boolean gctFlag;
    int gctSize;
    int height;
    int pixelAspect;
    int width;

    @ColorInt
    int[] gct = null;
    int status = 0;
    int frameCount = 0;
    final List<b> frames = new ArrayList();
    int loopCount = -1;

    public int a() {
        return this.height;
    }

    public int b() {
        return this.frameCount;
    }

    public int c() {
        return this.status;
    }

    public int d() {
        return this.width;
    }
}
