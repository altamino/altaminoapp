package kotlinx.serialization.json;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class i implements KSerializer<JsonElement> {

    @NotNull
    public static final i INSTANCE = new i();

    @NotNull
    private static final SerialDescriptor descriptor = kotlinx.serialization.descriptors.h.c("kotlinx.serialization.json.JsonElement", kotlinx.serialization.descriptors.d.b.INSTANCE, new SerialDescriptor[0], a.INSTANCE);

    static final class a extends kotlin.jvm.internal.v implements e8.l<kotlinx.serialization.descriptors.a, l0> {
        public static final a INSTANCE = new a();

        /* JADX INFO: renamed from: kotlinx.serialization.json.i$a$a, reason: collision with other inner class name */
        static final class C0466a extends kotlin.jvm.internal.v implements e8.a<SerialDescriptor> {
            public static final C0466a INSTANCE = new C0466a();

            C0466a() {
                super(0);
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final SerialDescriptor invoke() {
                return t.INSTANCE.getDescriptor();
            }
        }

        static final class b extends kotlin.jvm.internal.v implements e8.a<SerialDescriptor> {
            public static final b INSTANCE = new b();

            b() {
                super(0);
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final SerialDescriptor invoke() {
                return q.INSTANCE.getDescriptor();
            }
        }

        static final class c extends kotlin.jvm.internal.v implements e8.a<SerialDescriptor> {
            public static final c INSTANCE = new c();

            c() {
                super(0);
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final SerialDescriptor invoke() {
                return o.INSTANCE.getDescriptor();
            }
        }

        static final class d extends kotlin.jvm.internal.v implements e8.a<SerialDescriptor> {
            public static final d INSTANCE = new d();

            d() {
                super(0);
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final SerialDescriptor invoke() {
                return s.INSTANCE.getDescriptor();
            }
        }

        static final class e extends kotlin.jvm.internal.v implements e8.a<SerialDescriptor> {
            public static final e INSTANCE = new e();

            e() {
                super(0);
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final SerialDescriptor invoke() {
                return kotlinx.serialization.json.b.INSTANCE.getDescriptor();
            }
        }

        a() {
            super(1);
        }

        public final void a(@NotNull kotlinx.serialization.descriptors.a buildSerialDescriptor) {
            kotlin.jvm.internal.t.j(buildSerialDescriptor, "$this$buildSerialDescriptor");
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonPrimitive", j.f(C0466a.INSTANCE), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonNull", j.f(b.INSTANCE), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonLiteral", j.f(c.INSTANCE), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonObject", j.f(d.INSTANCE), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonArray", j.f(e.INSTANCE), null, false, 12, null);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(kotlinx.serialization.descriptors.a aVar) {
            a(aVar);
            return l0.INSTANCE;
        }
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JsonElement deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return j.d(decoder).t();
    }

    @Override // kotlinx.serialization.k
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void serialize(@NotNull Encoder encoder, @NotNull JsonElement value) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(value, "value");
        j.h(encoder);
        if (value instanceof JsonPrimitive) {
            encoder.e(t.INSTANCE, value);
        } else if (value instanceof JsonObject) {
            encoder.e(s.INSTANCE, value);
        } else if (value instanceof JsonArray) {
            encoder.e(b.INSTANCE, value);
        }
    }

    private i() {
    }
}
