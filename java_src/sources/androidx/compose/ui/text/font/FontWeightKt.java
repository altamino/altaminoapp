package androidx.compose.ui.text.font;

import androidx.compose.ui.util.MathHelpersKt;
import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class FontWeightKt {
    @NotNull
    public static final FontWeight a(@NotNull FontWeight start, @NotNull FontWeight stop, float f) {
        t.j(start, "start");
        t.j(stop, "stop");
        return new FontWeight(o.n(MathHelpersKt.b(start.k(), stop.k(), f), 1, 1000));
    }
}
