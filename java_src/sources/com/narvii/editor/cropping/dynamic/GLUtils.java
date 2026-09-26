package com.narvii.editor.cropping.dynamic;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLES20;
import android.util.Log;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class GLUtils {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final float[] vertexData = {1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f, -1.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 1.0f, 0.0f};

    @NotNull
    private static final float[] waterMarkVertexData = {1.0f, 1.0f, 1.0f, 1.0f, 0.7f, 1.0f, 0.0f, 1.0f, 0.7f, 0.7f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.7f, 0.7f, 0.0f, 0.0f, 1.0f, 0.7f, 1.0f, 0.0f};

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        public final int createOESTextureObject() {
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(36197, iArr[0]);
            GLES20.glTexParameteri(36197, 10240, 9729);
            GLES20.glTexParameteri(36197, 10241, 9728);
            GLES20.glTexParameteri(36197, 10242, 33071);
            GLES20.glTexParameteri(36197, 10243, 33071);
            GLES20.glBindTexture(36197, 0);
            return iArr[0];
        }

        public final int loadTexture(@NotNull Context context, int i10) {
            t.j(context, "context");
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            if (iArr[0] == 0) {
                return 0;
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inScaled = false;
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), i10, options);
            if (bitmapDecodeResource == null) {
                GLES20.glDeleteTextures(1, iArr, 0);
                return 0;
            }
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLES20.glTexParameteri(3553, 10241, 9987);
            android.opengl.GLUtils.texImage2D(3553, 0, bitmapDecodeResource, 0);
            GLES20.glGenerateMipmap(3553);
            bitmapDecodeResource.recycle();
            GLES20.glBindTexture(3553, 0);
            return iArr[0];
        }

        private Companion() {
        }

        public final void checkGlError(@NotNull String op) {
            t.j(op, "op");
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError != 0) {
                Log.e("checkGlError", op + ": glError 0x" + Integer.toHexString(iGlGetError));
            }
        }

        @NotNull
        public final FloatBuffer createBuffer(@NotNull float[] vertexData) {
            t.j(vertexData, "vertexData");
            FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(vertexData.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
            floatBufferAsFloatBuffer.put(vertexData, 0, vertexData.length).position(0);
            t.g(floatBufferAsFloatBuffer);
            return floatBufferAsFloatBuffer;
        }

        public final long getDisplayRefreshNsec(@NotNull Activity activity) {
            t.j(activity, "activity");
            Object systemService = activity.getSystemService("window");
            t.h(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            double refreshRate = ((WindowManager) systemService).getDefaultDisplay().getRefreshRate();
            long jRound = Math.round(1000000000 / refreshRate);
            Log.d("getDisplayRefreshNsec", "refresh rate is " + refreshRate + " fps --> " + jRound + " ns");
            return jRound;
        }

        public final int loadShader(int i10, @NotNull String shaderSource) {
            t.j(shaderSource, "shaderSource");
            int iGlCreateShader = GLES20.glCreateShader(i10);
            if (iGlCreateShader == 0) {
                throw new RuntimeException("create shader failed " + i10);
            }
            GLES20.glShaderSource(iGlCreateShader, shaderSource);
            GLES20.glCompileShader(iGlCreateShader);
            int[] iArr = {0};
            GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
            if (iArr[0] == 0) {
                Log.e("Shader Compile Error: ", GLES20.glGetShaderInfoLog(iGlCreateShader));
                GLES20.glDeleteShader(iGlCreateShader);
            }
            return iGlCreateShader;
        }

        /* JADX WARN: Code duplicated, block: B:42:0x007d  */
        /* JADX WARN: Code duplicated, block: B:44:0x0082  */
        /* JADX WARN: Code duplicated, block: B:46:0x0087  */
        @NotNull
        public final String readShaderFromResource(@NotNull Context context, int i10) throws Throwable {
            InputStreamReader inputStreamReader;
            BufferedReader bufferedReader;
            IOException e;
            InputStream inputStreamOpenRawResource;
            t.j(context, "context");
            StringBuilder sb = new StringBuilder();
            InputStream inputStream = null;
            try {
                inputStreamOpenRawResource = context.getResources().openRawResource(i10);
                try {
                    inputStreamReader = new InputStreamReader(inputStreamOpenRawResource);
                    try {
                        bufferedReader = new BufferedReader(inputStreamReader);
                        try {
                            try {
                                for (String line = bufferedReader.readLine(); line != null && line.length() > 0; line = bufferedReader.readLine()) {
                                    sb.append(line);
                                    sb.append("\n");
                                }
                                if (inputStreamOpenRawResource != null) {
                                    inputStreamOpenRawResource.close();
                                }
                                inputStreamReader.close();
                            } catch (IOException e2) {
                                e = e2;
                                e.printStackTrace();
                                if (inputStreamOpenRawResource != null) {
                                    inputStreamOpenRawResource.close();
                                }
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                if (bufferedReader != null) {
                                }
                                String string = sb.toString();
                                t.i(string, "toString(...)");
                                return string;
                            }
                        } catch (Throwable th) {
                            th = th;
                            inputStream = inputStreamOpenRawResource;
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            throw th;
                        }
                    } catch (IOException e6) {
                        bufferedReader = null;
                        e = e6;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = null;
                        inputStream = inputStreamOpenRawResource;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (inputStreamReader != null) {
                            inputStreamReader.close();
                        }
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        throw th;
                    }
                } catch (IOException e7) {
                    bufferedReader = null;
                    e = e7;
                    inputStreamReader = null;
                } catch (Throwable th3) {
                    th = th3;
                    inputStreamReader = null;
                    bufferedReader = null;
                }
            } catch (IOException e10) {
                inputStreamReader = null;
                bufferedReader = null;
                e = e10;
                inputStreamOpenRawResource = null;
            } catch (Throwable th4) {
                th = th4;
                inputStreamReader = null;
                bufferedReader = null;
                if (inputStream != null) {
                    inputStream.close();
                }
                if (inputStreamReader != null) {
                    inputStreamReader.close();
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                throw th;
            }
            bufferedReader.close();
            String string2 = sb.toString();
            t.i(string2, "toString(...)");
            return string2;
        }

        public final int createProgram(int i10, int i11) {
            int iGlCreateProgram = GLES20.glCreateProgram();
            if (iGlCreateProgram != 0) {
                GLES20.glAttachShader(iGlCreateProgram, i10);
                GLES20.glAttachShader(iGlCreateProgram, i11);
                GLES20.glLinkProgram(iGlCreateProgram);
                int[] iArr = new int[1];
                GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
                if (iArr[0] == 0) {
                    Log.e("Program Link Error: ", GLES20.glGetProgramInfoLog(iGlCreateProgram));
                    GLES20.glDeleteProgram(iGlCreateProgram);
                }
                return iGlCreateProgram;
            }
            throw new RuntimeException("create gl program failed");
        }

        @NotNull
        public final float[] getVertexData() {
            return GLUtils.vertexData;
        }

        @NotNull
        public final float[] getWaterMarkVertexData() {
            return GLUtils.waterMarkVertexData;
        }

        public final int loadTexture(@NotNull Context context, @NotNull Bitmap bitmap) {
            t.j(context, "context");
            t.j(bitmap, "bitmap");
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            int i10 = iArr[0];
            if (i10 == 0) {
                return 0;
            }
            GLES20.glBindTexture(3553, i10);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLES20.glTexParameteri(3553, 10241, 9987);
            android.opengl.GLUtils.texImage2D(3553, 0, bitmap, 0);
            GLES20.glGenerateMipmap(3553);
            bitmap.recycle();
            GLES20.glBindTexture(3553, 0);
            return iArr[0];
        }
    }
}
