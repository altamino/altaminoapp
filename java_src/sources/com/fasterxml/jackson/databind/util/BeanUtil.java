package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;

/* JADX INFO: loaded from: classes10.dex */
public class BeanUtil {
    protected static boolean isGroovyMetaClassSetter(AnnotatedMethod annotatedMethod) {
        Package r5 = annotatedMethod.getRawParameterType(0).getPackage();
        return r5 != null && r5.getName().startsWith("groovy.lang");
    }

    public static String okNameForIsGetter(AnnotatedMethod annotatedMethod, String str) {
        if (!str.startsWith("is")) {
            return null;
        }
        Class<?> rawType = annotatedMethod.getRawType();
        if (rawType == Boolean.class || rawType == Boolean.TYPE) {
            return manglePropertyName(str.substring(2));
        }
        return null;
    }

    public static String okNameForRegularGetter(AnnotatedMethod annotatedMethod, String str) {
        if (!str.startsWith("get")) {
            return null;
        }
        if ("getCallbacks".equals(str)) {
            if (isCglibGetCallbacks(annotatedMethod)) {
                return null;
            }
        } else if ("getMetaClass".equals(str) && isGroovyMetaClassGetter(annotatedMethod)) {
            return null;
        }
        return manglePropertyName(str.substring(3));
    }

    public static String okNameForSetter(AnnotatedMethod annotatedMethod) {
        String strOkNameForMutator = okNameForMutator(annotatedMethod, "set");
        if (strOkNameForMutator == null) {
            return null;
        }
        if ("metaClass".equals(strOkNameForMutator) && isGroovyMetaClassSetter(annotatedMethod)) {
            return null;
        }
        return strOkNameForMutator;
    }

    protected static boolean isCglibGetCallbacks(AnnotatedMethod annotatedMethod) {
        Package r5;
        Class<?> rawType = annotatedMethod.getRawType();
        if (rawType != null && rawType.isArray() && (r5 = rawType.getComponentType().getPackage()) != null) {
            String name = r5.getName();
            if (name.startsWith("net.sf.cglib") || name.startsWith("org.hibernate.repackage.cglib")) {
                return true;
            }
        }
        return false;
    }

    protected static boolean isGroovyMetaClassGetter(AnnotatedMethod annotatedMethod) {
        Package r5;
        Class<?> rawType = annotatedMethod.getRawType();
        if (rawType == null || rawType.isArray() || (r5 = rawType.getPackage()) == null || !r5.getName().startsWith("groovy.lang")) {
            return false;
        }
        return true;
    }

    protected static String manglePropertyName(String str) {
        int length = str.length();
        StringBuilder sb = null;
        if (length == 0) {
            return null;
        }
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            char lowerCase = Character.toLowerCase(cCharAt);
            if (cCharAt == lowerCase) {
                break;
            }
            if (sb == null) {
                sb = new StringBuilder(str);
            }
            sb.setCharAt(i10, lowerCase);
        }
        if (sb != null) {
            return sb.toString();
        }
        return str;
    }

    public static String okNameForGetter(AnnotatedMethod annotatedMethod) {
        String name = annotatedMethod.getName();
        String strOkNameForIsGetter = okNameForIsGetter(annotatedMethod, name);
        if (strOkNameForIsGetter == null) {
            return okNameForRegularGetter(annotatedMethod, name);
        }
        return strOkNameForIsGetter;
    }

    public static String okNameForMutator(AnnotatedMethod annotatedMethod, String str) {
        String name = annotatedMethod.getName();
        if (name.startsWith(str)) {
            return manglePropertyName(name.substring(str.length()));
        }
        return null;
    }
}
