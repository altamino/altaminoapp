package androidx.compose.runtime;

import e8.p;
import java.util.Arrays;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
final class CompositionLocalKt$CompositionLocalProvider$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ ProvidedValue<?>[] $values;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CompositionLocalKt$CompositionLocalProvider$1(ProvidedValue<?>[] providedValueArr, p<? super Composer, ? super Integer, l0> pVar, int i10) {
        super(2);
        this.$values = providedValueArr;
        this.$content = pVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        ProvidedValue<?>[] providedValueArr = this.$values;
        CompositionLocalKt.b((ProvidedValue[]) Arrays.copyOf(providedValueArr, providedValueArr.length), this.$content, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
