package androidx.navigation;

import android.view.View;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.t;
import kotlin.sequences.m;
import kotlin.sequences.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class Navigation {

    @NotNull
    public static final Navigation INSTANCE = new Navigation();

    private final NavController c(View view) {
        return (NavController) o.o(o.v(m.f(view, Navigation$findViewNavController$1.INSTANCE), Navigation$findViewNavController$2.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NavController d(View view) {
        Object tag = view.getTag(R.id.nav_controller_view_tag);
        if (tag instanceof WeakReference) {
            return (NavController) ((WeakReference) tag).get();
        }
        if (tag instanceof NavController) {
            return (NavController) tag;
        }
        return null;
    }

    private Navigation() {
    }

    @NotNull
    public static final NavController b(@NotNull View view) {
        t.j(view, "view");
        NavController navControllerC = INSTANCE.c(view);
        if (navControllerC != null) {
            return navControllerC;
        }
        throw new IllegalStateException("View " + view + " does not have a NavController set");
    }

    public static final void e(@NotNull View view, @Nullable NavController navController) {
        t.j(view, "view");
        view.setTag(R.id.nav_controller_view_tag, navController);
    }
}
