package androidx.compose.foundation.layout;

import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class DoNothingNestedScrollConnection implements NestedScrollConnection {

    @NotNull
    public static final DoNothingNestedScrollConnection INSTANCE = new DoNothingNestedScrollConnection();

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public /* synthetic */ Object a(long j6, long j10, kotlin.coroutines.d dVar) {
        return androidx.compose.ui.input.nestedscroll.a.a(this, j6, j10, dVar);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public /* synthetic */ long b(long j6, long j10, int i10) {
        return androidx.compose.ui.input.nestedscroll.a.b(this, j6, j10, i10);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public /* synthetic */ Object c(long j6, kotlin.coroutines.d dVar) {
        return androidx.compose.ui.input.nestedscroll.a.c(this, j6, dVar);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public /* synthetic */ long d(long j6, int i10) {
        return androidx.compose.ui.input.nestedscroll.a.d(this, j6, i10);
    }

    private DoNothingNestedScrollConnection() {
    }
}
