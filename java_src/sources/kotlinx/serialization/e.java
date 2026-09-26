package kotlinx.serialization;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import kotlin.jvm.internal.v;
import kotlin.reflect.KClass;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import w7.l0;
import w7.q;

/* JADX INFO: loaded from: classes6.dex */
public final class e<T> extends kotlinx.serialization.internal.b<T> {

    @NotNull
    private List<? extends Annotation> _annotations;

    @NotNull
    private final KClass<T> baseClass;

    @NotNull
    private final w7.m descriptor$delegate;

    static final class a extends v implements e8.a<SerialDescriptor> {
        final /* synthetic */ e<T> this$0;

        /* JADX INFO: renamed from: kotlinx.serialization.e$a$a, reason: collision with other inner class name */
        static final class C0461a extends v implements e8.l<kotlinx.serialization.descriptors.a, l0> {
            final /* synthetic */ e<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0461a(e<T> eVar) {
                super(1);
                this.this$0 = eVar;
            }

            public final void a(@NotNull kotlinx.serialization.descriptors.a buildSerialDescriptor) {
                t.j(buildSerialDescriptor, "$this$buildSerialDescriptor");
                kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "type", m8.a.C(u0.INSTANCE).getDescriptor(), null, false, 12, null);
                kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "value", kotlinx.serialization.descriptors.h.d("kotlinx.serialization.Polymorphic<" + this.this$0.e().getSimpleName() + '>', kotlinx.serialization.descriptors.i.a.INSTANCE, new SerialDescriptor[0], null, 8, null), null, false, 12, null);
                buildSerialDescriptor.h(((e) this.this$0)._annotations);
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(kotlinx.serialization.descriptors.a aVar) {
                a(aVar);
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(e<T> eVar) {
            super(0);
            this.this$0 = eVar;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SerialDescriptor invoke() {
            return kotlinx.serialization.descriptors.b.c(kotlinx.serialization.descriptors.h.c("kotlinx.serialization.Polymorphic", kotlinx.serialization.descriptors.d.a.INSTANCE, new SerialDescriptor[0], new C0461a(this.this$0)), this.this$0.e());
        }
    }

    public e(@NotNull KClass<T> baseClass) {
        t.j(baseClass, "baseClass");
        this.baseClass = baseClass;
        this._annotations = kotlin.collections.v.m();
        this.descriptor$delegate = w7.o.b(q.PUBLICATION, new a(this));
    }

    @Override // kotlinx.serialization.internal.b
    @NotNull
    public KClass<T> e() {
        return this.baseClass;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    @NotNull
    public String toString() {
        return "kotlinx.serialization.PolymorphicSerializer(baseClass: " + e() + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(@NotNull KClass<T> baseClass, @NotNull Annotation[] classAnnotations) {
        this(baseClass);
        t.j(baseClass, "baseClass");
        t.j(classAnnotations, "classAnnotations");
        this._annotations = kotlin.collections.o.c(classAnnotations);
    }
}
