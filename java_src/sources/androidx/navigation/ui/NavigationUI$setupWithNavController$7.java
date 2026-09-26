package androidx.navigation.ui;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import com.google.android.material.navigation.NavigationView;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class NavigationUI$setupWithNavController$7 implements NavController.OnDestinationChangedListener {
    final /* synthetic */ NavController $navController;
    final /* synthetic */ WeakReference<NavigationView> $weakReference;

    @Override // androidx.navigation.NavController.OnDestinationChangedListener
    public void a(@NotNull NavController controller, @NotNull NavDestination destination, @Nullable Bundle bundle) {
        t.j(controller, "controller");
        t.j(destination, "destination");
        NavigationView navigationView = this.$weakReference.get();
        if (navigationView == null) {
            this.$navController.X(this);
            return;
        }
        Menu menu = navigationView.getMenu();
        t.i(menu, "view.menu");
        int size = menu.size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = menu.getItem(i10);
            t.f(item, "getItem(index)");
            item.setChecked(NavigationUI.a(destination, item.getItemId()));
        }
    }
}
