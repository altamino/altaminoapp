package androidx.compose.ui.text.font;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public interface PlatformTypefaces {
    @Nullable
    android.graphics.Typeface a(@NotNull String str, @NotNull FontWeight fontWeight, int i10);

    @NotNull
    android.graphics.Typeface b(@NotNull GenericFontFamily genericFontFamily, @NotNull FontWeight fontWeight, int i10);

    @NotNull
    android.graphics.Typeface c(@NotNull FontWeight fontWeight, int i10);
}
