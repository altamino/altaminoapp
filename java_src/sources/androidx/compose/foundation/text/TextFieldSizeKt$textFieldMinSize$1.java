package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import e8.q;
import j8.o;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class TextFieldSizeKt$textFieldMinSize$1 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ TextStyle $style;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldSizeKt$textFieldMinSize$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements q<MeasureScope, Measurable, Constraints, MeasureResult> {
        final /* synthetic */ TextFieldSize $minSizeState;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldSizeKt$textFieldMinSize$1$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00451 extends v implements l<Placeable.PlacementScope, l0> {
            final /* synthetic */ Placeable $measured;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00451(Placeable placeable) {
                super(1);
                this.$measured = placeable;
            }

            public final void a(@NotNull Placeable.PlacementScope layout) {
                t.j(layout, "$this$layout");
                Placeable.PlacementScope.n(layout, this.$measured, 0, 0, 0.0f, 4, null);
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
                a(placementScope);
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TextFieldSize textFieldSize) {
            super(3);
            this.$minSizeState = textFieldSize;
        }

        @NotNull
        public final MeasureResult a(@NotNull MeasureScope layout, @NotNull Measurable measurable, long j6) {
            t.j(layout, "$this$layout");
            t.j(measurable, "measurable");
            SizeKt.h(Modifier.Companion, 0.0f, 0.0f, 3, null);
            long jB = this.$minSizeState.b();
            Placeable placeableB0 = measurable.b0(Constraints.e(j6, o.n(IntSize.g(jB), Constraints.p(j6), Constraints.n(j6)), 0, o.n(IntSize.f(jB), Constraints.o(j6), Constraints.m(j6)), 0, 10, null));
            return MeasureScope.CC.b(layout, placeableB0.Q0(), placeableB0.B0(), null, new C00451(placeableB0), 4, null);
        }

        @Override // e8.q
        public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
            return a(measureScope, measurable, constraints.t());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldSizeKt$textFieldMinSize$1(TextStyle textStyle) {
        super(3);
        this.$style = textStyle;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r9v2 ??, still in use, count: 1, list:
          (r9v2 ?? I:java.lang.Object) from 0x00d0: INVOKE (r12v0 ?? I:androidx.compose.runtime.Composer), (r9v2 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.z(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:211)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:75)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
        */
    @androidx.compose.runtime.Composable
    @org.jetbrains.annotations.NotNull
    public final androidx.compose.ui.Modifier a(
    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r9v2 ??, still in use, count: 1, list:
          (r9v2 ?? I:java.lang.Object) from 0x00d0: INVOKE (r12v0 ?? I:androidx.compose.runtime.Composer), (r9v2 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.z(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:211)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:75)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r11v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }

    private static final Object b(State<? extends Object> state) {
        return state.getValue();
    }
}
