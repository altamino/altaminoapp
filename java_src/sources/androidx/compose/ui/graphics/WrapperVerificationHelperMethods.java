package androidx.compose.ui.graphics;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
public final class WrapperVerificationHelperMethods {

    @NotNull
    public static final WrapperVerificationHelperMethods INSTANCE = new WrapperVerificationHelperMethods();

    @DoNotInline
    public final void a(@NotNull android.graphics.Paint paint, int i10) {
        kotlin.jvm.internal.t.j(paint, "paint");
        paint.setBlendMode(AndroidBlendMode_androidKt.a(i10));
    }

    private WrapperVerificationHelperMethods() {
    }
}
