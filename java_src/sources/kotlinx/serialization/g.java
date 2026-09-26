package kotlinx.serialization;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.i0;
import kotlin.collections.r0;
import kotlin.collections.s0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import kotlin.jvm.internal.v;
import kotlin.reflect.KClass;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.q;

/* JADX INFO: loaded from: classes8.dex */
public final class g<T> extends kotlinx.serialization.internal.b<T> {

    @NotNull
    private List<? extends Annotation> _annotations;

    @NotNull
    private final KClass<T> baseClass;

    @NotNull
    private final Map<KClass<? extends T>, KSerializer<? extends T>> class2Serializer;

    @NotNull
    private final w7.m descriptor$delegate;

    @NotNull
    private final Map<String, KSerializer<? extends T>> serialName2Serializer;

    static final class a extends v implements e8.a<SerialDescriptor> {
        final /* synthetic */ String $serialName;
        final /* synthetic */ KSerializer<? extends T>[] $subclassSerializers;
        final /* synthetic */ g<T> this$0;

        /* JADX INFO: renamed from: kotlinx.serialization.g$a$a, reason: collision with other inner class name */
        static final class C0462a extends v implements e8.l<kotlinx.serialization.descriptors.a, l0> {
            final /* synthetic */ KSerializer<? extends T>[] $subclassSerializers;
            final /* synthetic */ g<T> this$0;

            /* JADX INFO: renamed from: kotlinx.serialization.g$a$a$a, reason: collision with other inner class name */
            static final class C0463a extends v implements e8.l<kotlinx.serialization.descriptors.a, l0> {
                final /* synthetic */ KSerializer<? extends T>[] $subclassSerializers;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0463a(KSerializer<? extends T>[] kSerializerArr) {
                    super(1);
                    this.$subclassSerializers = kSerializerArr;
                }

                public final void a(@NotNull kotlinx.serialization.descriptors.a buildSerialDescriptor) {
                    t.j(buildSerialDescriptor, "$this$buildSerialDescriptor");
                    Iterator<T> it = kotlin.collections.p.H(this.$subclassSerializers).iterator();
                    while (it.hasNext()) {
                        SerialDescriptor descriptor = ((KSerializer) it.next()).getDescriptor();
                        kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, descriptor.h(), descriptor, null, false, 12, null);
                    }
                }

                @Override // e8.l
                public /* bridge */ /* synthetic */ l0 invoke(kotlinx.serialization.descriptors.a aVar) {
                    a(aVar);
                    return l0.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0462a(g<T> gVar, KSerializer<? extends T>[] kSerializerArr) {
                super(1);
                this.this$0 = gVar;
                this.$subclassSerializers = kSerializerArr;
            }

            public final void a(@NotNull kotlinx.serialization.descriptors.a buildSerialDescriptor) {
                t.j(buildSerialDescriptor, "$this$buildSerialDescriptor");
                kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "type", m8.a.C(u0.INSTANCE).getDescriptor(), null, false, 12, null);
                kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "value", kotlinx.serialization.descriptors.h.c("kotlinx.serialization.Sealed<" + this.this$0.e().getSimpleName() + '>', kotlinx.serialization.descriptors.i.a.INSTANCE, new SerialDescriptor[0], new C0463a(this.$subclassSerializers)), null, false, 12, null);
                buildSerialDescriptor.h(((g) this.this$0)._annotations);
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(kotlinx.serialization.descriptors.a aVar) {
                a(aVar);
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, g<T> gVar, KSerializer<? extends T>[] kSerializerArr) {
            super(0);
            this.$serialName = str;
            this.this$0 = gVar;
            this.$subclassSerializers = kSerializerArr;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SerialDescriptor invoke() {
            return kotlinx.serialization.descriptors.h.c(this.$serialName, kotlinx.serialization.descriptors.d.b.INSTANCE, new SerialDescriptor[0], new C0462a(this.this$0, this.$subclassSerializers));
        }
    }

    public static final class b implements i0<Map.Entry<? extends KClass<? extends T>, ? extends KSerializer<? extends T>>, String> {
        final /* synthetic */ Iterable $this_groupingBy;

        public b(Iterable iterable) {
            this.$this_groupingBy = iterable;
        }

        @Override // kotlin.collections.i0
        public String a(Map.Entry<? extends KClass<? extends T>, ? extends KSerializer<? extends T>> entry) {
            return entry.getValue().getDescriptor().h();
        }

        @Override // kotlin.collections.i0
        @NotNull
        public Iterator<Map.Entry<? extends KClass<? extends T>, ? extends KSerializer<? extends T>>> b() {
            return this.$this_groupingBy.iterator();
        }
    }

    public g(@NotNull String serialName, @NotNull KClass<T> baseClass, @NotNull KClass<? extends T>[] subclasses, @NotNull KSerializer<? extends T>[] subclassSerializers) {
        t.j(serialName, "serialName");
        t.j(baseClass, "baseClass");
        t.j(subclasses, "subclasses");
        t.j(subclassSerializers, "subclassSerializers");
        this.baseClass = baseClass;
        this._annotations = kotlin.collections.v.m();
        this.descriptor$delegate = w7.o.b(q.PUBLICATION, new a(serialName, this, subclassSerializers));
        if (subclasses.length != subclassSerializers.length) {
            throw new IllegalArgumentException("All subclasses of sealed class " + e().getSimpleName() + " should be marked @Serializable");
        }
        Map<KClass<? extends T>, KSerializer<? extends T>> mapU = s0.u(kotlin.collections.p.z0(subclasses, subclassSerializers));
        this.class2Serializer = mapU;
        i0 bVar = new b(mapU.entrySet());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> itB = bVar.b();
        while (itB.hasNext()) {
            T next = itB.next();
            Object objA = bVar.a(next);
            Object obj = linkedHashMap.get(objA);
            if (obj == null) {
                linkedHashMap.containsKey(objA);
            }
            Map.Entry entry = (Map.Entry) next;
            Map.Entry entry2 = (Map.Entry) obj;
            String str = (String) objA;
            if (entry2 != null) {
                throw new IllegalStateException(("Multiple sealed subclasses of '" + e() + "' have the same serial name '" + str + "': '" + entry2.getKey() + "', '" + entry.getKey() + '\'').toString());
            }
            linkedHashMap.put(objA, entry);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(r0.e(linkedHashMap.size()));
        for (Map.Entry entry3 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry3.getKey(), (KSerializer) ((Map.Entry) entry3.getValue()).getValue());
        }
        this.serialName2Serializer = linkedHashMap2;
    }

    @Override // kotlinx.serialization.internal.b
    @NotNull
    public KClass<T> e() {
        return this.baseClass;
    }

    @Override // kotlinx.serialization.internal.b
    @Nullable
    public kotlinx.serialization.b<? extends T> c(@NotNull kotlinx.serialization.encoding.c decoder, @Nullable String str) {
        t.j(decoder, "decoder");
        KSerializer<? extends T> kSerializer = this.serialName2Serializer.get(str);
        return kSerializer != null ? kSerializer : super.c(decoder, str);
    }

    @Override // kotlinx.serialization.internal.b
    @Nullable
    public k<T> d(@NotNull Encoder encoder, @NotNull T value) {
        t.j(encoder, "encoder");
        t.j(value, "value");
        KSerializer<? extends T> kSerializerD = this.class2Serializer.get(q0.b(value.getClass()));
        if (kSerializerD == null) {
            kSerializerD = super.d(encoder, value);
        }
        if (kSerializerD != null) {
            return kSerializerD;
        }
        return null;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public g(@NotNull String serialName, @NotNull KClass<T> baseClass, @NotNull KClass<? extends T>[] subclasses, @NotNull KSerializer<? extends T>[] subclassSerializers, @NotNull Annotation[] classAnnotations) {
        this(serialName, baseClass, subclasses, subclassSerializers);
        t.j(serialName, "serialName");
        t.j(baseClass, "baseClass");
        t.j(subclasses, "subclasses");
        t.j(subclassSerializers, "subclassSerializers");
        t.j(classAnnotations, "classAnnotations");
        this._annotations = kotlin.collections.o.c(classAnnotations);
    }
}
