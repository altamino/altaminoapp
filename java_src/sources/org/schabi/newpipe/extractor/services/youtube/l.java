package org.schabi.newpipe.extractor.services.youtube;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class l {
    private static final Map<String, String> CACHED_THROTTLING_PARAMETERS = new HashMap();
    private static String cachedJavaScriptPlayerCode;
    private static String cachedSignatureDeobfuscationFunction;
    private static Integer cachedSignatureTimestamp;
    private static String cachedThrottlingDeobfuscationFunction;
    private static String cachedThrottlingDeobfuscationFunctionName;
    private static aa.h sigDeobFuncExtractionEx;
    private static aa.h sigTimestampExtractionEx;
    private static aa.h throttlingDeobfFuncExtractionEx;

    public static String a(String str, String str2) throws Exception {
        aa.h hVar = sigDeobFuncExtractionEx;
        if (hVar != null) {
            throw hVar;
        }
        b(str);
        if (cachedSignatureDeobfuscationFunction == null) {
            try {
                cachedSignatureDeobfuscationFunction = t0.c(cachedJavaScriptPlayerCode);
            } catch (aa.h e) {
                sigDeobFuncExtractionEx = e;
                throw e;
            } catch (Exception e2) {
                sigDeobFuncExtractionEx = new aa.h("Could not get signature parameter deobfuscation JavaScript function", e2);
                throw e2;
            }
        }
        try {
            return (String) k.a(qa.c.b(cachedSignatureDeobfuscationFunction, "deobfuscate", str2), "");
        } catch (Exception e6) {
            throw new aa.h("Could not run signature parameter deobfuscation JavaScript function", e6);
        }
    }

    private static void b(String str) throws aa.h {
        if (cachedJavaScriptPlayerCode == null) {
            cachedJavaScriptPlayerCode = j.c(str);
        }
    }

    public static Integer c(String str) throws Exception {
        Integer num = cachedSignatureTimestamp;
        if (num != null) {
            return num;
        }
        aa.h hVar = sigTimestampExtractionEx;
        if (hVar != null) {
            throw hVar;
        }
        b(str);
        try {
            cachedSignatureTimestamp = Integer.valueOf(t0.f(cachedJavaScriptPlayerCode));
        } catch (aa.h e) {
            sigTimestampExtractionEx = e;
            throw e;
        } catch (NumberFormatException e2) {
            sigTimestampExtractionEx = new aa.h("Could not convert signature timestamp to a number", e2);
        } catch (Exception e6) {
            sigTimestampExtractionEx = new aa.h("Could not get signature timestamp", e6);
            throw e6;
        }
        return cachedSignatureTimestamp;
    }

    public static String d(String str, String str2) throws Exception {
        String strC = u0.c(str2);
        if (strC == null) {
            return str2;
        }
        Map<String, String> map = CACHED_THROTTLING_PARAMETERS;
        CharSequence charSequence = (String) map.get(strC);
        if (charSequence != null) {
            return str2.replace(strC, charSequence);
        }
        b(str);
        aa.h hVar = throttlingDeobfFuncExtractionEx;
        if (hVar == null) {
            if (cachedThrottlingDeobfuscationFunction == null) {
                try {
                    String strB = u0.b(cachedJavaScriptPlayerCode);
                    cachedThrottlingDeobfuscationFunctionName = strB;
                    cachedThrottlingDeobfuscationFunction = u0.a(cachedJavaScriptPlayerCode, strB);
                } catch (aa.h e) {
                    throttlingDeobfFuncExtractionEx = e;
                    throw e;
                } catch (Exception e2) {
                    throttlingDeobfFuncExtractionEx = new aa.h("Could not get throttling parameter deobfuscation JavaScript function", e2);
                    throw e2;
                }
            }
            try {
                String strB2 = qa.c.b(cachedThrottlingDeobfuscationFunction, cachedThrottlingDeobfuscationFunctionName, strC);
                map.put(strC, strB2);
                return str2.replace(strC, strB2);
            } catch (Exception e6) {
                throw new aa.h("Could not run throttling parameter deobfuscation JavaScript function", e6);
            }
        }
        throw hVar;
    }
}
