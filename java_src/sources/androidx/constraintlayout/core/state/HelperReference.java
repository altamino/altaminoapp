package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.state.helpers.Facade;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class HelperReference extends ConstraintReference implements Facade {
    private HelperWidget mHelperWidget;
    protected ArrayList<Object> mReferences;
    protected final State mState;
    final State.Helper mType;

    public HelperReference(State state, State.Helper helper) {
        super(state);
        this.mReferences = new ArrayList<>();
        this.mState = state;
        this.mType = helper;
    }
}
