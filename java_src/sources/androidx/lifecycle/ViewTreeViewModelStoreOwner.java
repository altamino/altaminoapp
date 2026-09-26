package androidx.lifecycle;

import android.view.View;
import androidx.lifecycle.viewmodel.R;
import kotlin.jvm.internal.t;
import kotlin.sequences.m;
import kotlin.sequences.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class ViewTreeViewModelStoreOwner {
    @Nullable
    public static final ViewModelStoreOwner a(@NotNull View view) {
        t.j(view, "<this>");
        return (ViewModelStoreOwner) o.o(o.v(m.f(view, ViewTreeViewModelStoreOwner$findViewTreeViewModelStoreOwner$1.INSTANCE), ViewTreeViewModelStoreOwner$findViewTreeViewModelStoreOwner$2.INSTANCE));
    }

    public static final void b(@NotNull View view, @Nullable ViewModelStoreOwner viewModelStoreOwner) {
        t.j(view, "<this>");
        view.setTag(R.id.view_tree_view_model_store_owner, viewModelStoreOwner);
    }
}
