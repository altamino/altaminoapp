package androidx.window.layout;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public interface FoldingFeature extends DisplayFeature {
    boolean a();

    @NotNull
    Orientation getOrientation();

    public static final class OcclusionType {

        @NotNull
        private final String description;

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        public static final OcclusionType NONE = new OcclusionType("NONE");

        @NotNull
        public static final OcclusionType FULL = new OcclusionType("FULL");

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        @NotNull
        public String toString() {
            return this.description;
        }

        private OcclusionType(String str) {
            this.description = str;
        }
    }

    public static final class Orientation {

        @NotNull
        private final String description;

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        public static final Orientation VERTICAL = new Orientation("VERTICAL");

        @NotNull
        public static final Orientation HORIZONTAL = new Orientation("HORIZONTAL");

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        @NotNull
        public String toString() {
            return this.description;
        }

        private Orientation(String str) {
            this.description = str;
        }
    }

    public static final class State {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        public static final State FLAT = new State("FLAT");

        @NotNull
        public static final State HALF_OPENED = new State("HALF_OPENED");

        @NotNull
        private final String description;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        @NotNull
        public String toString() {
            return this.description;
        }

        private State(String str) {
            this.description = str;
        }
    }
}
