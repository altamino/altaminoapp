package androidx.work;

import android.annotation.SuppressLint;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.room.TypeConverter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class Data {

    @SuppressLint({"MinMaxConstant"})
    public static final int MAX_DATA_BYTES = 10240;
    Map<String, Object> mValues;
    private static final String TAG = Logger.i("Data");
    public static final Data EMPTY = new Builder().a();

    public static final class Builder {
        private Map<String, Object> mValues = new HashMap();

        @NonNull
        public Data a() throws Throwable {
            Data data = new Data((Map<String, ?>) this.mValues);
            Data.k(data);
            return data;
        }

        @NonNull
        @RestrictTo
        public Builder b(@NonNull String key, @Nullable Object value) {
            if (value == null) {
                this.mValues.put(key, null);
            } else {
                Class<?> cls = value.getClass();
                if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                    this.mValues.put(key, value);
                } else if (cls == boolean[].class) {
                    this.mValues.put(key, Data.a((boolean[]) value));
                } else if (cls == byte[].class) {
                    this.mValues.put(key, Data.b((byte[]) value));
                } else if (cls == int[].class) {
                    this.mValues.put(key, Data.e((int[]) value));
                } else if (cls == long[].class) {
                    this.mValues.put(key, Data.f((long[]) value));
                } else if (cls == float[].class) {
                    this.mValues.put(key, Data.d((float[]) value));
                } else {
                    if (cls != double[].class) {
                        throw new IllegalArgumentException("Key " + key + "has invalid type " + cls);
                    }
                    this.mValues.put(key, Data.c((double[]) value));
                }
            }
            return this;
        }

        @NonNull
        public Builder c(@NonNull Data data) {
            d(data.mValues);
            return this;
        }

        @NonNull
        public Builder e(@NonNull String key, @Nullable String value) {
            this.mValues.put(key, value);
            return this;
        }

        @NonNull
        public Builder d(@NonNull Map<String, Object> values) {
            for (Map.Entry<String, Object> entry : values.entrySet()) {
                b(entry.getKey(), entry.getValue());
            }
            return this;
        }
    }

    Data() {
    }

    @NonNull
    @RestrictTo
    public static Boolean[] a(@NonNull boolean[] value) {
        Boolean[] boolArr = new Boolean[value.length];
        for (int i10 = 0; i10 < value.length; i10++) {
            boolArr[i10] = Boolean.valueOf(value[i10]);
        }
        return boolArr;
    }

    @NonNull
    @RestrictTo
    public static Byte[] b(@NonNull byte[] value) {
        Byte[] bArr = new Byte[value.length];
        for (int i10 = 0; i10 < value.length; i10++) {
            bArr[i10] = Byte.valueOf(value[i10]);
        }
        return bArr;
    }

    @NonNull
    @RestrictTo
    public static Double[] c(@NonNull double[] value) {
        Double[] dArr = new Double[value.length];
        for (int i10 = 0; i10 < value.length; i10++) {
            dArr[i10] = Double.valueOf(value[i10]);
        }
        return dArr;
    }

    @NonNull
    @RestrictTo
    public static Float[] d(@NonNull float[] value) {
        Float[] fArr = new Float[value.length];
        for (int i10 = 0; i10 < value.length; i10++) {
            fArr[i10] = Float.valueOf(value[i10]);
        }
        return fArr;
    }

    @NonNull
    @RestrictTo
    public static Integer[] e(@NonNull int[] value) {
        Integer[] numArr = new Integer[value.length];
        for (int i10 = 0; i10 < value.length; i10++) {
            numArr[i10] = Integer.valueOf(value[i10]);
        }
        return numArr;
    }

    @NonNull
    @RestrictTo
    public static Long[] f(@NonNull long[] value) {
        Long[] lArr = new Long[value.length];
        for (int i10 = 0; i10 < value.length; i10++) {
            lArr[i10] = Long.valueOf(value[i10]);
        }
        return lArr;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || Data.class != o.getClass()) {
            return false;
        }
        Data data = (Data) o;
        Set<String> setKeySet = this.mValues.keySet();
        if (!setKeySet.equals(data.mValues.keySet())) {
            return false;
        }
        for (String str : setKeySet) {
            Object obj = this.mValues.get(str);
            Object obj2 = data.mValues.get(str);
            if (obj == null || obj2 == null) {
                if (obj != obj2) {
                    return false;
                }
            } else {
                if (!(((obj instanceof Object[]) && (obj2 instanceof Object[])) ? Arrays.deepEquals((Object[]) obj, (Object[]) obj2) : obj.equals(obj2))) {
                    return false;
                }
            }
        }
        return true;
    }

    public Data(@NonNull Data other) {
        this.mValues = new HashMap(other.mValues);
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0058 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @NonNull
    @TypeConverter
    public static Data g(@NonNull byte[] bytes) throws Throwable {
        ObjectInputStream objectInputStream;
        Throwable e;
        if (bytes.length > 10240) {
            throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
        }
        HashMap map = new HashMap();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        for (int i10 = objectInputStream.readInt(); i10 > 0; i10--) {
                            map.put(objectInputStream.readUTF(), objectInputStream.readObject());
                        }
                        try {
                            objectInputStream.close();
                        } catch (IOException e2) {
                            Log.e(TAG, "Error in Data#fromByteArray: ", e2);
                        }
                        byteArrayInputStream.close();
                    } catch (IOException e6) {
                        e = e6;
                        Log.e(TAG, "Error in Data#fromByteArray: ", e);
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e7) {
                                Log.e(TAG, "Error in Data#fromByteArray: ", e7);
                            }
                        }
                        byteArrayInputStream.close();
                    } catch (ClassNotFoundException e10) {
                        e = e10;
                        Log.e(TAG, "Error in Data#fromByteArray: ", e);
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        byteArrayInputStream.close();
                    }
                } catch (IOException e11) {
                    Log.e(TAG, "Error in Data#fromByteArray: ", e11);
                }
            } catch (IOException e12) {
                e = e12;
                Throwable th = e;
                objectInputStream = null;
                e = th;
                Log.e(TAG, "Error in Data#fromByteArray: ", e);
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                byteArrayInputStream.close();
                return new Data(map);
            } catch (ClassNotFoundException e13) {
                e = e13;
                Throwable th2 = e;
                objectInputStream = null;
                e = th2;
                Log.e(TAG, "Error in Data#fromByteArray: ", e);
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                byteArrayInputStream.close();
                return new Data(map);
            } catch (Throwable th3) {
                th = th3;
                if (0 != 0) {
                    try {
                        objectInputStream2.close();
                    } catch (IOException e14) {
                        Log.e(TAG, "Error in Data#fromByteArray: ", e14);
                    }
                }
                try {
                    byteArrayInputStream.close();
                    throw th;
                } catch (IOException e15) {
                    Log.e(TAG, "Error in Data#fromByteArray: ", e15);
                    throw th;
                }
            }
            return new Data(map);
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @NonNull
    @TypeConverter
    @RestrictTo
    public static byte[] k(@NonNull Data data) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = null;
        try {
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeInt(data.j());
                    for (Map.Entry<String, Object> entry : data.mValues.entrySet()) {
                        objectOutputStream2.writeUTF(entry.getKey());
                        objectOutputStream2.writeObject(entry.getValue());
                    }
                    try {
                        objectOutputStream2.close();
                    } catch (IOException e) {
                        Log.e(TAG, "Error in Data#toByteArray: ", e);
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e2) {
                        Log.e(TAG, "Error in Data#toByteArray: ", e2);
                    }
                    if (byteArrayOutputStream.size() <= 10240) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                } catch (IOException e6) {
                    e = e6;
                    objectOutputStream = objectOutputStream2;
                    Log.e(TAG, "Error in Data#toByteArray: ", e);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e7) {
                            Log.e(TAG, "Error in Data#toByteArray: ", e7);
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e10) {
                        Log.e(TAG, "Error in Data#toByteArray: ", e10);
                    }
                    return byteArray;
                } catch (Throwable th) {
                    th = th;
                    objectOutputStream = objectOutputStream2;
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e11) {
                            Log.e(TAG, "Error in Data#toByteArray: ", e11);
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                        throw th;
                    } catch (IOException e12) {
                        Log.e(TAG, "Error in Data#toByteArray: ", e12);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e13) {
            e = e13;
        }
    }

    @NonNull
    public Map<String, Object> h() {
        return Collections.unmodifiableMap(this.mValues);
    }

    public int hashCode() {
        return this.mValues.hashCode() * 31;
    }

    @Nullable
    public String i(@NonNull String key) {
        Object obj = this.mValues.get(key);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    @RestrictTo
    @VisibleForTesting
    public int j() {
        return this.mValues.size();
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("Data {");
        if (!this.mValues.isEmpty()) {
            for (String str : this.mValues.keySet()) {
                sb.append(str);
                sb.append(" : ");
                Object obj = this.mValues.get(str);
                if (obj instanceof Object[]) {
                    sb.append(Arrays.toString((Object[]) obj));
                } else {
                    sb.append(obj);
                }
                sb.append(", ");
            }
        }
        sb.append("}");
        return sb.toString();
    }

    @RestrictTo
    public Data(@NonNull Map<String, ?> values) {
        this.mValues = new HashMap(values);
    }
}
