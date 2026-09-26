package androidx.work;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes6.dex */
public abstract class InputMergerFactory {
    @Nullable
    public abstract InputMerger a(@NonNull String className);

    @NonNull
    @RestrictTo
    public static InputMergerFactory c() {
        return new InputMergerFactory() { // from class: androidx.work.InputMergerFactory.1
            @Override // androidx.work.InputMergerFactory
            @Nullable
            public InputMerger a(@NonNull String className) {
                return null;
            }
        };
    }

    @Nullable
    @RestrictTo
    public final InputMerger b(@NonNull String className) {
        InputMerger inputMergerA = a(className);
        if (inputMergerA == null) {
            return InputMerger.a(className);
        }
        return inputMergerA;
    }
}
