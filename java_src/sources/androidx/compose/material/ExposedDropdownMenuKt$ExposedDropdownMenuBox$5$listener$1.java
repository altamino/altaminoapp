package androidx.compose.material;

import android.view.View;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.Ref;
import e8.a;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ExposedDropdownMenuKt$ExposedDropdownMenuBox$5$listener$1 extends v implements a<l0> {
    final /* synthetic */ Ref<LayoutCoordinates> $coordinates;
    final /* synthetic */ MutableState<Integer> $menuHeight$delegate;
    final /* synthetic */ int $verticalMarginInPx;
    final /* synthetic */ View $view;

    /* JADX INFO: renamed from: androidx.compose.material.ExposedDropdownMenuKt$ExposedDropdownMenuBox$5$listener$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<Integer, l0> {
        final /* synthetic */ MutableState<Integer> $menuHeight$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MutableState<Integer> mutableState) {
            super(1);
            this.$menuHeight$delegate = mutableState;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Integer num) {
            invoke(num.intValue());
            return l0.INSTANCE;
        }

        public final void invoke(int i10) {
            ExposedDropdownMenuKt.e(this.$menuHeight$delegate, i10);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExposedDropdownMenuKt$ExposedDropdownMenuBox$5$listener$1(View view, Ref<LayoutCoordinates> ref, int i10, MutableState<Integer> mutableState) {
        super(0);
        this.$view = view;
        this.$coordinates = ref;
        this.$verticalMarginInPx = i10;
        this.$menuHeight$delegate = mutableState;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        View rootView = this.$view.getRootView();
        t.i(rootView, "view.rootView");
        ExposedDropdownMenuKt.l(rootView, this.$coordinates.a(), this.$verticalMarginInPx, new AnonymousClass1(this.$menuHeight$delegate));
    }
}
