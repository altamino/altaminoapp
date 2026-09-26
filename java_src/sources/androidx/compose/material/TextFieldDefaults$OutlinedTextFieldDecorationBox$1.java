package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class TextFieldDefaults$OutlinedTextFieldDecorationBox$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ int $$dirty1;
    final /* synthetic */ TextFieldColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ InteractionSource $interactionSource;
    final /* synthetic */ boolean $isError;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldDefaults$OutlinedTextFieldDecorationBox$1(boolean z6, boolean z10, InteractionSource interactionSource, TextFieldColors textFieldColors, int i10, int i11) {
        super(2);
        this.$enabled = z6;
        this.$isError = z10;
        this.$interactionSource = interactionSource;
        this.$colors = textFieldColors;
        this.$$dirty = i10;
        this.$$dirty1 = i11;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        TextFieldDefaults textFieldDefaults = TextFieldDefaults.INSTANCE;
        boolean z6 = this.$enabled;
        boolean z10 = this.$isError;
        InteractionSource interactionSource = this.$interactionSource;
        TextFieldColors textFieldColors = this.$colors;
        int i11 = this.$$dirty;
        textFieldDefaults.a(z6, z10, interactionSource, textFieldColors, null, 0.0f, 0.0f, composer, ((i11 >> 9) & 896) | ((i11 >> 6) & 14) | 12582912 | ((i11 >> 15) & 112) | ((this.$$dirty1 << 6) & 7168), 112);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
