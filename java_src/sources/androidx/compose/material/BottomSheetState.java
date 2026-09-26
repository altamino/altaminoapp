package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import e8.l;
import kotlin.coroutines.d;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
@Stable
@ExperimentalMaterialApi
public final class BottomSheetState extends SwipeableState<BottomSheetValue> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final NestedScrollConnection nestedScrollConnection;

    /* JADX INFO: renamed from: androidx.compose.material.BottomSheetState$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<BottomSheetValue, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@NotNull BottomSheetValue it) {
            t.j(it, "it");
            return Boolean.TRUE;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Saver<BottomSheetState, ?> a(@NotNull AnimationSpec<Float> animationSpec, @NotNull l<? super BottomSheetValue, Boolean> confirmStateChange) {
            t.j(animationSpec, "animationSpec");
            t.j(confirmStateChange, "confirmStateChange");
            return SaverKt.a(BottomSheetState$Companion$Saver$1.INSTANCE, new BottomSheetState$Companion$Saver$2(animationSpec, confirmStateChange));
        }
    }

    public /* synthetic */ BottomSheetState(BottomSheetValue bottomSheetValue, AnimationSpec animationSpec, l lVar, int i10, k kVar) {
        this(bottomSheetValue, (i10 & 2) != 0 ? SwipeableDefaults.INSTANCE.a() : animationSpec, (i10 & 4) != 0 ? AnonymousClass1.INSTANCE : lVar);
    }

    @NotNull
    public final NestedScrollConnection M() {
        return this.nestedScrollConnection;
    }

    @Nullable
    public final Object J(@NotNull d<? super l0> dVar) {
        Object objK = SwipeableState.k(this, BottomSheetValue.Collapsed, null, dVar, 2, null);
        return objK == kotlin.coroutines.intrinsics.d.e() ? objK : l0.INSTANCE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomSheetState(@NotNull BottomSheetValue initialValue, @NotNull AnimationSpec<Float> animationSpec, @NotNull l<? super BottomSheetValue, Boolean> confirmStateChange) {
        super(initialValue, animationSpec, confirmStateChange);
        t.j(initialValue, "initialValue");
        t.j(animationSpec, "animationSpec");
        t.j(confirmStateChange, "confirmStateChange");
        this.nestedScrollConnection = SwipeableKt.f(this);
    }

    @Nullable
    public final Object K(@NotNull d<? super l0> dVar) {
        BottomSheetValue bottomSheetValue;
        if (L()) {
            bottomSheetValue = BottomSheetValue.Expanded;
        } else {
            bottomSheetValue = BottomSheetValue.Collapsed;
        }
        Object objK = SwipeableState.k(this, bottomSheetValue, null, dVar, 2, null);
        if (objK == kotlin.coroutines.intrinsics.d.e()) {
            return objK;
        }
        return l0.INSTANCE;
    }

    public final boolean L() {
        return m().containsValue(BottomSheetValue.Expanded);
    }

    public final boolean N() {
        if (p() == BottomSheetValue.Collapsed) {
            return true;
        }
        return false;
    }
}
