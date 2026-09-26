package androidx.lifecycle;

import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class Transformations$switchMap$1 implements Observer<Object> {
    final /* synthetic */ MediatorLiveData<Object> $result;
    final /* synthetic */ l<Object, LiveData<Object>> $transform;

    @Nullable
    private LiveData<Object> liveData;

    @Override // androidx.lifecycle.Observer
    public void onChanged(Object obj) {
        LiveData<Object> liveDataInvoke = this.$transform.invoke(obj);
        LiveData<Object> liveData = this.liveData;
        if (liveData == liveDataInvoke) {
            return;
        }
        if (liveData != null) {
            MediatorLiveData<Object> mediatorLiveData = this.$result;
            t.g(liveData);
            mediatorLiveData.r(liveData);
        }
        this.liveData = liveDataInvoke;
        if (liveDataInvoke != null) {
            MediatorLiveData<Object> mediatorLiveData2 = this.$result;
            t.g(liveDataInvoke);
            mediatorLiveData2.q(liveDataInvoke, new Transformations$sam$androidx_lifecycle_Observer$0(new Transformations$switchMap$1$onChanged$1(this.$result)));
        }
    }
}
