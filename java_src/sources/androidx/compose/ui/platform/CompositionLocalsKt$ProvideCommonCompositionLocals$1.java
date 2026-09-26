package androidx.compose.ui.platform;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.node.Owner;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class CompositionLocalsKt$ProvideCommonCompositionLocals$1 extends kotlin.jvm.internal.v implements e8.p<Composer, Integer, w7.l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ e8.p<Composer, Integer, w7.l0> $content;
    final /* synthetic */ Owner $owner;
    final /* synthetic */ UriHandler $uriHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CompositionLocalsKt$ProvideCommonCompositionLocals$1(Owner owner, UriHandler uriHandler, e8.p<? super Composer, ? super Integer, w7.l0> pVar, int i10) {
        super(2);
        this.$owner = owner;
        this.$uriHandler = uriHandler;
        this.$content = pVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        CompositionLocalsKt.a(this.$owner, this.$uriHandler, this.$content, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ w7.l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return w7.l0.INSTANCE;
    }
}
