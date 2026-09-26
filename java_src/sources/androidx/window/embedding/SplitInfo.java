package androidx.window.embedding;

import android.app.Activity;
import androidx.window.core.ExperimentalWindowApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@ExperimentalWindowApi
public final class SplitInfo {

    @NotNull
    private final ActivityStack primaryActivityStack;

    @NotNull
    private final ActivityStack secondaryActivityStack;
    private final float splitRatio;

    @NotNull
    public final ActivityStack b() {
        return this.primaryActivityStack;
    }

    @NotNull
    public final ActivityStack c() {
        return this.secondaryActivityStack;
    }

    public final float d() {
        return this.splitRatio;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitInfo)) {
            return false;
        }
        SplitInfo splitInfo = (SplitInfo) obj;
        return t.e(this.primaryActivityStack, splitInfo.primaryActivityStack) && t.e(this.secondaryActivityStack, splitInfo.secondaryActivityStack) && this.splitRatio == splitInfo.splitRatio;
    }

    public final boolean a(@NotNull Activity activity) {
        t.j(activity, "activity");
        return this.primaryActivityStack.a(activity) || this.secondaryActivityStack.a(activity);
    }

    public int hashCode() {
        return (((this.primaryActivityStack.hashCode() * 31) + this.secondaryActivityStack.hashCode()) * 31) + Float.floatToIntBits(this.splitRatio);
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SplitInfo:{");
        sb.append("primaryActivityStack=" + b() + kotlinx.serialization.json.internal.b.COMMA);
        sb.append("secondaryActivityStack=" + c() + kotlinx.serialization.json.internal.b.COMMA);
        sb.append("splitRatio=" + d() + kotlinx.serialization.json.internal.b.END_OBJ);
        String string = sb.toString();
        t.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public SplitInfo(@NotNull ActivityStack primaryActivityStack, @NotNull ActivityStack secondaryActivityStack, float f) {
        t.j(primaryActivityStack, "primaryActivityStack");
        t.j(secondaryActivityStack, "secondaryActivityStack");
        this.primaryActivityStack = primaryActivityStack;
        this.secondaryActivityStack = secondaryActivityStack;
        this.splitRatio = f;
    }
}
