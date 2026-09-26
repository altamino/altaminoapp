package androidx.compose.foundation.text;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.text.Placeholder;
import e8.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class InlineTextContent {

    @NotNull
    private final q<String, Composer, Integer, l0> children;

    @NotNull
    private final Placeholder placeholder;

    @NotNull
    public final q<String, Composer, Integer, l0> a() {
        return this.children;
    }

    @NotNull
    public final Placeholder b() {
        return this.placeholder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public InlineTextContent(@NotNull Placeholder placeholder, @NotNull q<? super String, ? super Composer, ? super Integer, l0> children) {
        t.j(placeholder, "placeholder");
        t.j(children, "children");
        this.placeholder = placeholder;
        this.children = children;
    }
}
