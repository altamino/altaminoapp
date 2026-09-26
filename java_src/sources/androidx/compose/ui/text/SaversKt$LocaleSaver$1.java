package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.intl.Locale;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$LocaleSaver$1 extends v implements p<SaverScope, Locale, Object> {
    public static final SaversKt$LocaleSaver$1 INSTANCE = new SaversKt$LocaleSaver$1();

    SaversKt$LocaleSaver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @NotNull Locale it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        return it.b();
    }
}
