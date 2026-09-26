package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import e8.a;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
public final class CustomAccessibilityAction {
    public static final int $stable = 0;

    @NotNull
    private final a<Boolean> action;

    @NotNull
    private final String label;

    @NotNull
    public final a<Boolean> a() {
        return this.action;
    }

    @NotNull
    public final String b() {
        return this.label;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomAccessibilityAction)) {
            return false;
        }
        CustomAccessibilityAction customAccessibilityAction = (CustomAccessibilityAction) obj;
        return t.e(this.label, customAccessibilityAction.label) && t.e(this.action, customAccessibilityAction.action);
    }

    public CustomAccessibilityAction(@NotNull String label, @NotNull a<Boolean> action) {
        t.j(label, "label");
        t.j(action, "action");
        this.label = label;
        this.action = action;
    }

    public int hashCode() {
        return (this.label.hashCode() * 31) + this.action.hashCode();
    }

    @NotNull
    public String toString() {
        return "CustomAccessibilityAction(label=" + this.label + ", action=" + this.action + ')';
    }
}
