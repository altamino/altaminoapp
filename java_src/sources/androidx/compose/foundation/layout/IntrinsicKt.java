package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.s;

/* JADX INFO: loaded from: classes5.dex */
public final class IntrinsicKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IntrinsicSize.values().length];
            iArr[IntrinsicSize.Min.ordinal()] = 1;
            iArr[IntrinsicSize.Max.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Stable
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull IntrinsicSize intrinsicSize) {
        t.j(modifier, "<this>");
        t.j(intrinsicSize, "intrinsicSize");
        int i10 = WhenMappings.$EnumSwitchMapping$0[intrinsicSize.ordinal()];
        if (i10 == 1) {
            return modifier.B(MinIntrinsicWidthModifier.INSTANCE);
        }
        if (i10 == 2) {
            return modifier.B(MaxIntrinsicWidthModifier.INSTANCE);
        }
        throw new s();
    }
}
