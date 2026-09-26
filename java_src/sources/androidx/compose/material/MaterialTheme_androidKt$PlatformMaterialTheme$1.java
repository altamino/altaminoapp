package androidx.compose.material;

import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class MaterialTheme_androidKt$PlatformMaterialTheme$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ p<Composer, Integer, l0> $content;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    MaterialTheme_androidKt$PlatformMaterialTheme$1(p<? super Composer, ? super Integer, l0> pVar, int i10) {
        super(2);
        this.$content = pVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        MaterialTheme_androidKt.a(this.$content, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
