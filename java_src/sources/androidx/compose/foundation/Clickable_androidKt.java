package androidx.compose.foundation;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class Clickable_androidKt {
    private static final long TapIndicationDelay = ViewConfiguration.getTapTimeout();

    public static final long b() {
        return TapIndicationDelay;
    }

    public static final boolean c(@NotNull KeyEvent isClick) {
        int iB;
        t.j(isClick, "$this$isClick");
        return KeyEventType.f(KeyEvent_androidKt.b(isClick), KeyEventType.Companion.b()) && ((iB = Key_androidKt.b(KeyEvent_androidKt.a(isClick))) == 23 || iB == 66 || iB == 160);
    }

    @Composable
    @NotNull
    public static final e8.a<Boolean> d(@Nullable Composer composer, int i10) {
        composer.G(-1990508712);
        Clickable_androidKt$isComposeRootInScrollableContainer$1 clickable_androidKt$isComposeRootInScrollableContainer$1 = new Clickable_androidKt$isComposeRootInScrollableContainer$1((View) composer.x(AndroidCompositionLocals_androidKt.k()));
        composer.Q();
        return clickable_androidKt$isComposeRootInScrollableContainer$1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean e(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && (parent instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
            parent = viewGroup.getParent();
        }
        return false;
    }
}
