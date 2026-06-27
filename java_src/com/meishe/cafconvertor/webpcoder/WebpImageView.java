package com.meishe.cafconvertor.webpcoder;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v7.widget.AppCompatImageView;
import android.util.AttributeSet;
import com.meishe.cafconvertor.webpcoder.FrameSequenceDrawable;
import java.util.HashSet;

/* loaded from: classes2.dex */
public class WebpImageView extends AppCompatImageView implements FrameSequenceDrawable.OnCallback {
    private FrameSequenceDrawable a;
    private CheckingProvider b;
    private OnWebpFrameCallback c;

    public static class CheckingProvider implements FrameSequenceDrawable.BitmapProvider {
        HashSet<Bitmap> a = new HashSet<>();

        @Override // com.meishe.cafconvertor.webpcoder.FrameSequenceDrawable.BitmapProvider
        public Bitmap acquireBitmap(int i, int i2) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2 + 4, Bitmap.Config.ARGB_8888);
            this.a.add(bitmapCreateBitmap);
            return bitmapCreateBitmap;
        }

        public void empty() {
            HashSet<Bitmap> hashSet = this.a;
            if (hashSet != null) {
                hashSet.clear();
            }
        }

        @Override // com.meishe.cafconvertor.webpcoder.FrameSequenceDrawable.BitmapProvider
        public void releaseBitmap(Bitmap bitmap) {
            if (!this.a.contains(bitmap)) {
                throw new IllegalStateException();
            }
            this.a.remove(bitmap);
            bitmap.recycle();
        }
    }

    public interface OnWebpFrameCallback {
        void webpFrameCallback(int i, Bitmap bitmap, long j);
    }

    public WebpImageView(Context context) {
        super(context);
        this.b = new CheckingProvider();
    }

    public WebpImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new CheckingProvider();
    }

    @Override // com.meishe.cafconvertor.webpcoder.FrameSequenceDrawable.OnCallback
    public void callback(int i, Bitmap bitmap, long j) {
        OnWebpFrameCallback onWebpFrameCallback = this.c;
        if (onWebpFrameCallback != null) {
            onWebpFrameCallback.webpFrameCallback(i, bitmap, j);
        }
    }

    public void destroy() {
        FrameSequenceDrawable frameSequenceDrawable = this.a;
        if (frameSequenceDrawable != null) {
            frameSequenceDrawable.destroy();
        }
        CheckingProvider checkingProvider = this.b;
        if (checkingProvider != null) {
            checkingProvider.empty();
            this.b = null;
        }
    }

    public int getCount() {
        FrameSequenceDrawable frameSequenceDrawable = this.a;
        if (frameSequenceDrawable != null) {
            return frameSequenceDrawable.getCount();
        }
        return -1;
    }

    public void setOnWebpFrameCallback(OnWebpFrameCallback onWebpFrameCallback) {
        this.c = onWebpFrameCallback;
    }
}
