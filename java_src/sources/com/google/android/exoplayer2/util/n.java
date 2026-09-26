package com.google.android.exoplayer2.util;

import android.content.Context;
import android.opengl.GLES20;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.Buffer;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class n {
    private static final int GL_SAMPLER_EXTERNAL_2D_Y2Y_EXT = 35815;
    private final Map<String, a> attributeByName;
    private final a[] attributes;
    private final int programId;
    private final Map<String, b> uniformByName;
    private final b[] uniforms;

    public n(Context context, String str, String str2) throws IOException, o.a {
        this(k(context, str), k(context, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int h(byte[] bArr) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if (bArr[i10] == 0) {
                return i10;
            }
        }
        return bArr.length;
    }

    public static String k(Context context, String str) throws IOException {
        InputStream inputStreamOpen = null;
        try {
            inputStreamOpen = context.getAssets().open(str);
            return o0.A(o0.L0(inputStreamOpen));
        } finally {
            o0.m(inputStreamOpen);
        }
    }

    private static final class a {

        @Nullable
        private Buffer buffer;
        private final int index;
        private final int location;
        public final String name;
        private int size;

        public static a a(int i10, int i11) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i10, 35722, iArr, 0);
            int i12 = iArr[0];
            byte[] bArr = new byte[i12];
            GLES20.glGetActiveAttrib(i10, i11, i12, new int[1], 0, new int[1], 0, new int[1], 0, bArr, 0);
            String str = new String(bArr, 0, n.h(bArr));
            return new a(str, i11, n.f(i10, str));
        }

        private a(String str, int i10, int i11) {
            this.name = str;
            this.index = i10;
            this.location = i11;
        }
    }

    private static final class b {
        private final float[] floatValue = new float[16];
        private int intValue;
        private final int location;
        public final String name;
        private int texIdValue;
        private int texUnitIndex;
        private final int type;

        public static b a(int i10, int i11) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i10, 35719, iArr, 0);
            int[] iArr2 = new int[1];
            int i12 = iArr[0];
            byte[] bArr = new byte[i12];
            GLES20.glGetActiveUniform(i10, i11, i12, new int[1], 0, new int[1], 0, iArr2, 0, bArr, 0);
            String str = new String(bArr, 0, n.h(bArr));
            return new b(str, n.i(i10, str), iArr2[0]);
        }

        private b(String str, int i10, int i11) {
            this.name = str;
            this.location = i10;
            this.type = i11;
        }
    }

    public n(String str, String str2) throws o.a {
        int iGlCreateProgram = GLES20.glCreateProgram();
        this.programId = iGlCreateProgram;
        o.b();
        d(iGlCreateProgram, 35633, str);
        d(iGlCreateProgram, 35632, str2);
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        o.c(iArr[0] == 1, "Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(iGlCreateProgram));
        GLES20.glUseProgram(iGlCreateProgram);
        this.attributeByName = new HashMap();
        int[] iArr2 = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35721, iArr2, 0);
        this.attributes = new a[iArr2[0]];
        for (int i10 = 0; i10 < iArr2[0]; i10++) {
            a aVarA = a.a(this.programId, i10);
            this.attributes[i10] = aVarA;
            this.attributeByName.put(aVarA.name, aVarA);
        }
        this.uniformByName = new HashMap();
        int[] iArr3 = new int[1];
        GLES20.glGetProgramiv(this.programId, 35718, iArr3, 0);
        this.uniforms = new b[iArr3[0]];
        for (int i11 = 0; i11 < iArr3[0]; i11++) {
            b bVarA = b.a(this.programId, i11);
            this.uniforms[i11] = bVarA;
            this.uniformByName.put(bVarA.name, bVarA);
        }
        o.b();
    }

    private int g(String str) {
        return f(this.programId, str);
    }

    public int j(String str) {
        return i(this.programId, str);
    }

    private static void d(int i10, int i11, String str) throws o.a {
        int iGlCreateShader = GLES20.glCreateShader(i11);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        boolean z6 = false;
        int[] iArr = {0};
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] == 1) {
            z6 = true;
        }
        o.c(z6, GLES20.glGetShaderInfoLog(iGlCreateShader) + ", source: " + str);
        GLES20.glAttachShader(i10, iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        o.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f(int i10, String str) {
        return GLES20.glGetAttribLocation(i10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int i(int i10, String str) {
        return GLES20.glGetUniformLocation(i10, str);
    }

    public int e(String str) throws o.a {
        int iG = g(str);
        GLES20.glEnableVertexAttribArray(iG);
        o.b();
        return iG;
    }
}
