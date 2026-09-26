package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes9.dex */
final class q {
    private static final com.bumptech.glide.load.engine.bitmap_recycle.d NO_RECYCLE_BITMAP_POOL = new a();
    private static final String TAG = "DrawableToBitmap";

    class a extends com.bumptech.glide.load.engine.bitmap_recycle.e {
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.e, com.bumptech.glide.load.engine.bitmap_recycle.d
        public void c(Bitmap bitmap) {
        }

        a() {
        }
    }

    @Nullable
    private static Bitmap b(com.bumptech.glide.load.engine.bitmap_recycle.d dVar, Drawable drawable, int i10, int i11) {
        if (i10 == Integer.MIN_VALUE && drawable.getIntrinsicWidth() <= 0) {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
            }
            return null;
        }
        if (i11 == Integer.MIN_VALUE && drawable.getIntrinsicHeight() <= 0) {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
            }
            return null;
        }
        if (drawable.getIntrinsicWidth() > 0) {
            i10 = drawable.getIntrinsicWidth();
        }
        if (drawable.getIntrinsicHeight() > 0) {
            i11 = drawable.getIntrinsicHeight();
        }
        Lock lockD = c0.d();
        lockD.lock();
        Bitmap bitmapD = dVar.d(i10, i11, Bitmap.Config.ARGB_8888);
        try {
            Canvas canvas = new Canvas(bitmapD);
            drawable.setBounds(0, 0, i10, i11);
            drawable.draw(canvas);
            canvas.setBitmap(null);
            return bitmapD;
        } finally {
            lockD.unlock();
        }
    }

    @Nullable
    static com.bumptech.glide.load.engine.v<Bitmap> a(com.bumptech.glide.load.engine.bitmap_recycle.d dVar, Drawable drawable, int i10, int i11) {
        Bitmap bitmapB;
        Drawable current = drawable.getCurrent();
        boolean z6 = false;
        if (current instanceof BitmapDrawable) {
            bitmapB = ((BitmapDrawable) current).getBitmap();
        } else if (!(current instanceof Animatable)) {
            bitmapB = b(dVar, current, i10, i11);
            z6 = true;
        } else {
            bitmapB = null;
        }
        if (!z6) {
            dVar = NO_RECYCLE_BITMAP_POOL;
        }
        return f.d(bitmapB, dVar);
    }
}
