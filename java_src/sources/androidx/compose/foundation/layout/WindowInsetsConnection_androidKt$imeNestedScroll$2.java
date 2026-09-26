package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class WindowInsetsConnection_androidKt$imeNestedScroll$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    public static final WindowInsetsConnection_androidKt$imeNestedScroll$2 INSTANCE = new WindowInsetsConnection_androidKt$imeNestedScroll$2();

    WindowInsetsConnection_androidKt$imeNestedScroll$2() {
        super(3);
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-369978792);
        Modifier modifierB = NestedScrollModifierKt.b(composed, WindowInsetsConnection_androidKt.d(WindowInsetsHolder.Companion.c(composer, 8).f(), WindowInsetsSides.Companion.e(), composer, 48), null, 2, null);
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
