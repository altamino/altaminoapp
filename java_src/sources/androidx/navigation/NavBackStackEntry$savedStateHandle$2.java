package androidx.navigation;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class NavBackStackEntry$savedStateHandle$2 extends v implements e8.a<SavedStateHandle> {
    final /* synthetic */ NavBackStackEntry this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NavBackStackEntry$savedStateHandle$2(NavBackStackEntry navBackStackEntry) {
        super(0);
        this.this$0 = navBackStackEntry;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final SavedStateHandle invoke() {
        if (!this.this$0.savedStateRegistryAttached) {
            throw new IllegalStateException("You cannot access the NavBackStackEntry's SavedStateHandle until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).".toString());
        }
        if (this.this$0.lifecycle.b() != Lifecycle.State.DESTROYED) {
            return ((NavBackStackEntry.SavedStateViewModel) new ViewModelProvider(this.this$0, new NavBackStackEntry.NavResultSavedStateFactory(this.this$0)).a(NavBackStackEntry.SavedStateViewModel.class)).d();
        }
        throw new IllegalStateException("You cannot access the NavBackStackEntry's SavedStateHandle after the NavBackStackEntry is destroyed.".toString());
    }
}
