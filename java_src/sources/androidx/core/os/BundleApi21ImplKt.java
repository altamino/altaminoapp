package androidx.core.os;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
final class BundleApi21ImplKt {

    @NotNull
    public static final BundleApi21ImplKt INSTANCE = new BundleApi21ImplKt();

    @DoNotInline
    public static final void a(@NotNull Bundle bundle, @NotNull String key, @Nullable Size size) {
        t.j(bundle, "bundle");
        t.j(key, "key");
        bundle.putSize(key, size);
    }

    @DoNotInline
    public static final void b(@NotNull Bundle bundle, @NotNull String key, @Nullable SizeF sizeF) {
        t.j(bundle, "bundle");
        t.j(key, "key");
        bundle.putSizeF(key, sizeF);
    }

    private BundleApi21ImplKt() {
    }
}
