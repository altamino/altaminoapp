package androidx.compose.ui.text.font;

import android.content.Context;
import android.os.Build;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class AndroidFontResolveInterceptor_androidKt {
    @NotNull
    public static final AndroidFontResolveInterceptor a(@NotNull Context context) {
        t.j(context, "context");
        return new AndroidFontResolveInterceptor(Build.VERSION.SDK_INT >= 31 ? context.getResources().getConfiguration().fontWeightAdjustment : 0);
    }
}
