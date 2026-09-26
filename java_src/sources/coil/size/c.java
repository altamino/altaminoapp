package coil.size;

import androidx.annotation.Px;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class c {

    public static final class a extends c {
        public final int px;

        public a(@Px int i10) {
            super(null);
            this.px = i10;
            if (i10 <= 0) {
                throw new IllegalArgumentException("px must be > 0.".toString());
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.px == ((a) obj).px;
        }

        public int hashCode() {
            return this.px;
        }

        @NotNull
        public String toString() {
            return String.valueOf(this.px);
        }
    }

    public static final class b extends c {

        @NotNull
        public static final b INSTANCE = new b();

        private b() {
            super(null);
        }

        @NotNull
        public String toString() {
            return "Dimension.Undefined";
        }
    }

    public /* synthetic */ c(kotlin.jvm.internal.k kVar) {
        this();
    }

    private c() {
    }
}
