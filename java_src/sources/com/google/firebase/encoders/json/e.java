package com.google.firebase.encoders.json;

import android.util.Base64;
import android.util.JsonWriter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j4.g;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
final class e implements j4.e, g {
    private final j4.d<Object> fallbackEncoder;
    private final boolean ignoreNullValues;
    private final JsonWriter jsonWriter;
    private final Map<Class<?>, j4.d<?>> objectEncoders;
    private final Map<Class<?>, j4.f<?>> valueEncoders;
    private e childContext = null;
    private boolean active = true;

    @NonNull
    e k(@Nullable Object obj, boolean z6) throws IOException {
        int i10 = 0;
        if (z6 && t(obj)) {
            Object[] objArr = new Object[1];
            objArr[0] = obj == null ? null : obj.getClass();
            throw new j4.b(String.format("%s cannot be encoded inline", objArr));
        }
        if (obj == null) {
            this.jsonWriter.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            this.jsonWriter.value((Number) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                this.jsonWriter.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    k(it.next(), false);
                }
                this.jsonWriter.endArray();
                return this;
            }
            if (obj instanceof Map) {
                this.jsonWriter.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        p((String) key, entry.getValue());
                    } catch (ClassCastException e) {
                        throw new j4.b(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                    }
                }
                this.jsonWriter.endObject();
                return this;
            }
            j4.d<?> dVar = this.objectEncoders.get(obj.getClass());
            if (dVar != null) {
                return v(dVar, obj, z6);
            }
            j4.f<?> fVar = this.valueEncoders.get(obj.getClass());
            if (fVar != null) {
                fVar.a(obj, this);
                return this;
            }
            if (!(obj instanceof Enum)) {
                return v(this.fallbackEncoder, obj, z6);
            }
            if (obj instanceof f) {
                i(((f) obj).getNumber());
            } else {
                a(((Enum) obj).name());
            }
            return this;
        }
        if (obj instanceof byte[]) {
            return s((byte[]) obj);
        }
        this.jsonWriter.beginArray();
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            int length = iArr.length;
            while (i10 < length) {
                this.jsonWriter.value(iArr[i10]);
                i10++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i10 < length2) {
                j(jArr[i10]);
                i10++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i10 < length3) {
                this.jsonWriter.value(dArr[i10]);
                i10++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i10 < length4) {
                this.jsonWriter.value(zArr[i10]);
                i10++;
            }
        } else if (obj instanceof Number[]) {
            for (Number number : (Number[]) obj) {
                k(number, false);
            }
        } else {
            for (Object obj2 : (Object[]) obj) {
                k(obj2, false);
            }
        }
        this.jsonWriter.endArray();
        return this;
    }

    private boolean t(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    private e x(@NonNull String str, @Nullable Object obj) throws IOException, j4.b {
        if (obj == null) {
            return this;
        }
        y();
        this.jsonWriter.name(str);
        return k(obj, false);
    }

    private void y() throws IOException {
        if (!this.active) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
        e eVar = this.childContext;
        if (eVar != null) {
            eVar.y();
            this.childContext.active = false;
            this.childContext = null;
            this.jsonWriter.endObject();
        }
    }

    @NonNull
    public e p(@NonNull String str, @Nullable Object obj) throws IOException {
        return this.ignoreNullValues ? x(str, obj) : w(str, obj);
    }

    e v(j4.d<Object> dVar, Object obj, boolean z6) throws IOException {
        if (!z6) {
            this.jsonWriter.beginObject();
        }
        dVar.a(obj, this);
        if (!z6) {
            this.jsonWriter.endObject();
        }
        return this;
    }

    e(@NonNull Writer writer, @NonNull Map<Class<?>, j4.d<?>> map, @NonNull Map<Class<?>, j4.f<?>> map2, j4.d<Object> dVar, boolean z6) {
        this.jsonWriter = new JsonWriter(writer);
        this.objectEncoders = map;
        this.valueEncoders = map2;
        this.fallbackEncoder = dVar;
        this.ignoreNullValues = z6;
    }

    private e w(@NonNull String str, @Nullable Object obj) throws IOException, j4.b {
        y();
        this.jsonWriter.name(str);
        if (obj == null) {
            this.jsonWriter.nullValue();
            return this;
        }
        return k(obj, false);
    }

    @Override // j4.e
    @NonNull
    public j4.e c(@NonNull j4.c cVar, @Nullable Object obj) throws IOException {
        return p(cVar.b(), obj);
    }

    @Override // j4.e
    @NonNull
    public j4.e d(@NonNull j4.c cVar, double d) throws IOException {
        return m(cVar.b(), d);
    }

    @Override // j4.e
    @NonNull
    public j4.e e(@NonNull j4.c cVar, long j6) throws IOException {
        return o(cVar.b(), j6);
    }

    @Override // j4.e
    @NonNull
    public j4.e f(@NonNull j4.c cVar, int i10) throws IOException {
        return n(cVar.b(), i10);
    }

    @Override // j4.e
    @NonNull
    public j4.e g(@NonNull j4.c cVar, boolean z6) throws IOException {
        return q(cVar.b(), z6);
    }

    @NonNull
    public e h(double d) throws IOException {
        y();
        this.jsonWriter.value(d);
        return this;
    }

    @NonNull
    public e i(int i10) throws IOException {
        y();
        this.jsonWriter.value(i10);
        return this;
    }

    @NonNull
    public e j(long j6) throws IOException {
        y();
        this.jsonWriter.value(j6);
        return this;
    }

    @Override // j4.g
    @NonNull
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public e a(@Nullable String str) throws IOException {
        y();
        this.jsonWriter.value(str);
        return this;
    }

    @NonNull
    public e m(@NonNull String str, double d) throws IOException {
        y();
        this.jsonWriter.name(str);
        return h(d);
    }

    @NonNull
    public e n(@NonNull String str, int i10) throws IOException {
        y();
        this.jsonWriter.name(str);
        return i(i10);
    }

    @NonNull
    public e o(@NonNull String str, long j6) throws IOException {
        y();
        this.jsonWriter.name(str);
        return j(j6);
    }

    @NonNull
    public e q(@NonNull String str, boolean z6) throws IOException {
        y();
        this.jsonWriter.name(str);
        return b(z6);
    }

    @Override // j4.g
    @NonNull
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public e b(boolean z6) throws IOException {
        y();
        this.jsonWriter.value(z6);
        return this;
    }

    @NonNull
    public e s(@Nullable byte[] bArr) throws IOException {
        y();
        if (bArr == null) {
            this.jsonWriter.nullValue();
        } else {
            this.jsonWriter.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    void u() throws IOException {
        y();
        this.jsonWriter.flush();
    }
}
