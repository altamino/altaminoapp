package androidx.renderscript;

/* JADX INFO: loaded from: classes10.dex */
public class ScriptIntrinsicLUT extends ScriptIntrinsic {
    private static final int INTRINSIC_API_LEVEL = 19;
    private final byte[] mCache;
    private boolean mDirty;
    private final Matrix4f mMatrix;
    private Allocation mTables;

    public Script.KernelID getKernelID() {
        return createKernelID(0, 3, null, null);
    }

    private void validate(int i10, int i11) {
        if (i10 < 0 || i10 > 255) {
            throw new RSIllegalArgumentException("Index out of range (0-255).");
        }
        if (i11 < 0 || i11 > 255) {
            throw new RSIllegalArgumentException("Value out of range (0-255).");
        }
    }

    public void forEach(Allocation allocation, Allocation allocation2) {
        if (this.mDirty) {
            this.mDirty = false;
            this.mTables.copyFromUnchecked(this.mCache);
        }
        forEach(0, allocation, allocation2, (FieldPacker) null);
    }

    protected ScriptIntrinsicLUT(long j6, RenderScript renderScript) {
        super(j6, renderScript);
        this.mMatrix = new Matrix4f();
        this.mCache = new byte[1024];
        this.mDirty = true;
    }

    public static ScriptIntrinsicLUT create(RenderScript renderScript, Element element) {
        renderScript.isUseNative();
        ScriptIntrinsicLUT scriptIntrinsicLUT = new ScriptIntrinsicLUT(renderScript.nScriptIntrinsicCreate(3, element.getID(renderScript), false), renderScript);
        scriptIntrinsicLUT.setIncSupp(false);
        scriptIntrinsicLUT.mTables = Allocation.createSized(renderScript, Element.U8(renderScript), 1024);
        for (int i10 = 0; i10 < 256; i10++) {
            byte[] bArr = scriptIntrinsicLUT.mCache;
            byte b7 = (byte) i10;
            bArr[i10] = b7;
            bArr[i10 + 256] = b7;
            bArr[i10 + 512] = b7;
            bArr[i10 + 768] = b7;
        }
        scriptIntrinsicLUT.setVar(0, scriptIntrinsicLUT.mTables);
        return scriptIntrinsicLUT;
    }

    public void setAlpha(int i10, int i11) {
        validate(i10, i11);
        this.mCache[i10 + 768] = (byte) i11;
        this.mDirty = true;
    }

    public void setBlue(int i10, int i11) {
        validate(i10, i11);
        this.mCache[i10 + 512] = (byte) i11;
        this.mDirty = true;
    }

    public void setGreen(int i10, int i11) {
        validate(i10, i11);
        this.mCache[i10 + 256] = (byte) i11;
        this.mDirty = true;
    }

    public void setRed(int i10, int i11) {
        validate(i10, i11);
        this.mCache[i10] = (byte) i11;
        this.mDirty = true;
    }
}
