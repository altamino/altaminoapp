package kotlin.text;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class g implements Serializable {

    @NotNull
    public static final a Companion = new a(null);

    @Nullable
    private Set<? extends i> _options;

    @NotNull
    private final Pattern nativePattern;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int b(int i10) {
            return (i10 & 2) != 0 ? i10 | 64 : i10;
        }

        private a() {
        }
    }

    private static final class b implements Serializable {

        @NotNull
        public static final a Companion = new a(null);
        private static final long serialVersionUID = 0;
        private final int flags;

        @NotNull
        private final String pattern;

        public static final class a {
            public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
                this();
            }

            private a() {
            }
        }

        public b(@NotNull String pattern, int i10) {
            kotlin.jvm.internal.t.j(pattern, "pattern");
            this.pattern = pattern;
            this.flags = i10;
        }

        private final Object readResolve() {
            Pattern patternCompile = Pattern.compile(this.pattern, this.flags);
            kotlin.jvm.internal.t.i(patternCompile, "compile(...)");
            return new g(patternCompile);
        }
    }

    public g(@NotNull Pattern nativePattern) {
        kotlin.jvm.internal.t.j(nativePattern, "nativePattern");
        this.nativePattern = nativePattern;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public g(@NotNull String pattern) {
        kotlin.jvm.internal.t.j(pattern, "pattern");
        Pattern patternCompile = Pattern.compile(pattern);
        kotlin.jvm.internal.t.i(patternCompile, "compile(...)");
        this(patternCompile);
    }

    private final Object writeReplace() {
        String strPattern = this.nativePattern.pattern();
        kotlin.jvm.internal.t.i(strPattern, "pattern(...)");
        return new b(strPattern, this.nativePattern.flags());
    }

    public final boolean a(@NotNull CharSequence input) {
        kotlin.jvm.internal.t.j(input, "input");
        return this.nativePattern.matcher(input).find();
    }

    public final boolean b(@NotNull CharSequence input) {
        kotlin.jvm.internal.t.j(input, "input");
        return this.nativePattern.matcher(input).matches();
    }

    @NotNull
    public final String c(@NotNull CharSequence input, @NotNull String replacement) {
        kotlin.jvm.internal.t.j(input, "input");
        kotlin.jvm.internal.t.j(replacement, "replacement");
        String strReplaceAll = this.nativePattern.matcher(input).replaceAll(replacement);
        kotlin.jvm.internal.t.i(strReplaceAll, "replaceAll(...)");
        return strReplaceAll;
    }

    @NotNull
    public final List<String> d(@NotNull CharSequence input, int i10) {
        kotlin.jvm.internal.t.j(input, "input");
        u.x0(i10);
        Matcher matcher = this.nativePattern.matcher(input);
        if (i10 == 1 || !matcher.find()) {
            return kotlin.collections.u.e(input.toString());
        }
        ArrayList arrayList = new ArrayList(i10 > 0 ? j8.o.j(i10, 10) : 10);
        int i11 = i10 - 1;
        int iEnd = 0;
        do {
            arrayList.add(input.subSequence(iEnd, matcher.start()).toString());
            iEnd = matcher.end();
            if (i11 >= 0 && arrayList.size() == i11) {
                break;
            }
        } while (matcher.find());
        arrayList.add(input.subSequence(iEnd, input.length()).toString());
        return arrayList;
    }

    @NotNull
    public String toString() {
        String string = this.nativePattern.toString();
        kotlin.jvm.internal.t.i(string, "toString(...)");
        return string;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public g(@NotNull String pattern, @NotNull i option) {
        kotlin.jvm.internal.t.j(pattern, "pattern");
        kotlin.jvm.internal.t.j(option, "option");
        Pattern patternCompile = Pattern.compile(pattern, Companion.b(option.getValue()));
        kotlin.jvm.internal.t.i(patternCompile, "compile(...)");
        this(patternCompile);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public g(@NotNull String pattern, @NotNull Set<? extends i> options) {
        kotlin.jvm.internal.t.j(pattern, "pattern");
        kotlin.jvm.internal.t.j(options, "options");
        Pattern patternCompile = Pattern.compile(pattern, Companion.b(h.b(options)));
        kotlin.jvm.internal.t.i(patternCompile, "compile(...)");
        this(patternCompile);
    }
}
