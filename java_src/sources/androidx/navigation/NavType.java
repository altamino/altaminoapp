package androidx.navigation;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.AnyRes;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Serializable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.b;
import okhttp3.HttpUrl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class NavType<T> {
    private final boolean isNullableAllowed;

    @NotNull
    private final String name = "nav_type";

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final NavType<Integer> IntType = new NavType<Integer>() { // from class: androidx.navigation.NavType$Companion$IntType$1
        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            return TypedValues.Custom.S_INT;
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void f(Bundle bundle, String str, Integer num) {
            i(bundle, str, num.intValue());
        }

        @Override // androidx.navigation.NavType
        @NotNull
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public Integer a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            Object obj = bundle.get(key);
            if (obj != null) {
                return Integer.valueOf(((Integer) obj).intValue());
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
        }

        public void i(@NotNull Bundle bundle, @NotNull String key, int i10) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            bundle.putInt(key, i10);
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public Integer h(@NotNull String value) {
            int i10;
            t.j(value, "value");
            if (kotlin.text.t.K(value, "0x", false, 2, null)) {
                String strSubstring = value.substring(2);
                t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                i10 = Integer.parseInt(strSubstring, b.a(16));
            } else {
                i10 = Integer.parseInt(value);
            }
            return Integer.valueOf(i10);
        }
    };

    @NotNull
    public static final NavType<Integer> ReferenceType = new NavType<Integer>() { // from class: androidx.navigation.NavType$Companion$ReferenceType$1
        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            return "reference";
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void f(Bundle bundle, String str, Integer num) {
            i(bundle, str, num.intValue());
        }

        @Override // androidx.navigation.NavType
        @AnyRes
        @NotNull
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public Integer a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            Object obj = bundle.get(key);
            if (obj != null) {
                return Integer.valueOf(((Integer) obj).intValue());
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
        }

        public void i(@NotNull Bundle bundle, @NotNull String key, @AnyRes int i10) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            bundle.putInt(key, i10);
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public Integer h(@NotNull String value) {
            int i10;
            t.j(value, "value");
            if (kotlin.text.t.K(value, "0x", false, 2, null)) {
                String strSubstring = value.substring(2);
                t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                i10 = Integer.parseInt(strSubstring, b.a(16));
            } else {
                i10 = Integer.parseInt(value);
            }
            return Integer.valueOf(i10);
        }
    };

    @NotNull
    public static final NavType<int[]> IntArrayType = new NavType<int[]>() { // from class: androidx.navigation.NavType$Companion$IntArrayType$1
        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            return "integer[]";
        }

        @Override // androidx.navigation.NavType
        @Nullable
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public int[] a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            return (int[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void f(@NotNull Bundle bundle, @NotNull String key, @Nullable int[] iArr) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            bundle.putIntArray(key, iArr);
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public int[] h(@NotNull String value) {
            t.j(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }
    };

    @NotNull
    public static final NavType<Long> LongType = new NavType<Long>() { // from class: androidx.navigation.NavType$Companion$LongType$1
        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            return "long";
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void f(Bundle bundle, String str, Long l) {
            i(bundle, str, l.longValue());
        }

        @Override // androidx.navigation.NavType
        @NotNull
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public Long a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            Object obj = bundle.get(key);
            if (obj != null) {
                return Long.valueOf(((Long) obj).longValue());
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
        }

        public void i(@NotNull Bundle bundle, @NotNull String key, long j6) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            bundle.putLong(key, j6);
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public Long h(@NotNull String value) {
            String strSubstring;
            long j6;
            t.j(value, "value");
            if (kotlin.text.t.v(value, "L", false, 2, null)) {
                strSubstring = value.substring(0, value.length() - 1);
                t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            } else {
                strSubstring = value;
            }
            if (kotlin.text.t.K(value, "0x", false, 2, null)) {
                String strSubstring2 = strSubstring.substring(2);
                t.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
                j6 = Long.parseLong(strSubstring2, b.a(16));
            } else {
                j6 = Long.parseLong(strSubstring);
            }
            return Long.valueOf(j6);
        }
    };

    @NotNull
    public static final NavType<long[]> LongArrayType = new NavType<long[]>() { // from class: androidx.navigation.NavType$Companion$LongArrayType$1
        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            return "long[]";
        }

        @Override // androidx.navigation.NavType
        @Nullable
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public long[] a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            return (long[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void f(@NotNull Bundle bundle, @NotNull String key, @Nullable long[] jArr) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            bundle.putLongArray(key, jArr);
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public long[] h(@NotNull String value) {
            t.j(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }
    };

    @NotNull
    public static final NavType<Float> FloatType = new NavType<Float>() { // from class: androidx.navigation.NavType$Companion$FloatType$1
        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            return TypedValues.Custom.S_FLOAT;
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void f(Bundle bundle, String str, Float f) {
            i(bundle, str, f.floatValue());
        }

        @Override // androidx.navigation.NavType
        @NotNull
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public Float a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            Object obj = bundle.get(key);
            if (obj != null) {
                return Float.valueOf(((Float) obj).floatValue());
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Float");
        }

        public void i(@NotNull Bundle bundle, @NotNull String key, float f) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            bundle.putFloat(key, f);
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public Float h(@NotNull String value) {
            t.j(value, "value");
            return Float.valueOf(Float.parseFloat(value));
        }
    };

    @NotNull
    public static final NavType<float[]> FloatArrayType = new NavType<float[]>() { // from class: androidx.navigation.NavType$Companion$FloatArrayType$1
        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            return "float[]";
        }

        @Override // androidx.navigation.NavType
        @Nullable
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public float[] a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            return (float[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void f(@NotNull Bundle bundle, @NotNull String key, @Nullable float[] fArr) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            bundle.putFloatArray(key, fArr);
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public float[] h(@NotNull String value) {
            t.j(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }
    };

    @NotNull
    public static final NavType<Boolean> BoolType = new NavType<Boolean>() { // from class: androidx.navigation.NavType$Companion$BoolType$1
        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            return TypedValues.Custom.S_BOOLEAN;
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void f(Bundle bundle, String str, Boolean bool) {
            i(bundle, str, bool.booleanValue());
        }

        @Override // androidx.navigation.NavType
        @Nullable
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public Boolean a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            return (Boolean) bundle.get(key);
        }

        public void i(@NotNull Bundle bundle, @NotNull String key, boolean z6) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            bundle.putBoolean(key, z6);
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public Boolean h(@NotNull String value) {
            boolean z6;
            t.j(value, "value");
            if (t.e(value, "true")) {
                z6 = true;
            } else if (t.e(value, "false")) {
                z6 = false;
            } else {
                throw new IllegalArgumentException("A boolean NavType only accepts \"true\" or \"false\" values.");
            }
            return Boolean.valueOf(z6);
        }
    };

    @NotNull
    public static final NavType<boolean[]> BoolArrayType = new NavType<boolean[]>() { // from class: androidx.navigation.NavType$Companion$BoolArrayType$1
        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            return "boolean[]";
        }

        @Override // androidx.navigation.NavType
        @Nullable
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public boolean[] a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            return (boolean[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void f(@NotNull Bundle bundle, @NotNull String key, @Nullable boolean[] zArr) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            bundle.putBooleanArray(key, zArr);
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public boolean[] h(@NotNull String value) {
            t.j(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }
    };

    @NotNull
    public static final NavType<String> StringType = new NavType<String>() { // from class: androidx.navigation.NavType$Companion$StringType$1
        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            return TypedValues.Custom.S_STRING;
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public String h(@NotNull String value) {
            t.j(value, "value");
            return value;
        }

        @Override // androidx.navigation.NavType
        @Nullable
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public String a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            return (String) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void f(@NotNull Bundle bundle, @NotNull String key, @Nullable String str) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            bundle.putString(key, str);
        }
    };

    @NotNull
    public static final NavType<String[]> StringArrayType = new NavType<String[]>() { // from class: androidx.navigation.NavType$Companion$StringArrayType$1
        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            return "string[]";
        }

        @Override // androidx.navigation.NavType
        @Nullable
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public String[] a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            return (String[]) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void f(@NotNull Bundle bundle, @NotNull String key, @Nullable String[] strArr) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            bundle.putStringArray(key, strArr);
        }

        @Override // androidx.navigation.NavType
        @Nullable
        public String[] h(@NotNull String value) {
            t.j(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public NavType<?> a(@Nullable String str, @Nullable String str2) {
            String strSubstring;
            NavType<Integer> navType = NavType.IntType;
            if (t.e(navType.b(), str)) {
                return navType;
            }
            NavType navType2 = NavType.IntArrayType;
            if (t.e(navType2.b(), str)) {
                return navType2;
            }
            NavType<Long> navType3 = NavType.LongType;
            if (t.e(navType3.b(), str)) {
                return navType3;
            }
            NavType navType4 = NavType.LongArrayType;
            if (t.e(navType4.b(), str)) {
                return navType4;
            }
            NavType<Boolean> navType5 = NavType.BoolType;
            if (t.e(navType5.b(), str)) {
                return navType5;
            }
            NavType navType6 = NavType.BoolArrayType;
            if (t.e(navType6.b(), str)) {
                return navType6;
            }
            NavType<String> navType7 = NavType.StringType;
            if (t.e(navType7.b(), str)) {
                return navType7;
            }
            NavType navType8 = NavType.StringArrayType;
            if (t.e(navType8.b(), str)) {
                return navType8;
            }
            NavType<Float> navType9 = NavType.FloatType;
            if (t.e(navType9.b(), str)) {
                return navType9;
            }
            NavType navType10 = NavType.FloatArrayType;
            if (t.e(navType10.b(), str)) {
                return navType10;
            }
            NavType<Integer> navType11 = NavType.ReferenceType;
            if (t.e(navType11.b(), str)) {
                return navType11;
            }
            if (str == null || str.length() == 0) {
                return navType7;
            }
            try {
                if (!kotlin.text.t.K(str, ".", false, 2, null) || str2 == null) {
                    strSubstring = str;
                } else {
                    strSubstring = str2 + str;
                }
                if (kotlin.text.t.v(str, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, false, 2, null)) {
                    strSubstring = strSubstring.substring(0, strSubstring.length() - 2);
                    t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    Class<?> cls = Class.forName(strSubstring);
                    if (Parcelable.class.isAssignableFrom(cls)) {
                        return new ParcelableArrayType(cls);
                    }
                    if (Serializable.class.isAssignableFrom(cls)) {
                        return new SerializableArrayType(cls);
                    }
                } else {
                    Class<?> cls2 = Class.forName(strSubstring);
                    if (Parcelable.class.isAssignableFrom(cls2)) {
                        return new ParcelableType(cls2);
                    }
                    if (Enum.class.isAssignableFrom(cls2)) {
                        return new EnumType(cls2);
                    }
                    if (Serializable.class.isAssignableFrom(cls2)) {
                        return new SerializableType(cls2);
                    }
                }
                throw new IllegalArgumentException(strSubstring + " is not Serializable or Parcelable.");
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }

        /* JADX WARN: Code duplicated, block: B:45:0x008f  */
        /* JADX WARN: Code duplicated, block: B:47:0x0099  */
        /* JADX WARN: Code duplicated, block: B:49:0x00ac  */
        /* JADX WARN: Code duplicated, block: B:51:0x00b8  */
        /* JADX WARN: Code duplicated, block: B:52:0x00bc  */
        /* JADX WARN: Code duplicated, block: B:54:0x00c5  */
        /* JADX WARN: Code duplicated, block: B:56:0x00c9  */
        /* JADX WARN: Code duplicated, block: B:57:0x00d3  */
        /* JADX WARN: Code duplicated, block: B:59:0x00d7  */
        /* JADX WARN: Code duplicated, block: B:60:0x00e1  */
        /* JADX WARN: Code duplicated, block: B:62:0x00e5  */
        /* JADX WARN: Code duplicated, block: B:63:0x00ef  */
        /* JADX WARN: Instruction removed from duplicated block: B:63:0x00ef, please report this as an issue */
        @RestrictTo
        @NotNull
        public final NavType<Object> c(@Nullable Object obj) {
            NavType<Object> serializableType;
            Class<?> componentType;
            Class<?> componentType2;
            if (obj instanceof Integer) {
                return NavType.IntType;
            }
            if (obj instanceof int[]) {
                return NavType.IntArrayType;
            }
            if (obj instanceof Long) {
                return NavType.LongType;
            }
            if (obj instanceof long[]) {
                return NavType.LongArrayType;
            }
            if (obj instanceof Float) {
                return NavType.FloatType;
            }
            if (obj instanceof float[]) {
                return NavType.FloatArrayType;
            }
            if (obj instanceof Boolean) {
                return NavType.BoolType;
            }
            if (obj instanceof boolean[]) {
                return NavType.BoolArrayType;
            }
            if ((obj instanceof String) || obj == null) {
                return NavType.StringType;
            }
            if ((obj instanceof Object[]) && (((Object[]) obj) instanceof String[])) {
                return NavType.StringArrayType;
            }
            if (obj.getClass().isArray()) {
                Class<?> componentType3 = obj.getClass().getComponentType();
                t.g(componentType3);
                if (Parcelable.class.isAssignableFrom(componentType3)) {
                    Class<?> componentType4 = obj.getClass().getComponentType();
                    if (componentType4 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.Class<android.os.Parcelable>");
                    }
                    serializableType = new ParcelableArrayType<>(componentType4);
                } else if (obj.getClass().isArray()) {
                    componentType = obj.getClass().getComponentType();
                    t.g(componentType);
                    if (Serializable.class.isAssignableFrom(componentType)) {
                        componentType2 = obj.getClass().getComponentType();
                        if (componentType2 != null) {
                            throw new NullPointerException("null cannot be cast to non-null type java.lang.Class<java.io.Serializable>");
                        }
                        serializableType = new SerializableArrayType<>(componentType2);
                    } else if (obj instanceof Parcelable) {
                        serializableType = new ParcelableType<>(obj.getClass());
                    } else if (obj instanceof Enum) {
                        serializableType = new EnumType<>(obj.getClass());
                    } else {
                        if (obj instanceof Serializable) {
                            throw new IllegalArgumentException("Object of type " + obj.getClass().getName() + " is not supported for navigation arguments.");
                        }
                        serializableType = new SerializableType<>(obj.getClass());
                    }
                } else if (obj instanceof Parcelable) {
                    serializableType = new ParcelableType<>(obj.getClass());
                } else if (obj instanceof Enum) {
                    serializableType = new EnumType<>(obj.getClass());
                } else {
                    if (obj instanceof Serializable) {
                        throw new IllegalArgumentException("Object of type " + obj.getClass().getName() + " is not supported for navigation arguments.");
                    }
                    serializableType = new SerializableType<>(obj.getClass());
                }
            } else if (obj.getClass().isArray()) {
                componentType = obj.getClass().getComponentType();
                t.g(componentType);
                if (Serializable.class.isAssignableFrom(componentType)) {
                    componentType2 = obj.getClass().getComponentType();
                    if (componentType2 != null) {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.Class<java.io.Serializable>");
                    }
                    serializableType = new SerializableArrayType<>(componentType2);
                } else if (obj instanceof Parcelable) {
                    serializableType = new ParcelableType<>(obj.getClass());
                } else if (obj instanceof Enum) {
                    serializableType = new EnumType<>(obj.getClass());
                } else {
                    if (obj instanceof Serializable) {
                        throw new IllegalArgumentException("Object of type " + obj.getClass().getName() + " is not supported for navigation arguments.");
                    }
                    serializableType = new SerializableType<>(obj.getClass());
                }
            } else if (obj instanceof Parcelable) {
                serializableType = new ParcelableType<>(obj.getClass());
            } else if (obj instanceof Enum) {
                serializableType = new EnumType<>(obj.getClass());
            } else {
                if (obj instanceof Serializable) {
                    throw new IllegalArgumentException("Object of type " + obj.getClass().getName() + " is not supported for navigation arguments.");
                }
                serializableType = new SerializableType<>(obj.getClass());
            }
            return serializableType;
        }

        @RestrictTo
        @NotNull
        public final NavType<Object> b(@NotNull String value) {
            t.j(value, "value");
            try {
                try {
                    try {
                        try {
                            NavType<Integer> navType = NavType.IntType;
                            navType.h(value);
                            return navType;
                        } catch (IllegalArgumentException unused) {
                            NavType<Float> navType2 = NavType.FloatType;
                            navType2.h(value);
                            return navType2;
                        }
                    } catch (IllegalArgumentException unused2) {
                        return NavType.StringType;
                    }
                } catch (IllegalArgumentException unused3) {
                    NavType<Long> navType3 = NavType.LongType;
                    navType3.h(value);
                    return navType3;
                }
            } catch (IllegalArgumentException unused4) {
                NavType<Boolean> navType4 = NavType.BoolType;
                navType4.h(value);
                return navType4;
            }
        }
    }

    public static final class EnumType<D extends Enum<?>> extends SerializableType<D> {

        @NotNull
        private final Class<D> type;

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        @NotNull
        public String b() {
            String name = this.type.getName();
            t.i(name, "type.name");
            return name;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnumType(@NotNull Class<D> type) {
            super(false, type);
            t.j(type, "type");
            if (type.isEnum()) {
                this.type = type;
                return;
            }
            throw new IllegalArgumentException((type + " is not an Enum type.").toString());
        }

        @Override // androidx.navigation.NavType.SerializableType
        @NotNull
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public D h(@NotNull String value) {
            D d;
            t.j(value, "value");
            D[] enumConstants = this.type.getEnumConstants();
            t.i(enumConstants, "type.enumConstants");
            int length = enumConstants.length;
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    d = enumConstants[i10];
                    if (kotlin.text.t.w(d.name(), value, true)) {
                        break;
                    }
                    i10++;
                } else {
                    d = null;
                    break;
                }
            }
            D d2 = d;
            if (d2 != null) {
                return d2;
            }
            throw new IllegalArgumentException("Enum value " + value + " not found for type " + this.type.getName() + '.');
        }
    }

    public static final class ParcelableArrayType<D extends Parcelable> extends NavType<D[]> {

        @NotNull
        private final Class<D[]> arrayType;

        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            String name = this.arrayType.getName();
            t.i(name, "arrayType.name");
            return name;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !t.e(ParcelableArrayType.class, obj.getClass())) {
                return false;
            }
            return t.e(this.arrayType, ((ParcelableArrayType) obj).arrayType);
        }

        @Override // androidx.navigation.NavType
        @Nullable
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public D[] a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            return (D[]) ((Parcelable[]) bundle.get(key));
        }

        public int hashCode() {
            return this.arrayType.hashCode();
        }

        @Override // androidx.navigation.NavType
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void f(@NotNull Bundle bundle, @NotNull String key, @Nullable D[] dArr) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            this.arrayType.cast(dArr);
            bundle.putParcelableArray(key, dArr);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParcelableArrayType(@NotNull Class<D> type) {
            super(true);
            t.j(type, "type");
            if (Parcelable.class.isAssignableFrom(type)) {
                try {
                    this.arrayType = (Class<D[]>) Class.forName("[L" + type.getName() + ';');
                    return;
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
            }
            throw new IllegalArgumentException((type + " does not implement Parcelable.").toString());
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public D[] h(@NotNull String value) {
            t.j(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }
    }

    public static final class ParcelableType<D> extends NavType<D> {

        @NotNull
        private final Class<D> type;

        @Override // androidx.navigation.NavType
        @Nullable
        public D a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            return (D) bundle.get(key);
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            String name = this.type.getName();
            t.i(name, "type.name");
            return name;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !t.e(ParcelableType.class, obj.getClass())) {
                return false;
            }
            return t.e(this.type, ((ParcelableType) obj).type);
        }

        @Override // androidx.navigation.NavType
        public void f(@NotNull Bundle bundle, @NotNull String key, D d) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            this.type.cast(d);
            if (d == null || (d instanceof Parcelable)) {
                bundle.putParcelable(key, (Parcelable) d);
            } else if (d instanceof Serializable) {
                bundle.putSerializable(key, (Serializable) d);
            }
        }

        public int hashCode() {
            return this.type.hashCode();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParcelableType(@NotNull Class<D> type) {
            super(true);
            t.j(type, "type");
            if (!Parcelable.class.isAssignableFrom(type) && !Serializable.class.isAssignableFrom(type)) {
                throw new IllegalArgumentException((type + " does not implement Parcelable or Serializable.").toString());
            }
            this.type = type;
        }

        @Override // androidx.navigation.NavType
        /* JADX INFO: renamed from: e */
        public D h(@NotNull String value) {
            t.j(value, "value");
            throw new UnsupportedOperationException("Parcelables don't support default values.");
        }
    }

    public static final class SerializableArrayType<D extends Serializable> extends NavType<D[]> {

        @NotNull
        private final Class<D[]> arrayType;

        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            String name = this.arrayType.getName();
            t.i(name, "arrayType.name");
            return name;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !t.e(SerializableArrayType.class, obj.getClass())) {
                return false;
            }
            return t.e(this.arrayType, ((SerializableArrayType) obj).arrayType);
        }

        @Override // androidx.navigation.NavType
        @Nullable
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public D[] a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            return (D[]) ((Serializable[]) bundle.get(key));
        }

        public int hashCode() {
            return this.arrayType.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.navigation.NavType
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void f(@NotNull Bundle bundle, @NotNull String key, @Nullable D[] dArr) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            this.arrayType.cast(dArr);
            bundle.putSerializable(key, dArr);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableArrayType(@NotNull Class<D> type) {
            super(true);
            t.j(type, "type");
            if (Serializable.class.isAssignableFrom(type)) {
                try {
                    this.arrayType = (Class<D[]>) Class.forName("[L" + type.getName() + ';');
                    return;
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
            }
            throw new IllegalArgumentException((type + " does not implement Serializable.").toString());
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public D[] h(@NotNull String value) {
            t.j(value, "value");
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }
    }

    public static class SerializableType<D extends Serializable> extends NavType<D> {

        @NotNull
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableType(@NotNull Class<D> type) {
            super(true);
            t.j(type, "type");
            if (!Serializable.class.isAssignableFrom(type)) {
                throw new IllegalArgumentException((type + " does not implement Serializable.").toString());
            }
            if (true ^ type.isEnum()) {
                this.type = type;
                return;
            }
            throw new IllegalArgumentException((type + " is an Enum. You should use EnumType instead.").toString());
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public String b() {
            String name = this.type.getName();
            t.i(name, "type.name");
            return name;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof SerializableType) {
                return t.e(this.type, ((SerializableType) obj).type);
            }
            return false;
        }

        @Override // androidx.navigation.NavType
        @Nullable
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public D a(@NotNull Bundle bundle, @NotNull String key) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            return (D) bundle.get(key);
        }

        public int hashCode() {
            return this.type.hashCode();
        }

        @Override // androidx.navigation.NavType
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void f(@NotNull Bundle bundle, @NotNull String key, @NotNull D value) {
            t.j(bundle, "bundle");
            t.j(key, "key");
            t.j(value, "value");
            this.type.cast(value);
            bundle.putSerializable(key, value);
        }

        @Override // androidx.navigation.NavType
        @NotNull
        public D h(@NotNull String value) {
            t.j(value, "value");
            throw new UnsupportedOperationException("Serializables don't support default values.");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableType(boolean z6, @NotNull Class<D> type) {
            super(z6);
            t.j(type, "type");
            if (Serializable.class.isAssignableFrom(type)) {
                this.type = type;
                return;
            }
            throw new IllegalArgumentException((type + " does not implement Serializable.").toString());
        }
    }

    @Nullable
    public abstract T a(@NotNull Bundle bundle, @NotNull String str);

    @NotNull
    public String b() {
        return this.name;
    }

    public boolean c() {
        return this.isNullableAllowed;
    }

    /* JADX INFO: renamed from: e */
    public abstract T h(@NotNull String str);

    public abstract void f(@NotNull Bundle bundle, @NotNull String str, T t5);

    @RestrictTo
    public final T d(@NotNull Bundle bundle, @NotNull String key, @NotNull String value) {
        t.j(bundle, "bundle");
        t.j(key, "key");
        t.j(value, "value");
        T tH = h(value);
        f(bundle, key, tH);
        return tH;
    }

    public NavType(boolean z6) {
        this.isNullableAllowed = z6;
    }

    @NotNull
    public String toString() {
        return b();
    }
}
