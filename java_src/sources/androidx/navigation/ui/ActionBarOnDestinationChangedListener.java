package androidx.navigation.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.annotation.StringRes;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class ActionBarOnDestinationChangedListener extends AbstractAppBarOnDestinationChangedListener {

    @NotNull
    private final AppCompatActivity activity;

    /* JADX WARN: Illegal instructions before constructor call */
    public ActionBarOnDestinationChangedListener(@NotNull AppCompatActivity activity, @NotNull AppBarConfiguration configuration) {
        t.j(activity, "activity");
        t.j(configuration, "configuration");
        ActionBarDrawerToggle.Delegate drawerToggleDelegate = activity.getDrawerToggleDelegate();
        if (drawerToggleDelegate != null) {
            Context contextC = drawerToggleDelegate.c();
            t.i(contextC, "checkNotNull(activity.dr… }.actionBarThemedContext");
            super(contextC, configuration);
            this.activity = activity;
            return;
        }
        throw new IllegalStateException(("Activity " + activity + " does not have an DrawerToggleDelegate set").toString());
    }

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener
    protected void c(@Nullable Drawable drawable, @StringRes int i10) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar == null) {
            throw new IllegalStateException(("Activity " + this.activity + " does not have an ActionBar set via setSupportActionBar()").toString());
        }
        t.i(supportActionBar, "checkNotNull(activity.su…ortActionBar()\"\n        }");
        supportActionBar.t(drawable != null);
        ActionBarDrawerToggle.Delegate drawerToggleDelegate = this.activity.getDrawerToggleDelegate();
        if (drawerToggleDelegate != null) {
            t.i(drawerToggleDelegate, "checkNotNull(activity.dr…leDelegate set\"\n        }");
            drawerToggleDelegate.d(drawable, i10);
        } else {
            throw new IllegalStateException(("Activity " + this.activity + " does not have an DrawerToggleDelegate set").toString());
        }
    }

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener
    protected void d(@Nullable CharSequence charSequence) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar != null) {
            t.i(supportActionBar, "checkNotNull(activity.su…ortActionBar()\"\n        }");
            supportActionBar.x(charSequence);
        } else {
            throw new IllegalStateException(("Activity " + this.activity + " does not have an ActionBar set via setSupportActionBar()").toString());
        }
    }
}
