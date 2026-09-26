package androidx.renderscript;

import android.util.Log;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class ScriptGroup extends BaseObj {
    private static final int MIN_API_VERSION = 23;
    private static final String TAG = "ScriptGroup";
    private List<Closure> mClosures;
    IO[] mInputs;
    private List<Input> mInputs2;
    private String mName;
    private ArrayList<Node> mNodes;
    IO[] mOutputs;
    private Future[] mOutputs2;
    private boolean mUseIncSupp;

    @Deprecated
    public static final class Builder {
        private int mKernelCount;
        private RenderScript mRS;
        private ArrayList<Node> mNodes = new ArrayList<>();
        private ArrayList<ConnectLine> mLines = new ArrayList<>();
        private boolean mUseIncSupp = false;

        private boolean calcOrderRecurse(Node node, int i10) {
            node.mSeen = true;
            if (node.mOrder < i10) {
                node.mOrder = i10;
            }
            boolean zCalcOrderRecurse = true;
            for (ConnectLine connectLine : node.mOutputs) {
                Script.FieldID fieldID = connectLine.mToF;
                Node nodeFindNode = fieldID != null ? findNode(fieldID.mScript) : findNode(connectLine.mToK.mScript);
                if (nodeFindNode.mSeen) {
                    return false;
                }
                zCalcOrderRecurse &= calcOrderRecurse(nodeFindNode, node.mOrder + 1);
            }
            return zCalcOrderRecurse;
        }

        private Node findNode(Script script) {
            for (int i10 = 0; i10 < this.mNodes.size(); i10++) {
                if (script == this.mNodes.get(i10).mScript) {
                    return this.mNodes.get(i10);
                }
            }
            return null;
        }

        private void mergeDAGs(int i10, int i11) {
            for (int i12 = 0; i12 < this.mNodes.size(); i12++) {
                if (this.mNodes.get(i12).dagNumber == i11) {
                    this.mNodes.get(i12).dagNumber = i10;
                }
            }
        }

        private void validateCycle(Node node, Node node2) {
            for (int i10 = 0; i10 < node.mOutputs.size(); i10++) {
                ConnectLine connectLine = node.mOutputs.get(i10);
                Script.KernelID kernelID = connectLine.mToK;
                if (kernelID != null) {
                    Node nodeFindNode = findNode(kernelID.mScript);
                    if (nodeFindNode.equals(node2)) {
                        throw new RSInvalidStateException("Loops in group not allowed.");
                    }
                    validateCycle(nodeFindNode, node2);
                }
                Script.FieldID fieldID = connectLine.mToF;
                if (fieldID != null) {
                    Node nodeFindNode2 = findNode(fieldID.mScript);
                    if (nodeFindNode2.equals(node2)) {
                        throw new RSInvalidStateException("Loops in group not allowed.");
                    }
                    validateCycle(nodeFindNode2, node2);
                }
            }
        }

        private void validateDAG() {
            for (int i10 = 0; i10 < this.mNodes.size(); i10++) {
                Node node = this.mNodes.get(i10);
                if (node.mInputs.size() == 0) {
                    if (node.mOutputs.size() == 0 && this.mNodes.size() > 1) {
                        throw new RSInvalidStateException("Groups cannot contain unconnected scripts");
                    }
                    validateDAGRecurse(node, i10 + 1);
                }
            }
            int i11 = this.mNodes.get(0).dagNumber;
            for (int i12 = 0; i12 < this.mNodes.size(); i12++) {
                if (this.mNodes.get(i12).dagNumber != i11) {
                    throw new RSInvalidStateException("Multiple DAGs in group not allowed.");
                }
            }
        }

        public Builder addConnection(Type type, Script.KernelID kernelID, Script.FieldID fieldID) {
            Node nodeFindNode = findNode(kernelID);
            if (nodeFindNode == null) {
                throw new RSInvalidStateException("From script not found.");
            }
            Node nodeFindNode2 = findNode(fieldID.mScript);
            if (nodeFindNode2 == null) {
                throw new RSInvalidStateException("To script not found.");
            }
            ConnectLine connectLine = new ConnectLine(type, kernelID, fieldID);
            this.mLines.add(new ConnectLine(type, kernelID, fieldID));
            nodeFindNode.mOutputs.add(connectLine);
            nodeFindNode2.mInputs.add(connectLine);
            validateCycle(nodeFindNode, nodeFindNode);
            return this;
        }

        private boolean calcOrder() {
            boolean zCalcOrderRecurse = true;
            for (Node node : this.mNodes) {
                if (node.mInputs.size() == 0) {
                    Iterator<Node> it = this.mNodes.iterator();
                    while (it.hasNext()) {
                        it.next().mSeen = false;
                    }
                    zCalcOrderRecurse &= calcOrderRecurse(node, 1);
                }
            }
            Collections.sort(this.mNodes, new Comparator<Node>() { // from class: androidx.renderscript.ScriptGroup.Builder.1
                @Override // java.util.Comparator
                public int compare(Node node2, Node node3) {
                    return node2.mOrder - node3.mOrder;
                }
            });
            return zCalcOrderRecurse;
        }

        private void validateDAGRecurse(Node node, int i10) {
            int i11 = node.dagNumber;
            if (i11 != 0 && i11 != i10) {
                mergeDAGs(i11, i10);
                return;
            }
            node.dagNumber = i10;
            for (int i12 = 0; i12 < node.mOutputs.size(); i12++) {
                ConnectLine connectLine = node.mOutputs.get(i12);
                Script.KernelID kernelID = connectLine.mToK;
                if (kernelID != null) {
                    validateDAGRecurse(findNode(kernelID.mScript), i10);
                }
                Script.FieldID fieldID = connectLine.mToF;
                if (fieldID != null) {
                    validateDAGRecurse(findNode(fieldID.mScript), i10);
                }
            }
        }

        public Builder addKernel(Script.KernelID kernelID) {
            if (this.mLines.size() != 0) {
                throw new RSInvalidStateException("Kernels may not be added once connections exist.");
            }
            if (kernelID.mScript.isIncSupp()) {
                this.mUseIncSupp = true;
            }
            if (findNode(kernelID) != null) {
                return this;
            }
            this.mKernelCount++;
            Node nodeFindNode = findNode(kernelID.mScript);
            if (nodeFindNode == null) {
                nodeFindNode = new Node(kernelID.mScript);
                this.mNodes.add(nodeFindNode);
            }
            nodeFindNode.mKernels.add(kernelID);
            return this;
        }

        public ScriptGroup create() {
            if (this.mNodes.size() == 0) {
                throw new RSInvalidStateException("Empty script groups are not allowed");
            }
            for (int i10 = 0; i10 < this.mNodes.size(); i10++) {
                this.mNodes.get(i10).dagNumber = 0;
            }
            validateDAG();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            long[] jArr = new long[this.mKernelCount];
            int i11 = 0;
            for (int i12 = 0; i12 < this.mNodes.size(); i12++) {
                Node node = this.mNodes.get(i12);
                int i13 = 0;
                while (i13 < node.mKernels.size()) {
                    Script.KernelID kernelID = node.mKernels.get(i13);
                    int i14 = i11 + 1;
                    jArr[i11] = kernelID.getID(this.mRS);
                    boolean z6 = false;
                    for (int i15 = 0; i15 < node.mInputs.size(); i15++) {
                        if (node.mInputs.get(i15).mToK == kernelID) {
                            z6 = true;
                        }
                    }
                    boolean z10 = false;
                    for (int i16 = 0; i16 < node.mOutputs.size(); i16++) {
                        if (node.mOutputs.get(i16).mFrom == kernelID) {
                            z10 = true;
                        }
                    }
                    if (!z6) {
                        arrayList.add(new IO(kernelID));
                    }
                    if (!z10) {
                        arrayList2.add(new IO(kernelID));
                    }
                    i13++;
                    i11 = i14;
                }
            }
            if (i11 != this.mKernelCount) {
                throw new RSRuntimeException("Count mismatch, should not happen.");
            }
            long j6 = 0;
            if (this.mUseIncSupp) {
                calcOrder();
            } else {
                long[] jArr2 = new long[this.mLines.size()];
                long[] jArr3 = new long[this.mLines.size()];
                long[] jArr4 = new long[this.mLines.size()];
                long[] jArr5 = new long[this.mLines.size()];
                for (int i17 = 0; i17 < this.mLines.size(); i17++) {
                    ConnectLine connectLine = this.mLines.get(i17);
                    jArr2[i17] = connectLine.mFrom.getID(this.mRS);
                    Script.KernelID kernelID2 = connectLine.mToK;
                    if (kernelID2 != null) {
                        jArr3[i17] = kernelID2.getID(this.mRS);
                    }
                    Script.FieldID fieldID = connectLine.mToF;
                    if (fieldID != null) {
                        jArr4[i17] = fieldID.getID(this.mRS);
                    }
                    jArr5[i17] = connectLine.mAllocationType.getID(this.mRS);
                }
                long jNScriptGroupCreate = this.mRS.nScriptGroupCreate(jArr, jArr2, jArr3, jArr4, jArr5);
                if (jNScriptGroupCreate == 0) {
                    throw new RSRuntimeException("Object creation error, should not happen.");
                }
                j6 = jNScriptGroupCreate;
            }
            ScriptGroup scriptGroup = new ScriptGroup(j6, this.mRS);
            scriptGroup.mOutputs = new IO[arrayList2.size()];
            for (int i18 = 0; i18 < arrayList2.size(); i18++) {
                scriptGroup.mOutputs[i18] = (IO) arrayList2.get(i18);
            }
            scriptGroup.mInputs = new IO[arrayList.size()];
            for (int i19 = 0; i19 < arrayList.size(); i19++) {
                scriptGroup.mInputs[i19] = (IO) arrayList.get(i19);
            }
            scriptGroup.mNodes = this.mNodes;
            scriptGroup.mUseIncSupp = this.mUseIncSupp;
            return scriptGroup;
        }

        public Builder(RenderScript renderScript) {
            this.mRS = renderScript;
        }

        private Node findNode(Script.KernelID kernelID) {
            for (int i10 = 0; i10 < this.mNodes.size(); i10++) {
                Node node = this.mNodes.get(i10);
                for (int i11 = 0; i11 < node.mKernels.size(); i11++) {
                    if (kernelID == node.mKernels.get(i11)) {
                        return node;
                    }
                }
            }
            return null;
        }

        public Builder addConnection(Type type, Script.KernelID kernelID, Script.KernelID kernelID2) {
            Node nodeFindNode = findNode(kernelID);
            if (nodeFindNode != null) {
                Node nodeFindNode2 = findNode(kernelID2);
                if (nodeFindNode2 != null) {
                    ConnectLine connectLine = new ConnectLine(type, kernelID, kernelID2);
                    this.mLines.add(new ConnectLine(type, kernelID, kernelID2));
                    nodeFindNode.mOutputs.add(connectLine);
                    nodeFindNode2.mInputs.add(connectLine);
                    validateCycle(nodeFindNode, nodeFindNode);
                    return this;
                }
                throw new RSInvalidStateException("To script not found.");
            }
            throw new RSInvalidStateException("From script not found.");
        }
    }

    public static final class Builder2 {
        private static final String TAG = "ScriptGroup.Builder2";
        List<Closure> mClosures = new ArrayList();
        List<Input> mInputs = new ArrayList();
        RenderScript mRS;

        private boolean seperateArgsAndBindings(Object[] objArr, ArrayList<Object> arrayList, Map<Script.FieldID, Object> map) {
            int i10 = 0;
            while (i10 < objArr.length) {
                Object obj = objArr[i10];
                if (obj instanceof Binding) {
                    break;
                }
                arrayList.add(obj);
                i10++;
            }
            while (i10 < objArr.length) {
                Object obj2 = objArr[i10];
                if (!(obj2 instanceof Binding)) {
                    return false;
                }
                Binding binding = (Binding) obj2;
                map.put(binding.getField(), binding.getValue());
                i10++;
            }
            return true;
        }

        private Closure addInvokeInternal(Script.InvokeID invokeID, Object[] objArr, Map<Script.FieldID, Object> map) {
            Closure closure = new Closure(this.mRS, invokeID, objArr, map);
            this.mClosures.add(closure);
            return closure;
        }

        private Closure addKernelInternal(Script.KernelID kernelID, Type type, Object[] objArr, Map<Script.FieldID, Object> map) {
            Closure closure = new Closure(this.mRS, kernelID, type, objArr, map);
            this.mClosures.add(closure);
            return closure;
        }

        public Input addInput() {
            Input input = new Input();
            this.mInputs.add(input);
            return input;
        }

        public Closure addInvoke(Script.InvokeID invokeID, Object... objArr) {
            ArrayList<Object> arrayList = new ArrayList<>();
            HashMap map = new HashMap();
            if (seperateArgsAndBindings(objArr, arrayList, map)) {
                return addInvokeInternal(invokeID, arrayList.toArray(), map);
            }
            return null;
        }

        public Closure addKernel(Script.KernelID kernelID, Type type, Object... objArr) {
            ArrayList<Object> arrayList = new ArrayList<>();
            HashMap map = new HashMap();
            if (seperateArgsAndBindings(objArr, arrayList, map)) {
                return addKernelInternal(kernelID, type, arrayList.toArray(), map);
            }
            return null;
        }

        public ScriptGroup create(String str, Future... futureArr) {
            if (str == null || str.isEmpty() || str.length() > 100 || !str.equals(str.replaceAll("[^a-zA-Z0-9-]", "_"))) {
                throw new RSIllegalArgumentException("invalid script group name");
            }
            return new ScriptGroup(this.mRS, str, this.mClosures, this.mInputs, futureArr);
        }

        public Builder2(RenderScript renderScript) {
            this.mRS = renderScript;
        }
    }

    public static final class Closure extends BaseObj {
        private static final String TAG = "Closure";
        private Object[] mArgs;
        private Map<Script.FieldID, Object> mBindings;
        private FieldPacker mFP;
        private Map<Script.FieldID, Future> mGlobalFuture;
        private Future mReturnFuture;
        private Allocation mReturnValue;

        Closure(long j6, RenderScript renderScript) {
            super(j6, renderScript);
        }

        private static final class ValueAndSize {
            public int size;
            public long value;

            public ValueAndSize(RenderScript renderScript, Object obj) {
                long j6;
                if (obj instanceof Allocation) {
                    this.value = ((Allocation) obj).getID(renderScript);
                    this.size = -1;
                    return;
                }
                if (obj instanceof Boolean) {
                    if (((Boolean) obj).booleanValue()) {
                        j6 = 1;
                    } else {
                        j6 = 0;
                    }
                    this.value = j6;
                    this.size = 4;
                    return;
                }
                if (obj instanceof Integer) {
                    this.value = ((Integer) obj).longValue();
                    this.size = 4;
                    return;
                }
                if (obj instanceof Long) {
                    this.value = ((Long) obj).longValue();
                    this.size = 8;
                } else if (obj instanceof Float) {
                    this.value = Float.floatToRawIntBits(((Float) obj).floatValue());
                    this.size = 4;
                } else if (obj instanceof Double) {
                    this.value = Double.doubleToRawLongBits(((Double) obj).doubleValue());
                    this.size = 8;
                }
            }
        }

        Closure(RenderScript renderScript, Script.KernelID kernelID, Type type, Object[] objArr, Map<Script.FieldID, Object> map) {
            super(0L, renderScript);
            this.mArgs = objArr;
            this.mReturnValue = Allocation.createTyped(renderScript, type);
            this.mBindings = map;
            this.mGlobalFuture = new HashMap();
            int length = objArr.length + map.size();
            long[] jArr = new long[length];
            long[] jArr2 = new long[length];
            int[] iArr = new int[length];
            long[] jArr3 = new long[length];
            long[] jArr4 = new long[length];
            int i10 = 0;
            while (i10 < objArr.length) {
                jArr[i10] = 0;
                long[] jArr5 = jArr4;
                long[] jArr6 = jArr3;
                retrieveValueAndDependenceInfo(renderScript, i10, null, objArr[i10], jArr2, iArr, jArr6, jArr5);
                i10++;
                jArr2 = jArr2;
                jArr3 = jArr6;
                jArr4 = jArr5;
                iArr = iArr;
            }
            int i11 = i10;
            long[] jArr7 = jArr4;
            long[] jArr8 = jArr3;
            int[] iArr2 = iArr;
            long[] jArr9 = jArr2;
            for (Map.Entry<Script.FieldID, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                Script.FieldID key = entry.getKey();
                jArr[i11] = key.getID(renderScript);
                retrieveValueAndDependenceInfo(renderScript, i11, key, value, jArr9, iArr2, jArr8, jArr7);
                i11++;
            }
            setID(renderScript.nClosureCreate(kernelID.getID(renderScript), this.mReturnValue.getID(renderScript), jArr, jArr9, iArr2, jArr8, jArr7));
        }

        private void retrieveValueAndDependenceInfo(RenderScript renderScript, int i10, Script.FieldID fieldID, Object obj, long[] jArr, int[] iArr, long[] jArr2, long[] jArr3) {
            if (obj instanceof Future) {
                Future future = (Future) obj;
                Object value = future.getValue();
                jArr2[i10] = future.getClosure().getID(renderScript);
                Script.FieldID fieldID2 = future.getFieldID();
                jArr3[i10] = fieldID2 != null ? fieldID2.getID(renderScript) : 0L;
                obj = value;
            } else {
                jArr2[i10] = 0;
                jArr3[i10] = 0;
            }
            if (!(obj instanceof Input)) {
                ValueAndSize valueAndSize = new ValueAndSize(renderScript, obj);
                jArr[i10] = valueAndSize.value;
                iArr[i10] = valueAndSize.size;
            } else {
                Input input = (Input) obj;
                if (i10 < this.mArgs.length) {
                    input.addReference(this, i10);
                } else {
                    input.addReference(this, fieldID);
                }
                jArr[i10] = 0;
                iArr[i10] = 0;
            }
        }

        public Future getGlobal(Script.FieldID fieldID) {
            Future future = this.mGlobalFuture.get(fieldID);
            if (future != null) {
                return future;
            }
            Object value = this.mBindings.get(fieldID);
            if (value instanceof Future) {
                value = ((Future) value).getValue();
            }
            Future future2 = new Future(this, fieldID, value);
            this.mGlobalFuture.put(fieldID, future2);
            return future2;
        }

        public Future getReturn() {
            if (this.mReturnFuture == null) {
                this.mReturnFuture = new Future(this, null, this.mReturnValue);
            }
            return this.mReturnFuture;
        }

        void setArg(int i10, Object obj) {
            if (obj instanceof Future) {
                obj = ((Future) obj).getValue();
            }
            this.mArgs[i10] = obj;
            ValueAndSize valueAndSize = new ValueAndSize(this.mRS, obj);
            RenderScript renderScript = this.mRS;
            renderScript.nClosureSetArg(getID(renderScript), i10, valueAndSize.value, valueAndSize.size);
        }

        void setGlobal(Script.FieldID fieldID, Object obj) {
            if (obj instanceof Future) {
                obj = ((Future) obj).getValue();
            }
            this.mBindings.put(fieldID, obj);
            ValueAndSize valueAndSize = new ValueAndSize(this.mRS, obj);
            RenderScript renderScript = this.mRS;
            renderScript.nClosureSetGlobal(getID(renderScript), fieldID.getID(this.mRS), valueAndSize.value, valueAndSize.size);
        }

        Closure(RenderScript renderScript, Script.InvokeID invokeID, Object[] objArr, Map<Script.FieldID, Object> map) {
            super(0L, renderScript);
            this.mFP = FieldPacker.createFromArray(objArr);
            this.mArgs = objArr;
            this.mBindings = map;
            this.mGlobalFuture = new HashMap();
            int size = map.size();
            long[] jArr = new long[size];
            long[] jArr2 = new long[size];
            int[] iArr = new int[size];
            long[] jArr3 = new long[size];
            long[] jArr4 = new long[size];
            int i10 = 0;
            for (Map.Entry<Script.FieldID, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                Script.FieldID key = entry.getKey();
                jArr[i10] = key.getID(renderScript);
                retrieveValueAndDependenceInfo(renderScript, i10, key, value, jArr2, iArr, jArr3, jArr4);
                i10++;
            }
            setID(renderScript.nInvokeClosureCreate(invokeID.getID(renderScript), this.mFP.getData(), jArr, jArr2, iArr));
        }
    }

    static class ConnectLine {
        Allocation mAllocation;
        Type mAllocationType;
        Script.KernelID mFrom;
        Script.FieldID mToF;
        Script.KernelID mToK;

        ConnectLine(Type type, Script.KernelID kernelID, Script.KernelID kernelID2) {
            this.mFrom = kernelID;
            this.mToK = kernelID2;
            this.mAllocationType = type;
        }

        ConnectLine(Type type, Script.KernelID kernelID, Script.FieldID fieldID) {
            this.mFrom = kernelID;
            this.mToF = fieldID;
            this.mAllocationType = type;
        }
    }

    public static final class Input {
        Object mValue;
        List<Pair<Closure, Script.FieldID>> mFieldID = new ArrayList();
        List<Pair<Closure, Integer>> mArgIndex = new ArrayList();

        void addReference(Closure closure, int i10) {
            this.mArgIndex.add(Pair.create(closure, Integer.valueOf(i10)));
        }

        Object get() {
            return this.mValue;
        }

        void addReference(Closure closure, Script.FieldID fieldID) {
            this.mFieldID.add(Pair.create(closure, fieldID));
        }

        void set(Object obj) {
            this.mValue = obj;
            for (Pair<Closure, Integer> pair : this.mArgIndex) {
                ((Closure) pair.first).setArg(((Integer) pair.second).intValue(), obj);
            }
            for (Pair<Closure, Script.FieldID> pair2 : this.mFieldID) {
                ((Closure) pair2.first).setGlobal((Script.FieldID) pair2.second, obj);
            }
        }

        Input() {
        }
    }

    ScriptGroup(long j6, RenderScript renderScript) {
        super(j6, renderScript);
        this.mUseIncSupp = false;
        this.mNodes = new ArrayList<>();
    }

    public Object[] execute(Object... objArr) {
        if (objArr.length < this.mInputs2.size()) {
            Log.e(TAG, toString() + " receives " + objArr.length + " inputs, less than expected " + this.mInputs2.size());
            return null;
        }
        if (objArr.length > this.mInputs2.size()) {
            Log.i(TAG, toString() + " receives " + objArr.length + " inputs, more than expected " + this.mInputs2.size());
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.mInputs2.size(); i11++) {
            Object obj = objArr[i11];
            if ((obj instanceof Future) || (obj instanceof Input)) {
                Log.e(TAG, toString() + ": input " + i11 + " is a future or unbound value");
                return null;
            }
            this.mInputs2.get(i11).set(obj);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptGroup2Execute(getID(renderScript));
        Future[] futureArr = this.mOutputs2;
        Object[] objArr2 = new Object[futureArr.length];
        int length = futureArr.length;
        int i12 = 0;
        while (i10 < length) {
            Object value = futureArr[i10].getValue();
            if (value instanceof Input) {
                value = ((Input) value).get();
            }
            objArr2[i12] = value;
            i10++;
            i12++;
        }
        return objArr2;
    }

    @Deprecated
    public void setInput(Script.KernelID kernelID, Allocation allocation) {
        int i10 = 0;
        while (true) {
            IO[] ioArr = this.mInputs;
            if (i10 >= ioArr.length) {
                throw new RSIllegalArgumentException("Script not found");
            }
            IO io2 = ioArr[i10];
            if (io2.mKID == kernelID) {
                io2.mAllocation = allocation;
                if (this.mUseIncSupp) {
                    return;
                }
                RenderScript renderScript = this.mRS;
                renderScript.nScriptGroupSetInput(getID(renderScript), kernelID.getID(this.mRS), this.mRS.safeID(allocation));
                return;
            }
            i10++;
        }
    }

    @Deprecated
    public void setOutput(Script.KernelID kernelID, Allocation allocation) {
        int i10 = 0;
        while (true) {
            IO[] ioArr = this.mOutputs;
            if (i10 >= ioArr.length) {
                throw new RSIllegalArgumentException("Script not found");
            }
            IO io2 = ioArr[i10];
            if (io2.mKID == kernelID) {
                io2.mAllocation = allocation;
                if (this.mUseIncSupp) {
                    return;
                }
                RenderScript renderScript = this.mRS;
                renderScript.nScriptGroupSetOutput(getID(renderScript), kernelID.getID(this.mRS), this.mRS.safeID(allocation));
                return;
            }
            i10++;
        }
    }

    public static final class Binding {
        private final Script.FieldID mField;
        private final Object mValue;

        public Script.FieldID getField() {
            return this.mField;
        }

        public Object getValue() {
            return this.mValue;
        }

        public Binding(Script.FieldID fieldID, Object obj) {
            this.mField = fieldID;
            this.mValue = obj;
        }
    }

    public static final class Future {
        Closure mClosure;
        Script.FieldID mFieldID;
        Object mValue;

        Closure getClosure() {
            return this.mClosure;
        }

        Script.FieldID getFieldID() {
            return this.mFieldID;
        }

        Object getValue() {
            return this.mValue;
        }

        Future(Closure closure, Script.FieldID fieldID, Object obj) {
            this.mClosure = closure;
            this.mFieldID = fieldID;
            this.mValue = obj;
        }
    }

    static class IO {
        Allocation mAllocation;
        Script.KernelID mKID;

        IO(Script.KernelID kernelID) {
            this.mKID = kernelID;
        }
    }

    static class Node {
        int dagNumber;
        Node mNext;
        int mOrder;
        Script mScript;
        boolean mSeen;
        ArrayList<Script.KernelID> mKernels = new ArrayList<>();
        ArrayList<ConnectLine> mInputs = new ArrayList<>();
        ArrayList<ConnectLine> mOutputs = new ArrayList<>();

        Node(Script script) {
            this.mScript = script;
        }
    }

    ScriptGroup(RenderScript renderScript, String str, List<Closure> list, List<Input> list2, Future[] futureArr) {
        super(0L, renderScript);
        this.mUseIncSupp = false;
        this.mNodes = new ArrayList<>();
        this.mName = str;
        this.mClosures = list;
        this.mInputs2 = list2;
        this.mOutputs2 = futureArr;
        int size = list.size();
        long[] jArr = new long[size];
        for (int i10 = 0; i10 < size; i10++) {
            jArr[i10] = list.get(i10).getID(renderScript);
        }
        setID(renderScript.nScriptGroup2Create(str, renderScript.getApplicationContext().getCacheDir().toString(), jArr));
    }

    @Deprecated
    public void execute() {
        if (!this.mUseIncSupp) {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptGroupExecute(getID(renderScript));
            return;
        }
        for (int i10 = 0; i10 < this.mNodes.size(); i10++) {
            Node node = this.mNodes.get(i10);
            for (int i11 = 0; i11 < node.mOutputs.size(); i11++) {
                ConnectLine connectLine = node.mOutputs.get(i11);
                if (connectLine.mAllocation == null) {
                    Allocation allocationCreateTyped = Allocation.createTyped(this.mRS, connectLine.mAllocationType, Allocation.MipmapControl.MIPMAP_NONE, 1);
                    connectLine.mAllocation = allocationCreateTyped;
                    for (int i12 = i11 + 1; i12 < node.mOutputs.size(); i12++) {
                        if (node.mOutputs.get(i12).mFrom == connectLine.mFrom) {
                            node.mOutputs.get(i12).mAllocation = allocationCreateTyped;
                        }
                    }
                }
            }
        }
        for (Node node2 : this.mNodes) {
            for (Script.KernelID kernelID : node2.mKernels) {
                Allocation allocation = null;
                for (ConnectLine connectLine2 : node2.mInputs) {
                    if (connectLine2.mToK == kernelID) {
                        allocation = connectLine2.mAllocation;
                    }
                }
                for (IO io2 : this.mInputs) {
                    if (io2.mKID == kernelID) {
                        allocation = io2.mAllocation;
                    }
                }
                Allocation allocation2 = null;
                for (ConnectLine connectLine3 : node2.mOutputs) {
                    if (connectLine3.mFrom == kernelID) {
                        allocation2 = connectLine3.mAllocation;
                    }
                }
                for (IO io3 : this.mOutputs) {
                    if (io3.mKID == kernelID) {
                        allocation2 = io3.mAllocation;
                    }
                }
                kernelID.mScript.forEach(kernelID.mSlot, allocation, allocation2, (FieldPacker) null);
            }
        }
    }
}
