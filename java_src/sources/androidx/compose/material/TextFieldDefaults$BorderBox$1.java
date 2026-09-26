package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Shape;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class TextFieldDefaults$BorderBox$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ TextFieldColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ float $focusedBorderThickness;
    final /* synthetic */ InteractionSource $interactionSource;
    final /* synthetic */ boolean $isError;
    final /* synthetic */ Shape $shape;
    final /* synthetic */ TextFieldDefaults $tmp0_rcvr;
    final /* synthetic */ float $unfocusedBorderThickness;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldDefaults$BorderBox$1(TextFieldDefaults textFieldDefaults, boolean z6, boolean z10, InteractionSource interactionSource, TextFieldColors textFieldColors, Shape shape, float f, float f6, int i10, int i11) {
        super(2);
        this.$tmp0_rcvr = textFieldDefaults;
        this.$enabled = z6;
        this.$isError = z10;
        this.$interactionSource = interactionSource;
        this.$colors = textFieldColors;
        this.$shape = shape;
        this.$focusedBorderThickness = f;
        this.$unfocusedBorderThickness = f6;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        this.$tmp0_rcvr.a(this.$enabled, this.$isError, this.$interactionSource, this.$colors, this.$shape, this.$focusedBorderThickness, this.$unfocusedBorderThickness, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
