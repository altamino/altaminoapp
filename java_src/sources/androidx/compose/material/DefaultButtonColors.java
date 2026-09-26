package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
final class DefaultButtonColors implements ButtonColors {
    private final long backgroundColor;
    private final long contentColor;
    private final long disabledBackgroundColor;
    private final long disabledContentColor;

    public /* synthetic */ DefaultButtonColors(long j6, long j10, long j11, long j12, k kVar) {
        this(j6, j10, j11, j12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !t.e(q0.b(DefaultButtonColors.class), q0.b(obj.getClass()))) {
            return false;
        }
        DefaultButtonColors defaultButtonColors = (DefaultButtonColors) obj;
        return Color.n(this.backgroundColor, defaultButtonColors.backgroundColor) && Color.n(this.contentColor, defaultButtonColors.contentColor) && Color.n(this.disabledBackgroundColor, defaultButtonColors.disabledBackgroundColor) && Color.n(this.disabledContentColor, defaultButtonColors.disabledContentColor);
    }

    private DefaultButtonColors(long j6, long j10, long j11, long j12) {
        this.backgroundColor = j6;
        this.contentColor = j10;
        this.disabledBackgroundColor = j11;
        this.disabledContentColor = j12;
    }

    public int hashCode() {
        return (((((Color.t(this.backgroundColor) * 31) + Color.t(this.contentColor)) * 31) + Color.t(this.disabledBackgroundColor)) * 31) + Color.t(this.disabledContentColor);
    }

    @Override // androidx.compose.material.ButtonColors
    @Composable
    @NotNull
    public State<Color> a(boolean z6, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(-655254499);
        if (z6) {
            j6 = this.backgroundColor;
        } else {
            j6 = this.disabledBackgroundColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.ButtonColors
    @Composable
    @NotNull
    public State<Color> b(boolean z6, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(-2133647540);
        if (z6) {
            j6 = this.contentColor;
        } else {
            j6 = this.disabledContentColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }
}
