package androidx.compose.foundation.text.selection;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.s;

/* JADX INFO: loaded from: classes7.dex */
public final class HandlePositionProvider implements PopupPositionProvider {

    @NotNull
    private final HandleReferencePoint handleReferencePoint;
    private final long offset;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HandleReferencePoint.values().length];
            iArr[HandleReferencePoint.TopLeft.ordinal()] = 1;
            iArr[HandleReferencePoint.TopRight.ordinal()] = 2;
            iArr[HandleReferencePoint.TopMiddle.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ HandlePositionProvider(HandleReferencePoint handleReferencePoint, long j6, k kVar) {
        this(handleReferencePoint, j6);
    }

    private HandlePositionProvider(HandleReferencePoint handleReferencePoint, long j6) {
        this.handleReferencePoint = handleReferencePoint;
        this.offset = j6;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    public long a(@NotNull IntRect anchorBounds, long j6, @NotNull LayoutDirection layoutDirection, long j10) {
        t.j(anchorBounds, "anchorBounds");
        t.j(layoutDirection, "layoutDirection");
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.handleReferencePoint.ordinal()];
        if (i10 == 1) {
            return IntOffsetKt.a(anchorBounds.c() + IntOffset.j(this.offset), anchorBounds.e() + IntOffset.k(this.offset));
        }
        if (i10 == 2) {
            return IntOffsetKt.a((anchorBounds.c() + IntOffset.j(this.offset)) - IntSize.g(j10), anchorBounds.e() + IntOffset.k(this.offset));
        }
        if (i10 == 3) {
            return IntOffsetKt.a((anchorBounds.c() + IntOffset.j(this.offset)) - (IntSize.g(j10) / 2), anchorBounds.e() + IntOffset.k(this.offset));
        }
        throw new s();
    }
}
