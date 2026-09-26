package androidx.compose.ui.text.input;

import e8.l;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public interface PlatformTextInputService {
    void a();

    void b(@Nullable TextFieldValue textFieldValue, @NotNull TextFieldValue textFieldValue2);

    void c(@NotNull TextFieldValue textFieldValue, @NotNull ImeOptions imeOptions, @NotNull l<? super List<? extends EditCommand>, l0> lVar, @NotNull l<? super ImeAction, l0> lVar2);

    void d();
}
