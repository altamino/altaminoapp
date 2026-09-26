package androidx.compose.ui.platform;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.Modifier;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public final class InspectableModifier extends InspectorValueInfo implements Modifier.Element {
    public static final int $stable = 0;

    @NotNull
    private final End end;

    public final class End implements Modifier.Element {
        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Modifier B(Modifier modifier) {
            return androidx.compose.ui.a.a(this, modifier);
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Object V(Object obj, e8.p pVar) {
            return androidx.compose.ui.b.c(this, obj, pVar);
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Object a0(Object obj, e8.p pVar) {
            return androidx.compose.ui.b.b(this, obj, pVar);
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ boolean d0(e8.l lVar) {
            return androidx.compose.ui.b.a(this, lVar);
        }

        public End() {
        }
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @NotNull
    public final End a() {
        return this.end;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(e8.l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InspectableModifier(@NotNull e8.l<? super InspectorInfo, w7.l0> inspectorInfo) {
        super(inspectorInfo);
        kotlin.jvm.internal.t.j(inspectorInfo, "inspectorInfo");
        this.end = new End();
    }
}
