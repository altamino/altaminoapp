package androidx.activity;

import androidx.lifecycle.ViewModelStore;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class ActivityViewModelLazyKt$viewModels$1 extends v implements e8.a<ViewModelStore> {
    final /* synthetic */ ComponentActivity $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityViewModelLazyKt$viewModels$1(ComponentActivity componentActivity) {
        super(0);
        this.$this_viewModels = componentActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ViewModelStore invoke() {
        ViewModelStore viewModelStore = this.$this_viewModels.getViewModelStore();
        t.i(viewModelStore, "viewModelStore");
        return viewModelStore;
    }
}
