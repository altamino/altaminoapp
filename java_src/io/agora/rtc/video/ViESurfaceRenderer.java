package io.agora.rtc.video;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Process;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes4.dex */
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

    public ViESurfaceRenderer(SurfaceView surfaceView) {
        Log.i(TAG, "surface view " + surfaceView);
        this.surfaceHolder = surfaceView.getHolder();
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder == null) {
            return;
        }
        surfaceHolder.addCallback(this);
        surfaceCreated(this.surfaceHolder);
    }

    private void changeDestRect(int i, int i2) {
        this.dest.right = (int) (r0.left + (Math.abs(this.leftScale - this.rightScale) * i));
        this.dest.bottom = (int) (r0.top + (Math.abs(this.topScale - this.bottomScale) * i2));
        Log.i(TAG, "ViESurfaceRender::surfaceChanged in_width:" + i + " in_height:" + i2 + " source.left:" + this.source.left + " source.top:" + this.source.top + " source.dest:" + this.source.right + " source.bottom:" + this.source.bottom + " dest.left:" + this.dest.left + " dest.top:" + this.dest.top + " dest.dest:" + this.dest.right + " dest.bottom:" + this.dest.bottom + " dest scale " + this.rightScale + " bottom scale " + this.bottomScale);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        changeDestRect(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Canvas canvasLockCanvas = this.surfaceHolder.lockCanvas();
        if (canvasLockCanvas != null) {
            Rect surfaceFrame = this.surfaceHolder.getSurfaceFrame();
            if (surfaceFrame != null) {
                changeDestRect(surfaceFrame.right - surfaceFrame.left, surfaceFrame.bottom - surfaceFrame.top);
                Log.i(TAG, "ViESurfaceRender::surfaceCreated dst.left:" + surfaceFrame.left + " dst.top:" + surfaceFrame.top + " dst.dest:" + surfaceFrame.right + " dst.bottom:" + surfaceFrame.bottom + " source.left:" + this.source.left + " source.top:" + this.source.top + " source.dest:" + this.source.right + " source.bottom:" + this.source.bottom + " dest.left:" + this.dest.left + " dest.top:" + this.dest.top + " dest.dest:" + this.dest.right + " dest.bottom:" + this.dest.bottom);
            }
            this.surfaceHolder.unlockCanvasAndPost(canvasLockCanvas);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Log.d(TAG, "ViESurfaceRenderer::surfaceDestroyed");
        this.bitmap = null;
        this.byteBuffer = null;
    }

    public Bitmap CreateBitmap(int i, int i2) throws SecurityException, IllegalArgumentException {
        Log.d(TAG, "CreateByteBitmap " + i + ":" + i2);
        if (this.bitmap == null) {
            try {
                Process.setThreadPriority(-4);
            } catch (Exception unused) {
            }
        }
        changeDestRect(i, i2);
        this.bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
        Rect rect = this.source;
        rect.left = 0;
        rect.top = 0;
        rect.bottom = i2;
        rect.right = i;
        return this.bitmap;
    }

    public ByteBuffer CreateByteBuffer(int i, int i2) {
        Log.i(TAG, "CreateByteBuffer " + i + " * " + i2);
        if (this.bitmap == null) {
            this.bitmap = CreateBitmap(i, i2);
            this.byteBuffer = ByteBuffer.allocateDirect(i * i2 * 2);
        }
        return this.byteBuffer;
    }

    public void SetCoordinates(float f, float f2, float f3, float f4) {
        Log.i(TAG, "SetCoordinates " + f + "," + f2 + " : " + f3 + "," + f4);
        this.leftScale = f;
        this.topScale = f2;
        this.rightScale = f3;
        this.bottomScale = f4;
    }

    private void saveBitmapToJPEG(int i, int i2) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(String.format("/sdcard/render_%d.jpg", Long.valueOf(System.currentTimeMillis())));
            fileOutputStream.write(byteArrayOutputStream.toByteArray());
            fileOutputStream.flush();
            fileOutputStream.close();
            Log.i(TAG, "saved jpg " + fileOutputStream.toString());
        } catch (IOException e) {
            Log.w(TAG, "save jpg failed", e);
        }
    }

    public void DrawByteBuffer() {
        ByteBuffer byteBuffer = this.byteBuffer;
        if (byteBuffer == null) {
            Log.w(TAG, "DrawByteBuffer null");
            return;
        }
        byteBuffer.rewind();
        this.bitmap.copyPixelsFromBuffer(this.byteBuffer);
        DrawBitmap();
    }

    public void DrawBitmap() {
        Canvas canvasLockCanvas;
        if (this.bitmap == null || (canvasLockCanvas = this.surfaceHolder.lockCanvas()) == null) {
            return;
        }
        canvasLockCanvas.drawBitmap(this.bitmap, this.source, this.dest, (Paint) null);
        this.surfaceHolder.unlockCanvasAndPost(canvasLockCanvas);
    }
}
