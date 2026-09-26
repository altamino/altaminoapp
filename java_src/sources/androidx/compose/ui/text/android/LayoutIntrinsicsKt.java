package androidx.compose.ui.text.android;

import android.text.Layout;
import android.text.Spanned;
import android.text.TextPaint;
import androidx.compose.ui.text.android.style.LetterSpacingSpanEm;
import androidx.compose.ui.text.android.style.LetterSpacingSpanPx;
import java.text.BreakIterator;
import java.util.Comparator;
import java.util.PriorityQueue;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.u;

/* JADX INFO: loaded from: classes8.dex */
public final class LayoutIntrinsicsKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean e(float f, CharSequence charSequence, TextPaint textPaint) {
        if (f != 0.0f && (charSequence instanceof Spanned)) {
            if (textPaint.getLetterSpacing() == 0.0f) {
                Spanned spanned = (Spanned) charSequence;
                if (SpannedExtensionsKt.a(spanned, LetterSpacingSpanPx.class) || SpannedExtensionsKt.a(spanned, LetterSpacingSpanEm.class)) {
                }
            }
            return true;
        }
        return false;
    }

    public static final float c(@NotNull CharSequence text, @NotNull TextPaint paint) {
        t.j(text, "text");
        t.j(paint, "paint");
        BreakIterator lineInstance = BreakIterator.getLineInstance(paint.getTextLocale());
        int i10 = 0;
        lineInstance.setText(new CharSequenceCharacterIterator(text, 0, text.length()));
        PriorityQueue<u> priorityQueue = new PriorityQueue(10, new Comparator() { // from class: androidx.compose.ui.text.android.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return LayoutIntrinsicsKt.d((u) obj, (u) obj2);
            }
        });
        int next = lineInstance.next();
        while (true) {
            int i11 = i10;
            i10 = next;
            if (i10 == -1) {
                break;
            }
            if (priorityQueue.size() < 10) {
                priorityQueue.add(new u(Integer.valueOf(i11), Integer.valueOf(i10)));
            } else {
                u uVar = (u) priorityQueue.peek();
                if (uVar != null && ((Number) uVar.d()).intValue() - ((Number) uVar.c()).intValue() < i10 - i11) {
                    priorityQueue.poll();
                    priorityQueue.add(new u(Integer.valueOf(i11), Integer.valueOf(i10)));
                }
            }
            next = lineInstance.next();
        }
        float fMax = 0.0f;
        for (u uVar2 : priorityQueue) {
            fMax = Math.max(fMax, Layout.getDesiredWidth(text, ((Number) uVar2.a()).intValue(), ((Number) uVar2.b()).intValue(), paint));
        }
        return fMax;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int d(u uVar, u uVar2) {
        return (((Number) uVar.d()).intValue() - ((Number) uVar.c()).intValue()) - (((Number) uVar2.d()).intValue() - ((Number) uVar2.c()).intValue());
    }
}
