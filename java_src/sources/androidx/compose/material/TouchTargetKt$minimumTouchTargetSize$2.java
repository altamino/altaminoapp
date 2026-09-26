package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class TouchTargetKt$minimumTouchTargetSize$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    public static final TouchTargetKt$minimumTouchTargetSize$2 INSTANCE = new TouchTargetKt$minimumTouchTargetSize$2();

    TouchTargetKt$minimumTouchTargetSize$2() {
        super(3);
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(1220403677);
        Modifier minimumTouchTargetModifier = ((Boolean) composer.x(TouchTargetKt.a())).booleanValue() ? new MinimumTouchTargetModifier(((ViewConfiguration) composer.x(CompositionLocalsKt.n())).e(), null) : Modifier.Companion;
        composer.Q();
        return minimumTouchTargetModifier;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
