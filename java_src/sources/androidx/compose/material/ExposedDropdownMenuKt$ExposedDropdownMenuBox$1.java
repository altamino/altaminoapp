package androidx.compose.material;

import android.view.View;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.Ref;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ExposedDropdownMenuKt$ExposedDropdownMenuBox$1 extends v implements l<LayoutCoordinates, l0> {
    final /* synthetic */ Ref<LayoutCoordinates> $coordinates;
    final /* synthetic */ MutableState<Integer> $menuHeight$delegate;
    final /* synthetic */ int $verticalMarginInPx;
    final /* synthetic */ View $view;
    final /* synthetic */ MutableState<Integer> $width$delegate;

    /* JADX INFO: renamed from: androidx.compose.material.ExposedDropdownMenuKt$ExposedDropdownMenuBox$1$1, reason: invalid class name */
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
    ExposedDropdownMenuKt$ExposedDropdownMenuBox$1(Ref<LayoutCoordinates> ref, View view, int i10, MutableState<Integer> mutableState, MutableState<Integer> mutableState2) {
        super(1);
        this.$coordinates = ref;
        this.$view = view;
        this.$verticalMarginInPx = i10;
        this.$width$delegate = mutableState;
        this.$menuHeight$delegate = mutableState2;
    }

    public final void a(@NotNull LayoutCoordinates it) {
        t.j(it, "it");
        ExposedDropdownMenuKt.c(this.$width$delegate, IntSize.g(it.a()));
        this.$coordinates.b(it);
        View rootView = this.$view.getRootView();
        t.i(rootView, "view.rootView");
        ExposedDropdownMenuKt.l(rootView, this.$coordinates.a(), this.$verticalMarginInPx, new AnonymousClass1(this.$menuHeight$delegate));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutCoordinates layoutCoordinates) {
        a(layoutCoordinates);
        return l0.INSTANCE;
    }
}
