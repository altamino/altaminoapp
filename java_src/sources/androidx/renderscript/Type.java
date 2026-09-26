package androidx.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Type extends BaseObj {
    boolean mDimFaces;
    boolean mDimMipmaps;
    int mDimX;
    int mDimY;
    int mDimYuv;
    int mDimZ;
    Element mElement;
    int mElementCount;

    public static class Builder {
        boolean mDimFaces;
        boolean mDimMipmaps;
        int mDimX = 1;
        int mDimY;
        int mDimZ;
        Element mElement;
        RenderScript mRS;
        int mYuv;

        public Builder setFaces(boolean z6) {
            this.mDimFaces = z6;
            return this;
        }

        public Builder setMipmaps(boolean z6) {
            this.mDimMipmaps = z6;
            return this;
        }

        public Builder setX(int i10) {
            if (i10 < 1) {
                throw new RSIllegalArgumentException("Values of less than 1 for Dimension X are not valid.");
            }
            this.mDimX = i10;
            return this;
        }

        public Builder setY(int i10) {
            if (i10 < 1) {
                throw new RSIllegalArgumentException("Values of less than 1 for Dimension Y are not valid.");
            }
            this.mDimY = i10;
            return this;
        }

        public Builder setZ(int i10) {
            if (i10 < 1) {
                throw new RSIllegalArgumentException("Values of less than 1 for Dimension Z are not valid.");
            }
            this.mDimZ = i10;
            return this;
        }

        public Type create() {
            int i10 = this.mDimZ;
            if (i10 > 0) {
                if (this.mDimX < 1 || this.mDimY < 1) {
                    throw new RSInvalidStateException("Both X and Y dimension required when Z is present.");
                }
                if (this.mDimFaces) {
                    throw new RSInvalidStateException("Cube maps not supported with 3D types.");
                }
            }
            int i11 = this.mDimY;
            if (i11 > 0 && this.mDimX < 1) {
                throw new RSInvalidStateException("X dimension required when Y is present.");
            }
            boolean z6 = this.mDimFaces;
            if (z6 && i11 < 1) {
                throw new RSInvalidStateException("Cube maps require 2D Types.");
            }
            if (this.mYuv != 0 && (i10 != 0 || z6 || this.mDimMipmaps)) {
                throw new RSInvalidStateException("YUV only supports basic 2D.");
            }
            RenderScript renderScript = this.mRS;
            Type type = new Type(renderScript.nTypeCreate(this.mElement.getID(renderScript), this.mDimX, this.mDimY, this.mDimZ, this.mDimMipmaps, this.mDimFaces, this.mYuv), this.mRS);
            type.mElement = this.mElement;
            type.mDimX = this.mDimX;
            type.mDimY = this.mDimY;
            type.mDimZ = this.mDimZ;
            type.mDimMipmaps = this.mDimMipmaps;
            type.mDimFaces = this.mDimFaces;
            type.mDimYuv = this.mYuv;
            type.calcElementCount();
            return type;
        }

        public Builder setYuvFormat(int i10) {
            if (i10 != 17 && i10 != 842094169) {
                throw new RSIllegalArgumentException("Only NV21 and YV12 are supported..");
            }
            this.mYuv = i10;
            return this;
        }

        public Builder(RenderScript renderScript, Element element) {
            element.checkValid();
            this.mRS = renderScript;
            this.mElement = element;
        }
    }

    public static Type createX(RenderScript renderScript, Element element, int i10) {
        if (i10 < 1) {
            throw new RSInvalidStateException("Dimension must be >= 1.");
        }
        Type type = new Type(renderScript.nTypeCreate(element.getID(renderScript), i10, 0, 0, false, false, 0), renderScript);
        type.mElement = element;
        type.mDimX = i10;
        type.calcElementCount();
        return type;
    }

    public static Type createXY(RenderScript renderScript, Element element, int i10, int i11) {
        if (i10 < 1 || i11 < 1) {
            throw new RSInvalidStateException("Dimension must be >= 1.");
        }
        Type type = new Type(renderScript.nTypeCreate(element.getID(renderScript), i10, i11, 0, false, false, 0), renderScript);
        type.mElement = element;
        type.mDimX = i10;
        type.mDimY = i11;
        type.calcElementCount();
        return type;
    }

    public static Type createXYZ(RenderScript renderScript, Element element, int i10, int i11, int i12) {
        if (i10 < 1 || i11 < 1 || i12 < 1) {
            throw new RSInvalidStateException("Dimension must be >= 1.");
        }
        Type type = new Type(renderScript.nTypeCreate(element.getID(renderScript), i10, i11, i12, false, false, 0), renderScript);
        type.mElement = element;
        type.mDimX = i10;
        type.mDimY = i11;
        type.mDimZ = i12;
        type.calcElementCount();
        return type;
    }

    public int getCount() {
        return this.mElementCount;
    }

    public Element getElement() {
        return this.mElement;
    }

    public int getX() {
        return this.mDimX;
    }

    public int getY() {
        return this.mDimY;
    }

    public int getYuv() {
        return this.mDimYuv;
    }

    public int getZ() {
        return this.mDimZ;
    }

    public boolean hasFaces() {
        return this.mDimFaces;
    }

    public boolean hasMipmaps() {
        return this.mDimMipmaps;
    }

    public enum CubemapFace {
        POSITIVE_X(0),
        NEGATIVE_X(1),
        POSITIVE_Y(2),
        NEGATIVE_Y(3),
        POSITIVE_Z(4),
        NEGATIVE_Z(5);

        int mID;

        CubemapFace(int i10) {
            this.mID = i10;
        }
    }

    public long getDummyType(RenderScript renderScript, long j6) {
        return renderScript.nIncTypeCreate(j6, this.mDimX, this.mDimY, this.mDimZ, this.mDimMipmaps, this.mDimFaces, this.mDimYuv);
    }

    Type(long j6, RenderScript renderScript) {
        super(j6, renderScript);
    }

    void calcElementCount() {
        int i10;
        boolean zHasMipmaps = hasMipmaps();
        int x6 = getX();
        int y6 = getY();
        int z6 = getZ();
        if (hasFaces()) {
            i10 = 6;
        } else {
            i10 = 1;
        }
        if (x6 == 0) {
            x6 = 1;
        }
        if (y6 == 0) {
            y6 = 1;
        }
        if (z6 == 0) {
            z6 = 1;
        }
        int i11 = x6 * y6 * z6 * i10;
        while (zHasMipmaps && (x6 > 1 || y6 > 1 || z6 > 1)) {
            if (x6 > 1) {
                x6 >>= 1;
            }
            if (y6 > 1) {
                y6 >>= 1;
            }
            if (z6 > 1) {
                z6 >>= 1;
            }
            i11 += x6 * y6 * z6 * i10;
        }
        this.mElementCount = i11;
    }
}
