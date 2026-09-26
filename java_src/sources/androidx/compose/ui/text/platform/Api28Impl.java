package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.text.style.TypefaceSpan;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
final class Api28Impl {

    @NotNull
    public static final Api28Impl INSTANCE = new Api28Impl();

    @DoNotInline
    @NotNull
    public final TypefaceSpan a(@NotNull Typeface typeface) {
        t.j(typeface, "typeface");
        return new TypefaceSpan(typeface);
    }

    private Api28Impl() {
    }
}
