package androidx.media3.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.media3.common.text.Cue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
final class CanvasSubtitleOutput extends View implements SubtitleView.Output {
    private float bottomPaddingFraction;
    private List<Cue> cues;
    private final List<SubtitlePainter> painters;
    private CaptionStyleCompat style;
    private float textSize;
    private int textSizeType;

    public CanvasSubtitleOutput(Context context) {
        this(context, null);
    }

    public CanvasSubtitleOutput(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.painters = new ArrayList();
        this.cues = Collections.emptyList();
        this.textSizeType = 0;
        this.textSize = 0.0533f;
        this.style = CaptionStyleCompat.DEFAULT;
        this.bottomPaddingFraction = 0.08f;
    }

    @Override // androidx.media3.ui.SubtitleView.Output
    public void a(List<Cue> list, CaptionStyleCompat captionStyleCompat, float f, int i10, float f6) {
        this.cues = list;
        this.style = captionStyleCompat;
        this.textSize = f;
        this.textSizeType = i10;
        this.bottomPaddingFraction = f6;
        while (this.painters.size() < list.size()) {
            this.painters.add(new SubtitlePainter(getContext()));
        }
        invalidate();
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List<Cue> list = this.cues;
        if (list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i10 = paddingBottom - paddingTop;
        float fH = SubtitleViewUtils.h(this.textSizeType, this.textSize, height, i10);
        if (fH <= 0.0f) {
            return;
        }
        int size = list.size();
        int i11 = 0;
        while (i11 < size) {
            Cue cueB = list.get(i11);
            if (cueB.verticalType != Integer.MIN_VALUE) {
                cueB = b(cueB);
            }
            Cue cue = cueB;
            int i12 = paddingBottom;
            this.painters.get(i11).b(cue, this.style, fH, SubtitleViewUtils.h(cue.textSizeType, cue.textSize, height, i10), this.bottomPaddingFraction, canvas, paddingLeft, paddingTop, width, i12);
            i11++;
            size = size;
            i10 = i10;
            paddingBottom = i12;
            width = width;
        }
    }

    private static Cue b(Cue cue) {
        Cue.Builder builderP = cue.b().k(-3.4028235E38f).l(Integer.MIN_VALUE).p(null);
        if (cue.lineType == 0) {
            builderP.h(1.0f - cue.line, 0);
        } else {
            builderP.h((-cue.line) - 1.0f, 1);
        }
        int i10 = cue.lineAnchor;
        if (i10 != 0) {
            if (i10 == 2) {
                builderP.i(0);
            }
        } else {
            builderP.i(2);
        }
        return builderP.a();
    }
}
