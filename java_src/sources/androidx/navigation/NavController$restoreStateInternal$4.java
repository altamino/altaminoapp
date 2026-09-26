package androidx.navigation;

import android.os.Bundle;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class NavController$restoreStateInternal$4 extends v implements l<NavBackStackEntry, l0> {
    final /* synthetic */ Bundle $args;
    final /* synthetic */ List<NavBackStackEntry> $entries;
    final /* synthetic */ n0 $lastNavigatedIndex;
    final /* synthetic */ k0 $navigated;
    final /* synthetic */ NavController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NavController$restoreStateInternal$4(k0 k0Var, List<NavBackStackEntry> list, n0 n0Var, NavController navController, Bundle bundle) {
        super(1);
        this.$navigated = k0Var;
        this.$entries = list;
        this.$lastNavigatedIndex = n0Var;
        this.this$0 = navController;
        this.$args = bundle;
    }

    public final void a(@NotNull NavBackStackEntry entry) {
        List<NavBackStackEntry> listM;
        t.j(entry, "entry");
        this.$navigated.element = true;
        int iIndexOf = this.$entries.indexOf(entry);
        if (iIndexOf != -1) {
            int i10 = iIndexOf + 1;
            listM = this.$entries.subList(this.$lastNavigatedIndex.element, i10);
            this.$lastNavigatedIndex.element = i10;
        } else {
            listM = kotlin.collections.v.m();
        }
        this.this$0.n(entry.f(), this.$args, entry, listM);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(NavBackStackEntry navBackStackEntry) {
        a(navBackStackEntry);
        return l0.INSTANCE;
    }
}
