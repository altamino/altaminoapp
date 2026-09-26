package androidx.compose.ui.text.platform;

import android.graphics.Matrix;
import android.graphics.Shader;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.BrushKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.style.TextDecoration;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class AndroidMultiParagraphDrawKt {
    public static final void a(@NotNull MultiParagraph multiParagraph, @NotNull Canvas canvas, @NotNull Brush brush, @Nullable Shadow shadow, @Nullable TextDecoration textDecoration) {
        t.j(multiParagraph, "<this>");
        t.j(canvas, "canvas");
        t.j(brush, "brush");
        canvas.r();
        if (multiParagraph.v().size() <= 1 || (brush instanceof SolidColor)) {
            b(multiParagraph, canvas, brush, shadow, textDecoration);
        } else if (brush instanceof ShaderBrush) {
            List<ParagraphInfo> listV = multiParagraph.v();
            int size = listV.size();
            float fMax = 0.0f;
            float height = 0.0f;
            for (int i10 = 0; i10 < size; i10++) {
                ParagraphInfo paragraphInfo = listV.get(i10);
                height += paragraphInfo.e().getHeight();
                fMax = Math.max(fMax, paragraphInfo.e().getWidth());
            }
            Shader shaderC = ((ShaderBrush) brush).c(SizeKt.a(fMax, height));
            Matrix matrix = new Matrix();
            shaderC.getLocalMatrix(matrix);
            List<ParagraphInfo> listV2 = multiParagraph.v();
            int size2 = listV2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                ParagraphInfo paragraphInfo2 = listV2.get(i11);
                paragraphInfo2.e().d(canvas, BrushKt.a(shaderC), shadow, textDecoration);
                canvas.b(0.0f, paragraphInfo2.e().getHeight());
                matrix.setTranslate(0.0f, -paragraphInfo2.e().getHeight());
                shaderC.setLocalMatrix(matrix);
            }
        }
        canvas.n();
    }

    private static final void b(MultiParagraph multiParagraph, Canvas canvas, Brush brush, Shadow shadow, TextDecoration textDecoration) {
        List<ParagraphInfo> listV = multiParagraph.v();
        int size = listV.size();
        for (int i10 = 0; i10 < size; i10++) {
            ParagraphInfo paragraphInfo = listV.get(i10);
            paragraphInfo.e().d(canvas, brush, shadow, textDecoration);
            canvas.b(0.0f, paragraphInfo.e().getHeight());
        }
    }
}
