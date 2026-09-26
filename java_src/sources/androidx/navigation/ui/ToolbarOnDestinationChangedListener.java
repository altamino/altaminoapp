package androidx.navigation.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import androidx.annotation.StringRes;
import androidx.appcompat.widget.Toolbar;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.transition.TransitionManager;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class ToolbarOnDestinationChangedListener extends AbstractAppBarOnDestinationChangedListener {

    @NotNull
    private final WeakReference<Toolbar> toolbarWeakReference;

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener, androidx.navigation.NavController.OnDestinationChangedListener
    public void a(@NotNull NavController controller, @NotNull NavDestination destination, @Nullable Bundle bundle) {
        t.j(controller, "controller");
        t.j(destination, "destination");
        if (this.toolbarWeakReference.get() == null) {
            controller.X(this);
        } else {
            super.a(controller, destination, bundle);
        }
    }

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener
    protected void c(@Nullable Drawable drawable, @StringRes int i10) {
        Toolbar toolbar = this.toolbarWeakReference.get();
        if (toolbar != null) {
            boolean z6 = drawable == null && toolbar.getNavigationIcon() != null;
            toolbar.setNavigationIcon(drawable);
            toolbar.setNavigationContentDescription(i10);
            if (z6) {
                TransitionManager.a(toolbar);
            }
        }
    }

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener
    protected void d(@Nullable CharSequence charSequence) {
        Toolbar toolbar = this.toolbarWeakReference.get();
        if (toolbar != null) {
            toolbar.setTitle(charSequence);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ToolbarOnDestinationChangedListener(@NotNull Toolbar toolbar, @NotNull AppBarConfiguration configuration) {
        t.j(toolbar, "toolbar");
        t.j(configuration, "configuration");
        Context context = toolbar.getContext();
        t.i(context, "toolbar.context");
        super(context, configuration);
        this.toolbarWeakReference = new WeakReference<>(toolbar);
    }
}
