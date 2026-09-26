package org.schabi.newpipe.extractor.services.youtube;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes10.dex */
final class t0 {
    static final String DEOBFUSCATION_FUNCTION_NAME = "deobfuscate";
    private static final String DEOBF_FUNC_REGEX_END = "=function\\([a-zA-Z0-9_]+\\)\\{.+?\\})";
    private static final String DEOBF_FUNC_REGEX_START = "(";
    private static final Pattern[] FUNCTION_REGEXES = {Pattern.compile("\\bm=([a-zA-Z0-9$]{2,})\\(decodeURIComponent\\(h\\.s\\)\\)"), Pattern.compile("\\bc&&\\(c=([a-zA-Z0-9$]{2,})\\(decodeURIComponent\\(c\\)\\)"), Pattern.compile("(?:\\b|[^a-zA-Z0-9$])([a-zA-Z0-9$]{2,})\\s*=\\s*function\\(\\s*a\\s*\\)\\s*\\{\\s*a\\s*=\\s*a\\.split\\(\\s*\"\"\\s*\\)"), Pattern.compile("([\\w$]+)\\s*=\\s*function\\((\\w+)\\)\\{\\s*\\2=\\s*\\2\\.split\\(\"\"\\)\\s*;")};
    private static final String SIG_DEOBF_HELPER_OBJ_NAME_REGEX = ";([A-Za-z0-9_\\$]{2,})\\...\\(";
    private static final String SIG_DEOBF_HELPER_OBJ_REGEX_END = "=\\{(?>.|\\n)+?\\}\\};)";
    private static final String SIG_DEOBF_HELPER_OBJ_REGEX_START = "(var ";
    private static final String STS_REGEX = "signatureTimestamp[=:](\\d+)";

    private static String a(String str, String str2) throws aa.h {
        String str3 = str2 + "=function";
        return str3 + org.schabi.newpipe.extractor.utils.jsextractor.a.a(str, str3);
    }

    private static String d(String str) throws aa.h {
        try {
            return qa.n.q(FUNCTION_REGEXES, str);
        } catch (qa.n.a e) {
            throw new aa.h("Could not find deobfuscation function with any of the known patterns", e);
        }
    }

    static String f(String str) throws aa.h {
        try {
            return qa.n.o(STS_REGEX, str);
        } catch (aa.h e) {
            throw new aa.h("Could not extract signature timestamp from JavaScript code", e);
        }
    }

    private static String b(String str, String str2) throws aa.h {
        return "var " + qa.n.o(DEOBF_FUNC_REGEX_START + Pattern.quote(str2) + DEOBF_FUNC_REGEX_END, str);
    }

    static String c(String str) throws aa.h {
        String strB;
        try {
            String strD = d(str);
            try {
                strB = a(str, strD);
            } catch (Exception unused) {
                strB = b(str, strD);
            }
            qa.c.a(strB);
            return e(str, qa.n.o(SIG_DEOBF_HELPER_OBJ_NAME_REGEX, strB)) + strB + ";" + ("function deobfuscate(a){return " + strD + "(a);}");
        } catch (Exception e) {
            throw new aa.h("Could not parse deobfuscation function", e);
        }
    }

    private static String e(String str, String str2) throws aa.h {
        return qa.n.o(SIG_DEOBF_HELPER_OBJ_REGEX_START + Pattern.quote(str2) + SIG_DEOBF_HELPER_OBJ_REGEX_END, str).replace("\n", "");
    }
}
