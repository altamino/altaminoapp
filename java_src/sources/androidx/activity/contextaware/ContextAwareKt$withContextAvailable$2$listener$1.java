package androidx.activity.contextaware;

import android.content.Context;
import e8.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o;
import org.jetbrains.annotations.NotNull;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
public final class ContextAwareKt$withContextAvailable$2$listener$1 implements OnContextAvailableListener {
    final /* synthetic */ o<Object> $co;
    final /* synthetic */ l<Context, Object> $onContextAvailable;

    public ContextAwareKt$withContextAvailable$2$listener$1(o<Object> oVar, l<Context, Object> lVar) {
        this.$co = oVar;
        this.$onContextAvailable = lVar;
    }

    @Override // androidx.activity.contextaware.OnContextAvailableListener
    public void a(@NotNull Context context) {
        Object objB;
        t.j(context, "context");
        o<Object> oVar = this.$co;
        l<Context, Object> lVar = this.$onContextAvailable;
        try {
            v.a aVar = v.Companion;
            objB = v.b(lVar.invoke(context));
        } catch (Throwable th) {
            v.a aVar2 = v.Companion;
            objB = v.b(w.a(th));
        }
        oVar.resumeWith(objB);
    }
}
