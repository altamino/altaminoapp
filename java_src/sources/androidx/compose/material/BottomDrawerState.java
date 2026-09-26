package androidx.compose.material;

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
public final class BottomDrawerState extends SwipeableState<BottomDrawerValue> {
    public static final int $stable = 0;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final NestedScrollConnection nestedScrollConnection;

    /* JADX INFO: renamed from: androidx.compose.material.BottomDrawerState$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<BottomDrawerValue, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@NotNull BottomDrawerValue it) {
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
        public final Saver<BottomDrawerState, BottomDrawerValue> a(@NotNull l<? super BottomDrawerValue, Boolean> confirmStateChange) {
            t.j(confirmStateChange, "confirmStateChange");
            return SaverKt.a(BottomDrawerState$Companion$Saver$1.INSTANCE, new BottomDrawerState$Companion$Saver$2(confirmStateChange));
        }
    }

    public /* synthetic */ BottomDrawerState(BottomDrawerValue bottomDrawerValue, l lVar, int i10, k kVar) {
        this(bottomDrawerValue, (i10 & 2) != 0 ? AnonymousClass1.INSTANCE : lVar);
    }

    @NotNull
    public final NestedScrollConnection K() {
        return this.nestedScrollConnection;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomDrawerState(@NotNull BottomDrawerValue initialValue, @NotNull l<? super BottomDrawerValue, Boolean> confirmStateChange) {
        super(initialValue, DrawerKt.AnimationSpec, confirmStateChange);
        t.j(initialValue, "initialValue");
        t.j(confirmStateChange, "confirmStateChange");
        this.nestedScrollConnection = SwipeableKt.f(this);
    }

    @Nullable
    public final Object J(@NotNull d<? super l0> dVar) {
        Object objK = SwipeableState.k(this, BottomDrawerValue.Closed, null, dVar, 2, null);
        return objK == kotlin.coroutines.intrinsics.d.e() ? objK : l0.INSTANCE;
    }

    public final boolean L() {
        if (p() != BottomDrawerValue.Closed) {
            return true;
        }
        return false;
    }
}
