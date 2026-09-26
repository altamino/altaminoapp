package androidx.lifecycle;

import androidx.arch.core.util.Function;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class Transformations$switchMap$2 implements Observer {
    final /* synthetic */ MediatorLiveData $result;
    final /* synthetic */ Function $switchMapFunction;

    @Nullable
    private LiveData liveData;

    @Override // androidx.lifecycle.Observer
    public void onChanged(Object obj) {
        LiveData liveData = (LiveData) this.$switchMapFunction.apply(obj);
        LiveData liveData2 = this.liveData;
        if (liveData2 == liveData) {
            return;
        }
        if (liveData2 != null) {
            MediatorLiveData mediatorLiveData = this.$result;
            t.g(liveData2);
            mediatorLiveData.r(liveData2);
        }
        this.liveData = liveData;
        if (liveData != null) {
            MediatorLiveData mediatorLiveData2 = this.$result;
            t.g(liveData);
            mediatorLiveData2.q(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new Transformations$switchMap$2$onChanged$1(this.$result)));
        }
    }
}
