package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
final class f implements j4.e {
    private final j4.d<Object> fallbackEncoder;
    private final Map<Class<?>, j4.d<?>> objectEncoders;
    private OutputStream output;
    private final i valueEncoderContext = new i(this);
    private final Map<Class<?>, j4.f<?>> valueEncoders;
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final j4.c MAP_KEY_DESC = j4.c.a("key").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
    private static final j4.c MAP_VALUE_DESC = j4.c.a("value").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();
    private static final j4.d<Map.Entry<Object, Object>> DEFAULT_MAP_ENCODER = new j4.d() { // from class: com.google.firebase.encoders.proto.e
        @Override // j4.d
        public final void a(Object obj, Object obj2) throws IOException {
            f.w((Map.Entry) obj, (j4.e) obj2);
        }
    };

    @Override // j4.e
    @NonNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public f f(@NonNull j4.c cVar, int i10) throws IOException {
        return h(cVar, i10, true);
    }

    @Override // j4.e
    @NonNull
    public j4.e c(@NonNull j4.c cVar, @Nullable Object obj) throws IOException {
        return o(cVar, obj, true);
    }

    @Override // j4.e
    @NonNull
    public j4.e d(@NonNull j4.c cVar, double d) throws IOException {
        return m(cVar, d, true);
    }

    @Override // j4.e
    @NonNull
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public f e(@NonNull j4.c cVar, long j6) throws IOException {
        return j(cVar, j6, true);
    }

    @Override // j4.e
    @NonNull
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public f g(@NonNull j4.c cVar, boolean z6) throws IOException {
        return l(cVar, z6, true);
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$firebase$encoders$proto$Protobuf$IntEncoding;

        static {
            int[] iArr = new int[d.a.values().length];
            $SwitchMap$com$google$firebase$encoders$proto$Protobuf$IntEncoding = iArr;
            try {
                iArr[d.a.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$firebase$encoders$proto$Protobuf$IntEncoding[d.a.SIGNED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$firebase$encoders$proto$Protobuf$IntEncoding[d.a.FIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private <T> long q(j4.d<T> dVar, T t5) throws IOException {
        b bVar = new b();
        try {
            OutputStream outputStream = this.output;
            this.output = bVar;
            try {
                dVar.a(t5, this);
                this.output = outputStream;
                long jD = bVar.d();
                bVar.close();
                return jD;
            } catch (Throwable th) {
                this.output = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                bVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private <T> f s(j4.f<T> fVar, j4.c cVar, T t5, boolean z6) throws IOException {
        this.valueEncoderContext.d(cVar, z6);
        fVar.a(t5, this.valueEncoderContext);
        return this;
    }

    private static d u(j4.c cVar) {
        d dVar = (d) cVar.c(d.class);
        if (dVar != null) {
            return dVar;
        }
        throw new j4.b("Field has no @Protobuf config");
    }

    private static int v(j4.c cVar) {
        d dVar = (d) cVar.c(d.class);
        if (dVar != null) {
            return dVar.tag();
        }
        throw new j4.b("Field has no @Protobuf config");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void w(Map.Entry entry, j4.e eVar) throws IOException {
        eVar.c(MAP_KEY_DESC, entry.getKey());
        eVar.c(MAP_VALUE_DESC, entry.getValue());
    }

    private void x(int i10) throws IOException {
        while ((i10 & (-128)) != 0) {
            this.output.write((i10 & 127) | 128);
            i10 >>>= 7;
        }
        this.output.write(i10 & 127);
    }

    private void y(long j6) throws IOException {
        while (((-128) & j6) != 0) {
            this.output.write((((int) j6) & 127) | 128);
            j6 >>>= 7;
        }
        this.output.write(((int) j6) & 127);
    }

    f h(@NonNull j4.c cVar, int i10, boolean z6) throws IOException {
        if (z6 && i10 == 0) {
            return this;
        }
        d dVarU = u(cVar);
        int i11 = a.$SwitchMap$com$google$firebase$encoders$proto$Protobuf$IntEncoding[dVarU.intEncoding().ordinal()];
        if (i11 == 1) {
            x(dVarU.tag() << 3);
            x(i10);
        } else if (i11 == 2) {
            x(dVarU.tag() << 3);
            x((i10 << 1) ^ (i10 >> 31));
        } else if (i11 == 3) {
            x((dVarU.tag() << 3) | 5);
            this.output.write(p(4).putInt(i10).array());
        }
        return this;
    }

    f j(@NonNull j4.c cVar, long j6, boolean z6) throws IOException {
        if (z6 && j6 == 0) {
            return this;
        }
        d dVarU = u(cVar);
        int i10 = a.$SwitchMap$com$google$firebase$encoders$proto$Protobuf$IntEncoding[dVarU.intEncoding().ordinal()];
        if (i10 == 1) {
            x(dVarU.tag() << 3);
            y(j6);
        } else if (i10 == 2) {
            x(dVarU.tag() << 3);
            y((j6 >> 63) ^ (j6 << 1));
        } else if (i10 == 3) {
            x((dVarU.tag() << 3) | 1);
            this.output.write(p(8).putLong(j6).array());
        }
        return this;
    }

    j4.e m(@NonNull j4.c cVar, double d, boolean z6) throws IOException {
        if (z6 && d == com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            return this;
        }
        x((v(cVar) << 3) | 1);
        this.output.write(p(8).putDouble(d).array());
        return this;
    }

    j4.e n(@NonNull j4.c cVar, float f, boolean z6) throws IOException {
        if (z6 && f == 0.0f) {
            return this;
        }
        x((v(cVar) << 3) | 5);
        this.output.write(p(4).putFloat(f).array());
        return this;
    }

    j4.e o(@NonNull j4.c cVar, @Nullable Object obj, boolean z6) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z6 && charSequence.length() == 0) {
                return this;
            }
            x((v(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(UTF_8);
            x(bytes.length);
            this.output.write(bytes);
            return this;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                o(cVar, it.next(), false);
            }
            return this;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                r(DEFAULT_MAP_ENCODER, cVar, (Map.Entry) it2.next(), false);
            }
            return this;
        }
        if (obj instanceof Double) {
            return m(cVar, ((Double) obj).doubleValue(), z6);
        }
        if (obj instanceof Float) {
            return n(cVar, ((Float) obj).floatValue(), z6);
        }
        if (obj instanceof Number) {
            return j(cVar, ((Number) obj).longValue(), z6);
        }
        if (obj instanceof Boolean) {
            return l(cVar, ((Boolean) obj).booleanValue(), z6);
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z6 && bArr.length == 0) {
                return this;
            }
            x((v(cVar) << 3) | 2);
            x(bArr.length);
            this.output.write(bArr);
            return this;
        }
        j4.d<?> dVar = this.objectEncoders.get(obj.getClass());
        if (dVar != null) {
            return r(dVar, cVar, obj, z6);
        }
        j4.f<?> fVar = this.valueEncoders.get(obj.getClass());
        if (fVar != null) {
            return s(fVar, cVar, obj, z6);
        }
        if (obj instanceof c) {
            return f(cVar, ((c) obj).getNumber());
        }
        return obj instanceof Enum ? f(cVar, ((Enum) obj).ordinal()) : r(this.fallbackEncoder, cVar, obj, z6);
    }

    f t(@Nullable Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        j4.d<?> dVar = this.objectEncoders.get(obj.getClass());
        if (dVar != null) {
            dVar.a(obj, this);
            return this;
        }
        throw new j4.b("No encoder for " + obj.getClass());
    }

    f(OutputStream outputStream, Map<Class<?>, j4.d<?>> map, Map<Class<?>, j4.f<?>> map2, j4.d<Object> dVar) {
        this.output = outputStream;
        this.objectEncoders = map;
        this.valueEncoders = map2;
        this.fallbackEncoder = dVar;
    }

    private static ByteBuffer p(int i10) {
        return ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
    }

    private <T> f r(j4.d<T> dVar, j4.c cVar, T t5, boolean z6) throws IOException {
        long jQ = q(dVar, t5);
        if (z6 && jQ == 0) {
            return this;
        }
        x((v(cVar) << 3) | 2);
        y(jQ);
        dVar.a(t5, this);
        return this;
    }

    f l(@NonNull j4.c cVar, boolean z6, boolean z10) throws IOException {
        return h(cVar, z6 ? 1 : 0, z10);
    }
}
