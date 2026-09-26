package androidx.renderscript;

import android.util.SparseArray;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class Script extends BaseObj {
    private final SparseArray<FieldID> mFIDs;
    private final SparseArray<InvokeID> mIIDs;
    private final SparseArray<KernelID> mKIDs;
    private boolean mUseIncSupp;

    public static class FieldBase {
        protected Allocation mAllocation;
        protected Element mElement;

        public Allocation getAllocation() {
            return this.mAllocation;
        }

        public Element getElement() {
            return this.mElement;
        }

        protected void init(RenderScript renderScript, int i10) {
            this.mAllocation = Allocation.createSized(renderScript, this.mElement, i10, 1);
        }

        public void updateAllocation() {
        }

        public Type getType() {
            return this.mAllocation.getType();
        }

        protected void init(RenderScript renderScript, int i10, int i11) {
            this.mAllocation = Allocation.createSized(renderScript, this.mElement, i10, i11 | 1);
        }

        protected FieldBase() {
        }
    }

    public static final class LaunchOptions {
        private int strategy;
        private int xstart = 0;
        private int ystart = 0;
        private int xend = 0;
        private int yend = 0;
        private int zstart = 0;
        private int zend = 0;

        public int getXEnd() {
            return this.xend;
        }

        public int getXStart() {
            return this.xstart;
        }

        public int getYEnd() {
            return this.yend;
        }

        public int getYStart() {
            return this.ystart;
        }

        public int getZEnd() {
            return this.zend;
        }

        public int getZStart() {
            return this.zstart;
        }

        public LaunchOptions setX(int i10, int i11) {
            if (i10 < 0 || i11 <= i10) {
                throw new RSIllegalArgumentException("Invalid dimensions");
            }
            this.xstart = i10;
            this.xend = i11;
            return this;
        }

        public LaunchOptions setY(int i10, int i11) {
            if (i10 < 0 || i11 <= i10) {
                throw new RSIllegalArgumentException("Invalid dimensions");
            }
            this.ystart = i10;
            this.yend = i11;
            return this;
        }

        public LaunchOptions setZ(int i10, int i11) {
            if (i10 < 0 || i11 <= i10) {
                throw new RSIllegalArgumentException("Invalid dimensions");
            }
            this.zstart = i10;
            this.zend = i11;
            return this;
        }
    }

    protected void forEach(int i10, Allocation allocation, Allocation allocation2, FieldPacker fieldPacker) {
        if (allocation == null && allocation2 == null) {
            throw new RSIllegalArgumentException("At least one of ain or aout is required to be non-null.");
        }
        long id = allocation != null ? allocation.getID(this.mRS) : 0L;
        long id2 = allocation2 != null ? allocation2.getID(this.mRS) : 0L;
        byte[] data = fieldPacker != null ? fieldPacker.getData() : null;
        if (!this.mUseIncSupp) {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptForEach(getID(renderScript), i10, id, id2, data, this.mUseIncSupp);
        } else {
            long dummyAlloc = getDummyAlloc(allocation);
            long dummyAlloc2 = getDummyAlloc(allocation2);
            RenderScript renderScript2 = this.mRS;
            renderScript2.nScriptForEach(getID(renderScript2), i10, dummyAlloc, dummyAlloc2, data, this.mUseIncSupp);
        }
    }

    protected void invoke(int i10) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptInvoke(getID(renderScript), i10, this.mUseIncSupp);
    }

    protected boolean isIncSupp() {
        return this.mUseIncSupp;
    }

    protected void setIncSupp(boolean z6) {
        this.mUseIncSupp = z6;
    }

    public void setVar(int i10, float f) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarF(getID(renderScript), i10, f, this.mUseIncSupp);
    }

    public static class Builder {
        RenderScript mRS;

        Builder(RenderScript renderScript) {
            this.mRS = renderScript;
        }
    }

    public static final class FieldID extends BaseObj {
        android.renderscript.Script.FieldID mN;
        Script mScript;
        int mSlot;

        FieldID(long j6, RenderScript renderScript, Script script, int i10) {
            super(j6, renderScript);
            this.mScript = script;
            this.mSlot = i10;
        }
    }

    public static final class InvokeID extends BaseObj {
        Script mScript;
        int mSlot;

        InvokeID(long j6, RenderScript renderScript, Script script, int i10) {
            super(j6, renderScript);
            this.mScript = script;
            this.mSlot = i10;
        }
    }

    public static final class KernelID extends BaseObj {
        android.renderscript.Script.KernelID mN;
        Script mScript;
        int mSig;
        int mSlot;

        KernelID(long j6, RenderScript renderScript, Script script, int i10, int i11) {
            super(j6, renderScript);
            this.mScript = script;
            this.mSlot = i10;
            this.mSig = i11;
        }
    }

    public void bindAllocation(Allocation allocation, int i10) {
        this.mRS.validate();
        if (allocation != null) {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptBindAllocation(getID(renderScript), allocation.getID(this.mRS), i10, this.mUseIncSupp);
        } else {
            RenderScript renderScript2 = this.mRS;
            renderScript2.nScriptBindAllocation(getID(renderScript2), 0L, i10, this.mUseIncSupp);
        }
    }

    protected FieldID createFieldID(int i10, Element element) {
        FieldID fieldID = this.mFIDs.get(i10);
        if (fieldID != null) {
            return fieldID;
        }
        RenderScript renderScript = this.mRS;
        long jNScriptFieldIDCreate = renderScript.nScriptFieldIDCreate(getID(renderScript), i10, this.mUseIncSupp);
        if (jNScriptFieldIDCreate == 0) {
            throw new RSDriverException("Failed to create FieldID");
        }
        FieldID fieldID2 = new FieldID(jNScriptFieldIDCreate, this.mRS, this, i10);
        this.mFIDs.put(i10, fieldID2);
        return fieldID2;
    }

    protected InvokeID createInvokeID(int i10) {
        InvokeID invokeID = this.mIIDs.get(i10);
        if (invokeID != null) {
            return invokeID;
        }
        RenderScript renderScript = this.mRS;
        long jNScriptInvokeIDCreate = renderScript.nScriptInvokeIDCreate(getID(renderScript), i10);
        if (jNScriptInvokeIDCreate == 0) {
            throw new RSDriverException("Failed to create KernelID");
        }
        InvokeID invokeID2 = new InvokeID(jNScriptInvokeIDCreate, this.mRS, this, i10);
        this.mIIDs.put(i10, invokeID2);
        return invokeID2;
    }

    protected KernelID createKernelID(int i10, int i11, Element element, Element element2) {
        KernelID kernelID = this.mKIDs.get(i10);
        if (kernelID != null) {
            return kernelID;
        }
        RenderScript renderScript = this.mRS;
        long jNScriptKernelIDCreate = renderScript.nScriptKernelIDCreate(getID(renderScript), i10, i11, this.mUseIncSupp);
        if (jNScriptKernelIDCreate == 0) {
            throw new RSDriverException("Failed to create KernelID");
        }
        KernelID kernelID2 = new KernelID(jNScriptKernelIDCreate, this.mRS, this, i10, i11);
        this.mKIDs.put(i10, kernelID2);
        return kernelID2;
    }

    long getDummyAlloc(Allocation allocation) {
        if (allocation == null) {
            return 0L;
        }
        Type type = allocation.getType();
        long dummyType = type.getDummyType(this.mRS, type.getElement().getDummyElement(this.mRS));
        int x6 = type.getX() * type.getElement().getBytesSize();
        RenderScript renderScript = this.mRS;
        long jNIncAllocationCreateTyped = renderScript.nIncAllocationCreateTyped(allocation.getID(renderScript), dummyType, x6);
        allocation.setIncAllocID(jNIncAllocationCreateTyped);
        return jNIncAllocationCreateTyped;
    }

    protected void invoke(int i10, FieldPacker fieldPacker) {
        if (fieldPacker != null) {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptInvokeV(getID(renderScript), i10, fieldPacker.getData(), this.mUseIncSupp);
        } else {
            RenderScript renderScript2 = this.mRS;
            renderScript2.nScriptInvoke(getID(renderScript2), i10, this.mUseIncSupp);
        }
    }

    protected void reduce(int i10, Allocation[] allocationArr, Allocation allocation, LaunchOptions launchOptions) {
        this.mRS.validate();
        if (allocationArr == null || allocationArr.length < 1) {
            throw new RSIllegalArgumentException("At least one input is required.");
        }
        if (allocation == null) {
            throw new RSIllegalArgumentException("aout is required to be non-null.");
        }
        for (Allocation allocation2 : allocationArr) {
            this.mRS.validateObject(allocation2);
        }
        long[] jArr = new long[allocationArr.length];
        for (int i11 = 0; i11 < allocationArr.length; i11++) {
            jArr[i11] = allocationArr[i11].getID(this.mRS);
        }
        long id = allocation.getID(this.mRS);
        int[] iArr = launchOptions != null ? new int[]{launchOptions.xstart, launchOptions.xend, launchOptions.ystart, launchOptions.yend, launchOptions.zstart, launchOptions.zend} : null;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptReduce(getID(renderScript), i10, jArr, id, iArr);
    }

    public void setTimeZone(String str) {
        this.mRS.validate();
        try {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptSetTimeZone(getID(renderScript), str.getBytes("UTF-8"), this.mUseIncSupp);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public void setVar(int i10, double d) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarD(getID(renderScript), i10, d, this.mUseIncSupp);
    }

    Script(long j6, RenderScript renderScript) {
        super(j6, renderScript);
        this.mKIDs = new SparseArray<>();
        this.mIIDs = new SparseArray<>();
        this.mFIDs = new SparseArray<>();
        this.mUseIncSupp = false;
    }

    public void setVar(int i10, int i11) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarI(getID(renderScript), i10, i11, this.mUseIncSupp);
    }

    public void setVar(int i10, long j6) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarJ(getID(renderScript), i10, j6, this.mUseIncSupp);
    }

    public void setVar(int i10, boolean z6) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarI(getID(renderScript), i10, z6 ? 1 : 0, this.mUseIncSupp);
    }

    public void setVar(int i10, BaseObj baseObj) {
        if (this.mUseIncSupp) {
            long dummyAlloc = getDummyAlloc((Allocation) baseObj);
            RenderScript renderScript = this.mRS;
            renderScript.nScriptSetVarObj(getID(renderScript), i10, baseObj == null ? 0L : dummyAlloc, this.mUseIncSupp);
        } else {
            RenderScript renderScript2 = this.mRS;
            renderScript2.nScriptSetVarObj(getID(renderScript2), i10, baseObj != null ? baseObj.getID(this.mRS) : 0L, this.mUseIncSupp);
        }
    }

    protected void forEach(int i10, Allocation allocation, Allocation allocation2, FieldPacker fieldPacker, LaunchOptions launchOptions) {
        if (allocation == null && allocation2 == null) {
            throw new RSIllegalArgumentException("At least one of ain or aout is required to be non-null.");
        }
        if (launchOptions == null) {
            forEach(i10, allocation, allocation2, fieldPacker);
            return;
        }
        long id = allocation != null ? allocation.getID(this.mRS) : 0L;
        long id2 = allocation2 != null ? allocation2.getID(this.mRS) : 0L;
        byte[] data = fieldPacker != null ? fieldPacker.getData() : null;
        if (!this.mUseIncSupp) {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptForEachClipped(getID(renderScript), i10, id, id2, data, launchOptions.xstart, launchOptions.xend, launchOptions.ystart, launchOptions.yend, launchOptions.zstart, launchOptions.zend, this.mUseIncSupp);
        } else {
            long dummyAlloc = getDummyAlloc(allocation);
            long dummyAlloc2 = getDummyAlloc(allocation2);
            RenderScript renderScript2 = this.mRS;
            renderScript2.nScriptForEachClipped(getID(renderScript2), i10, dummyAlloc, dummyAlloc2, data, launchOptions.xstart, launchOptions.xend, launchOptions.ystart, launchOptions.yend, launchOptions.zstart, launchOptions.zend, this.mUseIncSupp);
        }
    }

    public void setVar(int i10, FieldPacker fieldPacker) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarV(getID(renderScript), i10, fieldPacker.getData(), this.mUseIncSupp);
    }

    public void setVar(int i10, FieldPacker fieldPacker, Element element, int[] iArr) {
        if (this.mUseIncSupp) {
            long dummyElement = element.getDummyElement(this.mRS);
            RenderScript renderScript = this.mRS;
            renderScript.nScriptSetVarVE(getID(renderScript), i10, fieldPacker.getData(), dummyElement, iArr, this.mUseIncSupp);
        } else {
            RenderScript renderScript2 = this.mRS;
            renderScript2.nScriptSetVarVE(getID(renderScript2), i10, fieldPacker.getData(), element.getID(this.mRS), iArr, this.mUseIncSupp);
        }
    }

    protected void forEach(int i10, Allocation[] allocationArr, Allocation allocation, FieldPacker fieldPacker) {
        forEach(i10, allocationArr, allocation, fieldPacker, (LaunchOptions) null);
    }

    protected void forEach(int i10, Allocation[] allocationArr, Allocation allocation, FieldPacker fieldPacker, LaunchOptions launchOptions) {
        long[] jArr;
        this.mRS.validate();
        if (allocationArr != null) {
            for (Allocation allocation2 : allocationArr) {
                this.mRS.validateObject(allocation2);
            }
        }
        this.mRS.validateObject(allocation);
        if (allocationArr == null && allocation == null) {
            throw new RSIllegalArgumentException("At least one of ain or aout is required to be non-null.");
        }
        if (allocationArr != null) {
            long[] jArr2 = new long[allocationArr.length];
            for (int i11 = 0; i11 < allocationArr.length; i11++) {
                jArr2[i11] = allocationArr[i11].getID(this.mRS);
            }
            jArr = jArr2;
        } else {
            jArr = null;
        }
        long id = allocation != null ? allocation.getID(this.mRS) : 0L;
        byte[] data = fieldPacker != null ? fieldPacker.getData() : null;
        int[] iArr = launchOptions != null ? new int[]{launchOptions.xstart, launchOptions.xend, launchOptions.ystart, launchOptions.yend, launchOptions.zstart, launchOptions.zend} : null;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptForEach(getID(renderScript), i10, jArr, id, data, iArr);
    }
}
