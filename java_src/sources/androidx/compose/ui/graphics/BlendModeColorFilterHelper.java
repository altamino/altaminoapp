package androidx.compose.ui.graphics;

import android.graphics.BlendModeColorFilter;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@RequiresApi
final class BlendModeColorFilterHelper {

    @NotNull
    public static final BlendModeColorFilterHelper INSTANCE = new BlendModeColorFilterHelper();

    private BlendModeColorFilterHelper() {
    }

    @DoNotInline
    @NotNull
    public final BlendModeColorFilter a(long j6, int i10) {
        a1.a();
        return z0.a(ColorKt.l(j6), AndroidBlendMode_androidKt.a(i10));
    }
}
