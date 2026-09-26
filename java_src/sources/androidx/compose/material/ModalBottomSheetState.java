package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.runtime.internal.StabilityInferred;
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

/* JADX INFO: loaded from: classes4.dex */
@StabilityInferred
@ExperimentalMaterialApi
public final class ModalBottomSheetState extends SwipeableState<ModalBottomSheetValue> {
    public static final int $stable = 0;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private final boolean isSkipHalfExpanded;

    @NotNull
    private final NestedScrollConnection nestedScrollConnection;

    /* JADX INFO: renamed from: androidx.compose.material.ModalBottomSheetState$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<ModalBottomSheetValue, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@NotNull ModalBottomSheetValue it) {
            t.j(it, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material.ModalBottomSheetState$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<ModalBottomSheetValue, Boolean> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        AnonymousClass2() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@NotNull ModalBottomSheetValue it) {
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
        public final Saver<ModalBottomSheetState, ?> a(@NotNull AnimationSpec<Float> animationSpec, boolean z6, @NotNull l<? super ModalBottomSheetValue, Boolean> confirmStateChange) {
            t.j(animationSpec, "animationSpec");
            t.j(confirmStateChange, "confirmStateChange");
            return SaverKt.a(ModalBottomSheetState$Companion$Saver$1.INSTANCE, new ModalBottomSheetState$Companion$Saver$2(animationSpec, z6, confirmStateChange));
        }
    }

    public /* synthetic */ ModalBottomSheetState(ModalBottomSheetValue modalBottomSheetValue, AnimationSpec animationSpec, boolean z6, l lVar, int i10, k kVar) {
        this(modalBottomSheetValue, (i10 & 2) != 0 ? SwipeableDefaults.INSTANCE.a() : animationSpec, z6, (i10 & 8) != 0 ? AnonymousClass1.INSTANCE : lVar);
    }

    @NotNull
    public final NestedScrollConnection L() {
        return this.nestedScrollConnection;
    }

    public final boolean O() {
        return this.isSkipHalfExpanded;
    }

    @Nullable
    public final Object J(@NotNull d<? super l0> dVar) {
        Object objK = SwipeableState.k(this, ModalBottomSheetValue.Expanded, null, dVar, 2, null);
        return objK == kotlin.coroutines.intrinsics.d.e() ? objK : l0.INSTANCE;
    }

    @Nullable
    public final Object N(@NotNull d<? super l0> dVar) {
        Object objK = SwipeableState.k(this, ModalBottomSheetValue.Hidden, null, dVar, 2, null);
        return objK == kotlin.coroutines.intrinsics.d.e() ? objK : l0.INSTANCE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModalBottomSheetState(@NotNull ModalBottomSheetValue initialValue, @NotNull AnimationSpec<Float> animationSpec, boolean z6, @NotNull l<? super ModalBottomSheetValue, Boolean> confirmStateChange) {
        super(initialValue, animationSpec, confirmStateChange);
        t.j(initialValue, "initialValue");
        t.j(animationSpec, "animationSpec");
        t.j(confirmStateChange, "confirmStateChange");
        this.isSkipHalfExpanded = z6;
        if (z6 && initialValue == ModalBottomSheetValue.HalfExpanded) {
            throw new IllegalArgumentException("The initial value must not be set to HalfExpanded if skipHalfExpanded is set to true.".toString());
        }
        this.nestedScrollConnection = SwipeableKt.f(this);
    }

    public final boolean K() {
        return m().values().contains(ModalBottomSheetValue.HalfExpanded);
    }

    @Nullable
    public final Object M(@NotNull d<? super l0> dVar) {
        if (!K()) {
            return l0.INSTANCE;
        }
        Object objK = SwipeableState.k(this, ModalBottomSheetValue.HalfExpanded, null, dVar, 2, null);
        if (objK == kotlin.coroutines.intrinsics.d.e()) {
            return objK;
        }
        return l0.INSTANCE;
    }

    public final boolean P() {
        if (p() != ModalBottomSheetValue.Hidden) {
            return true;
        }
        return false;
    }

    public /* synthetic */ ModalBottomSheetState(ModalBottomSheetValue modalBottomSheetValue, AnimationSpec animationSpec, l lVar, int i10, k kVar) {
        this(modalBottomSheetValue, (i10 & 2) != 0 ? SwipeableDefaults.INSTANCE.a() : animationSpec, (i10 & 4) != 0 ? AnonymousClass2.INSTANCE : lVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ModalBottomSheetState(@NotNull ModalBottomSheetValue initialValue, @NotNull AnimationSpec<Float> animationSpec, @NotNull l<? super ModalBottomSheetValue, Boolean> confirmStateChange) {
        this(initialValue, animationSpec, false, confirmStateChange);
        t.j(initialValue, "initialValue");
        t.j(animationSpec, "animationSpec");
        t.j(confirmStateChange, "confirmStateChange");
    }
}
