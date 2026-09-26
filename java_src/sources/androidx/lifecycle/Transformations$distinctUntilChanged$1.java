package androidx.lifecycle;

import e8.l;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
final class Transformations$distinctUntilChanged$1 extends v implements l<Object, l0> {
    final /* synthetic */ k0 $firstTime;
    final /* synthetic */ MediatorLiveData<Object> $outputLiveData;

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
        invoke2(obj);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Object obj) {
        Object objF = this.$outputLiveData.f();
        if (this.$firstTime.element || ((objF == null && obj != null) || !(objF == null || t.e(objF, obj)))) {
            this.$firstTime.element = false;
            this.$outputLiveData.p(obj);
        }
    }
}
