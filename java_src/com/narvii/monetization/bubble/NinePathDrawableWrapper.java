package com.narvii.monetization.bubble;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import com.narvii.monetization.bubble.ninePatch.NinePathChunk;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class NinePathDrawableWrapper {
    private static final int DEFAULT_DENSITY = 480;

    public static NinePatchDrawable getNinePathDrawable(Resources resources, Bitmap bitmap, int[] iArr) {
        return getNinePathDrawable(resources, bitmap, iArr, new int[0]);
    }

    public static NinePatchDrawable getNinePathDrawable(Resources resources, Bitmap bitmap, int[] iArr, int[] iArr2) {
        NinePathChunk ninePathChunkCreateNinePathChunk = NinePathChunk.createNinePathChunk(bitmap, iArr, iArr2);
        return new NinePatchDrawable(resources, bitmap, ninePathChunkCreateNinePathChunk.toBytes(), ninePathChunkCreateNinePathChunk.padding, "");
    }

    public static NinePathChunk getNinPathChunk(Bitmap bitmap, int[] iArr) {
        return NinePathChunk.createNinePathChunk(bitmap, iArr);
    }

    public static NinePatchDrawable getNinePathDrawable(Resources resources, InputStream inputStream) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = 480;
        options.inTargetDensity = 480;
        return getNinePathDrawable(resources, BitmapFactory.decodeStream(inputStream, new Rect(), options), new int[0]);
    }
}
