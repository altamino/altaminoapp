package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.support.annotation.Nullable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8U, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C8U<T> implements InvocationHandler {
    private static byte[] A02;
    public ClassLoader A00;
    public T A01;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 121);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A02 = new byte[]{66, 81, 74};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.8U != com.facebook.ads.internal.apiimp.AdApiProxy$ProxyInvocationHandler<T> */
    public C8U(T impl, ClassLoader classLoader) {
        this.A01 = impl;
        this.A00 = classLoader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static Object A00(final ClassLoader classLoader, Method method) throws ArrayIndexOutOfBoundsException, IllegalArgumentException {
        Object objA02 = null;
        Class<?> returnType = method.getReturnType();
        char c = returnType.equals(Void.TYPE) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    objA02 = null;
                    c = 3;
                    break;
                case 3:
                    return objA02;
                case 4:
                    returnType = returnType;
                    if (!returnType.isPrimitive()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    method = method;
                    objA02 = Array.get(Array.newInstance(method.getReturnType(), 1), 0);
                    c = 3;
                    break;
                case 6:
                    returnType = returnType;
                    if (!returnType.equals(String.class)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    objA02 = A02(3, 0, 11);
                    c = 3;
                    break;
                case '\b':
                    returnType = returnType;
                    if (!returnType.isInterface()) {
                        c = 3;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    classLoader = classLoader;
                    returnType = returnType;
                    objA02 = Proxy.newProxyInstance(classLoader, new Class[]{returnType}, new InvocationHandler() { // from class: com.facebook.ads.redexgen.X.8T
                        @Override // java.lang.reflect.InvocationHandler
                        @Nullable
                        public final Object invoke(Object obj, Method method2, Object[] objArr) {
                            return C8U.A00(classLoader, method2);
                        }
                    });
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.8U != com.facebook.ads.internal.apiimp.AdApiProxy$ProxyInvocationHandler<T> */
    public final T A04() {
        return this.A01;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.8U != com.facebook.ads.internal.apiimp.AdApiProxy$ProxyInvocationHandler<T> */
    @Override // java.lang.reflect.InvocationHandler
    @SuppressLint({"CatchGeneralException"})
    public final Object invoke(Object obj, Method method, Object[] objArr) throws ArrayIndexOutOfBoundsException, IllegalArgumentException {
        C8U<T> c8u = this;
        Throwable targetException = null;
        Throwable th = null;
        Object objA00 = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        c8u = c8u;
                        objA00 = method.invoke(c8u.A01, objArr);
                        c = '\t';
                        break;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!(th instanceof InvocationTargetException)) {
                            c = '\b';
                            break;
                        } else {
                            c = 6;
                            break;
                        }
                    }
                case 6:
                    th = th;
                    targetException = ((InvocationTargetException) th).getTargetException();
                    if (!(targetException instanceof AnonymousClass45)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    throw new IllegalStateException(targetException.getMessage());
                case '\b':
                    c8u = c8u;
                    method = method;
                    th = th;
                    objA00 = A00(c8u.A00, method);
                    P7.A0E(A02(0, 3, 104), P8.A0C, new PA(th));
                    c = '\t';
                    break;
                case '\t':
                    return objA00;
            }
        }
    }
}
