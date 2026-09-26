package androidx.compose.ui.geometry;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class MutableRectKt {
    @NotNull
    public static final Rect a(@NotNull MutableRect mutableRect) {
        t.j(mutableRect, "<this>");
        return new Rect(mutableRect.b(), mutableRect.d(), mutableRect.c(), mutableRect.a());
    }
}
