package androidx.compose.ui.graphics;

import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class AndroidColorFilter_androidKt {
    @NotNull
    public static final ColorFilter a(long j6, int i10) {
        return new ColorFilter(Build.VERSION.SDK_INT >= 29 ? BlendModeColorFilterHelper.INSTANCE.a(j6, i10) : new PorterDuffColorFilter(ColorKt.l(j6), AndroidBlendMode_androidKt.b(i10)));
    }

    @NotNull
    public static final android.graphics.ColorFilter b(@NotNull ColorFilter colorFilter) {
        kotlin.jvm.internal.t.j(colorFilter, "<this>");
        return colorFilter.a();
    }
}
