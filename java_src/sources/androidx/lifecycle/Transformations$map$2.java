package androidx.lifecycle;

import androidx.arch.core.util.Function;
import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class Transformations$map$2 extends v implements l {
    final /* synthetic */ Function $mapFunction;
    final /* synthetic */ MediatorLiveData $result;

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        m5invoke(obj);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
    public final void m5invoke(Object obj) {
        this.$result.p(this.$mapFunction.apply(obj));
    }
}
