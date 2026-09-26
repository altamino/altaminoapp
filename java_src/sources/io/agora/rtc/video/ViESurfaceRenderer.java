package io.agora.rtc.video;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Process;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import io.agora.rtc.internal.Logging;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class ViESurfaceRenderer implements SurfaceHolder.Callback {
    private static final String TAG = "ViESurfaceRenderer";
    private SurfaceHolder surfaceHolder;
    private Bitmap bitmap = null;
    private ByteBuffer byteBuffer = null;
    private Rect source = new Rect();
    private Rect dest = new Rect();
    private float topScale = 0.0f;
    private float bottomScale = 1.0f;
    private float leftScale = 0.0f;
    private float rightScale = 1.0f;

    private void changeDestRect(int dstWidth, int dstHeight) {
        Rect rect = this.dest;
        rect.right = (int) (rect.left + (Math.abs(this.leftScale - this.rightScale) * dstWidth));
        Rect rect2 = this.dest;
        rect2.bottom = (int) (rect2.top + (Math.abs(this.topScale - this.bottomScale) * dstHeight));
        Logging.i(TAG, "ViESurfaceRender::surfaceChanged in_width:" + dstWidth + " in_height:" + dstHeight + " source.left:" + this.source.left + " source.top:" + this.source.top + " source.dest:" + this.source.right + " source.bottom:" + this.source.bottom + " dest.left:" + this.dest.left + " dest.top:" + this.dest.top + " dest.dest:" + this.dest.right + " dest.bottom:" + this.dest.bottom + " dest scale " + this.rightScale + " bottom scale " + this.bottomScale);
    }

    private void saveBitmapToJPEG(int width, int height) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(String.format("/sdcard/render_%d.jpg", Long.valueOf(System.currentTimeMillis())));
            fileOutputStream.write(byteArrayOutputStream.toByteArray());
            fileOutputStream.flush();
            fileOutputStream.close();
            Logging.i(TAG, "saved jpg " + fileOutputStream.toString());
        } catch (IOException e) {
            Logging.e(TAG, "save jpg failed", e);
        }
    }

    public Bitmap CreateBitmap(int width, int height) {
        Logging.d(TAG, "CreateByteBitmap " + width + ":" + height);
        if (this.bitmap == null) {
            try {
                Process.setThreadPriority(-4);
            } catch (Exception unused) {
            }
        }
        changeDestRect(width, height);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.RGB_565);
        this.bitmap = bitmapCreateBitmap;
        Rect rect = this.source;
        rect.left = 0;
        rect.top = 0;
        rect.bottom = height;
        rect.right = width;
        return bitmapCreateBitmap;
    }

    public ByteBuffer CreateByteBuffer(int width, int height) {
        Logging.i(TAG, "CreateByteBuffer " + width + " * " + height);
        this.bitmap = CreateBitmap(width, height);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(width * height * 2);
        this.byteBuffer = byteBufferAllocateDirect;
        return byteBufferAllocateDirect;
    }

    public void DrawBitmap() {
        Canvas canvasLockCanvas;
        if (this.bitmap == null || (canvasLockCanvas = this.surfaceHolder.lockCanvas()) == null) {
            return;
        }
        canvasLockCanvas.drawBitmap(this.bitmap, this.source, this.dest, (Paint) null);
        this.surfaceHolder.unlockCanvasAndPost(canvasLockCanvas);
    }

    public void DrawByteBuffer() {
        ByteBuffer byteBuffer = this.byteBuffer;
        if (byteBuffer == null) {
            Logging.w(TAG, "DrawByteBuffer null");
            return;
        }
        byteBuffer.rewind();
        this.bitmap.copyPixelsFromBuffer(this.byteBuffer);
        DrawBitmap();
    }

    public void SetCoordinates(float left, float top, float right, float bottom) {
        Logging.i(TAG, "SetCoordinates " + left + "," + top + " : " + right + "," + bottom);
        this.leftScale = left;
        this.topScale = top;
        this.rightScale = right;
        this.bottomScale = bottom;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder holder) {
        Canvas canvasLockCanvas = this.surfaceHolder.lockCanvas();
        if (canvasLockCanvas != null) {
            Rect surfaceFrame = this.surfaceHolder.getSurfaceFrame();
            if (surfaceFrame != null) {
                changeDestRect(surfaceFrame.right - surfaceFrame.left, surfaceFrame.bottom - surfaceFrame.top);
                Logging.i(TAG, "ViESurfaceRender::surfaceCreated dst.left:" + surfaceFrame.left + " dst.top:" + surfaceFrame.top + " dst.dest:" + surfaceFrame.right + " dst.bottom:" + surfaceFrame.bottom + " source.left:" + this.source.left + " source.top:" + this.source.top + " source.dest:" + this.source.right + " source.bottom:" + this.source.bottom + " dest.left:" + this.dest.left + " dest.top:" + this.dest.top + " dest.dest:" + this.dest.right + " dest.bottom:" + this.dest.bottom);
            }
            this.surfaceHolder.unlockCanvasAndPost(canvasLockCanvas);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder holder) {
        Logging.d(TAG, "ViESurfaceRenderer::surfaceDestroyed");
        this.bitmap = null;
        this.byteBuffer = null;
    }

    public ViESurfaceRenderer(SurfaceView view) {
        Logging.i(TAG, "surface view " + view);
        SurfaceHolder holder = view.getHolder();
        this.surfaceHolder = holder;
        if (holder == null) {
            return;
        }
        holder.addCallback(this);
        surfaceCreated(this.surfaceHolder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder holder, int format, int in_width, int in_height) {
        changeDestRect(in_width, in_height);
    }
}
