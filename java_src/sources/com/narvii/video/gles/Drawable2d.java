package com.narvii.video.gles;

import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes4.dex */
public class Drawable2d {
    private static final FloatBuffer FULL_RECTANGLE_BUF;
    private static final float[] FULL_RECTANGLE_COORDS;
    private static final FloatBuffer FULL_RECTANGLE_TEX_BUF;
    private static final float[] FULL_RECTANGLE_TEX_COORDS;
    private static final FloatBuffer RECTANGLE_BUF;
    private static final float[] RECTANGLE_COORDS;
    private static final FloatBuffer RECTANGLE_TEX_BUF;
    private static final float[] RECTANGLE_TEX_COORDS;
    private static final int SIZEOF_FLOAT = 4;
    private static final FloatBuffer TRIANGLE_BUF;
    private static final float[] TRIANGLE_COORDS;
    private static final FloatBuffer TRIANGLE_TEX_BUF;
    private static final float[] TRIANGLE_TEX_COORDS;
    private int mCoordsPerVertex;
    private Prefab mPrefab;
    private FloatBuffer mTexCoordArray;
    private int mTexCoordStride;
    private FloatBuffer mVertexArray;
    private int mVertexCount;
    private int mVertexStride;

    public enum Prefab {
        TRIANGLE,
        RECTANGLE,
        FULL_RECTANGLE
    }

    static {
        float[] fArr = {0.0f, 0.57735026f, -0.5f, -0.28867513f, 0.5f, -0.28867513f};
        TRIANGLE_COORDS = fArr;
        float[] fArr2 = {0.5f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};
        TRIANGLE_TEX_COORDS = fArr2;
        TRIANGLE_BUF = GlUtil.createFloatBuffer(fArr);
        TRIANGLE_TEX_BUF = GlUtil.createFloatBuffer(fArr2);
        float[] fArr3 = {-0.5f, -0.5f, 0.5f, -0.5f, -0.5f, 0.5f, 0.5f, 0.5f};
        RECTANGLE_COORDS = fArr3;
        float[] fArr4 = {0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};
        RECTANGLE_TEX_COORDS = fArr4;
        RECTANGLE_BUF = GlUtil.createFloatBuffer(fArr3);
        RECTANGLE_TEX_BUF = GlUtil.createFloatBuffer(fArr4);
        float[] fArr5 = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
        FULL_RECTANGLE_COORDS = fArr5;
        float[] fArr6 = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};
        FULL_RECTANGLE_TEX_COORDS = fArr6;
        FULL_RECTANGLE_BUF = GlUtil.createFloatBuffer(fArr5);
        FULL_RECTANGLE_TEX_BUF = GlUtil.createFloatBuffer(fArr6);
    }

    public int getCoordsPerVertex() {
        return this.mCoordsPerVertex;
    }

    public FloatBuffer getTexCoordArray() {
        return this.mTexCoordArray;
    }

    public int getTexCoordStride() {
        return this.mTexCoordStride;
    }

    public FloatBuffer getVertexArray() {
        return this.mVertexArray;
    }

    public int getVertexCount() {
        return this.mVertexCount;
    }

    public int getVertexStride() {
        return this.mVertexStride;
    }

    /* JADX INFO: renamed from: com.narvii.video.gles.Drawable2d$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$narvii$video$gles$Drawable2d$Prefab;

        static {
            int[] iArr = new int[Prefab.values().length];
            $SwitchMap$com$narvii$video$gles$Drawable2d$Prefab = iArr;
            try {
                iArr[Prefab.TRIANGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$narvii$video$gles$Drawable2d$Prefab[Prefab.RECTANGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$narvii$video$gles$Drawable2d$Prefab[Prefab.FULL_RECTANGLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public String toString() {
        if (this.mPrefab == null) {
            return "[Drawable2d: ...]";
        }
        return "[Drawable2d: " + this.mPrefab + "]";
    }

    public Drawable2d(Prefab prefab) {
        int i10 = AnonymousClass1.$SwitchMap$com$narvii$video$gles$Drawable2d$Prefab[prefab.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    this.mVertexArray = FULL_RECTANGLE_BUF;
                    this.mTexCoordArray = FULL_RECTANGLE_TEX_BUF;
                    this.mCoordsPerVertex = 2;
                    this.mVertexStride = 2 * 4;
                    this.mVertexCount = FULL_RECTANGLE_COORDS.length / 2;
                } else {
                    throw new RuntimeException("Unknown shape " + prefab);
                }
            } else {
                this.mVertexArray = RECTANGLE_BUF;
                this.mTexCoordArray = RECTANGLE_TEX_BUF;
                this.mCoordsPerVertex = 2;
                this.mVertexStride = 2 * 4;
                this.mVertexCount = RECTANGLE_COORDS.length / 2;
            }
        } else {
            this.mVertexArray = TRIANGLE_BUF;
            this.mTexCoordArray = TRIANGLE_TEX_BUF;
            this.mCoordsPerVertex = 2;
            this.mVertexStride = 2 * 4;
            this.mVertexCount = TRIANGLE_COORDS.length / 2;
        }
        this.mTexCoordStride = 8;
        this.mPrefab = prefab;
    }
}
