package coil.size;

import android.view.View;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class m {
    @NotNull
    public static final <T extends View> l<T> a(@NotNull T t5, boolean z6) {
        return new g(t5, z6);
    }

    public static /* synthetic */ l b(View view, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = true;
        }
        return a(view, z6);
    }
}
