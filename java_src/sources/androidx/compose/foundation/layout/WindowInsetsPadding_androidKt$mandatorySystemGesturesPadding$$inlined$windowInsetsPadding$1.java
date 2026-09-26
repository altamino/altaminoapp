package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class WindowInsetsPadding_androidKt$mandatorySystemGesturesPadding$$inlined$windowInsetsPadding$1 extends v implements q<Modifier, Composer, Integer, Modifier> {
    public WindowInsetsPadding_androidKt$mandatorySystemGesturesPadding$$inlined$windowInsetsPadding$1() {
        super(3);
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(359872873);
        WindowInsetsHolder windowInsetsHolderC = WindowInsetsHolder.Companion.c(composer, 8);
        composer.G(1157296644);
        boolean zK = composer.k(windowInsetsHolderC);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new InsetsPaddingModifier(windowInsetsHolderC.g(), null, 2, null);
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
