package androidx.compose.ui.input;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import e8.l;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class InputModeManagerImpl implements InputModeManager {

    @NotNull
    private final MutableState inputMode$delegate;

    @NotNull
    private final l<InputMode, Boolean> onRequestInputModeChange;

    public /* synthetic */ InputModeManagerImpl(int i10, l lVar, k kVar) {
        this(i10, lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private InputModeManagerImpl(int i10, l<? super InputMode, Boolean> lVar) {
        this.onRequestInputModeChange = lVar;
        this.inputMode$delegate = SnapshotStateKt__SnapshotStateKt.e(InputMode.c(i10), null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.input.InputModeManager
    public int a() {
        return ((InputMode) this.inputMode$delegate.getValue()).i();
    }

    public void b(int i10) {
        this.inputMode$delegate.setValue(InputMode.c(i10));
    }
}
