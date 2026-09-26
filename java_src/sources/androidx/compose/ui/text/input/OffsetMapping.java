package androidx.compose.ui.text.input;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public interface OffsetMapping {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    int a(int i10);

    int b(int i10);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        private static final OffsetMapping Identity = new OffsetMapping() { // from class: androidx.compose.ui.text.input.OffsetMapping$Companion$Identity$1
            @Override // androidx.compose.ui.text.input.OffsetMapping
            public int a(int i10) {
                return i10;
            }

            @Override // androidx.compose.ui.text.input.OffsetMapping
            public int b(int i10) {
                return i10;
            }
        };

        @NotNull
        public final OffsetMapping a() {
            return Identity;
        }

        private Companion() {
        }
    }
}
