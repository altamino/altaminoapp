package androidx.compose.material;

import android.view.View;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.Ref;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class ExposedDropdownMenuKt$ExposedDropdownMenuBox$5 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ Ref<LayoutCoordinates> $coordinates;
    final /* synthetic */ MutableState<Integer> $menuHeight$delegate;
    final /* synthetic */ int $verticalMarginInPx;
    final /* synthetic */ View $view;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExposedDropdownMenuKt$ExposedDropdownMenuBox$5(View view, Ref<LayoutCoordinates> ref, int i10, MutableState<Integer> mutableState) {
        super(1);
        this.$view = view;
        this.$coordinates = ref;
        this.$verticalMarginInPx = i10;
        this.$menuHeight$delegate = mutableState;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        t.j(DisposableEffect, "$this$DisposableEffect");
        View view = this.$view;
        final OnGlobalLayoutListener onGlobalLayoutListener = new OnGlobalLayoutListener(view, new ExposedDropdownMenuKt$ExposedDropdownMenuBox$5$listener$1(view, this.$coordinates, this.$verticalMarginInPx, this.$menuHeight$delegate));
        return new DisposableEffectResult() { // from class: androidx.compose.material.ExposedDropdownMenuKt$ExposedDropdownMenuBox$5$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
                onGlobalLayoutListener.a();
            }
        };
    }
}
