package androidx.navigation.ui;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import com.google.android.material.navigation.NavigationBarView;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class NavigationUI$setupWithNavController$12 implements NavController.OnDestinationChangedListener {
    final /* synthetic */ NavController $navController;
    final /* synthetic */ WeakReference<NavigationBarView> $weakReference;

    @Override // androidx.navigation.NavController.OnDestinationChangedListener
    public void a(@NotNull NavController controller, @NotNull NavDestination destination, @Nullable Bundle bundle) {
        t.j(controller, "controller");
        t.j(destination, "destination");
        NavigationBarView navigationBarView = this.$weakReference.get();
        if (navigationBarView == null) {
            this.$navController.X(this);
            return;
        }
        Menu menu = navigationBarView.getMenu();
        t.i(menu, "view.menu");
        int size = menu.size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = menu.getItem(i10);
            t.f(item, "getItem(index)");
            if (NavigationUI.a(destination, item.getItemId())) {
                item.setChecked(true);
            }
        }
    }
}
