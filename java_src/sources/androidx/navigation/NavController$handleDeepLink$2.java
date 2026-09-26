package androidx.navigation;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.sequences.g;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class NavController$handleDeepLink$2 extends v implements l<NavOptionsBuilder, l0> {
    final /* synthetic */ NavDestination $node;
    final /* synthetic */ NavController this$0;

    /* JADX INFO: renamed from: androidx.navigation.NavController$handleDeepLink$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<AnimBuilder, l0> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        public final void a(@NotNull AnimBuilder anim) {
            t.j(anim, "$this$anim");
            anim.e(0);
            anim.f(0);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(AnimBuilder animBuilder) {
            a(animBuilder);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavController$handleDeepLink$2$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<PopUpToBuilder, l0> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        AnonymousClass2() {
            super(1);
        }

        public final void a(@NotNull PopUpToBuilder popUpTo) {
            t.j(popUpTo, "$this$popUpTo");
            popUpTo.c(true);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(PopUpToBuilder popUpToBuilder) {
            a(popUpToBuilder);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NavController$handleDeepLink$2(NavDestination navDestination, NavController navController) {
        super(1);
        this.$node = navDestination;
        this.this$0 = navController;
    }

    public final void a(@NotNull NavOptionsBuilder navOptions) {
        t.j(navOptions, "$this$navOptions");
        navOptions.a(AnonymousClass1.INSTANCE);
        NavDestination navDestination = this.$node;
        if (navDestination instanceof NavGraph) {
            g<NavDestination> gVarC = NavDestination.Companion.c(navDestination);
            NavController navController = this.this$0;
            for (NavDestination navDestination2 : gVarC) {
                NavDestination navDestinationA = navController.A();
                if (t.e(navDestination2, navDestinationA != null ? navDestinationA.s() : null)) {
                    return;
                }
            }
            if (NavController.deepLinkSaveState) {
                navOptions.c(NavGraph.Companion.a(this.this$0.C()).p(), AnonymousClass2.INSTANCE);
            }
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(NavOptionsBuilder navOptionsBuilder) {
        a(navOptionsBuilder);
        return l0.INSTANCE;
    }
}
