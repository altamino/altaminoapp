package androidx.core.os;

import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
final class BundleApi18ImplKt {

    @NotNull
    public static final BundleApi18ImplKt INSTANCE = new BundleApi18ImplKt();

    @DoNotInline
    public static final void a(@NotNull Bundle bundle, @NotNull String key, @Nullable IBinder iBinder) {
        t.j(bundle, "bundle");
        t.j(key, "key");
        bundle.putBinder(key, iBinder);
    }

    private BundleApi18ImplKt() {
    }
}
