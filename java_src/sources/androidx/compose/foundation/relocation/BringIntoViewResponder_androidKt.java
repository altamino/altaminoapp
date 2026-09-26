package androidx.compose.foundation.relocation;

import android.graphics.Rect;
import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class BringIntoViewResponder_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect c(androidx.compose.ui.geometry.Rect rect) {
        return new Rect((int) rect.j(), (int) rect.m(), (int) rect.k(), (int) rect.e());
    }

    @Composable
    @NotNull
    public static final BringIntoViewParent b(@Nullable Composer composer, int i10) {
        composer.G(-1031410916);
        View view = (View) composer.x(AndroidCompositionLocals_androidKt.k());
        composer.G(1157296644);
        boolean zK = composer.k(view);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new AndroidBringIntoViewParent(view);
            composer.z(objH);
        }
        composer.Q();
        AndroidBringIntoViewParent androidBringIntoViewParent = (AndroidBringIntoViewParent) objH;
        composer.Q();
        return androidBringIntoViewParent;
    }
}
