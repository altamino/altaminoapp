package androidx.activity;

import android.view.View;
import kotlin.jvm.internal.t;
import kotlin.sequences.m;
import kotlin.sequences.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class ViewTreeOnBackPressedDispatcherOwner {
    @Nullable
    public static final OnBackPressedDispatcherOwner a(@NotNull View view) {
        t.j(view, "<this>");
        return (OnBackPressedDispatcherOwner) o.o(o.v(m.f(view, ViewTreeOnBackPressedDispatcherOwner$findViewTreeOnBackPressedDispatcherOwner$1.INSTANCE), ViewTreeOnBackPressedDispatcherOwner$findViewTreeOnBackPressedDispatcherOwner$2.INSTANCE));
    }

    public static final void b(@NotNull View view, @NotNull OnBackPressedDispatcherOwner onBackPressedDispatcherOwner) {
        t.j(view, "<this>");
        t.j(onBackPressedDispatcherOwner, "onBackPressedDispatcherOwner");
        view.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, onBackPressedDispatcherOwner);
    }
}
