package androidx.compose.ui.text;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
public final class AnnotatedString implements CharSequence {

    @NotNull
    private final List<Range<? extends Object>> annotations;

    @NotNull
    private final List<Range<ParagraphStyle>> paragraphStyles;

    @NotNull
    private final List<Range<SpanStyle>> spanStyles;

    @NotNull
    private final String text;

    public static final class Builder {

        @NotNull
        private final List<MutableRange<? extends Object>> annotations;

        @NotNull
        private final List<MutableRange<ParagraphStyle>> paragraphStyles;

        @NotNull
        private final List<MutableRange<SpanStyle>> spanStyles;

        @NotNull
        private final List<MutableRange<? extends Object>> styleStack;

        @NotNull
        private final StringBuilder text;

        private static final class MutableRange<T> {
            private int end;
            private final T item;
            private final int start;

            @NotNull
            private final String tag;

            public MutableRange(T t5, int i10, int i11, @NotNull String tag) {
                t.j(tag, "tag");
                this.item = t5;
                this.start = i10;
                this.end = i11;
                this.tag = tag;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof MutableRange)) {
                    return false;
                }
                MutableRange mutableRange = (MutableRange) obj;
                return t.e(this.item, mutableRange.item) && this.start == mutableRange.start && this.end == mutableRange.end && t.e(this.tag, mutableRange.tag);
            }

            public int hashCode() {
                T t5 = this.item;
                return ((((((t5 == null ? 0 : t5.hashCode()) * 31) + this.start) * 31) + this.end) * 31) + this.tag.hashCode();
            }

            @NotNull
            public String toString() {
                return "MutableRange(item=" + this.item + ", start=" + this.start + ", end=" + this.end + ", tag=" + this.tag + ')';
            }

            public /* synthetic */ MutableRange(Object obj, int i10, int i11, String str, int i12, k kVar) {
                this(obj, i10, (i12 & 4) != 0 ? Integer.MIN_VALUE : i11, (i12 & 8) != 0 ? "" : str);
            }

            @NotNull
            public final Range<T> a(int i10) {
                int i11 = this.end;
                if (i11 != Integer.MIN_VALUE) {
                    i10 = i11;
                }
                if (i10 != Integer.MIN_VALUE) {
                    return new Range<>(this.item, this.start, i10, this.tag);
                }
                throw new IllegalStateException("Item.end should be set first".toString());
            }
        }

        public Builder() {
            this(0, 1, null);
        }

        public Builder(int i10) {
            this.text = new StringBuilder(i10);
            this.spanStyles = new ArrayList();
            this.paragraphStyles = new ArrayList();
            this.annotations = new ArrayList();
            this.styleStack = new ArrayList();
        }

        public final void a(@NotNull ParagraphStyle style, int i10, int i11) {
            t.j(style, "style");
            this.paragraphStyles.add(new MutableRange<>(style, i10, i11, null, 8, null));
        }

        public final void b(@NotNull SpanStyle style, int i10, int i11) {
            t.j(style, "style");
            this.spanStyles.add(new MutableRange<>(style, i10, i11, null, 8, null));
        }

        public final void c(@NotNull AnnotatedString text) {
            t.j(text, "text");
            int length = this.text.length();
            this.text.append(text.g());
            List<Range<SpanStyle>> listE = text.e();
            int size = listE.size();
            for (int i10 = 0; i10 < size; i10++) {
                Range<SpanStyle> range = listE.get(i10);
                b(range.e(), range.f() + length, range.d() + length);
            }
            List<Range<ParagraphStyle>> listD = text.d();
            int size2 = listD.size();
            for (int i11 = 0; i11 < size2; i11++) {
                Range<ParagraphStyle> range2 = listD.get(i11);
                a(range2.e(), range2.f() + length, range2.d() + length);
            }
            List<Range<? extends Object>> listB = text.b();
            int size3 = listB.size();
            for (int i12 = 0; i12 < size3; i12++) {
                Range<? extends Object> range3 = listB.get(i12);
                this.annotations.add(new MutableRange<>(range3.e(), range3.f() + length, range3.d() + length, range3.g()));
            }
        }

        public final void d(@NotNull String text) {
            t.j(text, "text");
            this.text.append(text);
        }

        @NotNull
        public final AnnotatedString e() {
            String string = this.text.toString();
            t.i(string, "text.toString()");
            List<MutableRange<SpanStyle>> list = this.spanStyles;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                arrayList.add(list.get(i10).a(this.text.length()));
            }
            List<MutableRange<ParagraphStyle>> list2 = this.paragraphStyles;
            ArrayList arrayList2 = new ArrayList(list2.size());
            int size2 = list2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                arrayList2.add(list2.get(i11).a(this.text.length()));
            }
            List<MutableRange<? extends Object>> list3 = this.annotations;
            ArrayList arrayList3 = new ArrayList(list3.size());
            int size3 = list3.size();
            for (int i12 = 0; i12 < size3; i12++) {
                arrayList3.add(list3.get(i12).a(this.text.length()));
            }
            return new AnnotatedString(string, arrayList, arrayList2, arrayList3);
        }

        public /* synthetic */ Builder(int i10, int i11, k kVar) {
            this((i11 & 1) != 0 ? 16 : i10);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(@NotNull String text) {
            this(0, 1, null);
            t.j(text, "text");
            d(text);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(@NotNull AnnotatedString text) {
            this(0, 1, null);
            t.j(text, "text");
            c(text);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AnnotatedString(@NotNull String text, @NotNull List<Range<SpanStyle>> spanStyles, @NotNull List<Range<ParagraphStyle>> paragraphStyles, @NotNull List<? extends Range<? extends Object>> annotations) {
        t.j(text, "text");
        t.j(spanStyles, "spanStyles");
        t.j(paragraphStyles, "paragraphStyles");
        t.j(annotations, "annotations");
        this.text = text;
        this.spanStyles = spanStyles;
        this.paragraphStyles = paragraphStyles;
        this.annotations = annotations;
        int size = paragraphStyles.size();
        int iD = -1;
        for (int i10 = 0; i10 < size; i10++) {
            Range<ParagraphStyle> range = paragraphStyles.get(i10);
            if (range.f() < iD) {
                throw new IllegalArgumentException("ParagraphStyle should not overlap".toString());
            }
            if (range.d() > this.text.length()) {
                throw new IllegalArgumentException(("ParagraphStyle range [" + range.f() + ", " + range.d() + ") is out of boundary").toString());
            }
            iD = range.d();
        }
    }

    @NotNull
    public final List<Range<? extends Object>> b() {
        return this.annotations;
    }

    @NotNull
    public final List<Range<ParagraphStyle>> d() {
        return this.paragraphStyles;
    }

    @NotNull
    public final List<Range<SpanStyle>> e() {
        return this.spanStyles;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnnotatedString)) {
            return false;
        }
        AnnotatedString annotatedString = (AnnotatedString) obj;
        return t.e(this.text, annotatedString.text) && t.e(this.spanStyles, annotatedString.spanStyles) && t.e(this.paragraphStyles, annotatedString.paragraphStyles) && t.e(this.annotations, annotatedString.annotations);
    }

    @NotNull
    public final String g() {
        return this.text;
    }

    @Override // java.lang.CharSequence
    @NotNull
    public String toString() {
        return this.text;
    }

    @Immutable
    public static final class Range<T> {
        private final int end;
        private final T item;
        private final int start;

        @NotNull
        private final String tag;

        public Range(T t5, int i10, int i11, @NotNull String tag) {
            t.j(tag, "tag");
            this.item = t5;
            this.start = i10;
            this.end = i11;
            this.tag = tag;
            if (i10 > i11) {
                throw new IllegalArgumentException("Reversed range is not supported".toString());
            }
        }

        public final T a() {
            return this.item;
        }

        public final int b() {
            return this.start;
        }

        public final int c() {
            return this.end;
        }

        public final int d() {
            return this.end;
        }

        public final T e() {
            return this.item;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Range)) {
                return false;
            }
            Range range = (Range) obj;
            return t.e(this.item, range.item) && this.start == range.start && this.end == range.end && t.e(this.tag, range.tag);
        }

        public final int f() {
            return this.start;
        }

        @NotNull
        public final String g() {
            return this.tag;
        }

        public int hashCode() {
            T t5 = this.item;
            return ((((((t5 == null ? 0 : t5.hashCode()) * 31) + this.start) * 31) + this.end) * 31) + this.tag.hashCode();
        }

        @NotNull
        public String toString() {
            return "Range(item=" + this.item + ", start=" + this.start + ", end=" + this.end + ", tag=" + this.tag + ')';
        }

        public Range(T t5, int i10, int i11) {
            this(t5, i10, i11, "");
        }
    }

    public char a(int i10) {
        return this.text.charAt(i10);
    }

    public int c() {
        return this.text.length();
    }

    @NotNull
    public final List<Range<String>> f(@NotNull String tag, int i10, int i11) {
        t.j(tag, "tag");
        List<Range<? extends Object>> list = this.annotations;
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            Range<? extends Object> range = list.get(i12);
            Range<? extends Object> range2 = range;
            if ((range2.e() instanceof String) && t.e(tag, range2.g()) && AnnotatedStringKt.g(i10, i11, range2.f(), range2.d())) {
                arrayList.add(range);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Range<TtsAnnotation>> h(int i10, int i11) {
        List<Range<? extends Object>> list = this.annotations;
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            Range<? extends Object> range = list.get(i12);
            Range<? extends Object> range2 = range;
            if ((range2.e() instanceof TtsAnnotation) && AnnotatedStringKt.g(i10, i11, range2.f(), range2.d())) {
                arrayList.add(range);
            }
        }
        return arrayList;
    }

    public int hashCode() {
        return (((((this.text.hashCode() * 31) + this.spanStyles.hashCode()) * 31) + this.paragraphStyles.hashCode()) * 31) + this.annotations.hashCode();
    }

    @Stable
    @NotNull
    public final AnnotatedString i(@NotNull AnnotatedString other) {
        t.j(other, "other");
        Builder builder = new Builder(this);
        builder.c(other);
        return builder.e();
    }

    @Override // java.lang.CharSequence
    @NotNull
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public AnnotatedString subSequence(int i10, int i11) {
        if (i10 <= i11) {
            if (i10 == 0 && i11 == this.text.length()) {
                return this;
            }
            String strSubstring = this.text.substring(i10, i11);
            t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return new AnnotatedString(strSubstring, AnnotatedStringKt.e(this.spanStyles, i10, i11), AnnotatedStringKt.e(this.paragraphStyles, i10, i11), AnnotatedStringKt.e(this.annotations, i10, i11));
        }
        throw new IllegalArgumentException(("start (" + i10 + ") should be less or equal to end (" + i11 + ')').toString());
    }

    @Override // java.lang.CharSequence
    public final /* bridge */ char charAt(int i10) {
        return a(i10);
    }

    @NotNull
    public final AnnotatedString k(long j6) {
        return subSequence(TextRange.l(j6), TextRange.k(j6));
    }

    @Override // java.lang.CharSequence
    public final /* bridge */ int length() {
        return c();
    }

    public /* synthetic */ AnnotatedString(String str, List list, List list2, List list3, int i10, k kVar) {
        this(str, (i10 & 2) != 0 ? v.m() : list, (i10 & 4) != 0 ? v.m() : list2, (i10 & 8) != 0 ? v.m() : list3);
    }

    public /* synthetic */ AnnotatedString(String str, List list, List list2, int i10, k kVar) {
        this(str, (i10 & 2) != 0 ? v.m() : list, (i10 & 4) != 0 ? v.m() : list2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AnnotatedString(@NotNull String text, @NotNull List<Range<SpanStyle>> spanStyles, @NotNull List<Range<ParagraphStyle>> paragraphStyles) {
        this(text, spanStyles, paragraphStyles, v.m());
        t.j(text, "text");
        t.j(spanStyles, "spanStyles");
        t.j(paragraphStyles, "paragraphStyles");
    }
}
