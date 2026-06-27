package kotlin.jvm.internal;

import java.io.Serializable;

/* compiled from: Lambda.kt */
/* loaded from: classes4.dex */
public abstract class Lambda<R> implements FunctionBase<R>, Serializable {
    private final int arity;

    public Lambda(int i) {
        this.arity = i;
    }

    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String strRenderLambdaToString = Reflection.renderLambdaToString(this);
        Intrinsics.checkExpressionValueIsNotNull(strRenderLambdaToString, "Reflection.renderLambdaToString(this)");
        return strRenderLambdaToString;
    }
}
