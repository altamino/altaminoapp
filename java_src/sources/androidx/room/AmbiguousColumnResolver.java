package androidx.room;

import androidx.annotation.RestrictTo;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.m0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public final class AmbiguousColumnResolver {

    @NotNull
    public static final AmbiguousColumnResolver INSTANCE = new AmbiguousColumnResolver();

    /* JADX INFO: Access modifiers changed from: private */
    static final class ResultColumn {
        private final int index;

        @NotNull
        private final String name;

        @NotNull
        public final String a() {
            return this.name;
        }

        public final int b() {
            return this.index;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ResultColumn)) {
                return false;
            }
            ResultColumn resultColumn = (ResultColumn) obj;
            return kotlin.jvm.internal.t.e(this.name, resultColumn.name) && this.index == resultColumn.index;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + this.index;
        }

        @NotNull
        public String toString() {
            return "ResultColumn(name=" + this.name + ", index=" + this.index + ')';
        }

        public ResultColumn(@NotNull String name, int i10) {
            kotlin.jvm.internal.t.j(name, "name");
            this.name = name;
            this.index = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Solution implements Comparable<Solution> {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private static final Solution NO_SOLUTION = new Solution(kotlin.collections.v.m(), Integer.MAX_VALUE, Integer.MAX_VALUE);
        private final int coverageOffset;

        @NotNull
        private final List<Match> matches;
        private final int overlaps;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            @NotNull
            public final Solution a(@NotNull List<Match> matches) {
                kotlin.jvm.internal.t.j(matches, "matches");
                List<Match> list = matches;
                int i10 = 0;
                int iF = 0;
                for (Match match : list) {
                    iF += ((match.b().f() - match.b().e()) + 1) - match.a().size();
                }
                Iterator<T> it = list.iterator();
                if (!it.hasNext()) {
                    throw new NoSuchElementException();
                }
                int iE = ((Match) it.next()).b().e();
                while (it.hasNext()) {
                    int iE2 = ((Match) it.next()).b().e();
                    if (iE > iE2) {
                        iE = iE2;
                    }
                }
                Iterator<T> it2 = list.iterator();
                if (!it2.hasNext()) {
                    throw new NoSuchElementException();
                }
                int iF2 = ((Match) it2.next()).b().f();
                while (it2.hasNext()) {
                    int iF3 = ((Match) it2.next()).b().f();
                    if (iF2 < iF3) {
                        iF2 = iF3;
                    }
                }
                Iterable iVar = new j8.i(iE, iF2);
                if (!(iVar instanceof Collection) || !((Collection) iVar).isEmpty()) {
                    Iterator it3 = iVar.iterator();
                    int i11 = 0;
                    while (it3.hasNext()) {
                        int iNextInt = ((m0) it3).nextInt();
                        Iterator<T> it4 = list.iterator();
                        int i12 = 0;
                        while (it4.hasNext()) {
                            if (((Match) it4.next()).b().p(iNextInt)) {
                                i12++;
                            }
                            if (i12 > 1) {
                                i11++;
                                if (i11 >= 0) {
                                    break;
                                }
                                kotlin.collections.v.v();
                                break;
                            }
                        }
                    }
                    i10 = i11;
                }
                return new Solution(matches, iF, i10);
            }
        }

        public Solution(@NotNull List<Match> matches, int i10, int i11) {
            kotlin.jvm.internal.t.j(matches, "matches");
            this.matches = matches;
            this.coverageOffset = i10;
            this.overlaps = i11;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(@NotNull Solution other) {
            kotlin.jvm.internal.t.j(other, "other");
            int iL = kotlin.jvm.internal.t.l(this.overlaps, other.overlaps);
            if (iL != 0) {
                return iL;
            }
            return kotlin.jvm.internal.t.l(this.coverageOffset, other.coverageOffset);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Match {

        @NotNull
        private final List<Integer> resultIndices;

        @NotNull
        private final j8.i resultRange;

        @NotNull
        public final List<Integer> a() {
            return this.resultIndices;
        }

        @NotNull
        public final j8.i b() {
            return this.resultRange;
        }

        public Match(@NotNull j8.i resultRange, @NotNull List<Integer> resultIndices) {
            kotlin.jvm.internal.t.j(resultRange, "resultRange");
            kotlin.jvm.internal.t.j(resultIndices, "resultIndices");
            this.resultRange = resultRange;
            this.resultIndices = resultIndices;
        }
    }

    private AmbiguousColumnResolver() {
    }
}
