package androidx.renderscript;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.Log;
import android.view.Surface;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes3.dex */
public class Allocation extends BaseObj {
    public static final int USAGE_GRAPHICS_TEXTURE = 2;
    public static final int USAGE_IO_INPUT = 32;
    public static final int USAGE_IO_OUTPUT = 64;
    public static final int USAGE_SCRIPT = 1;
    public static final int USAGE_SHARED = 128;
    static BitmapFactory.Options mBitmapOptions;
    Allocation mAdaptedAllocation;
    boolean mAutoPadding;
    Bitmap mBitmap;
    ByteBuffer mByteBuffer;
    long mByteBufferStride;
    boolean mConstrainedFace;
    boolean mConstrainedLOD;
    boolean mConstrainedY;
    boolean mConstrainedZ;
    int mCurrentCount;
    int mCurrentDimX;
    int mCurrentDimY;
    int mCurrentDimZ;
    boolean mIncAllocDestroyed;
    long mIncCompatAllocation;
    boolean mReadAllowed;
    Type.CubemapFace mSelectedFace;
    int mSelectedLOD;
    int mSelectedY;
    int mSelectedZ;
    int mSize;
    Type mType;
    int mUsage;
    boolean mWriteAllowed;

    private void copy1DRangeFromUnchecked(int i10, int i11, Object obj, Element.DataType dataType, int i12) {
        int bytesSize = this.mType.mElement.getBytesSize() * i11;
        boolean z6 = this.mAutoPadding && this.mType.getElement().getVectorSize() == 3;
        data1DChecks(i10, i11, i12 * dataType.mSize, bytesSize, z6);
        this.mRS.nAllocationData1D(getIDSafe(), i10, this.mSelectedLOD, i11, obj, bytesSize, dataType, this.mType.mElement.mType.mSize, z6);
    }

    private void copy1DRangeToUnchecked(int i10, int i11, Object obj, Element.DataType dataType, int i12) {
        int bytesSize = this.mType.mElement.getBytesSize() * i11;
        boolean z6 = this.mAutoPadding && this.mType.getElement().getVectorSize() == 3;
        data1DChecks(i10, i11, i12 * dataType.mSize, bytesSize, z6);
        this.mRS.nAllocationRead1D(getIDSafe(), i10, this.mSelectedLOD, i11, obj, bytesSize, dataType, this.mType.mElement.mType.mSize, z6);
    }

    private void copyFromUnchecked(Object obj, Element.DataType dataType, int i10) {
        this.mRS.validate();
        int i11 = this.mCurrentDimZ;
        if (i11 > 0) {
            copy3DRangeFromUnchecked(0, 0, 0, this.mCurrentDimX, this.mCurrentDimY, i11, obj, dataType, i10);
            return;
        }
        int i12 = this.mCurrentDimY;
        if (i12 > 0) {
            copy2DRangeFromUnchecked(0, 0, this.mCurrentDimX, i12, obj, dataType, i10);
        } else {
            copy1DRangeFromUnchecked(0, this.mCurrentCount, obj, dataType, i10);
        }
    }

    public static Allocation createCubemapFromBitmap(RenderScript renderScript, Bitmap bitmap, MipmapControl mipmapControl, int i10) {
        renderScript.validate();
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        if (width % 6 != 0) {
            throw new RSIllegalArgumentException("Cubemap height must be multiple of 6");
        }
        if (width / 6 != height) {
            throw new RSIllegalArgumentException("Only square cube map faces supported");
        }
        if (((height - 1) & height) != 0) {
            throw new RSIllegalArgumentException("Only power of 2 cube faces supported");
        }
        Element elementElementFromBitmap = elementFromBitmap(renderScript, bitmap);
        Type.Builder builder = new Type.Builder(renderScript, elementElementFromBitmap);
        builder.setX(height);
        builder.setY(height);
        builder.setFaces(true);
        builder.setMipmaps(mipmapControl == MipmapControl.MIPMAP_FULL);
        Type typeCreate = builder.create();
        long jNAllocationCubeCreateFromBitmap = renderScript.nAllocationCubeCreateFromBitmap(typeCreate.getID(renderScript), mipmapControl.mID, bitmap, i10);
        if (jNAllocationCubeCreateFromBitmap != 0) {
            return new Allocation(jNAllocationCubeCreateFromBitmap, renderScript, typeCreate, i10);
        }
        throw new RSRuntimeException("Load failed for bitmap " + bitmap + " element " + elementElementFromBitmap);
    }

    public static Allocation createCubemapFromCubeFaces(RenderScript renderScript, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, Bitmap bitmap4, Bitmap bitmap5, Bitmap bitmap6, MipmapControl mipmapControl, int i10) {
        return null;
    }

    public static Allocation createFromBitmap(RenderScript renderScript, Bitmap bitmap, MipmapControl mipmapControl, int i10) {
        renderScript.validate();
        if (bitmap.getConfig() == null) {
            if ((i10 & 128) != 0) {
                throw new RSIllegalArgumentException("USAGE_SHARED cannot be used with a Bitmap that has a null config.");
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            return createFromBitmap(renderScript, bitmapCreateBitmap, mipmapControl, i10);
        }
        Type typeTypeFromBitmap = typeFromBitmap(renderScript, bitmap, mipmapControl);
        if (mipmapControl != MipmapControl.MIPMAP_NONE || !typeTypeFromBitmap.getElement().isCompatible(Element.RGBA_8888(renderScript)) || i10 != 131) {
            long jNAllocationCreateFromBitmap = renderScript.nAllocationCreateFromBitmap(typeTypeFromBitmap.getID(renderScript), mipmapControl.mID, bitmap, i10);
            if (jNAllocationCreateFromBitmap != 0) {
                return new Allocation(jNAllocationCreateFromBitmap, renderScript, typeTypeFromBitmap, i10);
            }
            throw new RSRuntimeException("Load failed.");
        }
        long jNAllocationCreateBitmapBackedAllocation = renderScript.nAllocationCreateBitmapBackedAllocation(typeTypeFromBitmap.getID(renderScript), mipmapControl.mID, bitmap, i10);
        if (jNAllocationCreateBitmapBackedAllocation == 0) {
            throw new RSRuntimeException("Load failed.");
        }
        Allocation allocation = new Allocation(jNAllocationCreateBitmapBackedAllocation, renderScript, typeTypeFromBitmap, i10);
        allocation.setBitmap(bitmap);
        return allocation;
    }

    public static Allocation createFromBitmapResource(RenderScript renderScript, Resources resources, int i10, MipmapControl mipmapControl, int i11) {
        renderScript.validate();
        if ((i11 & 224) != 0) {
            throw new RSIllegalArgumentException("Unsupported usage specified.");
        }
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(resources, i10);
        Allocation allocationCreateFromBitmap = createFromBitmap(renderScript, bitmapDecodeResource, mipmapControl, i11);
        bitmapDecodeResource.recycle();
        return allocationCreateFromBitmap;
    }

    public static Allocation createSized(RenderScript renderScript, Element element, int i10, int i11) {
        renderScript.validate();
        Type.Builder builder = new Type.Builder(renderScript, element);
        builder.setX(i10);
        Type typeCreate = builder.create();
        long jNAllocationCreateTyped = renderScript.nAllocationCreateTyped(typeCreate.getID(renderScript), MipmapControl.MIPMAP_NONE.mID, i11, 0L);
        if (jNAllocationCreateTyped != 0) {
            return new Allocation(jNAllocationCreateTyped, renderScript, typeCreate, i11);
        }
        throw new RSRuntimeException("Allocation creation failed.");
    }

    public static Allocation createTyped(RenderScript renderScript, Type type, MipmapControl mipmapControl, int i10) {
        renderScript.validate();
        if (type.getID(renderScript) == 0) {
            throw new RSInvalidStateException("Bad Type");
        }
        if (!renderScript.usingIO() && (i10 & 32) != 0) {
            throw new RSRuntimeException("USAGE_IO not supported, Allocation creation failed.");
        }
        long jNAllocationCreateTyped = renderScript.nAllocationCreateTyped(type.getID(renderScript), mipmapControl.mID, i10, 0L);
        if (jNAllocationCreateTyped != 0) {
            return new Allocation(jNAllocationCreateTyped, renderScript, type, i10);
        }
        throw new RSRuntimeException("Allocation creation failed.");
    }

    private void setBitmap(Bitmap bitmap) {
        this.mBitmap = bitmap;
    }

    public void copy1DRangeFrom(int i10, int i11, Object obj) {
        copy1DRangeFromUnchecked(i10, i11, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copy1DRangeTo(int i10, int i11, Object obj) {
        copy1DRangeToUnchecked(i10, i11, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copy2DRangeFrom(int i10, int i11, int i12, int i13, Object obj) {
        copy2DRangeFromUnchecked(i10, i11, i12, i13, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copy2DRangeTo(int i10, int i11, int i12, int i13, Object obj) {
        copy2DRangeToUnchecked(i10, i11, i12, i13, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copy3DRangeFrom(int i10, int i11, int i12, int i13, int i14, int i15, Object obj) {
        copy3DRangeFromUnchecked(i10, i11, i12, i13, i14, i15, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copyFrom(BaseObj[] baseObjArr) {
        this.mRS.validate();
        validateIsObject();
        if (baseObjArr.length != this.mCurrentCount) {
            throw new RSIllegalArgumentException("Array size mismatch, allocation sizeX = " + this.mCurrentCount + ", array length = " + baseObjArr.length);
        }
        if (RenderScript.sPointerSize == 8) {
            long[] jArr = new long[baseObjArr.length * 4];
            for (int i10 = 0; i10 < baseObjArr.length; i10++) {
                jArr[i10 * 4] = baseObjArr[i10].getID(this.mRS);
            }
            copy1DRangeFromUnchecked(0, this.mCurrentCount, (Object) jArr);
            return;
        }
        int[] iArr = new int[baseObjArr.length];
        for (int i11 = 0; i11 < baseObjArr.length; i11++) {
            iArr[i11] = (int) baseObjArr[i11].getID(this.mRS);
        }
        copy1DRangeFromUnchecked(0, this.mCurrentCount, iArr);
    }

    public void copyTo(Bitmap bitmap) {
        this.mRS.validate();
        validateBitmapFormat(bitmap);
        validateBitmapSize(bitmap);
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationCopyToBitmap(getID(renderScript), bitmap);
    }

    public long getIncAllocID() {
        return this.mIncCompatAllocation;
    }

    public Type getType() {
        return this.mType;
    }

    public int getUsage() {
        return this.mUsage;
    }

    public void setAutoPadding(boolean z6) {
        this.mAutoPadding = z6;
    }

    public void setFromFieldPacker(int i10, FieldPacker fieldPacker) {
        this.mRS.validate();
        int bytesSize = this.mType.mElement.getBytesSize();
        byte[] data = fieldPacker.getData();
        int pos = fieldPacker.getPos();
        int i11 = pos / bytesSize;
        if (bytesSize * i11 == pos) {
            copy1DRangeFromUnchecked(i10, i11, data);
            return;
        }
        throw new RSIllegalArgumentException("Field packer length " + pos + " not divisible by element size " + bytesSize + ".");
    }

    public void setIncAllocID(long j6) {
        this.mIncCompatAllocation = j6;
    }

    public void syncAll(int i10) {
        if (i10 != 1 && i10 != 2) {
            throw new RSIllegalArgumentException("Source must be exactly one usage type.");
        }
        this.mRS.validate();
        this.mRS.nAllocationSyncAll(getIDSafe(), i10);
    }

    /* JADX INFO: renamed from: androidx.renderscript.Allocation$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            $SwitchMap$android$graphics$Bitmap$Config = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_8888.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGB_565.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_4444.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum MipmapControl {
        MIPMAP_NONE(0),
        MIPMAP_FULL(1),
        MIPMAP_ON_SYNC_TO_TEXTURE(2);

        int mID;

        MipmapControl(int i10) {
            this.mID = i10;
        }
    }

    static {
        BitmapFactory.Options options = new BitmapFactory.Options();
        mBitmapOptions = options;
        options.inScaled = false;
    }

    private void copy3DRangeFromUnchecked(int i10, int i11, int i12, int i13, int i14, int i15, Object obj, Element.DataType dataType, int i16) {
        boolean z6;
        int i17;
        this.mRS.validate();
        validate3DRange(i10, i11, i12, i13, i14, i15);
        int bytesSize = this.mType.mElement.getBytesSize() * i13 * i14 * i15;
        int i18 = dataType.mSize * i16;
        if (this.mAutoPadding && this.mType.getElement().getVectorSize() == 3) {
            if ((bytesSize / 4) * 3 > i18) {
                throw new RSIllegalArgumentException("Array too small for allocation type.");
            }
            i17 = bytesSize;
            z6 = true;
        } else {
            if (bytesSize > i18) {
                throw new RSIllegalArgumentException("Array too small for allocation type.");
            }
            z6 = false;
            i17 = i18;
        }
        this.mRS.nAllocationData3D(getIDSafe(), i10, i11, i12, this.mSelectedLOD, i13, i14, i15, obj, i17, dataType, this.mType.mElement.mType.mSize, z6);
    }

    public static Allocation createCubemapFromCubeFaces(RenderScript renderScript, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, Bitmap bitmap4, Bitmap bitmap5, Bitmap bitmap6) {
        return createCubemapFromCubeFaces(renderScript, bitmap, bitmap2, bitmap3, bitmap4, bitmap5, bitmap6, MipmapControl.MIPMAP_NONE, 2);
    }

    private void data1DChecks(int i10, int i11, int i12, int i13, boolean z6) {
        this.mRS.validate();
        if (i10 < 0) {
            throw new RSIllegalArgumentException("Offset must be >= 0.");
        }
        if (i11 < 1) {
            throw new RSIllegalArgumentException("Count must be >= 1.");
        }
        if (i10 + i11 <= this.mCurrentCount) {
            if (z6) {
                if (i12 < (i13 / 4) * 3) {
                    throw new RSIllegalArgumentException("Array too small for allocation type.");
                }
                return;
            } else {
                if (i12 < i13) {
                    throw new RSIllegalArgumentException("Array too small for allocation type.");
                }
                return;
            }
        }
        throw new RSIllegalArgumentException("Overflow, Available count " + this.mCurrentCount + ", got " + i11 + " at offset " + i10 + ".");
    }

    private long getIDSafe() {
        Allocation allocation = this.mAdaptedAllocation;
        return allocation != null ? allocation.getID(this.mRS) : getID(this.mRS);
    }

    private void validate2DRange(int i10, int i11, int i12, int i13) {
        if (this.mAdaptedAllocation != null) {
            return;
        }
        if (i10 < 0 || i11 < 0) {
            throw new RSIllegalArgumentException("Offset cannot be negative.");
        }
        if (i13 < 0 || i12 < 0) {
            throw new RSIllegalArgumentException("Height or width cannot be negative.");
        }
        if (i10 + i12 > this.mCurrentDimX || i11 + i13 > this.mCurrentDimY) {
            throw new RSIllegalArgumentException("Updated region larger than allocation.");
        }
    }

    private void validate3DRange(int i10, int i11, int i12, int i13, int i14, int i15) {
        if (this.mAdaptedAllocation != null) {
            return;
        }
        if (i10 < 0 || i11 < 0 || i12 < 0) {
            throw new RSIllegalArgumentException("Offset cannot be negative.");
        }
        if (i14 < 0 || i13 < 0 || i15 < 0) {
            throw new RSIllegalArgumentException("Height or width cannot be negative.");
        }
        if (i10 + i13 > this.mCurrentDimX || i11 + i14 > this.mCurrentDimY || i12 + i15 > this.mCurrentDimZ) {
            throw new RSIllegalArgumentException("Updated region larger than allocation.");
        }
    }

    private void validateBitmapSize(Bitmap bitmap) {
        if (this.mCurrentDimX != bitmap.getWidth() || this.mCurrentDimY != bitmap.getHeight()) {
            throw new RSIllegalArgumentException("Cannot update allocation from bitmap, sizes mismatch");
        }
    }

    private void validateIsFloat32() {
        if (this.mType.mElement.mType == Element.DataType.FLOAT_32) {
            return;
        }
        throw new RSIllegalArgumentException("32 bit float source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsFloat64() {
        if (this.mType.mElement.mType == Element.DataType.FLOAT_64) {
            return;
        }
        throw new RSIllegalArgumentException("64 bit float source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsInt16() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.SIGNED_16 || dataType == Element.DataType.UNSIGNED_16) {
            return;
        }
        throw new RSIllegalArgumentException("16 bit integer source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsInt32() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.SIGNED_32 || dataType == Element.DataType.UNSIGNED_32) {
            return;
        }
        throw new RSIllegalArgumentException("32 bit integer source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsInt64() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.SIGNED_64 || dataType == Element.DataType.UNSIGNED_64) {
            return;
        }
        throw new RSIllegalArgumentException("64 bit integer source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsInt8() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.SIGNED_8 || dataType == Element.DataType.UNSIGNED_8) {
            return;
        }
        throw new RSIllegalArgumentException("8 bit integer source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsObject() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.RS_ELEMENT || dataType == Element.DataType.RS_TYPE || dataType == Element.DataType.RS_ALLOCATION || dataType == Element.DataType.RS_SAMPLER || dataType == Element.DataType.RS_SCRIPT) {
            return;
        }
        throw new RSIllegalArgumentException("Object source does not match allocation type " + this.mType.mElement.mType);
    }

    void copy2DRangeFromUnchecked(int i10, int i11, int i12, int i13, Object obj, Element.DataType dataType, int i14) {
        boolean z6;
        int i15;
        this.mRS.validate();
        validate2DRange(i10, i11, i12, i13);
        int bytesSize = this.mType.mElement.getBytesSize() * i12 * i13;
        int i16 = dataType.mSize * i14;
        if (this.mAutoPadding && this.mType.getElement().getVectorSize() == 3) {
            if ((bytesSize / 4) * 3 > i16) {
                throw new RSIllegalArgumentException("Array too small for allocation type.");
            }
            i15 = bytesSize;
            z6 = true;
        } else {
            if (bytesSize > i16) {
                throw new RSIllegalArgumentException("Array too small for allocation type.");
            }
            z6 = false;
            i15 = i16;
        }
        this.mRS.nAllocationData2D(getIDSafe(), i10, i11, this.mSelectedLOD, this.mSelectedFace.mID, i12, i13, obj, i15, dataType, this.mType.mElement.mType.mSize, z6);
    }

    void copy2DRangeToUnchecked(int i10, int i11, int i12, int i13, Object obj, Element.DataType dataType, int i14) {
        boolean z6;
        int i15;
        this.mRS.validate();
        validate2DRange(i10, i11, i12, i13);
        int bytesSize = this.mType.mElement.getBytesSize() * i12 * i13;
        int i16 = dataType.mSize * i14;
        if (this.mAutoPadding && this.mType.getElement().getVectorSize() == 3) {
            if ((bytesSize / 4) * 3 > i16) {
                throw new RSIllegalArgumentException("Array too small for allocation type.");
            }
            i15 = bytesSize;
            z6 = true;
        } else {
            if (bytesSize > i16) {
                throw new RSIllegalArgumentException("Array too small for allocation type.");
            }
            z6 = false;
            i15 = i16;
        }
        this.mRS.nAllocationRead2D(getIDSafe(), i10, i11, this.mSelectedLOD, this.mSelectedFace.mID, i12, i13, obj, i15, dataType, this.mType.mElement.mType.mSize, z6);
    }

    @Override // androidx.renderscript.BaseObj
    public void destroy() {
        boolean z6;
        if (this.mIncCompatAllocation != 0) {
            synchronized (this) {
                try {
                    if (this.mIncAllocDestroyed) {
                        z6 = false;
                    } else {
                        z6 = true;
                        this.mIncAllocDestroyed = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z6) {
                ReentrantReadWriteLock.ReadLock lock = this.mRS.mRWLock.readLock();
                lock.lock();
                if (this.mRS.isAlive()) {
                    this.mRS.nIncObjDestroy(this.mIncCompatAllocation);
                }
                lock.unlock();
                this.mIncCompatAllocation = 0L;
            }
        }
        if ((this.mUsage & 96) != 0) {
            setSurface(null);
        }
        super.destroy();
    }

    @Override // androidx.renderscript.BaseObj
    protected void finalize() throws Throwable {
        if (RenderScript.sUseGCHooks) {
            RenderScript.registerNativeFree.invoke(RenderScript.sRuntime, Integer.valueOf(this.mSize));
        }
        super.finalize();
    }

    public void generateMipmaps() {
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationGenerateMipmaps(getID(renderScript));
    }

    public ByteBuffer getByteBuffer() {
        byte[] bArr;
        int x6 = this.mType.getX() * this.mType.getElement().getBytesSize();
        if (this.mRS.getDispatchAPILevel() >= 21) {
            if (this.mByteBuffer == null || (this.mUsage & 32) != 0) {
                RenderScript renderScript = this.mRS;
                this.mByteBuffer = renderScript.nAllocationGetByteBuffer(getID(renderScript), x6, this.mType.getY(), this.mType.getZ());
            }
            return this.mByteBuffer;
        }
        if (this.mType.getZ() > 0) {
            return null;
        }
        if (this.mType.getY() > 0) {
            bArr = new byte[this.mType.getY() * x6];
            copy2DRangeToUnchecked(0, 0, this.mType.getX(), this.mType.getY(), bArr, Element.DataType.SIGNED_8, x6 * this.mType.getY());
        } else {
            bArr = new byte[x6];
            copy1DRangeToUnchecked(0, this.mType.getX(), bArr);
        }
        ByteBuffer byteBufferAsReadOnlyBuffer = ByteBuffer.wrap(bArr).asReadOnlyBuffer();
        this.mByteBufferStride = x6;
        return byteBufferAsReadOnlyBuffer;
    }

    public int getBytesSize() {
        Type type = this.mType;
        return type.mDimYuv != 0 ? (int) Math.ceil(((double) (type.getCount() * this.mType.getElement().getBytesSize())) * 1.5d) : type.getCount() * this.mType.getElement().getBytesSize();
    }

    public Element getElement() {
        return this.mType.getElement();
    }

    public long getStride() {
        if (this.mByteBufferStride == 0) {
            if (this.mRS.getDispatchAPILevel() > 21) {
                RenderScript renderScript = this.mRS;
                this.mByteBufferStride = renderScript.nAllocationGetStride(getID(renderScript));
            } else {
                this.mByteBufferStride = this.mType.getX() * this.mType.getElement().getBytesSize();
            }
        }
        return this.mByteBufferStride;
    }

    public void ioReceive() {
        if ((this.mUsage & 32) == 0) {
            throw new RSIllegalArgumentException("Can only receive if IO_INPUT usage specified.");
        }
        this.mRS.validate();
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationIoReceive(getID(renderScript));
    }

    public void ioSend() {
        if ((this.mUsage & 64) == 0) {
            throw new RSIllegalArgumentException("Can only send buffer if IO_OUTPUT usage specified.");
        }
        this.mRS.validate();
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationIoSend(getID(renderScript));
    }

    public void setSurface(Surface surface) {
        this.mRS.validate();
        if ((this.mUsage & 64) == 0) {
            throw new RSInvalidStateException("Allocation is not USAGE_IO_OUTPUT.");
        }
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationSetSurface(getID(renderScript), surface);
    }

    Allocation(long j6, RenderScript renderScript, Type type, int i10) {
        super(j6, renderScript);
        this.mByteBuffer = null;
        this.mByteBufferStride = 0L;
        this.mReadAllowed = true;
        this.mWriteAllowed = true;
        this.mAutoPadding = false;
        this.mSelectedFace = Type.CubemapFace.POSITIVE_X;
        if ((i10 & (-228)) == 0) {
            if ((i10 & 32) != 0) {
                this.mWriteAllowed = false;
                if ((i10 & (-36)) != 0) {
                    throw new RSIllegalArgumentException("Invalid usage combination.");
                }
            }
            this.mType = type;
            this.mUsage = i10;
            this.mIncCompatAllocation = 0L;
            this.mIncAllocDestroyed = false;
            if (type != null) {
                this.mSize = type.getCount() * this.mType.getElement().getBytesSize();
                updateCacheInfo(type);
            }
            if (RenderScript.sUseGCHooks) {
                try {
                    RenderScript.registerNativeAllocation.invoke(RenderScript.sRuntime, Integer.valueOf(this.mSize));
                    return;
                } catch (Exception e) {
                    Log.e("RenderScript_jni", "Couldn't invoke registerNativeAllocation:" + e);
                    throw new RSRuntimeException("Couldn't invoke registerNativeAllocation:" + e);
                }
            }
            return;
        }
        throw new RSIllegalArgumentException("Unknown usage specified.");
    }

    public static Allocation createFromString(RenderScript renderScript, String str, int i10) {
        renderScript.validate();
        try {
            byte[] bytes = str.getBytes("UTF-8");
            Allocation allocationCreateSized = createSized(renderScript, Element.U8(renderScript), bytes.length, i10);
            allocationCreateSized.copyFrom(bytes);
            return allocationCreateSized;
        } catch (Exception unused) {
            throw new RSRuntimeException("Could not convert string to utf-8.");
        }
    }

    static Element elementFromBitmap(RenderScript renderScript, Bitmap bitmap) {
        Bitmap.Config config = bitmap.getConfig();
        if (config == Bitmap.Config.ALPHA_8) {
            return Element.A_8(renderScript);
        }
        if (config == Bitmap.Config.ARGB_4444) {
            return Element.RGBA_4444(renderScript);
        }
        if (config == Bitmap.Config.ARGB_8888) {
            return Element.RGBA_8888(renderScript);
        }
        if (config == Bitmap.Config.RGB_565) {
            return Element.RGB_565(renderScript);
        }
        throw new RSInvalidStateException("Bad bitmap type: " + config);
    }

    static Type typeFromBitmap(RenderScript renderScript, Bitmap bitmap, MipmapControl mipmapControl) {
        boolean z6;
        Type.Builder builder = new Type.Builder(renderScript, elementFromBitmap(renderScript, bitmap));
        builder.setX(bitmap.getWidth());
        builder.setY(bitmap.getHeight());
        if (mipmapControl == MipmapControl.MIPMAP_FULL) {
            z6 = true;
        } else {
            z6 = false;
        }
        builder.setMipmaps(z6);
        return builder.create();
    }

    private void updateCacheInfo(Type type) {
        this.mCurrentDimX = type.getX();
        this.mCurrentDimY = type.getY();
        int z6 = type.getZ();
        this.mCurrentDimZ = z6;
        int i10 = this.mCurrentDimX;
        this.mCurrentCount = i10;
        int i11 = this.mCurrentDimY;
        if (i11 > 1) {
            this.mCurrentCount = i10 * i11;
        }
        if (z6 > 1) {
            this.mCurrentCount *= z6;
        }
    }

    private void validateBitmapFormat(Bitmap bitmap) {
        Bitmap.Config config = bitmap.getConfig();
        if (config != null) {
            int i10 = AnonymousClass1.$SwitchMap$android$graphics$Bitmap$Config[config.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            if (this.mType.getElement().mKind != Element.DataKind.PIXEL_RGBA || this.mType.getElement().getBytesSize() != 2) {
                                throw new RSIllegalArgumentException("Allocation kind is " + this.mType.getElement().mKind + ", type " + this.mType.getElement().mType + " of " + this.mType.getElement().getBytesSize() + " bytes, passed bitmap was " + config);
                            }
                            return;
                        }
                        return;
                    }
                    if (this.mType.getElement().mKind != Element.DataKind.PIXEL_RGB || this.mType.getElement().getBytesSize() != 2) {
                        throw new RSIllegalArgumentException("Allocation kind is " + this.mType.getElement().mKind + ", type " + this.mType.getElement().mType + " of " + this.mType.getElement().getBytesSize() + " bytes, passed bitmap was " + config);
                    }
                    return;
                }
                if (this.mType.getElement().mKind != Element.DataKind.PIXEL_RGBA || this.mType.getElement().getBytesSize() != 4) {
                    throw new RSIllegalArgumentException("Allocation kind is " + this.mType.getElement().mKind + ", type " + this.mType.getElement().mType + " of " + this.mType.getElement().getBytesSize() + " bytes, passed bitmap was " + config);
                }
                return;
            }
            if (this.mType.getElement().mKind == Element.DataKind.PIXEL_A) {
                return;
            }
            throw new RSIllegalArgumentException("Allocation kind is " + this.mType.getElement().mKind + ", type " + this.mType.getElement().mType + " of " + this.mType.getElement().getBytesSize() + " bytes, passed bitmap was " + config);
        }
        throw new RSIllegalArgumentException("Bitmap has an unsupported format for this operation");
    }

    private Element.DataType validateObjectIsPrimitiveArray(Object obj, boolean z6) {
        Class<?> cls = obj.getClass();
        if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive()) {
                if (componentType == Long.TYPE) {
                    if (z6) {
                        validateIsInt64();
                        return this.mType.mElement.mType;
                    }
                    return Element.DataType.SIGNED_64;
                }
                if (componentType == Integer.TYPE) {
                    if (z6) {
                        validateIsInt32();
                        return this.mType.mElement.mType;
                    }
                    return Element.DataType.SIGNED_32;
                }
                if (componentType == Short.TYPE) {
                    if (z6) {
                        validateIsInt16();
                        return this.mType.mElement.mType;
                    }
                    return Element.DataType.SIGNED_16;
                }
                if (componentType == Byte.TYPE) {
                    if (z6) {
                        validateIsInt8();
                        return this.mType.mElement.mType;
                    }
                    return Element.DataType.SIGNED_8;
                }
                if (componentType == Float.TYPE) {
                    if (z6) {
                        validateIsFloat32();
                    }
                    return Element.DataType.FLOAT_32;
                }
                if (componentType == Double.TYPE) {
                    if (z6) {
                        validateIsFloat64();
                    }
                    return Element.DataType.FLOAT_64;
                }
                return null;
            }
            throw new RSIllegalArgumentException("Object passed is not an Array of primitives.");
        }
        throw new RSIllegalArgumentException("Object passed is not an array of primitives.");
    }

    public void ioSendOutput() {
        ioSend();
    }

    public void copy1DRangeFrom(int i10, int i11, int[] iArr) {
        validateIsInt32();
        copy1DRangeFromUnchecked(i10, i11, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy1DRangeTo(int i10, int i11, int[] iArr) {
        validateIsInt32();
        copy1DRangeToUnchecked(i10, i11, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy2DRangeFrom(int i10, int i11, int i12, int i13, byte[] bArr) {
        validateIsInt8();
        copy2DRangeFromUnchecked(i10, i11, i12, i13, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy2DRangeTo(int i10, int i11, int i12, int i13, byte[] bArr) {
        validateIsInt8();
        copy2DRangeToUnchecked(i10, i11, i12, i13, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy3DRangeFrom(int i10, int i11, int i12, int i13, int i14, int i15, Allocation allocation, int i16, int i17, int i18) {
        this.mRS.validate();
        validate3DRange(i10, i11, i12, i13, i14, i15);
        this.mRS.nAllocationData3D(getIDSafe(), i10, i11, i12, this.mSelectedLOD, i13, i14, i15, allocation.getID(this.mRS), i16, i17, i18, allocation.mSelectedLOD);
    }

    private void copyTo(Object obj, Element.DataType dataType, int i10) {
        this.mRS.validate();
        boolean z6 = this.mAutoPadding && this.mType.getElement().getVectorSize() == 3;
        if (z6) {
            if (dataType.mSize * i10 < (this.mSize / 4) * 3) {
                throw new RSIllegalArgumentException("Size of output array cannot be smaller than size of allocation.");
            }
        } else if (dataType.mSize * i10 < this.mSize) {
            throw new RSIllegalArgumentException("Size of output array cannot be smaller than size of allocation.");
        }
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationRead(getID(renderScript), obj, dataType, this.mType.mElement.mType.mSize, z6);
    }

    public void copy1DRangeFromUnchecked(int i10, int i11, Object obj) {
        copy1DRangeFromUnchecked(i10, i11, obj, validateObjectIsPrimitiveArray(obj, false), Array.getLength(obj));
    }

    public void copy1DRangeToUnchecked(int i10, int i11, Object obj) {
        copy1DRangeToUnchecked(i10, i11, obj, validateObjectIsPrimitiveArray(obj, false), Array.getLength(obj));
    }

    public void copyFromUnchecked(Object obj) {
        copyFromUnchecked(obj, validateObjectIsPrimitiveArray(obj, false), Array.getLength(obj));
    }

    public static Allocation createFromBitmapResource(RenderScript renderScript, Resources resources, int i10) {
        return createFromBitmapResource(renderScript, resources, i10, MipmapControl.MIPMAP_NONE, 3);
    }

    public void copy1DRangeFrom(int i10, int i11, short[] sArr) {
        validateIsInt16();
        copy1DRangeFromUnchecked(i10, i11, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy1DRangeTo(int i10, int i11, short[] sArr) {
        validateIsInt16();
        copy1DRangeToUnchecked(i10, i11, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy2DRangeFrom(int i10, int i11, int i12, int i13, short[] sArr) {
        validateIsInt16();
        copy2DRangeFromUnchecked(i10, i11, i12, i13, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy2DRangeTo(int i10, int i11, int i12, int i13, short[] sArr) {
        validateIsInt16();
        copy2DRangeToUnchecked(i10, i11, i12, i13, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public static Allocation createSized(RenderScript renderScript, Element element, int i10) {
        return createSized(renderScript, element, i10, 1);
    }

    public void copy1DRangeFrom(int i10, int i11, byte[] bArr) {
        validateIsInt8();
        copy1DRangeFromUnchecked(i10, i11, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy1DRangeFromUnchecked(int i10, int i11, int[] iArr) {
        copy1DRangeFromUnchecked(i10, i11, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy1DRangeTo(int i10, int i11, byte[] bArr) {
        validateIsInt8();
        copy1DRangeToUnchecked(i10, i11, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy1DRangeToUnchecked(int i10, int i11, int[] iArr) {
        copy1DRangeToUnchecked(i10, i11, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy2DRangeFrom(int i10, int i11, int i12, int i13, int[] iArr) {
        validateIsInt32();
        copy2DRangeFromUnchecked(i10, i11, i12, i13, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy2DRangeTo(int i10, int i11, int i12, int i13, int[] iArr) {
        validateIsInt32();
        copy2DRangeToUnchecked(i10, i11, i12, i13, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copyFromUnchecked(int[] iArr) {
        copyFromUnchecked(iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void setFromFieldPacker(int i10, int i11, FieldPacker fieldPacker) {
        this.mRS.validate();
        if (i11 >= this.mType.mElement.mElements.length) {
            throw new RSIllegalArgumentException("Component_number " + i11 + " out of range.");
        }
        if (i10 >= 0) {
            byte[] data = fieldPacker.getData();
            int pos = fieldPacker.getPos();
            int bytesSize = this.mType.mElement.mElements[i11].getBytesSize() * this.mType.mElement.mArraySizes[i11];
            if (pos == bytesSize) {
                this.mRS.nAllocationElementData1D(getIDSafe(), i10, this.mSelectedLOD, i11, data, pos);
                return;
            }
            throw new RSIllegalArgumentException("Field packer sizelength " + pos + " does not match component size " + bytesSize + ".");
        }
        throw new RSIllegalArgumentException("Offset must be >= 0.");
    }

    public static Allocation createTyped(RenderScript renderScript, Type type, int i10) {
        return createTyped(renderScript, type, MipmapControl.MIPMAP_NONE, i10);
    }

    public void copy1DRangeFromUnchecked(int i10, int i11, short[] sArr) {
        copy1DRangeFromUnchecked(i10, i11, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy1DRangeToUnchecked(int i10, int i11, short[] sArr) {
        copy1DRangeToUnchecked(i10, i11, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copyFromUnchecked(short[] sArr) {
        copyFromUnchecked(sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public static Allocation createTyped(RenderScript renderScript, Type type) {
        return createTyped(renderScript, type, MipmapControl.MIPMAP_NONE, 1);
    }

    public void copy1DRangeFrom(int i10, int i11, float[] fArr) {
        validateIsFloat32();
        copy1DRangeFromUnchecked(i10, i11, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy1DRangeFromUnchecked(int i10, int i11, byte[] bArr) {
        copy1DRangeFromUnchecked(i10, i11, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy1DRangeTo(int i10, int i11, float[] fArr) {
        validateIsFloat32();
        copy1DRangeToUnchecked(i10, i11, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy1DRangeToUnchecked(int i10, int i11, byte[] bArr) {
        copy1DRangeToUnchecked(i10, i11, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy2DRangeFrom(int i10, int i11, int i12, int i13, float[] fArr) {
        validateIsFloat32();
        copy2DRangeFromUnchecked(i10, i11, i12, i13, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy2DRangeTo(int i10, int i11, int i12, int i13, float[] fArr) {
        validateIsFloat32();
        copy2DRangeToUnchecked(i10, i11, i12, i13, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copyFromUnchecked(byte[] bArr) {
        copyFromUnchecked(bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy1DRangeFromUnchecked(int i10, int i11, float[] fArr) {
        copy1DRangeFromUnchecked(i10, i11, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy1DRangeToUnchecked(int i10, int i11, float[] fArr) {
        copy1DRangeToUnchecked(i10, i11, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copyFromUnchecked(float[] fArr) {
        copyFromUnchecked(fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy1DRangeFrom(int i10, int i11, Allocation allocation, int i12) {
        this.mRS.nAllocationData2D(getIDSafe(), i10, 0, this.mSelectedLOD, this.mSelectedFace.mID, i11, 1, allocation.getID(this.mRS), i12, 0, allocation.mSelectedLOD, allocation.mSelectedFace.mID);
    }

    public void copy2DRangeFrom(int i10, int i11, int i12, int i13, Allocation allocation, int i14, int i15) {
        this.mRS.validate();
        validate2DRange(i10, i11, i12, i13);
        this.mRS.nAllocationData2D(getIDSafe(), i10, i11, this.mSelectedLOD, this.mSelectedFace.mID, i12, i13, allocation.getID(this.mRS), i14, i15, allocation.mSelectedLOD, allocation.mSelectedFace.mID);
    }

    public void copyTo(Object obj) {
        copyTo(obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copyFrom(Object obj) {
        copyFromUnchecked(obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copyTo(byte[] bArr) {
        validateIsInt8();
        copyTo(bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy2DRangeFrom(int i10, int i11, Bitmap bitmap) {
        this.mRS.validate();
        if (bitmap.getConfig() == null) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            copy2DRangeFrom(i10, i11, bitmapCreateBitmap);
        } else {
            validateBitmapFormat(bitmap);
            validate2DRange(i10, i11, bitmap.getWidth(), bitmap.getHeight());
            this.mRS.nAllocationData2D(getIDSafe(), i10, i11, this.mSelectedLOD, this.mSelectedFace.mID, bitmap);
        }
    }

    public void copyFrom(int[] iArr) {
        validateIsInt32();
        copyFromUnchecked(iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copyTo(short[] sArr) {
        validateIsInt16();
        copyTo(sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public static Allocation createFromBitmap(RenderScript renderScript, Bitmap bitmap) {
        return createFromBitmap(renderScript, bitmap, MipmapControl.MIPMAP_NONE, 131);
    }

    public static Allocation createCubemapFromBitmap(RenderScript renderScript, Bitmap bitmap) {
        return createCubemapFromBitmap(renderScript, bitmap, MipmapControl.MIPMAP_NONE, 2);
    }

    public void copyFrom(short[] sArr) {
        validateIsInt16();
        copyFromUnchecked(sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copyTo(int[] iArr) {
        validateIsInt32();
        copyTo(iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copyFrom(byte[] bArr) {
        validateIsInt8();
        copyFromUnchecked(bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copyTo(float[] fArr) {
        validateIsFloat32();
        copyTo(fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copyFrom(float[] fArr) {
        validateIsFloat32();
        copyFromUnchecked(fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copyFrom(Bitmap bitmap) {
        this.mRS.validate();
        if (bitmap.getConfig() == null) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            copyFrom(bitmapCreateBitmap);
        } else {
            validateBitmapSize(bitmap);
            validateBitmapFormat(bitmap);
            RenderScript renderScript = this.mRS;
            renderScript.nAllocationCopyFromBitmap(getID(renderScript), bitmap);
        }
    }

    public void copyFrom(Allocation allocation) {
        this.mRS.validate();
        if (this.mType.equals(allocation.getType())) {
            copy2DRangeFrom(0, 0, this.mCurrentDimX, this.mCurrentDimY, allocation, 0, 0);
            return;
        }
        throw new RSIllegalArgumentException("Types of allocations must match.");
    }
}
