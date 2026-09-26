package org.chickenhook.restrictionbypass;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public class Unseal {
    public static void unseal() throws Exception {
        Method declaredMethod = RestrictionBypass.getDeclaredMethod(Class.forName("dalvik.system.VMRuntime"), "getRuntime", new Class[0]);
        declaredMethod.setAccessible(true);
        Object objInvoke = declaredMethod.invoke(null, new Object[0]);
        Method declaredMethod2 = RestrictionBypass.getDeclaredMethod(objInvoke.getClass(), "setHiddenApiExemptions", String[].class);
        declaredMethod2.setAccessible(true);
        declaredMethod2.invoke(objInvoke, new String[]{"L"});
    }
}
