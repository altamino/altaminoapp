package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
public final class ButtonDefaults {
    public static final int $stable = 0;
    private static final float ButtonHorizontalPadding;
    private static final float ButtonVerticalPadding;

    @NotNull
    private static final PaddingValues ContentPadding;

    @NotNull
    public static final ButtonDefaults INSTANCE = new ButtonDefaults();
    private static final float IconSize;
    private static final float IconSpacing;
    private static final float MinHeight;
    private static final float MinWidth;
    public static final float OutlinedBorderOpacity = 0.12f;
    private static final float OutlinedBorderSize;

    @NotNull
    private static final PaddingValues TextButtonContentPadding;
    private static final float TextButtonHorizontalPadding;

    @NotNull
    public final PaddingValues c() {
        return ContentPadding;
    }

    public final float d() {
        return MinHeight;
    }

    public final float e() {
        return MinWidth;
    }

    @NotNull
    public final PaddingValues g() {
        return TextButtonContentPadding;
    }

    static {
        float f = Dp.f(16);
        ButtonHorizontalPadding = f;
        float f6 = 8;
        float f7 = Dp.f(f6);
        ButtonVerticalPadding = f7;
        PaddingValues paddingValuesD = PaddingKt.d(f, f7, f, f7);
        ContentPadding = paddingValuesD;
        MinWidth = Dp.f(64);
        MinHeight = Dp.f(36);
        IconSize = Dp.f(18);
        IconSpacing = Dp.f(f6);
        OutlinedBorderSize = Dp.f(1);
        float f10 = Dp.f(f6);
        TextButtonHorizontalPadding = f10;
        TextButtonContentPadding = PaddingKt.d(f10, paddingValuesD.d(), f10, paddingValuesD.a());
    }

    @Composable
    @NotNull
    public final ButtonColors a(long j6, long j10, long j11, long j12, @Nullable Composer composer, int i10, int i11) {
        long jG;
        composer.G(1870371134);
        long j13 = (i11 & 1) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).j() : j6;
        long jB = (i11 & 2) != 0 ? ColorsKt.b(j13, composer, i10 & 14) : j10;
        if ((i11 & 4) != 0) {
            MaterialTheme materialTheme = MaterialTheme.INSTANCE;
            jG = ColorKt.g(Color.l(materialTheme.a(composer, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), materialTheme.a(composer, 6).n());
        } else {
            jG = j11;
        }
        DefaultButtonColors defaultButtonColors = new DefaultButtonColors(j13, jB, jG, (i11 & 8) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j12, null);
        composer.Q();
        return defaultButtonColors;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v6 ??, still in use, count: 1, list:
          (r2v6 ?? I:java.lang.Object) from 0x0096: INVOKE (r19v0 ?? I:androidx.compose.runtime.Composer), (r2v6 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.z(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:153)
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
    public final androidx.compose.material.ButtonElevation b(
    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v6 ??, still in use, count: 1, list:
          (r2v6 ?? I:java.lang.Object) from 0x0096: INVOKE (r19v0 ?? I:androidx.compose.runtime.Composer), (r2v6 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.z(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:153)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:75)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r14v0 ??
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

    @Composable
    @NotNull
    public final ButtonColors h(long j6, long j10, long j11, @Nullable Composer composer, int i10, int i11) {
        composer.G(-2124406093);
        long jN = (i11 & 1) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).n() : j6;
        DefaultButtonColors defaultButtonColors = new DefaultButtonColors(jN, (i11 & 2) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).j() : j10, jN, (i11 & 4) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j11, null);
        composer.Q();
        return defaultButtonColors;
    }

    @Composable
    @NotNull
    public final ButtonColors i(long j6, long j10, long j11, @Nullable Composer composer, int i10, int i11) {
        composer.G(182742216);
        long jE = (i11 & 1) != 0 ? Color.Companion.e() : j6;
        DefaultButtonColors defaultButtonColors = new DefaultButtonColors(jE, (i11 & 2) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).j() : j10, jE, (i11 & 4) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j11, null);
        composer.Q();
        return defaultButtonColors;
    }

    private ButtonDefaults() {
    }

    @Composable
    @NotNull
    public final BorderStroke f(@Nullable Composer composer, int i10) {
        composer.G(-2091313033);
        BorderStroke borderStrokeA = BorderStrokeKt.a(OutlinedBorderSize, Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null));
        composer.Q();
        return borderStrokeA;
    }
}
