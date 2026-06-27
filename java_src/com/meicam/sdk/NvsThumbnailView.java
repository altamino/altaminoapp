package com.meicam.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes2.dex */
public class NvsThumbnailView extends View {
    private long m_internalObj;
    private String m_mediaFilePath;
    private boolean m_needUpdate;
    private boolean m_painting;
    private Bitmap m_thumbnail;

    private native void nativeCancelIconTask(long j);

    private native void nativeClose(long j);

    private native void nativeGetThumbnail(long j, String str);

    private native long nativeInit();

    public NvsThumbnailView(Context context) {
        super(context);
        this.m_thumbnail = null;
        this.m_internalObj = 0L;
        this.m_painting = false;
        this.m_needUpdate = false;
    }

    public NvsThumbnailView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.m_thumbnail = null;
        this.m_internalObj = 0L;
        this.m_painting = false;
        this.m_needUpdate = false;
    }

    public NvsThumbnailView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m_thumbnail = null;
        this.m_internalObj = 0L;
        this.m_painting = false;
        this.m_needUpdate = false;
    }

    public NvsThumbnailView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.m_thumbnail = null;
        this.m_internalObj = 0L;
        this.m_painting = false;
        this.m_needUpdate = false;
    }

    public void setMediaFilePath(String str) {
        NvsUtils.checkFunctionInMainThread();
        String str2 = this.m_mediaFilePath;
        if (str2 == null || str == null || !str2.equals(str)) {
            this.m_mediaFilePath = str;
            this.m_needUpdate = true;
            cancelIconTask();
            invalidate();
        }
    }

    public String getMediaFilePath() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_mediaFilePath;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        String str = this.m_mediaFilePath;
        if (str == null || str.isEmpty()) {
            return;
        }
        if (this.m_thumbnail == null || this.m_needUpdate) {
            if (this.m_internalObj == 0) {
                return;
            }
            this.m_needUpdate = false;
            this.m_painting = true;
            if (!isInEditMode()) {
                nativeGetThumbnail(this.m_internalObj, this.m_mediaFilePath);
            }
            this.m_painting = false;
            return;
        }
        Rect rect = new Rect();
        getDrawingRect(rect);
        int width = this.m_thumbnail.getWidth();
        int height = this.m_thumbnail.getHeight();
        double d = width;
        double dWidth = rect.width();
        Double.isNaN(d);
        Double.isNaN(dWidth);
        double d2 = d / dWidth;
        double d3 = height;
        double dHeight = rect.height();
        Double.isNaN(d3);
        Double.isNaN(dHeight);
        double d4 = d3 / dHeight;
        if (d2 > d4) {
            Double.isNaN(d);
            double d5 = d / d4;
            int i = rect.left;
            double dWidth2 = rect.width();
            Double.isNaN(dWidth2);
            rect.left = i + ((int) ((dWidth2 - d5) / 2.0d));
            double d6 = rect.left;
            Double.isNaN(d6);
            rect.right = (int) (d6 + d5);
        } else {
            Double.isNaN(d3);
            double d7 = d3 / d2;
            int i2 = rect.top;
            double dHeight2 = rect.height();
            Double.isNaN(dHeight2);
            rect.top = i2 + ((int) ((dHeight2 - d7) / 2.0d));
            double d8 = rect.top;
            Double.isNaN(d8);
            rect.bottom = (int) (d8 + d7);
        }
        canvas.drawBitmap(this.m_thumbnail, (Rect) null, rect, new Paint(2));
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        if (isInEditMode()) {
            return;
        }
        this.m_internalObj = nativeInit();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        cancelIconTask();
        long j = this.m_internalObj;
        if (j != 0) {
            nativeClose(j);
            this.m_internalObj = 0L;
        }
        this.m_thumbnail = null;
        super.onDetachedFromWindow();
    }

    private void cancelIconTask() {
        if (isInEditMode()) {
            return;
        }
        nativeCancelIconTask(this.m_internalObj);
    }

    protected void notifyThumbnailArrived(final Bitmap bitmap) {
        if (!this.m_painting) {
            this.m_thumbnail = bitmap;
            invalidate();
        } else {
            new Handler().post(new Runnable() { // from class: com.meicam.sdk.NvsThumbnailView.1
                @Override // java.lang.Runnable
                public void run() {
                    NvsThumbnailView.this.m_thumbnail = bitmap;
                    NvsThumbnailView.this.invalidate();
                }
            });
        }
    }
}
