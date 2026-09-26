package androidx.compose.foundation.text;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.text.AnnotatedString;
import e8.p;
import e8.q;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class BasicTextKt$BasicText$6 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ List<AnnotatedString.Range<q<String, Composer, Integer, l0>>> $inlineComposables;
    final /* synthetic */ AnnotatedString $text;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BasicTextKt$BasicText$6(AnnotatedString annotatedString, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>> list, int i10) {
        super(2);
        this.$text = annotatedString;
        this.$inlineComposables = list;
        this.$$dirty = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            CoreTextKt.a(this.$text, this.$inlineComposables, composer, (this.$$dirty & 14) | 64);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
