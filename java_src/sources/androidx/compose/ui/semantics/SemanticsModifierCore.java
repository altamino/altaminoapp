package androidx.compose.ui.semantics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
import e8.l;
import e8.p;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsModifierCore implements SemanticsModifier {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static AtomicInteger lastIdentifier = new AtomicInteger(0);
    private final int id;

    @NotNull
    private final SemanticsConfiguration semanticsConfiguration;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return SemanticsModifierCore.lastIdentifier.addAndGet(1);
        }
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return a.a(this, modifier);
    }

    @Override // androidx.compose.ui.semantics.SemanticsModifier
    @NotNull
    public SemanticsConfiguration Q0() {
        return this.semanticsConfiguration;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SemanticsModifierCore)) {
            return false;
        }
        SemanticsModifierCore semanticsModifierCore = (SemanticsModifierCore) obj;
        return getId() == semanticsModifierCore.getId() && t.e(Q0(), semanticsModifierCore.Q0());
    }

    @Override // androidx.compose.ui.semantics.SemanticsModifier
    public int getId() {
        return this.id;
    }

    public SemanticsModifierCore(int i10, boolean z6, boolean z10, @NotNull l<? super SemanticsPropertyReceiver, l0> properties) {
        t.j(properties, "properties");
        this.id = i10;
        SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
        semanticsConfiguration.s(z6);
        semanticsConfiguration.r(z10);
        properties.invoke(semanticsConfiguration);
        this.semanticsConfiguration = semanticsConfiguration;
    }

    public int hashCode() {
        return (Q0().hashCode() * 31) + getId();
    }
}
