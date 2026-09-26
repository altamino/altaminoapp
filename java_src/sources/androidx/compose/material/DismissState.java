package androidx.compose.material;

import androidx.compose.runtime.internal.StabilityInferred;
import e8.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
@ExperimentalMaterialApi
public final class DismissState extends SwipeableState<DismissValue> {
    public static final int $stable = 0;

    @NotNull
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: androidx.compose.material.DismissState$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<DismissValue, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@NotNull DismissValue it) {
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
    }

    public /* synthetic */ DismissState(DismissValue dismissValue, l lVar, int i10, k kVar) {
        this(dismissValue, (i10 & 2) != 0 ? AnonymousClass1.INSTANCE : lVar);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DismissState(@NotNull DismissValue initialValue, @NotNull l<? super DismissValue, Boolean> confirmStateChange) {
        super(initialValue, null, confirmStateChange, 2, null);
        t.j(initialValue, "initialValue");
        t.j(confirmStateChange, "confirmStateChange");
    }
}
