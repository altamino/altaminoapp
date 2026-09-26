package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$ShadowSaver$1 extends v implements p<SaverScope, Shadow, Object> {
    public static final SaversKt$ShadowSaver$1 INSTANCE = new SaversKt$ShadowSaver$1();

    SaversKt$ShadowSaver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @NotNull Shadow it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        return kotlin.collections.v.g(SaversKt.t(Color.h(it.c()), SaversKt.g(Color.Companion), Saver), SaversKt.t(Offset.d(it.d()), SaversKt.f(Offset.Companion), Saver), SaversKt.s(Float.valueOf(it.b())));
    }
}
