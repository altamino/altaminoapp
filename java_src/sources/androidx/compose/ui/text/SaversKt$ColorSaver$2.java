package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Color;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.f0;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$ColorSaver$2 extends v implements l<Object, Color> {
    public static final SaversKt$ColorSaver$2 INSTANCE = new SaversKt$ColorSaver$2();

    SaversKt$ColorSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Color invoke(@NotNull Object it) {
        t.j(it, "it");
        return Color.h(Color.i(((f0) it).f()));
    }
}
