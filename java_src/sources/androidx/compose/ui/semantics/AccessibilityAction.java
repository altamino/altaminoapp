package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.g;

/* JADX INFO: loaded from: classes9.dex */
@StabilityInferred
public final class AccessibilityAction<T extends g<? extends Boolean>> {
    public static final int $stable = 0;

    @Nullable
    private final T action;

    @Nullable
    private final String label;

    @Nullable
    public final T a() {
        return this.action;
    }

    @Nullable
    public final String b() {
        return this.label;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessibilityAction)) {
            return false;
        }
        AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
        return t.e(this.label, accessibilityAction.label) && t.e(this.action, accessibilityAction.action);
    }

    public int hashCode() {
        String str = this.label;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        T t5 = this.action;
        return iHashCode + (t5 != null ? t5.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "AccessibilityAction(label=" + this.label + ", action=" + this.action + ')';
    }

    public AccessibilityAction(@Nullable String str, @Nullable T t5) {
        this.label = str;
        this.action = t5;
    }
}
