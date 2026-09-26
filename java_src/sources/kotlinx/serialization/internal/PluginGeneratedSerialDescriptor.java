package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class PluginGeneratedSerialDescriptor implements SerialDescriptor, n {

    @NotNull
    private final w7.m _hashCode$delegate;
    private int added;

    @NotNull
    private final w7.m childSerializers$delegate;

    @Nullable
    private List<Annotation> classAnnotations;
    private final int elementsCount;

    @NotNull
    private final boolean[] elementsOptionality;

    @Nullable
    private final k0<?> generatedSerializer;

    @NotNull
    private Map<String, Integer> indices;

    @NotNull
    private final String[] names;

    @NotNull
    private final List<Annotation>[] propertiesAnnotations;

    @NotNull
    private final String serialName;

    @NotNull
    private final w7.m typeParameterDescriptors$delegate;

    static final class a extends kotlin.jvm.internal.v implements e8.a<Integer> {
        a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // e8.a
        @NotNull
        public final Integer invoke() {
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = PluginGeneratedSerialDescriptor.this;
            return Integer.valueOf(s1.a(pluginGeneratedSerialDescriptor, pluginGeneratedSerialDescriptor.o()));
        }
    }

    static final class b extends kotlin.jvm.internal.v implements e8.a<KSerializer<?>[]> {
        b() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final KSerializer<?>[] invoke() {
            KSerializer<?>[] kSerializerArrChildSerializers;
            k0 k0Var = PluginGeneratedSerialDescriptor.this.generatedSerializer;
            return (k0Var == null || (kSerializerArrChildSerializers = k0Var.childSerializers()) == null) ? t1.EMPTY_SERIALIZER_ARRAY : kSerializerArrChildSerializers;
        }
    }

    static final class c extends kotlin.jvm.internal.v implements e8.l<Integer, CharSequence> {
        c() {
            super(1);
        }

        @NotNull
        public final CharSequence b(int i10) {
            return PluginGeneratedSerialDescriptor.this.f(i10) + ": " + PluginGeneratedSerialDescriptor.this.d(i10).h();
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ CharSequence invoke(Integer num) {
            return b(num.intValue());
        }
    }

    static final class d extends kotlin.jvm.internal.v implements e8.a<SerialDescriptor[]> {
        d() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SerialDescriptor[] invoke() {
            ArrayList arrayList;
            KSerializer<?>[] kSerializerArrTypeParametersSerializers;
            k0 k0Var = PluginGeneratedSerialDescriptor.this.generatedSerializer;
            if (k0Var == null || (kSerializerArrTypeParametersSerializers = k0Var.typeParametersSerializers()) == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(kSerializerArrTypeParametersSerializers.length);
                for (KSerializer<?> kSerializer : kSerializerArrTypeParametersSerializers) {
                    arrayList.add(kSerializer.getDescriptor());
                }
            }
            return q1.b(arrayList);
        }
    }

    public PluginGeneratedSerialDescriptor(@NotNull String serialName, @Nullable k0<?> k0Var, int i10) {
        kotlin.jvm.internal.t.j(serialName, "serialName");
        this.serialName = serialName;
        this.generatedSerializer = k0Var;
        this.elementsCount = i10;
        this.added = -1;
        String[] strArr = new String[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            strArr[i11] = "[UNINITIALIZED]";
        }
        this.names = strArr;
        int i12 = this.elementsCount;
        this.propertiesAnnotations = new List[i12];
        this.elementsOptionality = new boolean[i12];
        this.indices = kotlin.collections.s0.h();
        w7.q qVar = w7.q.PUBLICATION;
        this.childSerializers$delegate = w7.o.b(qVar, new b());
        this.typeParameterDescriptors$delegate = w7.o.b(qVar, new d());
        this._hashCode$delegate = w7.o.b(qVar, new a());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int e() {
        return this.elementsCount;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PluginGeneratedSerialDescriptor) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (kotlin.jvm.internal.t.e(h(), serialDescriptor.h()) && Arrays.equals(o(), ((PluginGeneratedSerialDescriptor) obj).o()) && e() == serialDescriptor.e()) {
                int iE = e();
                for (int i10 = 0; i10 < iE; i10++) {
                    if (kotlin.jvm.internal.t.e(d(i10).h(), serialDescriptor.d(i10).h()) && kotlin.jvm.internal.t.e(d(i10).getKind(), serialDescriptor.d(i10).getKind())) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return this.serialName;
    }

    @NotNull
    public String toString() {
        return kotlin.collections.d0.t0(j8.o.v(0, this.elementsCount), ", ", h() + '(', ")", 0, null, new c(), 24, null);
    }

    public static /* synthetic */ void l(PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor, String str, boolean z6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addElement");
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        pluginGeneratedSerialDescriptor.k(str, z6);
    }

    private final Map<String, Integer> m() {
        HashMap map = new HashMap();
        int length = this.names.length;
        for (int i10 = 0; i10 < length; i10++) {
            map.put(this.names[i10], Integer.valueOf(i10));
        }
        return map;
    }

    private final KSerializer<?>[] n() {
        return (KSerializer[]) this.childSerializers$delegate.getValue();
    }

    private final int p() {
        return ((Number) this._hashCode$delegate.getValue()).intValue();
    }

    @Override // kotlinx.serialization.internal.n
    @NotNull
    public Set<String> a() {
        return this.indices.keySet();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int c(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        Integer num = this.indices.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String f(int i10) {
        return this.names[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> g(int i10) {
        List<Annotation> list = this.propertiesAnnotations[i10];
        return list == null ? kotlin.collections.v.m() : list;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> getAnnotations() {
        List<Annotation> list = this.classAnnotations;
        return list == null ? kotlin.collections.v.m() : list;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public kotlinx.serialization.descriptors.i getKind() {
        return kotlinx.serialization.descriptors.j.a.INSTANCE;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean i(int i10) {
        return this.elementsOptionality[i10];
    }

    public final void k(@NotNull String name, boolean z6) {
        kotlin.jvm.internal.t.j(name, "name");
        String[] strArr = this.names;
        int i10 = this.added + 1;
        this.added = i10;
        strArr[i10] = name;
        this.elementsOptionality[i10] = z6;
        this.propertiesAnnotations[i10] = null;
        if (i10 == this.elementsCount - 1) {
            this.indices = m();
        }
    }

    @NotNull
    public final SerialDescriptor[] o() {
        return (SerialDescriptor[]) this.typeParameterDescriptors$delegate.getValue();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean b() {
        return SerialDescriptor.a.c(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor d(int i10) {
        return n()[i10].getDescriptor();
    }

    public int hashCode() {
        return p();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return SerialDescriptor.a.b(this);
    }

    public /* synthetic */ PluginGeneratedSerialDescriptor(String str, k0 k0Var, int i10, int i11, kotlin.jvm.internal.k kVar) {
        this(str, (i11 & 2) != 0 ? null : k0Var, i10);
    }
}
