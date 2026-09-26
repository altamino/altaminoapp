package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class e implements kotlin.sequences.g<j8.i> {

    @NotNull
    private final e8.p<CharSequence, Integer, w7.u<Integer, Integer>> getNextMatch;

    @NotNull
    private final CharSequence input;
    private final int limit;
    private final int startIndex;

    public static final class a implements Iterator<j8.i>, f8.a {
        private int counter;
        private int currentStartIndex;

        @Nullable
        private j8.i nextItem;
        private int nextSearchIndex;
        private int nextState = -1;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        a() {
            int iN = j8.o.n(e.this.startIndex, 0, e.this.input.length());
            this.currentStartIndex = iN;
            this.nextSearchIndex = iN;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0031 A[ADDED_TO_REGION, REMOVE] */
        /* JADX WARN: Code duplicated, block: B:17:0x0098  */
        /* JADX WARN: Code duplicated, block: B:9:0x0023  */
        private final void a() {
            w7.u uVar;
            if (this.nextSearchIndex < 0) {
                this.nextState = 0;
                this.nextItem = null;
                return;
            }
            if (e.this.limit > 0) {
                int i10 = this.counter + 1;
                this.counter = i10;
                if (i10 >= e.this.limit) {
                    this.nextItem = new j8.i(this.currentStartIndex, u.W(e.this.input));
                    this.nextSearchIndex = -1;
                } else if (this.nextSearchIndex > e.this.input.length() && (uVar = (w7.u) e.this.getNextMatch.invoke(e.this.input, Integer.valueOf(this.nextSearchIndex))) != null) {
                    int iIntValue = ((Number) uVar.a()).intValue();
                    int iIntValue2 = ((Number) uVar.b()).intValue();
                    this.nextItem = j8.o.v(this.currentStartIndex, iIntValue);
                    int i11 = iIntValue + iIntValue2;
                    this.currentStartIndex = i11;
                    this.nextSearchIndex = i11 + (iIntValue2 == 0 ? 1 : 0);
                } else {
                    this.nextItem = new j8.i(this.currentStartIndex, u.W(e.this.input));
                    this.nextSearchIndex = -1;
                }
            } else if (this.nextSearchIndex > e.this.input.length()) {
                this.nextItem = new j8.i(this.currentStartIndex, u.W(e.this.input));
                this.nextSearchIndex = -1;
            } else {
                int iIntValue3 = ((Number) uVar.a()).intValue();
                int iIntValue4 = ((Number) uVar.b()).intValue();
                this.nextItem = j8.o.v(this.currentStartIndex, iIntValue3);
                int i12 = iIntValue3 + iIntValue4;
                this.currentStartIndex = i12;
                this.nextSearchIndex = i12 + (iIntValue4 == 0 ? 1 : 0);
            }
            this.nextState = 1;
        }

        @Override // java.util.Iterator
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public j8.i next() {
            if (this.nextState == -1) {
                a();
            }
            if (this.nextState == 0) {
                throw new NoSuchElementException();
            }
            j8.i iVar = this.nextItem;
            kotlin.jvm.internal.t.h(iVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.nextItem = null;
            this.nextState = -1;
            return iVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextState == -1) {
                a();
            }
            return this.nextState == 1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(@NotNull CharSequence input, int i10, int i11, @NotNull e8.p<? super CharSequence, ? super Integer, w7.u<Integer, Integer>> getNextMatch) {
        kotlin.jvm.internal.t.j(input, "input");
        kotlin.jvm.internal.t.j(getNextMatch, "getNextMatch");
        this.input = input;
        this.startIndex = i10;
        this.limit = i11;
        this.getNextMatch = getNextMatch;
    }

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator<j8.i> iterator() {
        return new a();
    }
}
