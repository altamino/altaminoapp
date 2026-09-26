package androidx.compose.ui.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class WindowInfoImpl implements WindowInfo {

    @NotNull
    private final MutableState<Boolean> _isWindowFocused = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);

    @Override // androidx.compose.ui.platform.WindowInfo
    public boolean a() {
        return this._isWindowFocused.getValue().booleanValue();
    }

    public void b(boolean z6) {
        this._isWindowFocused.setValue(Boolean.valueOf(z6));
    }
}
