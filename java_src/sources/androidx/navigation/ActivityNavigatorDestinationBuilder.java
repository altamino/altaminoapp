package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import androidx.annotation.IdRes;
import kotlin.jvm.internal.t;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@NavDestinationDsl
public final class ActivityNavigatorDestinationBuilder extends NavDestinationBuilder<ActivityNavigator.Destination> {

    @Nullable
    private String action;

    @Nullable
    private KClass<? extends Activity> activityClass;

    @NotNull
    private Context context;

    @Nullable
    private Uri data;

    @Nullable
    private String dataPattern;

    @Nullable
    private String targetPackage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityNavigatorDestinationBuilder(@NotNull ActivityNavigator navigator, @IdRes int i10) {
        super(navigator, i10);
        t.j(navigator, "navigator");
        this.context = navigator.m();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityNavigatorDestinationBuilder(@NotNull ActivityNavigator navigator, @NotNull String route) {
        super(navigator, route);
        t.j(navigator, "navigator");
        t.j(route, "route");
        this.context = navigator.m();
    }
}
