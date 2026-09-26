package qa;

import java.util.Arrays;
import java.util.Map;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes7.dex */
public final class n {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean i(String[] strArr) {
        return strArr.length > 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String j(String[] strArr) {
        return strArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String k(String[] strArr) {
        return y.d(strArr[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String l(String str, String str2) {
        return str2;
    }

    public static String o(String str, String str2) throws a {
        return m(str, str2, 1);
    }

    public static String p(Pattern pattern, String str) throws a {
        return n(pattern, str, 1);
    }

    public static Matcher r(Pattern[] patternArr, String str) throws a {
        a aVar = null;
        for (Pattern pattern : patternArr) {
            Matcher matcher = pattern.matcher(str);
            if (matcher.find()) {
                return matcher;
            }
            if (aVar == null) {
                aVar = str.length() > 1024 ? new a("Failed to find pattern \"" + pattern.pattern() + "\"") : new a("Failed to find pattern \"" + pattern.pattern() + "\" inside of \"" + str + "\"");
            }
        }
        if (aVar == null) {
            throw new a("Empty patterns array passed to matchMultiplePatterns");
        }
        throw aVar;
    }

    public static class a extends aa.h {
        public a(String str) {
            super(str);
        }
    }

    public static Map<String, String> f(String str) {
        return (Map) Arrays.stream(str.split("&")).map(new Function() { // from class: qa.i
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return n.h((String) obj);
            }
        }).filter(new Predicate() { // from class: qa.j
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return n.i((String[]) obj);
            }
        }).collect(Collectors.toMap(new Function() { // from class: qa.k
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return n.j((String[]) obj);
            }
        }, new Function() { // from class: qa.l
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return n.k((String[]) obj);
            }
        }, new BinaryOperator() { // from class: qa.m
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return n.l((String) obj, (String) obj2);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] h(String str) {
        return str.split("=");
    }

    public static boolean g(String str, String str2) {
        return Pattern.compile(str).matcher(str2).find();
    }

    public static String m(String str, String str2, int i10) throws a {
        return n(Pattern.compile(str), str2, i10);
    }

    public static String n(Pattern pattern, String str, int i10) throws a {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(i10);
        }
        if (str.length() > 1024) {
            throw new a("Failed to find pattern \"" + pattern.pattern() + "\"");
        }
        throw new a("Failed to find pattern \"" + pattern.pattern() + "\" inside of \"" + str + "\"");
    }

    public static String q(Pattern[] patternArr, String str) throws a {
        return r(patternArr, str).group(1);
    }
}
