package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.Typeface;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface AndroidTypeface extends Typeface {
    @NotNull
    android.graphics.Typeface a(@NotNull FontWeight fontWeight, int i10, int i11);
}
