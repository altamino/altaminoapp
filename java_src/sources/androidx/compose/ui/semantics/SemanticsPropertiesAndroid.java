package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@StabilityInferred
@ExperimentalComposeUiApi
public final class SemanticsPropertiesAndroid {
    public static final int $stable = 0;

    @NotNull
    public static final SemanticsPropertiesAndroid INSTANCE = new SemanticsPropertiesAndroid();

    @NotNull
    private static final SemanticsPropertyKey<Boolean> TestTagsAsResourceId = new SemanticsPropertyKey<>("TestTagsAsResourceId", SemanticsPropertiesAndroid$TestTagsAsResourceId$1.INSTANCE);

    @ExperimentalComposeUiApi
    @NotNull
    public final SemanticsPropertyKey<Boolean> a() {
        return TestTagsAsResourceId;
    }

    private SemanticsPropertiesAndroid() {
    }
}
