package androidx.lifecycle;

import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class Transformations$map$1 extends v implements l<Object, l0> {
    final /* synthetic */ MediatorLiveData<Object> $result;
    final /* synthetic */ l<Object, Object> $transform;

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
        invoke2(obj);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Object obj) {
        this.$result.p(this.$transform.invoke(obj));
    }
}
