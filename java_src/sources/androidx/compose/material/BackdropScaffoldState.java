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
public final class BackdropScaffoldState extends SwipeableState<BackdropValue> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final NestedScrollConnection nestedScrollConnection;

    @NotNull
    private final SnackbarHostState snackbarHostState;

    /* JADX INFO: renamed from: androidx.compose.material.BackdropScaffoldState$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<BackdropValue, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@NotNull BackdropValue it) {
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
        public final Saver<BackdropScaffoldState, ?> a(@NotNull AnimationSpec<Float> animationSpec, @NotNull l<? super BackdropValue, Boolean> confirmStateChange, @NotNull SnackbarHostState snackbarHostState) {
            t.j(animationSpec, "animationSpec");
            t.j(confirmStateChange, "confirmStateChange");
            t.j(snackbarHostState, "snackbarHostState");
            return SaverKt.a(BackdropScaffoldState$Companion$Saver$1.INSTANCE, new BackdropScaffoldState$Companion$Saver$2(animationSpec, confirmStateChange, snackbarHostState));
        }
    }

    public /* synthetic */ BackdropScaffoldState(BackdropValue backdropValue, AnimationSpec animationSpec, l lVar, SnackbarHostState snackbarHostState, int i10, k kVar) {
        this(backdropValue, (i10 & 2) != 0 ? SwipeableDefaults.INSTANCE.a() : animationSpec, (i10 & 4) != 0 ? AnonymousClass1.INSTANCE : lVar, (i10 & 8) != 0 ? new SnackbarHostState() : snackbarHostState);
    }

    @NotNull
    public final NestedScrollConnection K() {
        return this.nestedScrollConnection;
    }

    @NotNull
    public final SnackbarHostState L() {
        return this.snackbarHostState;
    }

    @Nullable
    public final Object J(@NotNull d<? super l0> dVar) {
        Object objK = SwipeableState.k(this, BackdropValue.Concealed, null, dVar, 2, null);
        return objK == kotlin.coroutines.intrinsics.d.e() ? objK : l0.INSTANCE;
    }

    @Nullable
    public final Object O(@NotNull d<? super l0> dVar) {
        Object objK = SwipeableState.k(this, BackdropValue.Revealed, null, dVar, 2, null);
        return objK == kotlin.coroutines.intrinsics.d.e() ? objK : l0.INSTANCE;
    }

    public final boolean M() {
        if (p() == BackdropValue.Concealed) {
            return true;
        }
        return false;
    }

    public final boolean N() {
        if (p() == BackdropValue.Revealed) {
            return true;
        }
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackdropScaffoldState(@NotNull BackdropValue initialValue, @NotNull AnimationSpec<Float> animationSpec, @NotNull l<? super BackdropValue, Boolean> confirmStateChange, @NotNull SnackbarHostState snackbarHostState) {
        super(initialValue, animationSpec, confirmStateChange);
        t.j(initialValue, "initialValue");
        t.j(animationSpec, "animationSpec");
        t.j(confirmStateChange, "confirmStateChange");
        t.j(snackbarHostState, "snackbarHostState");
        this.snackbarHostState = snackbarHostState;
        this.nestedScrollConnection = SwipeableKt.f(this);
    }
}
