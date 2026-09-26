package org.schabi.newpipe.extractor.services.youtube;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes10.dex */
final class u0 {
    private static final String ARRAY_ACCESS_REGEX = "\\[(\\d+)]";
    private static final String DEOBFUSCATION_FUNCTION_ARRAY_OBJECT_TYPE_DECLARATION_REGEX = "var ";
    private static final String DEOBFUSCATION_FUNCTION_BODY_REGEX = "=\\s*function([\\S\\s]*?\\}\\s*return [\\w$]+?\\.join\\(\"\"\\)\\s*\\};)";
    private static final String FUNCTION_NAMES_IN_DEOBFUSCATION_ARRAY_REGEX = "\\s*=\\s*\\[(.+?)][;,]";
    private static final String FUNCTION_NAME_REGEX = "[a-zA-Z0-9$_]+";
    private static final String SINGLE_CHAR_VARIABLE_REGEX = "[a-zA-Z0-9$_]";
    private static final Pattern THROTTLING_PARAM_PATTERN = Pattern.compile("[&?]n=([^&]+)");
    private static final Pattern[] DEOBFUSCATION_FUNCTION_NAME_REGEXES = {Pattern.compile("[a-zA-Z0-9$_]+=\"nn\"\\[\\+[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+],[a-zA-Z0-9$_]+=[a-zA-Z0-9$_]+\\.get\\([a-zA-Z0-9$_]+\\)\\)&&\\([a-zA-Z0-9$_]+=([a-zA-Z0-9$_]+)\\[(\\d+)]"), Pattern.compile("[a-zA-Z0-9$_]+=\"nn\"\\[\\+[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+],[a-zA-Z0-9$_]+=[a-zA-Z0-9$_]+\\.get\\([a-zA-Z0-9$_]+\\)\\).+\\|\\|([a-zA-Z0-9$_]+)\\(\"\"\\)"), Pattern.compile("\\([a-zA-Z0-9$_]=String\\.fromCharCode\\(110\\),[a-zA-Z0-9$_]=[a-zA-Z0-9$_]\\.get\\([a-zA-Z0-9$_]\\)\\)&&\\([a-zA-Z0-9$_]=([a-zA-Z0-9$_]+)(?:\\[(\\d+)])?\\([a-zA-Z0-9$_]\\)"), Pattern.compile("\\.get\\(\"n\"\\)\\)&&\\([a-zA-Z0-9$_]=([a-zA-Z0-9$_]+)(?:\\[(\\d+)])?\\([a-zA-Z0-9$_]\\)")};

    static String b(String str) throws aa.h {
        try {
            Matcher matcherR = qa.n.r(DEOBFUSCATION_FUNCTION_NAME_REGEXES, str);
            String strGroup = matcherR.group(1);
            if (matcherR.groupCount() == 1) {
                return strGroup;
            }
            return qa.n.p(Pattern.compile(DEOBFUSCATION_FUNCTION_ARRAY_OBJECT_TYPE_DECLARATION_REGEX + Pattern.quote(strGroup) + FUNCTION_NAMES_IN_DEOBFUSCATION_ARRAY_REGEX), str).split(",")[Integer.parseInt(matcherR.group(2))];
        } catch (qa.n.a e) {
            throw new aa.h("Could not find deobfuscation function with any of the known patterns in the base JavaScript player code", e);
        }
    }

    static String c(String str) {
        try {
            return qa.n.p(THROTTLING_PARAM_PATTERN, str);
        } catch (qa.n.a unused) {
            return null;
        }
    }

    private static String d(String str, String str2) throws aa.h {
        String str3 = str2 + "=function";
        return str3 + org.schabi.newpipe.extractor.utils.jsextractor.a.a(str, str3) + ";";
    }

    static String a(String str, String str2) throws aa.h {
        try {
            return d(str, str2);
        } catch (Exception unused) {
            return e(str, str2);
        }
    }

    private static String e(String str, String str2) throws qa.n.a {
        return f("function " + str2 + qa.n.p(Pattern.compile(Pattern.quote(str2) + DEOBFUSCATION_FUNCTION_BODY_REGEX, 32), str));
    }

    private static String f(String str) {
        qa.c.a(str);
        return str;
    }
}
