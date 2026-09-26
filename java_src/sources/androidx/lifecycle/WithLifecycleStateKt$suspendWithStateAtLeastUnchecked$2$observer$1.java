package androidx.lifecycle;

import kotlin.jvm.internal.t;
import kotlinx.coroutines.o;
import org.jetbrains.annotations.NotNull;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes11.dex */
public final class WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 implements LifecycleEventObserver {
    final /* synthetic */ e8.a<Object> $block;
    final /* synthetic */ o<Object> $co;
    final /* synthetic */ Lifecycle.State $state;
    final /* synthetic */ Lifecycle $this_suspendWithStateAtLeastUnchecked;

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        Object objB;
        t.j(source, "source");
        t.j(event, "event");
        if (event != Lifecycle.Event.Companion.c(this.$state)) {
            if (event == Lifecycle.Event.ON_DESTROY) {
                this.$this_suspendWithStateAtLeastUnchecked.d(this);
                o<Object> oVar = this.$co;
                v.a aVar = v.Companion;
                oVar.resumeWith(v.b(w.a(new LifecycleDestroyedException())));
                return;
            }
            return;
        }
        this.$this_suspendWithStateAtLeastUnchecked.d(this);
        o<Object> oVar2 = this.$co;
        e8.a<Object> aVar2 = this.$block;
        try {
            v.a aVar3 = v.Companion;
            objB = v.b(aVar2.invoke());
        } catch (Throwable th) {
            v.a aVar4 = v.Companion;
            objB = v.b(w.a(th));
        }
        oVar2.resumeWith(objB);
    }
}
