package com.google.android.exoplayer2.video.spherical;

/* JADX INFO: loaded from: classes7.dex */
final class e {
    public static final int DRAW_MODE_TRIANGLES = 0;
    public static final int DRAW_MODE_TRIANGLES_FAN = 2;
    public static final int DRAW_MODE_TRIANGLES_STRIP = 1;
    public static final int POSITION_COORDS_PER_VERTEX = 3;
    public static final int TEXTURE_COORDS_PER_VERTEX = 2;
    public final a leftMesh;
    public final a rightMesh;
    public final boolean singleMesh;
    public final int stereoMode;

    public static final class a {
        private final b[] subMeshes;

        public b a(int i10) {
            return this.subMeshes[i10];
        }

        public int b() {
            return this.subMeshes.length;
        }

        public a(b... bVarArr) {
            this.subMeshes = bVarArr;
        }
    }

    public static final class b {
        public static final int VIDEO_TEXTURE_ID = 0;
        public final int mode;
        public final float[] textureCoords;
        public final int textureId;
        public final float[] vertices;

        public int a() {
            return this.vertices.length / 3;
        }

        public b(int i10, float[] fArr, float[] fArr2, int i11) {
            boolean z6;
            this.textureId = i10;
            if (((long) fArr.length) * 2 == ((long) fArr2.length) * 3) {
                z6 = true;
            } else {
                z6 = false;
            }
            com.google.android.exoplayer2.util.a.a(z6);
            this.vertices = fArr;
            this.textureCoords = fArr2;
            this.mode = i11;
        }
    }

    public e(a aVar, int i10) {
        this(aVar, aVar, i10);
    }

    public e(a aVar, a aVar2, int i10) {
        this.leftMesh = aVar;
        this.rightMesh = aVar2;
        this.stereoMode = i10;
        this.singleMesh = aVar == aVar2;
    }

    public static e a(float f, int i10, int i11, float f6, float f7, int i12) {
        int i13;
        int i14;
        int i15;
        float[] fArr;
        int i16;
        int i17 = i10;
        int i18 = i11;
        com.google.android.exoplayer2.util.a.a(f > 0.0f);
        com.google.android.exoplayer2.util.a.a(i17 >= 1);
        com.google.android.exoplayer2.util.a.a(i18 >= 1);
        com.google.android.exoplayer2.util.a.a(f6 > 0.0f && f6 <= 180.0f);
        com.google.android.exoplayer2.util.a.a(f7 > 0.0f && f7 <= 360.0f);
        float radians = (float) Math.toRadians(f6);
        float radians2 = (float) Math.toRadians(f7);
        float f10 = radians / i17;
        float f11 = radians2 / i18;
        int i19 = i18 + 1;
        int i20 = ((i19 * 2) + 2) * i17;
        float[] fArr2 = new float[i20 * 3];
        float[] fArr3 = new float[i20 * 2];
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        while (i21 < i17) {
            float f12 = radians / 2.0f;
            float f13 = (i21 * f10) - f12;
            int i24 = i21 + 1;
            float f14 = (i24 * f10) - f12;
            int i25 = 0;
            while (i25 < i19) {
                float f15 = f13;
                int i26 = i24;
                int i27 = 2;
                int i28 = 0;
                while (i28 < i27) {
                    float f16 = i25 * f11;
                    float f17 = f11;
                    int i29 = i25;
                    double d = f;
                    float f18 = f10;
                    double d2 = (f16 + 3.1415927f) - (radians2 / 2.0f);
                    int i30 = i28;
                    double d6 = i28 == 0 ? f15 : f14;
                    float[] fArr4 = fArr3;
                    float f19 = f14;
                    fArr2[i22] = -((float) (Math.sin(d2) * d * Math.cos(d6)));
                    float f20 = radians;
                    float f21 = radians2;
                    fArr2[i22 + 1] = (float) (d * Math.sin(d6));
                    int i31 = i22 + 3;
                    fArr2[i22 + 2] = (float) (d * Math.cos(d2) * Math.cos(d6));
                    fArr4[i23] = f16 / f21;
                    int i32 = i23 + 2;
                    fArr4[i23 + 1] = ((i21 + i30) * f18) / f20;
                    if (i29 == 0 && i30 == 0) {
                        i13 = i11;
                        i14 = i29;
                        i15 = i30;
                    } else {
                        i13 = i11;
                        i14 = i29;
                        i15 = i30;
                        if (i14 != i13 || i15 != 1) {
                            fArr = fArr4;
                            i16 = 2;
                            i23 = i32;
                            i22 = i31;
                        }
                        i28 = i15 + 1;
                        i18 = i13;
                        i25 = i14;
                        fArr3 = fArr;
                        radians = f20;
                        i19 = i19;
                        f11 = f17;
                        radians2 = f21;
                        f14 = f19;
                        i27 = i16;
                        f10 = f18;
                    }
                    System.arraycopy(fArr2, i22, fArr2, i31, 3);
                    i22 += 6;
                    fArr = fArr4;
                    i16 = 2;
                    System.arraycopy(fArr, i23, fArr, i32, 2);
                    i23 += 4;
                    i28 = i15 + 1;
                    i18 = i13;
                    i25 = i14;
                    fArr3 = fArr;
                    radians = f20;
                    i19 = i19;
                    f11 = f17;
                    radians2 = f21;
                    f14 = f19;
                    i27 = i16;
                    f10 = f18;
                }
                float f22 = radians2;
                int i33 = i25;
                int i34 = i18;
                int i35 = i33 + 1;
                i24 = i26;
                f10 = f10;
                radians2 = f22;
                f14 = f14;
                f13 = f15;
                i18 = i34;
                i25 = i35;
            }
            i17 = i10;
            i21 = i24;
        }
        return new e(new a(new b(0, fArr2, fArr3, 1)), i12);
    }

    public static e b(int i10) {
        return a(50.0f, 36, 72, 180.0f, 360.0f, i10);
    }
}
