package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import androidx.annotation.Nullable;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes6.dex */
public final class i extends GLSurfaceView implements j {
    private static final String TAG = "VideoDecoderGLSV";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f1353a = 0;
    private final a renderer;

    private static final class a implements GLSurfaceView.Renderer {
        private static final String FRAGMENT_SHADER = "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n";
        private static final String VERTEX_SHADER = "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n";
        private int colorMatrixLocation;
        private com.google.android.exoplayer2.util.n program;
        private com.google.android.exoplayer2.decoder.k renderedOutputBuffer;
        private final GLSurfaceView surfaceView;
        private static final float[] kColorConversion601 = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};
        private static final float[] kColorConversion709 = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};
        private static final float[] kColorConversion2020 = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};
        private static final String[] TEXTURE_UNIFORMS = {"y_tex", "u_tex", "v_tex"};
        private static final FloatBuffer TEXTURE_VERTICES = com.google.android.exoplayer2.util.o.e(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});
        private final int[] yuvTextures = new int[3];
        private final int[] texLocations = new int[3];
        private final int[] previousWidths = new int[3];
        private final int[] previousStrides = new int[3];
        private final AtomicReference<com.google.android.exoplayer2.decoder.k> pendingOutputBufferReference = new AtomicReference<>();
        private final FloatBuffer[] textureCoords = new FloatBuffer[3];

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
            GLES20.glViewport(0, 0, i10, i11);
        }

        private void b() {
            try {
                GLES20.glGenTextures(3, this.yuvTextures, 0);
                for (int i10 = 0; i10 < 3; i10++) {
                    GLES20.glUniform1i(this.program.j(TEXTURE_UNIFORMS[i10]), i10);
                    GLES20.glActiveTexture(33984 + i10);
                    com.google.android.exoplayer2.util.o.a(3553, this.yuvTextures[i10]);
                }
                com.google.android.exoplayer2.util.o.b();
            } catch (com.google.android.exoplayer2.util.o.a e) {
                Log.e(i.TAG, "Failed to set up the textures", e);
            }
        }

        public void a(com.google.android.exoplayer2.decoder.k kVar) {
            com.google.android.exoplayer2.decoder.k andSet = this.pendingOutputBufferReference.getAndSet(kVar);
            if (andSet != null) {
                andSet.l();
            }
            this.surfaceView.requestRender();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            com.google.android.exoplayer2.decoder.k andSet = this.pendingOutputBufferReference.getAndSet(null);
            if (andSet == null && this.renderedOutputBuffer == null) {
                return;
            }
            if (andSet != null) {
                com.google.android.exoplayer2.decoder.k kVar = this.renderedOutputBuffer;
                if (kVar != null) {
                    kVar.l();
                }
                this.renderedOutputBuffer = andSet;
            }
            com.google.android.exoplayer2.decoder.k kVar2 = (com.google.android.exoplayer2.decoder.k) com.google.android.exoplayer2.util.a.e(this.renderedOutputBuffer);
            float[] fArr = kColorConversion709;
            int i10 = kVar2.colorspace;
            if (i10 == 1) {
                fArr = kColorConversion601;
            } else if (i10 == 3) {
                fArr = kColorConversion2020;
            }
            GLES20.glUniformMatrix3fv(this.colorMatrixLocation, 1, false, fArr, 0);
            int[] iArr = (int[]) com.google.android.exoplayer2.util.a.e(kVar2.yuvStrides);
            ByteBuffer[] byteBufferArr = (ByteBuffer[]) com.google.android.exoplayer2.util.a.e(kVar2.yuvPlanes);
            int i11 = 0;
            while (i11 < 3) {
                int i12 = i11 == 0 ? kVar2.height : (kVar2.height + 1) / 2;
                GLES20.glActiveTexture(33984 + i11);
                GLES20.glBindTexture(3553, this.yuvTextures[i11]);
                GLES20.glPixelStorei(3317, 1);
                GLES20.glTexImage2D(3553, 0, 6409, iArr[i11], i12, 0, 6409, 5121, byteBufferArr[i11]);
                i11++;
            }
            int i13 = kVar2.width;
            int i14 = (i13 + 1) / 2;
            int[] iArr2 = {i13, i14, i14};
            for (int i15 = 0; i15 < 3; i15++) {
                if (this.previousWidths[i15] != iArr2[i15] || this.previousStrides[i15] != iArr[i15]) {
                    com.google.android.exoplayer2.util.a.g(iArr[i15] != 0);
                    float f = iArr2[i15] / iArr[i15];
                    this.textureCoords[i15] = com.google.android.exoplayer2.util.o.e(new float[]{0.0f, 0.0f, 0.0f, 1.0f, f, 0.0f, f, 1.0f});
                    GLES20.glVertexAttribPointer(this.texLocations[i15], 2, 5126, false, 0, (Buffer) this.textureCoords[i15]);
                    this.previousWidths[i15] = iArr2[i15];
                    this.previousStrides[i15] = iArr[i15];
                }
            }
            GLES20.glClear(16384);
            GLES20.glDrawArrays(5, 0, 4);
            try {
                com.google.android.exoplayer2.util.o.b();
            } catch (com.google.android.exoplayer2.util.o.a e) {
                Log.e(i.TAG, "Failed to draw a frame", e);
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            try {
                com.google.android.exoplayer2.util.n nVar = new com.google.android.exoplayer2.util.n(VERTEX_SHADER, FRAGMENT_SHADER);
                this.program = nVar;
                GLES20.glVertexAttribPointer(nVar.e("in_pos"), 2, 5126, false, 0, (Buffer) TEXTURE_VERTICES);
                this.texLocations[0] = this.program.e("in_tc_y");
                this.texLocations[1] = this.program.e("in_tc_u");
                this.texLocations[2] = this.program.e("in_tc_v");
                this.colorMatrixLocation = this.program.j("mColorConversion");
                com.google.android.exoplayer2.util.o.b();
                b();
                com.google.android.exoplayer2.util.o.b();
            } catch (com.google.android.exoplayer2.util.o.a e) {
                Log.e(i.TAG, "Failed to set up the textures and program", e);
            }
        }

        public a(GLSurfaceView gLSurfaceView) {
            this.surfaceView = gLSurfaceView;
            for (int i10 = 0; i10 < 3; i10++) {
                int[] iArr = this.previousWidths;
                this.previousStrides[i10] = -1;
                iArr[i10] = -1;
            }
        }
    }

    public i(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.google.android.exoplayer", this, me);
        return super.dispatchTouchEvent(me);
    }

    @Deprecated
    public j getVideoDecoderOutputBufferRenderer() {
        return this;
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (1 == 0) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    public i(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a aVar = new a(this);
        this.renderer = aVar;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setRenderMode(0);
    }

    public void setOutputBuffer(com.google.android.exoplayer2.decoder.k kVar) {
        this.renderer.a(kVar);
    }
}
