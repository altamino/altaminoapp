package kotlinx.serialization.descriptors;

import e8.l;
import j8.o;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.collections.j0;
import kotlin.collections.p;
import kotlin.collections.s0;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.serialization.internal.n;
import kotlinx.serialization.internal.q1;
import kotlinx.serialization.internal.s1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.m;

/* JADX INFO: loaded from: classes10.dex */
public final class f implements SerialDescriptor, n {

    @NotNull
    private final m _hashCode$delegate;

    @NotNull
    private final List<Annotation> annotations;

    @NotNull
    private final List<Annotation>[] elementAnnotations;

    @NotNull
    private final SerialDescriptor[] elementDescriptors;

    @NotNull
    private final String[] elementNames;

    @NotNull
    private final boolean[] elementOptionality;
    private final int elementsCount;

    @NotNull
    private final i kind;

    @NotNull
    private final Map<String, Integer> name2Index;

    @NotNull
    private final String serialName;

    @NotNull
    private final Set<String> serialNames;

    @NotNull
    private final SerialDescriptor[] typeParametersDescriptors;

    static final class a extends v implements e8.a<Integer> {
        a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // e8.a
        @NotNull
        public final Integer invoke() {
            f fVar = f.this;
            return Integer.valueOf(s1.a(fVar, fVar.typeParametersDescriptors));
        }
    }

    static final class b extends v implements l<Integer, CharSequence> {
        b() {
            super(1);
        }

        @NotNull
        public final CharSequence b(int i10) {
            return f.this.f(i10) + ": " + f.this.d(i10).h();
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ CharSequence invoke(Integer num) {
            return b(num.intValue());
        }
    }

    @Override // kotlinx.serialization.internal.n
    @NotNull
    public Set<String> a() {
        return this.serialNames;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int e() {
        return this.elementsCount;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (t.e(h(), serialDescriptor.h()) && Arrays.equals(this.typeParametersDescriptors, ((f) obj).typeParametersDescriptors) && e() == serialDescriptor.e()) {
                int iE = e();
                for (int i10 = 0; i10 < iE; i10++) {
                    if (t.e(d(i10).h(), serialDescriptor.d(i10).h()) && t.e(d(i10).getKind(), serialDescriptor.d(i10).getKind())) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> getAnnotations() {
        return this.annotations;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public i getKind() {
        return this.kind;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return this.serialName;
    }

    @NotNull
    public String toString() {
        return d0.t0(o.v(0, e()), ", ", h() + '(', ")", 0, null, new b(), 24, null);
    }

    public f(@NotNull String serialName, @NotNull i kind, int i10, @NotNull List<? extends SerialDescriptor> typeParameters, @NotNull kotlinx.serialization.descriptors.a builder) {
        t.j(serialName, "serialName");
        t.j(kind, "kind");
        t.j(typeParameters, "typeParameters");
        t.j(builder, "builder");
        this.serialName = serialName;
        this.kind = kind;
        this.elementsCount = i10;
        this.annotations = builder.c();
        this.serialNames = d0.S0(builder.f());
        Object[] array = builder.f().toArray(new String[0]);
        t.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        String[] strArr = (String[]) array;
        this.elementNames = strArr;
        this.elementDescriptors = q1.b(builder.e());
        Object[] array2 = builder.d().toArray(new List[0]);
        t.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        this.elementAnnotations = (List[]) array2;
        this.elementOptionality = d0.P0(builder.g());
        Iterable<j0> iterableY0 = p.y0(strArr);
        ArrayList arrayList = new ArrayList(w.x(iterableY0, 10));
        for (j0 j0Var : iterableY0) {
            arrayList.add(a0.a(j0Var.b(), Integer.valueOf(j0Var.a())));
        }
        this.name2Index = s0.u(arrayList);
        this.typeParametersDescriptors = q1.b(typeParameters);
        this._hashCode$delegate = w7.o.a(new a());
    }

    private final int k() {
        return ((Number) this._hashCode$delegate.getValue()).intValue();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int c(@NotNull String name) {
        t.j(name, "name");
        Integer num = this.name2Index.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor d(int i10) {
        return this.elementDescriptors[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String f(int i10) {
        return this.elementNames[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> g(int i10) {
        return this.elementAnnotations[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean i(int i10) {
        return this.elementOptionality[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean b() {
        return SerialDescriptor.a.c(this);
    }

    public int hashCode() {
        return k();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return SerialDescriptor.a.b(this);
    }
}
