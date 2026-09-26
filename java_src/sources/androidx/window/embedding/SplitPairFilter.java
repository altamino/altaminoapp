package androidx.window.embedding;

import android.content.ComponentName;
import androidx.window.core.ExperimentalWindowApi;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@ExperimentalWindowApi
public final class SplitPairFilter {

    @NotNull
    private final ComponentName primaryActivityName;

    @Nullable
    private final String secondaryActivityIntentAction;

    @NotNull
    private final ComponentName secondaryActivityName;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitPairFilter)) {
            return false;
        }
        SplitPairFilter splitPairFilter = (SplitPairFilter) obj;
        return t.e(this.primaryActivityName, splitPairFilter.primaryActivityName) && t.e(this.secondaryActivityName, splitPairFilter.secondaryActivityName) && t.e(this.secondaryActivityIntentAction, splitPairFilter.secondaryActivityIntentAction);
    }

    public SplitPairFilter(@NotNull ComponentName primaryActivityName, @NotNull ComponentName secondaryActivityName, @Nullable String str) {
        t.j(primaryActivityName, "primaryActivityName");
        t.j(secondaryActivityName, "secondaryActivityName");
        this.primaryActivityName = primaryActivityName;
        this.secondaryActivityName = secondaryActivityName;
        this.secondaryActivityIntentAction = str;
        String packageName = primaryActivityName.getPackageName();
        t.i(packageName, "primaryActivityName.packageName");
        String className = primaryActivityName.getClassName();
        t.i(className, "primaryActivityName.className");
        String packageName2 = secondaryActivityName.getPackageName();
        t.i(packageName2, "secondaryActivityName.packageName");
        String className2 = secondaryActivityName.getClassName();
        t.i(className2, "secondaryActivityName.className");
        if (packageName.length() == 0 || packageName2.length() == 0) {
            throw new IllegalArgumentException("Package name must not be empty".toString());
        }
        if (className.length() == 0 || className2.length() == 0) {
            throw new IllegalArgumentException("Activity class name must not be empty.".toString());
        }
        if (u.P(packageName, "*", false, 2, null) && u.c0(packageName, "*", 0, false, 6, null) != packageName.length() - 1) {
            throw new IllegalArgumentException("Wildcard in package name is only allowed at the end.".toString());
        }
        if (u.P(className, "*", false, 2, null) && u.c0(className, "*", 0, false, 6, null) != className.length() - 1) {
            throw new IllegalArgumentException("Wildcard in class name is only allowed at the end.".toString());
        }
        if (u.P(packageName2, r12, r11, r10, r9) && u.c0(packageName2, "*", 0, false, 6, null) != packageName2.length() - 1) {
            throw new IllegalArgumentException("Wildcard in package name is only allowed at the end.".toString());
        }
        if (u.P(className2, "*", false, 2, 0) && u.c0(className2, "*", 0, false, 6, null) != className2.length() - 1) {
            throw new IllegalArgumentException("Wildcard in class name is only allowed at the end.".toString());
        }
    }

    public int hashCode() {
        int iHashCode = ((this.primaryActivityName.hashCode() * 31) + this.secondaryActivityName.hashCode()) * 31;
        String str = this.secondaryActivityIntentAction;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        return "SplitPairFilter{primaryActivityName=" + this.primaryActivityName + ", secondaryActivityName=" + this.secondaryActivityName + ", secondaryActivityAction=" + ((Object) this.secondaryActivityIntentAction) + kotlinx.serialization.json.internal.b.END_OBJ;
    }
}
