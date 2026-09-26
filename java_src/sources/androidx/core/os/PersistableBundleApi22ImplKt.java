package androidx.core.os;

import android.os.PersistableBundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@RequiresApi
final class PersistableBundleApi22ImplKt {

    @NotNull
    public static final PersistableBundleApi22ImplKt INSTANCE = new PersistableBundleApi22ImplKt();

    @DoNotInline
    public static final void a(@NotNull PersistableBundle persistableBundle, @Nullable String str, boolean z6) {
        t.j(persistableBundle, "persistableBundle");
        persistableBundle.putBoolean(str, z6);
    }

    @DoNotInline
    public static final void b(@NotNull PersistableBundle persistableBundle, @Nullable String str, @NotNull boolean[] value) {
        t.j(persistableBundle, "persistableBundle");
        t.j(value, "value");
        persistableBundle.putBooleanArray(str, value);
    }

    private PersistableBundleApi22ImplKt() {
    }
}
