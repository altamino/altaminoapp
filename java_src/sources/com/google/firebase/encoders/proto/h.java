package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
public class h {
    private final j4.d<Object> fallbackEncoder;
    private final Map<Class<?>, j4.d<?>> objectEncoders;
    private final Map<Class<?>, j4.f<?>> valueEncoders;

    public static final class a implements k4.b<a> {
        private static final j4.d<Object> DEFAULT_FALLBACK_ENCODER = new j4.d() { // from class: com.google.firebase.encoders.proto.g
            @Override // j4.d
            public final void a(Object obj, Object obj2) throws IOException {
                h.a.e(obj, (j4.e) obj2);
            }
        };
        private final Map<Class<?>, j4.d<?>> objectEncoders = new HashMap();
        private final Map<Class<?>, j4.f<?>> valueEncoders = new HashMap();
        private j4.d<Object> fallbackEncoder = DEFAULT_FALLBACK_ENCODER;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void e(Object obj, j4.e eVar) throws IOException {
            throw new j4.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }

        public h c() {
            return new h(new HashMap(this.objectEncoders), new HashMap(this.valueEncoders), this.fallbackEncoder);
        }

        @Override // k4.b
        @NonNull
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public <U> a a(@NonNull Class<U> cls, @NonNull j4.d<? super U> dVar) {
            this.objectEncoders.put(cls, dVar);
            this.valueEncoders.remove(cls);
            return this;
        }

        @NonNull
        public a d(@NonNull k4.a aVar) {
            aVar.a(this);
            return this;
        }
    }

    public static a a() {
        return new a();
    }

    public void b(@NonNull Object obj, @NonNull OutputStream outputStream) throws IOException {
        new f(outputStream, this.objectEncoders, this.valueEncoders, this.fallbackEncoder).t(obj);
    }

    @NonNull
    public byte[] c(@NonNull Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            b(obj, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }

    h(Map<Class<?>, j4.d<?>> map, Map<Class<?>, j4.f<?>> map2, j4.d<Object> dVar) {
        this.objectEncoders = map;
        this.valueEncoders = map2;
        this.fallbackEncoder = dVar;
    }
}
