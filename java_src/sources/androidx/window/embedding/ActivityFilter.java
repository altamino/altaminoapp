package androidx.window.embedding;

import android.content.ComponentName;
import androidx.window.core.ExperimentalWindowApi;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@ExperimentalWindowApi
public final class ActivityFilter {

    @NotNull
    private final ComponentName componentName;

    @Nullable
    private final String intentAction;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityFilter)) {
            return false;
        }
        ActivityFilter activityFilter = (ActivityFilter) obj;
        return t.e(this.componentName, activityFilter.componentName) && t.e(this.intentAction, activityFilter.intentAction);
    }

    public ActivityFilter(@NotNull ComponentName componentName, @Nullable String str) {
        t.j(componentName, "componentName");
        this.componentName = componentName;
        this.intentAction = str;
        String packageName = componentName.getPackageName();
        t.i(packageName, "componentName.packageName");
        String className = componentName.getClassName();
        t.i(className, "componentName.className");
        if (packageName.length() <= 0) {
            throw new IllegalArgumentException("Package name must not be empty".toString());
        }
        if (className.length() <= 0) {
            throw new IllegalArgumentException("Activity class name must not be empty.".toString());
        }
        if (u.P(packageName, "*", false, 2, null) && u.c0(packageName, "*", 0, false, 6, null) != packageName.length() - 1) {
            throw new IllegalArgumentException("Wildcard in package name is only allowed at the end.".toString());
        }
        if (u.P(className, "*", false, 2, null) && u.c0(className, "*", 0, false, 6, null) != className.length() - 1) {
            throw new IllegalArgumentException("Wildcard in class name is only allowed at the end.".toString());
        }
    }

    public int hashCode() {
        int iHashCode = this.componentName.hashCode() * 31;
        String str = this.intentAction;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        return "ActivityFilter(componentName=" + this.componentName + ", intentAction=" + ((Object) this.intentAction) + ')';
    }
}
