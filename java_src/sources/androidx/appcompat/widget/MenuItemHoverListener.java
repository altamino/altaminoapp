package androidx.appcompat.widget;

import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public interface MenuItemHoverListener {
    void a(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem);

    void h(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem);
}
