package androidx.compose.ui.hapticfeedback;

import android.view.View;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class PlatformHapticFeedback implements HapticFeedback {

    @NotNull
    private final View view;

    public PlatformHapticFeedback(@NotNull View view) {
        t.j(view, "view");
        this.view = view;
    }

    @Override // androidx.compose.ui.hapticfeedback.HapticFeedback
    public void a(int i10) {
        HapticFeedbackType.Companion companion = HapticFeedbackType.Companion;
        if (HapticFeedbackType.c(i10, companion.a())) {
            this.view.performHapticFeedback(0);
        } else if (HapticFeedbackType.c(i10, companion.b())) {
            this.view.performHapticFeedback(9);
        }
    }
}
