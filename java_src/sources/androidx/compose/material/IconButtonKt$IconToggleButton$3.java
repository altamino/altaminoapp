package androidx.compose.material;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class IconButtonKt$IconToggleButton$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ boolean $checked;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ l<Boolean, l0> $onCheckedChange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    IconButtonKt$IconToggleButton$3(boolean z6, l<? super Boolean, l0> lVar, Modifier modifier, boolean z10, MutableInteractionSource mutableInteractionSource, p<? super Composer, ? super Integer, l0> pVar, int i10, int i11) {
        super(2);
        this.$checked = z6;
        this.$onCheckedChange = lVar;
        this.$modifier = modifier;
        this.$enabled = z10;
        this.$interactionSource = mutableInteractionSource;
        this.$content = pVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        IconButtonKt.b(this.$checked, this.$onCheckedChange, this.$modifier, this.$enabled, this.$interactionSource, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
