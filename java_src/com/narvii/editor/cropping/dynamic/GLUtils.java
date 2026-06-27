package com.narvii.editor.cropping.dynamic;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GLUtils.kt */
/* loaded from: classes2.dex */
public final class GLUtils {
    public static final Companion Companion = new Companion(null);
    private static final float[] vertexData = {1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f, -1.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 1.0f, 0.0f};
    private static final float[] waterMarkVertexData = {1.0f, 1.0f, 1.0f, 1.0f, 0.7f, 1.0f, 0.0f, 1.0f, 0.7f, 0.7f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.7f, 0.7f, 0.0f, 0.0f, 1.0f, 0.7f, 1.0f, 0.0f};

    /* compiled from: GLUtils.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int createOESTextureObject() {
            int[] iArr = new int[1];
            GLES30.glGenTextures(1, iArr, 0);
            GLES30.glBindTexture(36197, iArr[0]);
            GLES30.glTexParameteri(36197, 10240, 9729);
            GLES30.glTexParameteri(36197, 10241, 9728);
            GLES30.glTexParameteri(36197, 10242, 33071);
            GLES30.glTexParameteri(36197, 10243, 33071);
            GLES30.glBindTexture(36197, 0);
            return iArr[0];
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0085  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x008a  */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* JADX WARN: Type inference failed for: r2v10, types: [java.io.BufferedReader] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.io.BufferedReader] */
        /* JADX WARN: Type inference failed for: r2v3 */
        /* JADX WARN: Type inference failed for: r2v4 */
        /* JADX WARN: Type inference failed for: r2v5, types: [java.io.BufferedReader] */
        /* JADX WARN: Type inference failed for: r2v6 */
        /* JADX WARN: Type inference failed for: r2v7 */
        /* JADX WARN: Type inference failed for: r2v9 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String readShaderFromResource(android.content.Context r6, int r7) throws java.lang.Throwable {
            /*
                r5 = this;
                java.lang.String r0 = "context"
                kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r6, r0)
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                r1 = 0
                android.content.res.Resources r6 = r6.getResources()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5e
                java.io.InputStream r6 = r6.openRawResource(r7)     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5e
                java.io.InputStreamReader r7 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L54
                r7.<init>(r6)     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L54
                java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                r2.<init>(r7)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
                java.lang.String r1 = r2.readLine()     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L7d
            L21:
                if (r1 == 0) goto L3b
                int r3 = r1.length()     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L7d
                if (r3 <= 0) goto L2b
                r3 = 1
                goto L2c
            L2b:
                r3 = 0
            L2c:
                if (r3 == 0) goto L3b
                r0.append(r1)     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L7d
                java.lang.String r1 = "\n"
                r0.append(r1)     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L7d
                java.lang.String r1 = r2.readLine()     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L7d
                goto L21
            L3b:
                if (r6 == 0) goto L40
                r6.close()
            L40:
                r7.close()
            L43:
                r2.close()
                goto L73
            L47:
                r1 = move-exception
                goto L63
            L49:
                r0 = move-exception
                r2 = r1
                goto L7e
            L4c:
                r2 = move-exception
                r4 = r2
                r2 = r1
                r1 = r4
                goto L63
            L51:
                r0 = move-exception
                r7 = r1
                goto L5c
            L54:
                r7 = move-exception
                r2 = r1
                r1 = r7
                r7 = r2
                goto L63
            L59:
                r0 = move-exception
                r6 = r1
                r7 = r6
            L5c:
                r2 = r7
                goto L7e
            L5e:
                r6 = move-exception
                r7 = r1
                r2 = r7
                r1 = r6
                r6 = r2
            L63:
                r1.printStackTrace()     // Catch: java.lang.Throwable -> L7d
                if (r6 == 0) goto L6b
                r6.close()
            L6b:
                if (r7 == 0) goto L70
                r7.close()
            L70:
                if (r2 == 0) goto L73
                goto L43
            L73:
                java.lang.String r6 = r0.toString()
                java.lang.String r7 = "builder.toString()"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r7)
                return r6
            L7d:
                r0 = move-exception
            L7e:
                if (r6 == 0) goto L83
                r6.close()
            L83:
                if (r7 == 0) goto L88
                r7.close()
            L88:
                if (r2 == 0) goto L8d
                r2.close()
            L8d:
                goto L8f
            L8e:
                throw r0
            L8f:
                goto L8e
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.editor.cropping.dynamic.GLUtils.Companion.readShaderFromResource(android.content.Context, int):java.lang.String");
        }

        public final FloatBuffer createBuffer(float[] vertexData) {
            Intrinsics.checkParameterIsNotNull(vertexData, "vertexData");
            FloatBuffer floatBuffer = ByteBuffer.allocateDirect(vertexData.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
            floatBuffer.put(vertexData, 0, vertexData.length).position(0);
            Intrinsics.checkExpressionValueIsNotNull(floatBuffer, "floatBuffer");
            return floatBuffer;
        }

        public final int loadShader(int i, String shaderSource) {
            Intrinsics.checkParameterIsNotNull(shaderSource, "shaderSource");
            int iGlCreateShader = GLES30.glCreateShader(i);
            if (iGlCreateShader == 0) {
                throw new RuntimeException("create shader failed " + i);
            }
            GLES30.glShaderSource(iGlCreateShader, shaderSource);
            GLES30.glCompileShader(iGlCreateShader);
            int[] iArr = {0};
            GLES30.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
            if (iArr[0] == 0) {
                Log.e("Shader Compile Error: ", GLES30.glGetShaderInfoLog(iGlCreateShader));
                GLES30.glDeleteShader(iGlCreateShader);
            }
            return iGlCreateShader;
        }

        public final int createProgram(int i, int i2) {
            int iGlCreateProgram = GLES30.glCreateProgram();
            if (iGlCreateProgram == 0) {
                throw new RuntimeException("create gl program failed");
            }
            GLES30.glAttachShader(iGlCreateProgram, i);
            GLES30.glAttachShader(iGlCreateProgram, i2);
            GLES30.glLinkProgram(iGlCreateProgram);
            int[] iArr = new int[1];
            GLES30.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
            if (iArr[0] == 0) {
                Log.e("Program Link Error: ", GLES30.glGetProgramInfoLog(iGlCreateProgram));
                GLES30.glDeleteProgram(iGlCreateProgram);
            }
            return iGlCreateProgram;
        }

        public final float[] getVertexData() {
            return GLUtils.vertexData;
        }

        public final int loadTexture(Context context, int i) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            int[] iArr = new int[1];
            GLES30.glGenTextures(1, iArr, 0);
            if (iArr[0] == 0) {
                return 0;
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inScaled = false;
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), i, options);
            if (bitmapDecodeResource == null) {
                GLES30.glDeleteTextures(1, iArr, 0);
                return 0;
            }
            GLES30.glBindTexture(3553, iArr[0]);
            GLES30.glTexParameteri(3553, 10240, 9729);
            GLES30.glTexParameteri(3553, 10241, 9987);
            android.opengl.GLUtils.texImage2D(3553, 0, bitmapDecodeResource, 0);
            GLES30.glGenerateMipmap(3553);
            bitmapDecodeResource.recycle();
            GLES30.glBindTexture(3553, 0);
            return iArr[0];
        }

        public final int loadTexture(Context context, Bitmap bitmap) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(bitmap, "bitmap");
            int[] iArr = new int[1];
            GLES30.glGenTextures(1, iArr, 0);
            if (iArr[0] == 0) {
                return 0;
            }
            GLES30.glBindTexture(3553, iArr[0]);
            GLES30.glTexParameteri(3553, 10240, 9729);
            GLES30.glTexParameteri(3553, 10241, 9987);
            android.opengl.GLUtils.texImage2D(3553, 0, bitmap, 0);
            GLES30.glGenerateMipmap(3553);
            bitmap.recycle();
            GLES30.glBindTexture(3553, 0);
            return iArr[0];
        }

        public final float[] getWaterMarkVertexData() {
            return GLUtils.waterMarkVertexData;
        }

        public final long getDisplayRefreshNsec(Activity activity) {
            Intrinsics.checkParameterIsNotNull(activity, "activity");
            Object systemService = activity.getSystemService("window");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
            }
            Display display = ((WindowManager) systemService).getDefaultDisplay();
            Intrinsics.checkExpressionValueIsNotNull(display, "display");
            double refreshRate = display.getRefreshRate();
            double d = C.NANOS_PER_SECOND;
            Double.isNaN(d);
            Double.isNaN(refreshRate);
            long jRound = Math.round(d / refreshRate);
            Log.d("getDisplayRefreshNsec", "refresh rate is " + refreshRate + " fps --> " + jRound + " ns");
            return jRound;
        }

        public final void checkGlError(String op) {
            Intrinsics.checkParameterIsNotNull(op, "op");
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError != 0) {
                Log.e("checkGlError", op + ": glError 0x" + Integer.toHexString(iGlGetError));
            }
        }
    }
}
