package androidx.compose.ui.text.android;

import android.text.Layout;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class TextAlignmentAdapter {

    @NotNull
    private static final Layout.Alignment ALIGN_LEFT_FRAMEWORK;

    @NotNull
    private static final Layout.Alignment ALIGN_RIGHT_FRAMEWORK;

    @NotNull
    public static final TextAlignmentAdapter INSTANCE = new TextAlignmentAdapter();

    static {
        Layout.Alignment[] alignmentArrValues = Layout.Alignment.values();
        Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
        Layout.Alignment alignment2 = alignment;
        for (Layout.Alignment alignment3 : alignmentArrValues) {
            if (t.e(alignment3.name(), "ALIGN_LEFT")) {
                alignment = alignment3;
            } else if (t.e(alignment3.name(), "ALIGN_RIGHT")) {
                alignment2 = alignment3;
            }
        }
        ALIGN_LEFT_FRAMEWORK = alignment;
        ALIGN_RIGHT_FRAMEWORK = alignment2;
    }

    @NotNull
    public final Layout.Alignment a(int i10) {
        if (i10 == 0) {
            return Layout.Alignment.ALIGN_NORMAL;
        }
        if (i10 == 1) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        if (i10 == 2) {
            return Layout.Alignment.ALIGN_CENTER;
        }
        if (i10 != 3) {
            return i10 != 4 ? Layout.Alignment.ALIGN_NORMAL : ALIGN_RIGHT_FRAMEWORK;
        }
        return ALIGN_LEFT_FRAMEWORK;
    }

    private TextAlignmentAdapter() {
    }
}
