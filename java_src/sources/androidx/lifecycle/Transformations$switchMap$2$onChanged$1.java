package androidx.lifecycle;

import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class Transformations$switchMap$2$onChanged$1 extends v implements l {
    final /* synthetic */ MediatorLiveData $result;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Transformations$switchMap$2$onChanged$1(MediatorLiveData mediatorLiveData) {
        super(1);
        this.$result = mediatorLiveData;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        m6invoke(obj);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
    public final void m6invoke(Object obj) {
        this.$result.p(obj);
    }
}
