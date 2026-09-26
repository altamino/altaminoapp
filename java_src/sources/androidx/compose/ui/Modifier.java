package androidx.compose.ui;

import androidx.compose.runtime.Stable;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@Stable
public interface Modifier {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class DefaultImpls {
    }

    public interface Element extends Modifier {

        public static final class DefaultImpls {
        }
    }

    @NotNull
    Modifier B(@NotNull Modifier modifier);

    <R> R V(R r, @NotNull p<? super Element, ? super R, ? extends R> pVar);

    <R> R a0(R r, @NotNull p<? super R, ? super Element, ? extends R> pVar);

    boolean d0(@NotNull l<? super Element, Boolean> lVar);

    public static final class Companion implements Modifier {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @Override // androidx.compose.ui.Modifier
        @NotNull
        public Modifier B(@NotNull Modifier other) {
            t.j(other, "other");
            return other;
        }

        @Override // androidx.compose.ui.Modifier
        public <R> R V(R r, @NotNull p<? super Element, ? super R, ? extends R> operation) {
            t.j(operation, "operation");
            return r;
        }

        @Override // androidx.compose.ui.Modifier
        public <R> R a0(R r, @NotNull p<? super R, ? super Element, ? extends R> operation) {
            t.j(operation, "operation");
            return r;
        }

        @Override // androidx.compose.ui.Modifier
        public boolean d0(@NotNull l<? super Element, Boolean> predicate) {
            t.j(predicate, "predicate");
            return true;
        }

        @NotNull
        public String toString() {
            return "Modifier";
        }

        private Companion() {
        }
    }
}
