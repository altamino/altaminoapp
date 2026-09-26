package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
public final class FocusRequester {

    @NotNull
    private final MutableVector<FocusRequesterModifierLocal> focusRequesterModifierLocals = new MutableVector<>(new FocusRequesterModifierLocal[16], 0);

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = MutableVector.$stable;

    @NotNull
    private static final FocusRequester Default = new FocusRequester();

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        @StabilityInferred
        @ExperimentalComposeUiApi
        public static final class FocusRequesterFactory {
            public static final int $stable = 0;

            @NotNull
            public static final FocusRequesterFactory INSTANCE = new FocusRequesterFactory();

            private FocusRequesterFactory() {
            }
        }

        private Companion() {
        }

        @NotNull
        public final FocusRequester a() {
            return FocusRequester.Default;
        }
    }

    @NotNull
    public final MutableVector<FocusRequesterModifierLocal> b() {
        return this.focusRequesterModifierLocals;
    }

    public final void c() {
        if (!this.focusRequesterModifierLocals.q()) {
            throw new IllegalStateException("\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n".toString());
        }
        MutableVector<FocusRequesterModifierLocal> mutableVector = this.focusRequesterModifierLocals;
        int iN = mutableVector.n();
        if (iN > 0) {
            FocusRequesterModifierLocal[] focusRequesterModifierLocalArrM = mutableVector.m();
            int i10 = 0;
            do {
                FocusModifier focusModifierC = focusRequesterModifierLocalArrM[i10].c();
                if (focusModifierC != null) {
                    FocusTransactionsKt.h(focusModifierC);
                }
                i10++;
            } while (i10 < iN);
        }
    }
}
