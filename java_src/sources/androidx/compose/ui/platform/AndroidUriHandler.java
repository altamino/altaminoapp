package androidx.compose.ui.platform;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
@StabilityInferred
public final class AndroidUriHandler implements UriHandler {
    public static final int $stable = 8;

    @NotNull
    private final Context context;

    public AndroidUriHandler(@NotNull Context context) {
        kotlin.jvm.internal.t.j(context, "context");
        this.context = context;
    }
}
