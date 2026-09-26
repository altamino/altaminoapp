package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import e8.l;
import kotlin.coroutines.d;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
@Stable
public final class DrawerState {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final SwipeableState<DrawerValue> swipeableState;

    /* JADX INFO: renamed from: androidx.compose.material.DrawerState$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<DrawerValue, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@NotNull DrawerValue it) {
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
        public final Saver<DrawerState, DrawerValue> a(@NotNull l<? super DrawerValue, Boolean> confirmStateChange) {
            t.j(confirmStateChange, "confirmStateChange");
            return SaverKt.a(DrawerState$Companion$Saver$1.INSTANCE, new DrawerState$Companion$Saver$2(confirmStateChange));
        }
    }

    public DrawerState(@NotNull DrawerValue initialValue, @NotNull l<? super DrawerValue, Boolean> confirmStateChange) {
        t.j(initialValue, "initialValue");
        t.j(confirmStateChange, "confirmStateChange");
        this.swipeableState = new SwipeableState<>(initialValue, DrawerKt.AnimationSpec, confirmStateChange);
    }

    @NotNull
    public final SwipeableState<DrawerValue> e() {
        return this.swipeableState;
    }

    @ExperimentalMaterialApi
    @Nullable
    public final Object a(@NotNull DrawerValue drawerValue, @NotNull AnimationSpec<Float> animationSpec, @NotNull d<? super l0> dVar) {
        Object objJ = this.swipeableState.j(drawerValue, animationSpec, dVar);
        return objJ == kotlin.coroutines.intrinsics.d.e() ? objJ : l0.INSTANCE;
    }

    @Nullable
    public final Object b(@NotNull d<? super l0> dVar) {
        Object objA = a(DrawerValue.Closed, DrawerKt.AnimationSpec, dVar);
        return objA == kotlin.coroutines.intrinsics.d.e() ? objA : l0.INSTANCE;
    }

    @NotNull
    public final DrawerValue c() {
        return this.swipeableState.p();
    }

    @ExperimentalMaterialApi
    @NotNull
    public final State<Float> d() {
        return this.swipeableState.t();
    }

    public final boolean f() {
        if (c() == DrawerValue.Open) {
            return true;
        }
        return false;
    }

    public /* synthetic */ DrawerState(DrawerValue drawerValue, l lVar, int i10, k kVar) {
        this(drawerValue, (i10 & 2) != 0 ? AnonymousClass1.INSTANCE : lVar);
    }
}
