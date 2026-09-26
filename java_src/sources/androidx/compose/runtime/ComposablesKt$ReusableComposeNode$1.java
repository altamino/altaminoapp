package androidx.compose.runtime;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class ComposablesKt$ReusableComposeNode$1 extends v implements e8.a<Object> {
    final /* synthetic */ e8.a<Object> $factory;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposablesKt$ReusableComposeNode$1(e8.a<Object> aVar) {
        super(0);
        this.$factory = aVar;
    }

    @Override // e8.a
    @NotNull
    public final Object invoke() {
        return this.$factory.invoke();
    }
}
