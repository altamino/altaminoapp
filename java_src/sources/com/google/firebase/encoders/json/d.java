package com.google.firebase.encoders.json;

import androidx.annotation.NonNull;
import j4.g;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements k4.b<d> {
    private static final j4.d<Object> DEFAULT_FALLBACK_ENCODER = new j4.d() { // from class: com.google.firebase.encoders.json.a
        @Override // j4.d
        public final void a(Object obj, Object obj2) throws IOException {
            d.l(obj, (j4.e) obj2);
        }
    };
    private static final j4.f<String> STRING_ENCODER = new j4.f() { // from class: com.google.firebase.encoders.json.b
        @Override // j4.f
        public final void a(Object obj, Object obj2) throws IOException {
            ((g) obj2).a((String) obj);
        }
    };
    private static final j4.f<Boolean> BOOLEAN_ENCODER = new j4.f() { // from class: com.google.firebase.encoders.json.c
        @Override // j4.f
        public final void a(Object obj, Object obj2) throws IOException {
            d.n((Boolean) obj, (g) obj2);
        }
    };
    private static final b TIMESTAMP_ENCODER = new b(null);
    private final Map<Class<?>, j4.d<?>> objectEncoders = new HashMap();
    private final Map<Class<?>, j4.f<?>> valueEncoders = new HashMap();
    private j4.d<Object> fallbackEncoder = DEFAULT_FALLBACK_ENCODER;
    private boolean ignoreNullValues = false;

    class a implements j4.a {
        a() {
        }

        @Override // j4.a
        public void a(@NonNull Object obj, @NonNull Writer writer) throws IOException {
            e eVar = new e(writer, d.this.objectEncoders, d.this.valueEncoders, d.this.fallbackEncoder, d.this.ignoreNullValues);
            eVar.k(obj, false);
            eVar.u();
        }

        @Override // j4.a
        public String b(@NonNull Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                a(obj, stringWriter);
            } catch (IOException unused) {
            }
            return stringWriter.toString();
        }
    }

    private static final class b implements j4.f<Date> {
        private static final DateFormat rfc339;

        private b() {
        }

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            rfc339 = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // j4.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(@NonNull Date date, @NonNull g gVar) throws IOException {
            gVar.a(rfc339.format(date));
        }
    }

    @NonNull
    public d k(boolean z6) {
        this.ignoreNullValues = z6;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l(Object obj, j4.e eVar) throws IOException {
        throw new j4.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    @NonNull
    public j4.a i() {
        return new a();
    }

    @Override // k4.b
    @NonNull
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public <T> d a(@NonNull Class<T> cls, @NonNull j4.d<? super T> dVar) {
        this.objectEncoders.put(cls, dVar);
        this.valueEncoders.remove(cls);
        return this;
    }

    @NonNull
    public <T> d p(@NonNull Class<T> cls, @NonNull j4.f<? super T> fVar) {
        this.valueEncoders.put(cls, fVar);
        this.objectEncoders.remove(cls);
        return this;
    }

    public d() {
        p(String.class, STRING_ENCODER);
        p(Boolean.class, BOOLEAN_ENCODER);
        p(Date.class, TIMESTAMP_ENCODER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n(Boolean bool, g gVar) throws IOException {
        gVar.b(bool.booleanValue());
    }

    @NonNull
    public d j(@NonNull k4.a aVar) {
        aVar.a(this);
        return this;
    }
}
