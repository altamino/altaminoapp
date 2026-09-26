package androidx.work.impl;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.MutableLiveData;
import androidx.work.Operation;
import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.k;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public class OperationImpl implements Operation {
    private final MutableLiveData<Operation.State> mOperationState = new MutableLiveData<>();
    private final SettableFuture<Operation.State.SUCCESS> mOperationFuture = SettableFuture.s();

    @Override // androidx.work.Operation
    @NonNull
    public k<Operation.State.SUCCESS> a() {
        return this.mOperationFuture;
    }

    public void b(@NonNull Operation.State state) {
        this.mOperationState.m(state);
        if (state instanceof Operation.State.SUCCESS) {
            this.mOperationFuture.o((Operation.State.SUCCESS) state);
        } else if (state instanceof Operation.State.FAILURE) {
            this.mOperationFuture.p(((Operation.State.FAILURE) state).a());
        }
    }

    public OperationImpl() {
        b(Operation.IN_PROGRESS);
    }
}
