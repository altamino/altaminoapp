package androidx.compose.ui.text.font;

import androidx.compose.runtime.State;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface TypefaceResult extends State<Object> {

    public static final class Async implements TypefaceResult, State<Object> {

        @NotNull
        private final AsyncFontListLoader current;

        @Override // androidx.compose.runtime.State
        @NotNull
        public Object getValue() {
            return this.current.getValue();
        }

        public Async(@NotNull AsyncFontListLoader current) {
            t.j(current, "current");
            this.current = current;
        }

        @Override // androidx.compose.ui.text.font.TypefaceResult
        public boolean c() {
            return this.current.b();
        }
    }

    public static final class Immutable implements TypefaceResult {
        private final boolean cacheable;

        @NotNull
        private final Object value;

        public Immutable(@NotNull Object value, boolean z6) {
            t.j(value, "value");
            this.value = value;
            this.cacheable = z6;
        }

        @Override // androidx.compose.ui.text.font.TypefaceResult
        public boolean c() {
            return this.cacheable;
        }

        @Override // androidx.compose.runtime.State
        @NotNull
        public Object getValue() {
            return this.value;
        }

        public /* synthetic */ Immutable(Object obj, boolean z6, int i10, k kVar) {
            this(obj, (i10 & 2) != 0 ? true : z6);
        }
    }

    boolean c();
}
