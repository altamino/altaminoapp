package androidx.compose.ui;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final /* synthetic */ class a {
    @NotNull
    public static Modifier a(Modifier modifier, @NotNull Modifier other) {
        t.j(other, "other");
        return other == Modifier.Companion ? modifier : new CombinedModifier(modifier, other);
    }
}
