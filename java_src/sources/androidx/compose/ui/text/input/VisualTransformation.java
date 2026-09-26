package androidx.compose.ui.text.input;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public interface VisualTransformation {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        private static final VisualTransformation None = new VisualTransformation() { // from class: androidx.compose.ui.text.input.a
            @Override // androidx.compose.ui.text.input.VisualTransformation
            public final TransformedText a(AnnotatedString annotatedString) {
                return VisualTransformation.Companion.b(annotatedString);
            }
        };

        @NotNull
        public final VisualTransformation c() {
            return None;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final TransformedText b(AnnotatedString text) {
            t.j(text, "text");
            return new TransformedText(text, OffsetMapping.Companion.a());
        }

        private Companion() {
        }
    }

    @NotNull
    TransformedText a(@NotNull AnnotatedString annotatedString);
}
