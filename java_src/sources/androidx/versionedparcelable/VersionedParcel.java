package androidx.versionedparcelable;

import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public abstract class VersionedParcel {
    private static final int EX_BAD_PARCELABLE = -2;
    private static final int EX_ILLEGAL_ARGUMENT = -3;
    private static final int EX_ILLEGAL_STATE = -5;
    private static final int EX_NETWORK_MAIN_THREAD = -6;
    private static final int EX_NULL_POINTER = -4;
    private static final int EX_PARCELABLE = -9;
    private static final int EX_SECURITY = -1;
    private static final int EX_UNSUPPORTED_OPERATION = -7;
    private static final String TAG = "VersionedParcel";
    private static final int TYPE_BINDER = 5;
    private static final int TYPE_FLOAT = 8;
    private static final int TYPE_INTEGER = 7;
    private static final int TYPE_PARCELABLE = 2;
    private static final int TYPE_SERIALIZABLE = 3;
    private static final int TYPE_STRING = 4;
    private static final int TYPE_VERSIONED_PARCELABLE = 1;
    protected final ArrayMap<String, Class> mParcelizerCache;
    protected final ArrayMap<String, Method> mReadCache;
    protected final ArrayMap<String, Method> mWriteCache;

    protected abstract void A(byte[] bArr);

    protected abstract void C(CharSequence charSequence);

    protected abstract void E(int i10);

    protected abstract void G(Parcelable parcelable);

    protected abstract void I(String str);

    protected abstract void a();

    protected abstract VersionedParcel b();

    public boolean f() {
        return false;
    }

    protected abstract boolean g();

    protected abstract byte[] i();

    protected abstract CharSequence k();

    protected abstract boolean m(int i10);

    protected abstract int o();

    protected abstract <T extends Parcelable> T q();

    protected abstract String s();

    protected abstract void w(int i10);

    public void x(boolean z6, boolean z10) {
    }

    protected abstract void y(boolean z6);

    /* JADX INFO: renamed from: androidx.versionedparcelable.VersionedParcel$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes6.dex */
    class AnonymousClass1 extends ObjectInputStream {
        final /* synthetic */ VersionedParcel this$0;

        @Override // java.io.ObjectInputStream
        protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws ClassNotFoundException, IOException {
            Class<?> cls = Class.forName(objectStreamClass.getName(), false, getClass().getClassLoader());
            if (cls != null) {
                return cls;
            }
            return super.resolveClass(objectStreamClass);
        }
    }

    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th) {
            super(th);
        }
    }

    private Class c(Class<? extends VersionedParcelable> cls) throws ClassNotFoundException {
        Class cls2 = this.mParcelizerCache.get(cls.getName());
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        this.mParcelizerCache.put(cls.getName(), cls3);
        return cls3;
    }

    private Method d(String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.mReadCache.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
        this.mReadCache.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Method e(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.mWriteCache.get(cls.getName());
        if (method != null) {
            return method;
        }
        Class clsC = c(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsC.getDeclaredMethod("write", cls, VersionedParcel.class);
        this.mWriteCache.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    protected void L(VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            I(null);
            return;
        }
        N(versionedParcelable);
        VersionedParcel versionedParcelB = b();
        K(versionedParcelable, versionedParcelB);
        versionedParcelB.a();
    }

    public VersionedParcel(ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        this.mReadCache = arrayMap;
        this.mWriteCache = arrayMap2;
        this.mParcelizerCache = arrayMap3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void N(VersionedParcelable versionedParcelable) {
        try {
            I(c(versionedParcelable.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(versionedParcelable.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    public void B(byte[] bArr, int i10) {
        w(i10);
        A(bArr);
    }

    public void D(CharSequence charSequence, int i10) {
        w(i10);
        C(charSequence);
    }

    public void F(int i10, int i11) {
        w(i11);
        E(i10);
    }

    public void H(Parcelable parcelable, int i10) {
        w(i10);
        G(parcelable);
    }

    public void J(String str, int i10) {
        w(i10);
        I(str);
    }

    protected <T extends VersionedParcelable> void K(T t5, VersionedParcel versionedParcel) {
        try {
            e(t5.getClass()).invoke(null, t5, versionedParcel);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e6) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e6);
        } catch (InvocationTargetException e7) {
            if (e7.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e7.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e7);
        }
    }

    public void M(VersionedParcelable versionedParcelable, int i10) {
        w(i10);
        L(versionedParcelable);
    }

    public boolean h(boolean z6, int i10) {
        if (!m(i10)) {
            return z6;
        }
        return g();
    }

    public byte[] j(byte[] bArr, int i10) {
        if (!m(i10)) {
            return bArr;
        }
        return i();
    }

    public CharSequence l(CharSequence charSequence, int i10) {
        if (!m(i10)) {
            return charSequence;
        }
        return k();
    }

    protected <T extends VersionedParcelable> T n(String str, VersionedParcel versionedParcel) {
        try {
            return (T) d(str).invoke(null, versionedParcel);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e6) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e6);
        } catch (InvocationTargetException e7) {
            if (e7.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e7.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e7);
        }
    }

    public int p(int i10, int i11) {
        if (!m(i11)) {
            return i10;
        }
        return o();
    }

    public <T extends Parcelable> T r(T t5, int i10) {
        if (!m(i10)) {
            return t5;
        }
        return (T) q();
    }

    public String t(String str, int i10) {
        if (!m(i10)) {
            return str;
        }
        return s();
    }

    protected <T extends VersionedParcelable> T u() {
        String strS = s();
        if (strS == null) {
            return null;
        }
        return (T) n(strS, b());
    }

    public <T extends VersionedParcelable> T v(T t5, int i10) {
        if (!m(i10)) {
            return t5;
        }
        return (T) u();
    }

    public void z(boolean z6, int i10) {
        w(i10);
        y(z6);
    }
}
