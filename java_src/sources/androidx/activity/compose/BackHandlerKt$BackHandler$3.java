package androidx.activity.compose;

import androidx.compose.runtime.Composer;
import e8.a;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class BackHandlerKt$BackHandler$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ a<l0> $onBack;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BackHandlerKt$BackHandler$3(boolean z6, a<l0> aVar, int i10, int i11) {
        super(2);
        this.$enabled = z6;
        this.$onBack = aVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        BackHandlerKt.a(this.$enabled, this.$onBack, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
