package androidx.compose.ui.modifier;

import e8.a;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class ModifierLocalKt {
    @NotNull
    public static final <T> ProvidableModifierLocal<T> a(@NotNull a<? extends T> defaultFactory) {
        t.j(defaultFactory, "defaultFactory");
        return new ProvidableModifierLocal<>(defaultFactory);
    }
}
