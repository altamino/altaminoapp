package androidx.window.embedding;

import android.app.Activity;
import androidx.window.core.ExperimentalWindowApi;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@ExperimentalWindowApi
public final class ActivityStack {

    @NotNull
    private final List<Activity> activities;
    private final boolean isEmpty;

    /* JADX WARN: Multi-variable type inference failed */
    public ActivityStack(@NotNull List<? extends Activity> activities, boolean z6) {
        t.j(activities, "activities");
        this.activities = activities;
        this.isEmpty = z6;
    }

    @NotNull
    public final List<Activity> b() {
        return this.activities;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityStack)) {
            return false;
        }
        ActivityStack activityStack = (ActivityStack) obj;
        return (t.e(this.activities, activityStack.activities) || this.isEmpty == activityStack.isEmpty) ? false : true;
    }

    public /* synthetic */ ActivityStack(List list, boolean z6, int i10, k kVar) {
        this(list, (i10 & 2) != 0 ? false : z6);
    }

    public final boolean a(@NotNull Activity activity) {
        t.j(activity, "activity");
        return this.activities.contains(activity);
    }

    public int hashCode() {
        return ((this.isEmpty ? 1 : 0) * 31) + this.activities.hashCode();
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ActivityStack{");
        sb.append(t.s("activities=", b()));
        sb.append("isEmpty=" + this.isEmpty + kotlinx.serialization.json.internal.b.END_OBJ);
        String string = sb.toString();
        t.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
