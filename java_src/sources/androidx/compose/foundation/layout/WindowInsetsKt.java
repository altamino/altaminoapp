package androidx.compose.foundation.layout;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class WindowInsetsKt {
    @NotNull
    public static final WindowInsets a(int i10, int i11, int i12, int i13) {
        return new FixedIntInsets(i10, i11, i12, i13);
    }

    @NotNull
    public static final WindowInsets b(@NotNull WindowInsets windowInsets, @NotNull WindowInsets insets) {
        t.j(windowInsets, "<this>");
        t.j(insets, "insets");
        return new AddedInsets(windowInsets, insets);
    }

    @NotNull
    public static final WindowInsets c(@NotNull PaddingValues paddingValues) {
        t.j(paddingValues, "<this>");
        return new PaddingValuesInsets(paddingValues);
    }

    @NotNull
    public static final WindowInsets d(@NotNull WindowInsets windowInsets, @NotNull WindowInsets insets) {
        t.j(windowInsets, "<this>");
        t.j(insets, "insets");
        return new ExcludeInsets(windowInsets, insets);
    }

    @NotNull
    public static final WindowInsets e(@NotNull WindowInsets windowInsets, @NotNull WindowInsets insets) {
        t.j(windowInsets, "<this>");
        t.j(insets, "insets");
        return new UnionInsets(windowInsets, insets);
    }
}
