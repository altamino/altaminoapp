package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class WindowInsetsPadding_androidKt$windowInsetsPadding$1 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ e8.l<WindowInsetsHolder, WindowInsets> $insetsCalculation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WindowInsetsPadding_androidKt$windowInsetsPadding$1(e8.l<? super WindowInsetsHolder, ? extends WindowInsets> lVar) {
        super(3);
        this.$insetsCalculation = lVar;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(359872873);
        WindowInsetsHolder windowInsetsHolderC = WindowInsetsHolder.Companion.c(composer, 8);
        e8.l<WindowInsetsHolder, WindowInsets> lVar = this.$insetsCalculation;
        composer.G(1157296644);
        boolean zK = composer.k(windowInsetsHolderC);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new InsetsPaddingModifier(lVar.invoke(windowInsetsHolderC), null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        InsetsPaddingModifier insetsPaddingModifier = (InsetsPaddingModifier) objH;
        composer.Q();
        return insetsPaddingModifier;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
