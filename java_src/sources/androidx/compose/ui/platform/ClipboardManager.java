package androidx.compose.ui.platform;

import androidx.compose.ui.text.AnnotatedString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public interface ClipboardManager {
    @Nullable
    AnnotatedString a();

    void b(@NotNull AnnotatedString annotatedString);
}
