package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class NavDeepLinkBuilder {

    @NotNull
    private final Context context;

    @NotNull
    private final List<DeepLinkDestination> destinations;

    @Nullable
    private Bundle globalArgs;

    @Nullable
    private NavGraph graph;

    @NotNull
    private final Intent intent;

    private static final class PermissiveNavigatorProvider extends NavigatorProvider {

        @NotNull
        private final Navigator<NavDestination> mDestNavigator = new Navigator<NavDestination>() { // from class: androidx.navigation.NavDeepLinkBuilder$PermissiveNavigatorProvider$mDestNavigator$1
            @Override // androidx.navigation.Navigator
            @NotNull
            public NavDestination a() {
                return new NavDestination("permissive");
            }

            @Override // androidx.navigation.Navigator
            @Nullable
            public NavDestination d(@NotNull NavDestination destination, @Nullable Bundle bundle, @Nullable NavOptions navOptions, @Nullable Navigator.Extras extras) {
                t.j(destination, "destination");
                throw new IllegalStateException("navigate is not supported");
            }

            @Override // androidx.navigation.Navigator
            public boolean k() {
                throw new IllegalStateException("popBackStack is not supported");
            }
        };

        @Override // androidx.navigation.NavigatorProvider
        @NotNull
        public <T extends Navigator<? extends NavDestination>> T e(@NotNull String name) {
            t.j(name, "name");
            try {
                return (T) super.e(name);
            } catch (IllegalStateException unused) {
                return this.mDestNavigator;
            }
        }

        public PermissiveNavigatorProvider() {
            b(new NavGraphNavigator(this));
        }
    }

    public NavDeepLinkBuilder(@NotNull Context context) {
        Intent launchIntentForPackage;
        t.j(context, "context");
        this.context = context;
        if (context instanceof Activity) {
            launchIntentForPackage = new Intent(context, context.getClass());
        } else {
            launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            if (launchIntentForPackage == null) {
                launchIntentForPackage = new Intent();
            }
        }
        launchIntentForPackage.addFlags(268468224);
        this.intent = launchIntentForPackage;
        this.destinations = new ArrayList();
    }

    private static final class DeepLinkDestination {

        @Nullable
        private final Bundle arguments;
        private final int destinationId;

        public DeepLinkDestination(int i10, @Nullable Bundle bundle) {
            this.destinationId = i10;
            this.arguments = bundle;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDeepLinkBuilder(@NotNull NavController navController) {
        this(navController.y());
        t.j(navController, "navController");
        this.graph = navController.C();
    }
}
