package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.HelperReference;
import androidx.constraintlayout.core.state.State;

/* JADX INFO: loaded from: classes10.dex */
public class ChainReference extends HelperReference {
    protected float mBias;
    protected State.Chain mStyle;

    public ChainReference(State state, State.Helper helper) {
        super(state, helper);
        this.mBias = 0.5f;
        this.mStyle = State.Chain.SPREAD;
    }
}
