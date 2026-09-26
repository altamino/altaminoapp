package androidx.compose.material;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.input.VisualTransformation;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class OutlinedTextFieldKt$OutlinedTextField$2 extends v implements q<p<? super Composer, ? super Integer, ? extends l0>, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ int $$dirty1;
    final /* synthetic */ TextFieldColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ boolean $isError;
    final /* synthetic */ p<Composer, Integer, l0> $label;
    final /* synthetic */ p<Composer, Integer, l0> $leadingIcon;
    final /* synthetic */ p<Composer, Integer, l0> $placeholder;
    final /* synthetic */ Shape $shape;
    final /* synthetic */ boolean $singleLine;
    final /* synthetic */ p<Composer, Integer, l0> $trailingIcon;
    final /* synthetic */ String $value;
    final /* synthetic */ VisualTransformation $visualTransformation;

    /* JADX INFO: renamed from: androidx.compose.material.OutlinedTextFieldKt$OutlinedTextField$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ int $$dirty1;
        final /* synthetic */ TextFieldColors $colors;
        final /* synthetic */ boolean $enabled;
        final /* synthetic */ MutableInteractionSource $interactionSource;
        final /* synthetic */ boolean $isError;
        final /* synthetic */ Shape $shape;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z6, boolean z10, MutableInteractionSource mutableInteractionSource, TextFieldColors textFieldColors, Shape shape, int i10, int i11) {
            super(2);
            this.$enabled = z6;
            this.$isError = z10;
            this.$interactionSource = mutableInteractionSource;
            this.$colors = textFieldColors;
            this.$shape = shape;
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
            MutableInteractionSource mutableInteractionSource = this.$interactionSource;
            TextFieldColors textFieldColors = this.$colors;
            Shape shape = this.$shape;
            int i11 = ((this.$$dirty >> 9) & 14) | 12582912;
            int i12 = this.$$dirty1;
            textFieldDefaults.a(z6, z10, mutableInteractionSource, textFieldColors, shape, 0.0f, 0.0f, composer, i11 | ((i12 << 3) & 112) | ((i12 >> 12) & 896) | ((i12 >> 15) & 7168) | ((i12 >> 9) & 57344), 96);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    OutlinedTextFieldKt$OutlinedTextField$2(String str, boolean z6, boolean z10, VisualTransformation visualTransformation, MutableInteractionSource mutableInteractionSource, boolean z11, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, p<? super Composer, ? super Integer, l0> pVar4, TextFieldColors textFieldColors, int i10, int i11, Shape shape) {
        super(3);
        this.$value = str;
        this.$enabled = z6;
        this.$singleLine = z10;
        this.$visualTransformation = visualTransformation;
        this.$interactionSource = mutableInteractionSource;
        this.$isError = z11;
        this.$label = pVar;
        this.$placeholder = pVar2;
        this.$leadingIcon = pVar3;
        this.$trailingIcon = pVar4;
        this.$colors = textFieldColors;
        this.$$dirty = i10;
        this.$$dirty1 = i11;
        this.$shape = shape;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Composable
    @ComposableInferredTarget
    public final void a(@NotNull p<? super Composer, ? super Integer, l0> innerTextField, @Nullable Composer composer, int i10) {
        int i11;
        t.j(innerTextField, "innerTextField");
        if ((i10 & 14) == 0) {
            i11 = i10 | (composer.k(innerTextField) ? 4 : 2);
        } else {
            i11 = i10;
        }
        if ((i11 & 91) == 18 && composer.b()) {
            composer.g();
            return;
        }
        TextFieldDefaults textFieldDefaults = TextFieldDefaults.INSTANCE;
        String str = this.$value;
        boolean z6 = this.$enabled;
        boolean z10 = this.$singleLine;
        VisualTransformation visualTransformation = this.$visualTransformation;
        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
        boolean z11 = this.$isError;
        p<Composer, Integer, l0> pVar = this.$label;
        p<Composer, Integer, l0> pVar2 = this.$placeholder;
        p<Composer, Integer, l0> pVar3 = this.$leadingIcon;
        p<Composer, Integer, l0> pVar4 = this.$trailingIcon;
        TextFieldColors textFieldColors = this.$colors;
        ComposableLambda composableLambdaB = ComposableLambdaKt.b(composer, 329542189, true, new AnonymousClass1(z6, z11, mutableInteractionSource, textFieldColors, this.$shape, this.$$dirty, this.$$dirty1));
        int i12 = this.$$dirty;
        int i13 = this.$$dirty1;
        textFieldDefaults.b(str, innerTextField, z6, z10, visualTransformation, mutableInteractionSource, z11, pVar, pVar2, pVar3, pVar4, textFieldColors, null, composableLambdaB, composer, (i12 & 14) | ((i11 << 3) & 112) | ((i12 >> 3) & 896) | ((i13 >> 3) & 7168) | ((i13 << 9) & 57344) | ((i13 >> 3) & 458752) | ((i13 << 18) & 3670016) | ((i12 << 3) & 29360128) | ((i12 << 3) & 234881024) | ((i12 << 3) & 1879048192), ((i12 >> 27) & 14) | 27648 | ((i13 >> 21) & 112), 4096);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(p<? super Composer, ? super Integer, ? extends l0> pVar, Composer composer, Integer num) {
        a(pVar, composer, num.intValue());
        return l0.INSTANCE;
    }
}
