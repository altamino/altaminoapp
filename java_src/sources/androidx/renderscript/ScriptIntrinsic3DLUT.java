package androidx.renderscript;

/* JADX INFO: loaded from: classes8.dex */
public class ScriptIntrinsic3DLUT extends ScriptIntrinsic {
    private static final int INTRINSIC_API_LEVEL = 19;
    private Element mElement;
    private Allocation mLUT;

    public void forEach(Allocation allocation, Allocation allocation2) {
        forEach(0, allocation, allocation2, (FieldPacker) null);
    }

    public Script.KernelID getKernelID() {
        return createKernelID(0, 3, null, null);
    }

    protected ScriptIntrinsic3DLUT(long j6, RenderScript renderScript, Element element) {
        super(j6, renderScript);
        this.mElement = element;
    }

    public static ScriptIntrinsic3DLUT create(RenderScript renderScript, Element element) {
        if (element.isCompatible(Element.U8_4(renderScript))) {
            renderScript.isUseNative();
            ScriptIntrinsic3DLUT scriptIntrinsic3DLUT = new ScriptIntrinsic3DLUT(renderScript.nScriptIntrinsicCreate(8, element.getID(renderScript), false), renderScript, element);
            scriptIntrinsic3DLUT.setIncSupp(false);
            return scriptIntrinsic3DLUT;
        }
        throw new RSIllegalArgumentException("Element must be compatible with uchar4.");
    }

    public void setLUT(Allocation allocation) {
        Type type = allocation.getType();
        if (type.getZ() != 0) {
            if (type.getElement().isCompatible(this.mElement)) {
                this.mLUT = allocation;
                setVar(0, allocation);
                return;
            }
            throw new RSIllegalArgumentException("LUT element type must match.");
        }
        throw new RSIllegalArgumentException("LUT must be 3d.");
    }
}
