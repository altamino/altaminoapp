package androidx.navigation;

import android.os.Bundle;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class ActionOnlyNavDirections implements NavDirections {
    private final int actionId;

    @NotNull
    private final Bundle arguments = new Bundle();

    public int a() {
        return this.actionId;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && t.e(ActionOnlyNavDirections.class, obj.getClass()) && a() == ((ActionOnlyNavDirections) obj).a();
    }

    public int hashCode() {
        return 31 + a();
    }

    @NotNull
    public String toString() {
        return "ActionOnlyNavDirections(actionId=" + a() + ')';
    }

    public ActionOnlyNavDirections(int i10) {
        this.actionId = i10;
    }
}
