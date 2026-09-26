package androidx.compose.ui.text.input;

import android.os.IBinder;
import android.view.View;
import android.view.inputmethod.ExtractedText;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public interface InputMethodManager {
    void a(@NotNull View view);

    void b(@Nullable IBinder iBinder);

    void c(@NotNull View view, int i10, int i11, int i12, int i13);

    void d(@NotNull View view, int i10, @NotNull ExtractedText extractedText);

    void e(@NotNull View view);
}
