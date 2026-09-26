package androidx.compose.ui.text.input;

import android.view.KeyEvent;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public interface InputEventCallback2 {
    void a(@NotNull KeyEvent keyEvent);

    void b(int i10);

    void c(@NotNull List<? extends EditCommand> list);
}
