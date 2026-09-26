package androidx.core.view;

import android.view.Menu;
import android.view.MenuItem;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class MenuKt {
    @NotNull
    public static final Iterator<MenuItem> a(@NotNull Menu menu) {
        kotlin.jvm.internal.t.j(menu, "<this>");
        return new MenuKt$iterator$1(menu);
    }
}
