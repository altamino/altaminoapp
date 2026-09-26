package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class ThreeLine$ListItem$1$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $overlineText;
    final /* synthetic */ p<Composer, Integer, l0> $secondaryText;
    final /* synthetic */ p<Composer, Integer, l0> $text;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ThreeLine$ListItem$1$2(p<? super Composer, ? super Integer, l0> pVar, int i10, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3) {
        super(2);
        this.$overlineText = pVar;
        this.$$dirty = i10;
        this.$text = pVar2;
        this.$secondaryText = pVar3;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        composer.G(-755940677);
        p<Composer, Integer, l0> pVar = this.$overlineText;
        if (pVar != null) {
            pVar.invoke(composer, Integer.valueOf((this.$$dirty >> 12) & 14));
        }
        composer.Q();
        this.$text.invoke(composer, Integer.valueOf((this.$$dirty >> 6) & 14));
        this.$secondaryText.invoke(composer, Integer.valueOf((this.$$dirty >> 9) & 14));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
