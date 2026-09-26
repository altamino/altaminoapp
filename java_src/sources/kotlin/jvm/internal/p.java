package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes10.dex */
public class p extends f implements o, KFunction {
    private final int arity;
    private final int flags;

    public p(int i10) {
        this(i10, f.NO_RECEIVER, null, null, null, 0);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p) {
            p pVar = (p) obj;
            return getName().equals(pVar.getName()) && getSignature().equals(pVar.getSignature()) && this.flags == pVar.flags && this.arity == pVar.arity && t.e(getBoundReceiver(), pVar.getBoundReceiver()) && t.e(getOwner(), pVar.getOwner());
        }
        if (obj instanceof KFunction) {
            return obj.equals(compute());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.o
    public int getArity() {
        return this.arity;
    }

    public p(int i10, Object obj) {
        this(i10, obj, null, null, null, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.f
    public KFunction getReflected() {
        return (KFunction) super.getReflected();
    }

    public p(int i10, Object obj, Class cls, String str, String str2, int i11) {
        super(obj, cls, str, str2, (i11 & 1) == 1);
        this.arity = i10;
        this.flags = i11 >> 1;
    }

    @Override // kotlin.jvm.internal.f
    protected KCallable computeReflected() {
        return q0.a(this);
    }

    public int hashCode() {
        int iHashCode;
        if (getOwner() == null) {
            iHashCode = 0;
        } else {
            iHashCode = getOwner().hashCode() * 31;
        }
        return ((iHashCode + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override // kotlin.jvm.internal.f, kotlin.reflect.KCallable
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        KCallable kCallableCompute = compute();
        if (kCallableCompute != this) {
            return kCallableCompute.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }
}
