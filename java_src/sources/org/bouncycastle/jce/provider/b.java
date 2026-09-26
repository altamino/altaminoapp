package org.bouncycastle.jce.provider;

import java.security.Permission;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import z8.c;

/* JADX INFO: loaded from: classes10.dex */
class b implements z8.b {
    private volatile Object dhDefaultParams;
    private volatile b9.a ecImplicitCaParams;
    private static Permission BC_EC_LOCAL_PERMISSION = new c(a.PROVIDER_NAME, z8.a.THREAD_LOCAL_EC_IMPLICITLY_CA);
    private static Permission BC_EC_PERMISSION = new c(a.PROVIDER_NAME, z8.a.EC_IMPLICITLY_CA);
    private static Permission BC_DH_LOCAL_PERMISSION = new c(a.PROVIDER_NAME, z8.a.THREAD_LOCAL_DH_DEFAULT_PARAMS);
    private static Permission BC_DH_PERMISSION = new c(a.PROVIDER_NAME, z8.a.DH_DEFAULT_PARAMS);
    private static Permission BC_EC_CURVE_PERMISSION = new c(a.PROVIDER_NAME, z8.a.ACCEPTABLE_EC_CURVES);
    private static Permission BC_ADDITIONAL_EC_CURVE_PERMISSION = new c(a.PROVIDER_NAME, z8.a.ADDITIONAL_EC_PARAMETERS);
    private ThreadLocal ecThreadSpec = new ThreadLocal();
    private ThreadLocal dhThreadSpec = new ThreadLocal();
    private volatile Set acceptableNamedCurves = new HashSet();
    private volatile Map additionalECParameters = new HashMap();

    b() {
    }
}
