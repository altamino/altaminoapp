package androidx.navigation.ui;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import androidx.annotation.StringRes;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.customview.widget.Openable;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import java.lang.ref.WeakReference;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.t;
import kotlinx.serialization.json.internal.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.u;

/* JADX INFO: loaded from: classes10.dex */
public abstract class AbstractAppBarOnDestinationChangedListener implements NavController.OnDestinationChangedListener {

    @Nullable
    private ValueAnimator animator;

    @Nullable
    private DrawerArrowDrawable arrowDrawable;

    @NotNull
    private final Context context;

    @Nullable
    private final WeakReference<Openable> openableLayoutWeakReference;

    @NotNull
    private final Set<Integer> topLevelDestinations;

    protected abstract void c(@Nullable Drawable drawable, @StringRes int i10);

    protected abstract void d(@Nullable CharSequence charSequence);

    public AbstractAppBarOnDestinationChangedListener(@NotNull Context context, @NotNull AppBarConfiguration configuration) {
        t.j(context, "context");
        t.j(configuration, "configuration");
        this.context = context;
        this.topLevelDestinations = configuration.b();
        Openable openableA = configuration.a();
        this.openableLayoutWeakReference = openableA != null ? new WeakReference<>(openableA) : null;
    }

    @SuppressLint({"ObjectAnimatorBinding"})
    private final void b(boolean z6) {
        u uVarA;
        DrawerArrowDrawable drawerArrowDrawable = this.arrowDrawable;
        if (drawerArrowDrawable == null || (uVarA = a0.a(drawerArrowDrawable, Boolean.TRUE)) == null) {
            DrawerArrowDrawable drawerArrowDrawable2 = new DrawerArrowDrawable(this.context);
            this.arrowDrawable = drawerArrowDrawable2;
            uVarA = a0.a(drawerArrowDrawable2, Boolean.FALSE);
        }
        DrawerArrowDrawable drawerArrowDrawable3 = (DrawerArrowDrawable) uVarA.a();
        boolean zBooleanValue = ((Boolean) uVarA.b()).booleanValue();
        c(drawerArrowDrawable3, z6 ? R.string.nav_app_bar_open_drawer_description : R.string.nav_app_bar_navigate_up_description);
        float f = z6 ? 0.0f : 1.0f;
        if (!zBooleanValue) {
            drawerArrowDrawable3.setProgress(f);
            return;
        }
        float fA = drawerArrowDrawable3.a();
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(drawerArrowDrawable3, "progress", fA, f);
        this.animator = objectAnimatorOfFloat;
        if (objectAnimatorOfFloat == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.animation.ObjectAnimator");
        }
        objectAnimatorOfFloat.start();
    }

    @Override // androidx.navigation.NavController.OnDestinationChangedListener
    public void a(@NotNull NavController controller, @NotNull NavDestination destination, @Nullable Bundle bundle) {
        t.j(controller, "controller");
        t.j(destination, "destination");
        if (destination instanceof FloatingWindow) {
            return;
        }
        WeakReference<Openable> weakReference = this.openableLayoutWeakReference;
        Openable openable = weakReference != null ? weakReference.get() : null;
        if (this.openableLayoutWeakReference != null && openable == null) {
            controller.X(this);
            return;
        }
        CharSequence charSequenceQ = destination.q();
        if (charSequenceQ != null) {
            StringBuffer stringBuffer = new StringBuffer();
            Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(charSequenceQ);
            while (matcher.find()) {
                String strGroup = matcher.group(1);
                if (bundle == null || !bundle.containsKey(strGroup)) {
                    throw new IllegalArgumentException("Could not find \"" + strGroup + "\" in " + bundle + " to fill label \"" + ((Object) charSequenceQ) + b.STRING);
                }
                matcher.appendReplacement(stringBuffer, "");
                stringBuffer.append(String.valueOf(bundle.get(strGroup)));
            }
            matcher.appendTail(stringBuffer);
            d(stringBuffer);
        }
        boolean zB = NavigationUI.b(destination, this.topLevelDestinations);
        if (openable == null && zB) {
            c(null, 0);
        } else {
            b(openable != null && zB);
        }
    }
}
