package androidx.navigation;

import android.content.Context;
import androidx.activity.OnBackPressedDispatcher;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public class NavHostController extends NavController {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostController(@NotNull Context context) {
        super(context);
        t.j(context, "context");
    }

    @Override // androidx.navigation.NavController
    public final void f0(@NotNull OnBackPressedDispatcher dispatcher) {
        t.j(dispatcher, "dispatcher");
        super.f0(dispatcher);
    }

    @Override // androidx.navigation.NavController
    public final void e0(@NotNull LifecycleOwner owner) {
        t.j(owner, "owner");
        super.e0(owner);
    }

    @Override // androidx.navigation.NavController
    public final void g0(@NotNull ViewModelStore viewModelStore) {
        t.j(viewModelStore, "viewModelStore");
        super.g0(viewModelStore);
    }

    @Override // androidx.navigation.NavController
    public final void r(boolean z6) {
        super.r(z6);
    }
}
