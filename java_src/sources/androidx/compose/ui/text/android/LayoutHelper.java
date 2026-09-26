package androidx.compose.ui.text.android;

import android.text.Layout;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import java.text.Bidi;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.p;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@InternalPlatformTextApi
public final class LayoutHelper {

    @NotNull
    private final boolean[] bidiProcessedParagraphs;

    @NotNull
    private final Layout layout;

    @NotNull
    private final List<Bidi> paragraphBidi;
    private final int paragraphCount;

    @NotNull
    private final List<Integer> paragraphEnds;

    @Nullable
    private char[] tmpBuffer;

    public final boolean f(char c7) {
        return c7 == ' ' || c7 == '\n' || c7 == 5760 || (8192 <= c7 && c7 < 8203 && c7 != 8199) || c7 == 8287 || c7 == 12288;
    }

    private static final class BidiRun {
        private final int end;
        private final boolean isRtl;
        private final int start;

        public final int a() {
            return this.end;
        }

        public final int b() {
            return this.start;
        }

        public final boolean c() {
            return this.isRtl;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BidiRun)) {
                return false;
            }
            BidiRun bidiRun = (BidiRun) obj;
            return this.start == bidiRun.start && this.end == bidiRun.end && this.isRtl == bidiRun.isRtl;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4, types: [int] */
        /* JADX WARN: Type inference failed for: r1v2, types: [int] */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v4 */
        public int hashCode() {
            int i10 = ((this.start * 31) + this.end) * 31;
            boolean z6 = this.isRtl;
            ?? r1 = z6;
            if (z6) {
                r1 = 1;
            }
            return i10 + r1;
        }

        @NotNull
        public String toString() {
            return "BidiRun(start=" + this.start + ", end=" + this.end + ", isRtl=" + this.isRtl + ')';
        }

        public BidiRun(int i10, int i11, boolean z6) {
            this.start = i10;
            this.end = i11;
            this.isRtl = z6;
        }
    }

    public LayoutHelper(@NotNull Layout layout) {
        t.j(layout, "layout");
        this.layout = layout;
        ArrayList arrayList = new ArrayList();
        int length = 0;
        do {
            CharSequence text = this.layout.getText();
            t.i(text, "layout.text");
            int iB0 = u.b0(text, '\n', length, false, 4, null);
            length = iB0 < 0 ? this.layout.getText().length() : iB0 + 1;
            arrayList.add(Integer.valueOf(length));
        } while (length < this.layout.getText().length());
        this.paragraphEnds = arrayList;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList2.add(null);
        }
        this.paragraphBidi = arrayList2;
        this.bidiProcessedParagraphs = new boolean[this.paragraphEnds.size()];
        this.paragraphCount = this.paragraphEnds.size();
    }

    private final float b(int i10, boolean z6) {
        return z6 ? this.layout.getPrimaryHorizontal(i10) : this.layout.getSecondaryHorizontal(i10);
    }

    private final int h(int i10) {
        while (i10 > 0 && f(this.layout.getText().charAt(i10 - 1))) {
            i10--;
        }
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0062  */
    @Nullable
    public final Bidi a(int i10) {
        Bidi bidi;
        if (this.bidiProcessedParagraphs[i10]) {
            return this.paragraphBidi.get(i10);
        }
        int iIntValue = i10 == 0 ? 0 : this.paragraphEnds.get(i10 - 1).intValue();
        int iIntValue2 = this.paragraphEnds.get(i10).intValue();
        int i11 = iIntValue2 - iIntValue;
        char[] cArr = this.tmpBuffer;
        if (cArr == null || cArr.length < i11) {
            cArr = new char[i11];
        }
        char[] cArr2 = cArr;
        TextUtils.getChars(this.layout.getText(), iIntValue, iIntValue2, cArr2, 0);
        if (Bidi.requiresBidi(cArr2, 0, i11)) {
            bidi = new Bidi(cArr2, 0, null, 0, i11, g(i10) ? 1 : 0);
            if (bidi.getRunCount() == 1) {
                bidi = null;
            }
        } else {
            bidi = null;
        }
        this.paragraphBidi.set(i10, bidi);
        this.bidiProcessedParagraphs[i10] = true;
        if (bidi != null) {
            char[] cArr3 = this.tmpBuffer;
            cArr2 = cArr2 == cArr3 ? null : cArr3;
        }
        this.tmpBuffer = cArr2;
        return bidi;
    }

    public final float c(int i10, boolean z6, boolean z10) {
        if (!z10) {
            return b(i10, z6);
        }
        int iA = LayoutCompatKt.a(this.layout, i10, z10);
        int lineStart = this.layout.getLineStart(iA);
        int lineEnd = this.layout.getLineEnd(iA);
        if (i10 != lineStart && i10 != lineEnd) {
            return b(i10, z6);
        }
        if (i10 == 0 || i10 == this.layout.getText().length()) {
            return b(i10, z6);
        }
        int iD = d(i10, z10);
        boolean zG = g(iD);
        int iH = h(lineEnd);
        int iE = e(iD);
        int i11 = lineStart - iE;
        int i12 = iH - iE;
        Bidi bidiA = a(iD);
        Bidi bidiCreateLineBidi = bidiA != null ? bidiA.createLineBidi(i11, i12) : null;
        if (bidiCreateLineBidi == null || bidiCreateLineBidi.getRunCount() == 1) {
            boolean zIsRtlCharAt = this.layout.isRtlCharAt(lineStart);
            if (z6 || zG == zIsRtlCharAt) {
                zG = !zG;
            }
            return (i10 != lineStart ? zG : !zG) ? this.layout.getLineRight(iA) : this.layout.getLineLeft(iA);
        }
        int runCount = bidiCreateLineBidi.getRunCount();
        BidiRun[] bidiRunArr = new BidiRun[runCount];
        for (int i13 = 0; i13 < runCount; i13++) {
            bidiRunArr[i13] = new BidiRun(bidiCreateLineBidi.getRunStart(i13) + lineStart, bidiCreateLineBidi.getRunLimit(i13) + lineStart, bidiCreateLineBidi.getRunLevel(i13) % 2 == 1);
        }
        int runCount2 = bidiCreateLineBidi.getRunCount();
        byte[] bArr = new byte[runCount2];
        for (int i14 = 0; i14 < runCount2; i14++) {
            bArr[i14] = (byte) bidiCreateLineBidi.getRunLevel(i14);
        }
        Bidi.reorderVisually(bArr, 0, bidiRunArr, 0, runCount);
        int i15 = -1;
        if (i10 == lineStart) {
            for (int i16 = 0; i16 < runCount; i16++) {
                if (bidiRunArr[i16].b() == i10) {
                    i15 = i16;
                    break;
                }
            }
            BidiRun bidiRun = bidiRunArr[i15];
            if (z6 || zG == bidiRun.c()) {
                zG = !zG;
            }
            if (i15 == 0 && zG) {
                return this.layout.getLineLeft(iA);
            }
            if (i15 != p.R(bidiRunArr) || zG) {
                return zG ? this.layout.getPrimaryHorizontal(bidiRunArr[i15 - 1].b()) : this.layout.getPrimaryHorizontal(bidiRunArr[i15 + 1].b());
            }
            return this.layout.getLineRight(iA);
        }
        for (int i17 = 0; i17 < runCount; i17++) {
            if (bidiRunArr[i17].a() == i10) {
                i15 = i17;
                break;
            }
        }
        BidiRun bidiRun2 = bidiRunArr[i15];
        if (!z6 && zG != bidiRun2.c()) {
            zG = !zG;
        }
        if (i15 == 0 && zG) {
            return this.layout.getLineLeft(iA);
        }
        if (i15 != p.R(bidiRunArr) || zG) {
            return zG ? this.layout.getPrimaryHorizontal(bidiRunArr[i15 - 1].a()) : this.layout.getPrimaryHorizontal(bidiRunArr[i15 + 1].a());
        }
        return this.layout.getLineRight(iA);
    }

    public final int d(@IntRange int i10, boolean z6) {
        int iL = v.l(this.paragraphEnds, Integer.valueOf(i10), 0, 0, 6, null);
        int i11 = iL < 0 ? -(iL + 1) : iL + 1;
        if (z6 && i11 > 0) {
            int i12 = i11 - 1;
            if (i10 == this.paragraphEnds.get(i12).intValue()) {
                return i12;
            }
        }
        return i11;
    }

    public final int e(@IntRange int i10) {
        if (i10 == 0) {
            return 0;
        }
        return this.paragraphEnds.get(i10 - 1).intValue();
    }

    public final boolean g(@IntRange int i10) {
        return this.layout.getParagraphDirection(this.layout.getLineForOffset(e(i10))) == -1;
    }
}
