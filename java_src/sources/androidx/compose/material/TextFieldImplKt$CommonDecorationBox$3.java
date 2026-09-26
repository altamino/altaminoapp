package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import e8.l;
import e8.p;
import e8.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class TextFieldImplKt$CommonDecorationBox$3 extends v implements t<Float, Color, Color, Float, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ int $$dirty1;
    final /* synthetic */ p<Composer, Integer, l0> $border;
    final /* synthetic */ TextFieldColors $colors;
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ p<Composer, Integer, l0> $innerTextField;
    final /* synthetic */ InteractionSource $interactionSource;
    final /* synthetic */ boolean $isError;
    final /* synthetic */ p<Composer, Integer, l0> $label;
    final /* synthetic */ p<Composer, Integer, l0> $leadingIcon;
    final /* synthetic */ p<Composer, Integer, l0> $placeholder;
    final /* synthetic */ boolean $shouldOverrideTextStyleColor;
    final /* synthetic */ boolean $singleLine;
    final /* synthetic */ p<Composer, Integer, l0> $trailingIcon;
    final /* synthetic */ String $transformedText;
    final /* synthetic */ TextFieldType $type;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TextFieldType.values().length];
            iArr[TextFieldType.Filled.ordinal()] = 1;
            iArr[TextFieldType.Outlined.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextFieldImplKt$CommonDecorationBox$3(p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, String str, boolean z6, int i10, TextFieldColors textFieldColors, boolean z10, InteractionSource interactionSource, int i11, p<? super Composer, ? super Integer, l0> pVar3, p<? super Composer, ? super Integer, l0> pVar4, TextFieldType textFieldType, p<? super Composer, ? super Integer, l0> pVar5, boolean z11, PaddingValues paddingValues, boolean z12, p<? super Composer, ? super Integer, l0> pVar6) {
        super(6);
        this.$label = pVar;
        this.$placeholder = pVar2;
        this.$transformedText = str;
        this.$isError = z6;
        this.$$dirty1 = i10;
        this.$colors = textFieldColors;
        this.$enabled = z10;
        this.$interactionSource = interactionSource;
        this.$$dirty = i11;
        this.$leadingIcon = pVar3;
        this.$trailingIcon = pVar4;
        this.$type = textFieldType;
        this.$innerTextField = pVar5;
        this.$singleLine = z11;
        this.$contentPadding = paddingValues;
        this.$shouldOverrideTextStyleColor = z12;
        this.$border = pVar6;
    }

    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v4 */
    @ComposableTarget
    @Composable
    public final void a(float f, long j6, long j10, float f6, @Nullable Composer composer, int i10) {
        int i11;
        ?? r14;
        ComposableLambda composableLambdaB;
        long jV;
        long jV2;
        if ((i10 & 14) == 0) {
            i11 = (composer.n(f) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composer.q(j6) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composer.q(j10) ? 256 : 128;
        }
        if ((i10 & 7168) == 0) {
            i11 |= composer.n(f6) ? 2048 : 1024;
        }
        int i12 = i11;
        if ((46811 & i12) == 9362 && composer.b()) {
            composer.g();
            return;
        }
        p<Composer, Integer, l0> pVar = this.$label;
        if (pVar != null) {
            r14 = 1;
            composableLambdaB = ComposableLambdaKt.b(composer, 362863774, true, new TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1(f, j10, pVar, i12, this.$shouldOverrideTextStyleColor, j6));
        } else {
            r14 = 1;
            composableLambdaB = null;
        }
        ComposableLambda composableLambdaB2 = (this.$placeholder == null || this.$transformedText.length() != 0) ? null : ComposableLambdaKt.b(composer, 1120552650, r14, new TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1(f6, this.$colors, this.$enabled, this.$$dirty, this.$$dirty1, this.$placeholder));
        String strA = Strings_androidKt.a(Strings.Companion.c(), composer, 6);
        Modifier.Companion companion = Modifier.Companion;
        Object objValueOf = Boolean.valueOf(this.$isError);
        boolean z6 = this.$isError;
        composer.G(511388516);
        boolean zK = composer.k(objValueOf) | composer.k(strA);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new TextFieldImplKt$CommonDecorationBox$3$decorationBoxModifier$1$1(z6, strA);
            composer.z(objH);
        }
        composer.Q();
        Modifier modifierC = SemanticsModifierKt.c(companion, false, (l) objH, r14, null);
        if (this.$colors instanceof TextFieldColorsWithIcons) {
            composer.G(-1083197894);
            TextFieldColorsWithIcons textFieldColorsWithIcons = (TextFieldColorsWithIcons) this.$colors;
            boolean z10 = this.$enabled;
            boolean z11 = this.$isError;
            InteractionSource interactionSource = this.$interactionSource;
            int i13 = (this.$$dirty >> 27) & 14;
            int i14 = this.$$dirty1;
            jV = textFieldColorsWithIcons.c(z10, z11, interactionSource, composer, ((i14 << 3) & 896) | i13 | ((i14 << 3) & 112)).getValue().v();
            composer.Q();
        } else {
            composer.G(-1083197798);
            TextFieldColors textFieldColors = this.$colors;
            boolean z12 = this.$enabled;
            boolean z13 = this.$isError;
            int i15 = (this.$$dirty >> 27) & 14;
            int i16 = this.$$dirty1;
            jV = textFieldColors.b(z12, z13, composer, i15 | ((i16 << 3) & 112) | ((i16 >> 3) & 896)).getValue().v();
            composer.Q();
        }
        p<Composer, Integer, l0> pVar2 = this.$leadingIcon;
        ComposableLambda composableLambdaB3 = pVar2 != null ? ComposableLambdaKt.b(composer, 1505327088, r14, new TextFieldImplKt$CommonDecorationBox$3$decoratedLeading$1$1(jV, pVar2)) : null;
        if (this.$colors instanceof TextFieldColorsWithIcons) {
            composer.G(-1083197452);
            TextFieldColorsWithIcons textFieldColorsWithIcons2 = (TextFieldColorsWithIcons) this.$colors;
            boolean z14 = this.$enabled;
            boolean z15 = this.$isError;
            InteractionSource interactionSource2 = this.$interactionSource;
            int i17 = (this.$$dirty >> 27) & 14;
            int i18 = this.$$dirty1;
            jV2 = textFieldColorsWithIcons2.j(z14, z15, interactionSource2, composer, ((i18 << 3) & 896) | i17 | ((i18 << 3) & 112)).getValue().v();
            composer.Q();
        } else {
            composer.G(-1083197355);
            TextFieldColors textFieldColors2 = this.$colors;
            boolean z16 = this.$enabled;
            boolean z17 = this.$isError;
            int i19 = (this.$$dirty >> 27) & 14;
            int i20 = this.$$dirty1;
            jV2 = textFieldColors2.e(z16, z17, composer, i19 | ((i20 << 3) & 112) | ((i20 >> 3) & 896)).getValue().v();
            composer.Q();
        }
        p<Composer, Integer, l0> pVar3 = this.$trailingIcon;
        ComposableLambda composableLambdaB4 = pVar3 != null ? ComposableLambdaKt.b(composer, -1894727196, r14, new TextFieldImplKt$CommonDecorationBox$3$decoratedTrailing$1$1(jV2, pVar3)) : null;
        int i21 = WhenMappings.$EnumSwitchMapping$0[this.$type.ordinal()];
        if (i21 == r14) {
            composer.G(-1083197019);
            p<Composer, Integer, l0> pVar4 = this.$innerTextField;
            boolean z18 = this.$singleLine;
            PaddingValues paddingValues = this.$contentPadding;
            int i22 = this.$$dirty;
            TextFieldKt.c(modifierC, pVar4, composableLambdaB, composableLambdaB2, composableLambdaB3, composableLambdaB4, z18, f, paddingValues, composer, ((i22 >> 6) & 3670016) | ((i22 >> 3) & 112) | ((i12 << 21) & 29360128) | ((this.$$dirty1 << 18) & 234881024));
            composer.Q();
            l0 l0Var = l0.INSTANCE;
            return;
        }
        if (i21 != 2) {
            composer.G(-1083194976);
            composer.Q();
            l0 l0Var2 = l0.INSTANCE;
            return;
        }
        composer.G(-1083196463);
        composer.G(-492369756);
        Object objH2 = composer.H();
        Composer.Companion companion2 = Composer.Companion;
        if (objH2 == companion2.a()) {
            objH2 = SnapshotStateKt__SnapshotStateKt.e(Size.c(Size.Companion.b()), null, 2, null);
            composer.z(objH2);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH2;
        ComposableLambda composableLambdaB5 = ComposableLambdaKt.b(composer, 139886979, r14, new TextFieldImplKt$CommonDecorationBox$3$drawBorder$1(mutableState, this.$contentPadding, this.$border, this.$$dirty1));
        p<Composer, Integer, l0> pVar5 = this.$innerTextField;
        boolean z19 = this.$singleLine;
        Object objValueOf2 = Float.valueOf(f);
        composer.G(511388516);
        boolean zK2 = composer.k(objValueOf2) | composer.k(mutableState);
        Object objH3 = composer.H();
        if (zK2 || objH3 == companion2.a()) {
            objH3 = new TextFieldImplKt$CommonDecorationBox$3$1$1(f, mutableState);
            composer.z(objH3);
        }
        composer.Q();
        l lVar = (l) objH3;
        PaddingValues paddingValues2 = this.$contentPadding;
        int i23 = this.$$dirty;
        OutlinedTextFieldKt.c(modifierC, pVar5, composableLambdaB2, composableLambdaB, composableLambdaB3, composableLambdaB4, z19, f, lVar, composableLambdaB5, paddingValues2, composer, ((i23 >> 6) & 3670016) | ((i23 >> 3) & 112) | 805306368 | ((i12 << 21) & 29360128), (this.$$dirty1 >> 6) & 14);
        composer.Q();
        l0 l0Var3 = l0.INSTANCE;
    }

    @Override // e8.t
    public /* bridge */ /* synthetic */ l0 invoke(Float f, Color color, Color color2, Float f6, Composer composer, Integer num) {
        a(f.floatValue(), color.v(), color2.v(), f6.floatValue(), composer, num.intValue());
        return l0.INSTANCE;
    }
}
