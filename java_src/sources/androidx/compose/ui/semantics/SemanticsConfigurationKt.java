package androidx.compose.ui.semantics;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class SemanticsConfigurationKt {
    @Nullable
    public static final <T> T a(@NotNull SemanticsConfiguration semanticsConfiguration, @NotNull SemanticsPropertyKey<T> key) {
        t.j(semanticsConfiguration, "<this>");
        t.j(key, "key");
        return (T) semanticsConfiguration.j(key, SemanticsConfigurationKt$getOrNull$1.INSTANCE);
    }
}
