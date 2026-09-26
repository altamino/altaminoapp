package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import j8.o;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class OutlinedTextFieldKt$outlineCutout$1 extends v implements l<ContentDrawScope, l0> {
    final /* synthetic */ long $labelSize;
    final /* synthetic */ PaddingValues $paddingValues;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            iArr[LayoutDirection.Rtl.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    OutlinedTextFieldKt$outlineCutout$1(long j6, PaddingValues paddingValues) {
        super(1);
        this.$labelSize = j6;
        this.$paddingValues = paddingValues;
    }

    public final void a(@NotNull ContentDrawScope drawWithContent) {
        t.j(drawWithContent, "$this$drawWithContent");
        float fI = Size.i(this.$labelSize);
        if (fI <= 0.0f) {
            drawWithContent.Z();
            return;
        }
        float fH0 = drawWithContent.H0(OutlinedTextFieldKt.OutlinedTextFieldInnerPadding);
        float fH1 = drawWithContent.H0(this.$paddingValues.b(drawWithContent.getLayoutDirection())) - fH0;
        float f = 2;
        float fI2 = fI + fH1 + (fH0 * f);
        LayoutDirection layoutDirection = drawWithContent.getLayoutDirection();
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        float fI3 = iArr[layoutDirection.ordinal()] == 1 ? Size.i(drawWithContent.c()) - fI2 : o.d(fH1, 0.0f);
        if (iArr[drawWithContent.getLayoutDirection().ordinal()] == 1) {
            fI2 = Size.i(drawWithContent.c()) - o.d(fH1, 0.0f);
        }
        float f6 = fI2;
        float fG = Size.g(this.$labelSize);
        float f7 = (-fG) / f;
        float f10 = fG / f;
        int iA = ClipOp.Companion.a();
        DrawContext drawContextT = drawWithContent.T();
        long jC = drawContextT.c();
        drawContextT.a().r();
        drawContextT.d().a(fI3, f7, f6, f10, iA);
        drawWithContent.Z();
        drawContextT.a().n();
        drawContextT.b(jC);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(ContentDrawScope contentDrawScope) {
        a(contentDrawScope);
        return l0.INSTANCE;
    }
}
