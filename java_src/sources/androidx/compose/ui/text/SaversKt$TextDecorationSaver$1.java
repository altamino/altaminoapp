package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.style.TextDecoration;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$TextDecorationSaver$1 extends v implements p<SaverScope, TextDecoration, Object> {
    public static final SaversKt$TextDecorationSaver$1 INSTANCE = new SaversKt$TextDecorationSaver$1();

    SaversKt$TextDecorationSaver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @NotNull TextDecoration it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        return Integer.valueOf(it.e());
    }
}
