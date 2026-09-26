package kotlinx.serialization.modules;

import e8.l;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.p1;
import kotlinx.serialization.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class b extends c {

    @NotNull
    private final Map<KClass<?>, a> class2ContextualFactory;

    @NotNull
    private final Map<KClass<?>, l<String, kotlinx.serialization.b<?>>> polyBase2DefaultDeserializerProvider;

    @NotNull
    private final Map<KClass<?>, l<?, k<?>>> polyBase2DefaultSerializerProvider;

    @NotNull
    private final Map<KClass<?>, Map<String, KSerializer<?>>> polyBase2NamedSerializers;

    @NotNull
    public final Map<KClass<?>, Map<KClass<?>, KSerializer<?>>> polyBase2Serializers;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(@NotNull Map<KClass<?>, ? extends a> class2ContextualFactory, @NotNull Map<KClass<?>, ? extends Map<KClass<?>, ? extends KSerializer<?>>> polyBase2Serializers, @NotNull Map<KClass<?>, ? extends l<?, ? extends k<?>>> polyBase2DefaultSerializerProvider, @NotNull Map<KClass<?>, ? extends Map<String, ? extends KSerializer<?>>> polyBase2NamedSerializers, @NotNull Map<KClass<?>, ? extends l<? super String, ? extends kotlinx.serialization.b<?>>> polyBase2DefaultDeserializerProvider) {
        super(null);
        t.j(class2ContextualFactory, "class2ContextualFactory");
        t.j(polyBase2Serializers, "polyBase2Serializers");
        t.j(polyBase2DefaultSerializerProvider, "polyBase2DefaultSerializerProvider");
        t.j(polyBase2NamedSerializers, "polyBase2NamedSerializers");
        t.j(polyBase2DefaultDeserializerProvider, "polyBase2DefaultDeserializerProvider");
        this.class2ContextualFactory = class2ContextualFactory;
        this.polyBase2Serializers = polyBase2Serializers;
        this.polyBase2DefaultSerializerProvider = polyBase2DefaultSerializerProvider;
        this.polyBase2NamedSerializers = polyBase2NamedSerializers;
        this.polyBase2DefaultDeserializerProvider = polyBase2DefaultDeserializerProvider;
    }

    @Override // kotlinx.serialization.modules.c
    public void a(@NotNull e collector) {
        t.j(collector, "collector");
        for (Map.Entry<KClass<?>, a> entry : this.class2ContextualFactory.entrySet()) {
            KClass<?> key = entry.getKey();
            a value = entry.getValue();
            if (value instanceof a.C0467a) {
                t.h(key, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                KSerializer<?> kSerializerB = ((a.C0467a) value).b();
                t.h(kSerializerB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>");
                collector.c(key, kSerializerB);
            } else if (value instanceof a.b) {
                collector.e(key, ((a.b) value).b());
            }
        }
        for (Map.Entry<KClass<?>, Map<KClass<?>, KSerializer<?>>> entry2 : this.polyBase2Serializers.entrySet()) {
            KClass<?> key2 = entry2.getKey();
            for (Map.Entry<KClass<?>, KSerializer<?>> entry3 : entry2.getValue().entrySet()) {
                KClass<?> key3 = entry3.getKey();
                KSerializer<?> value2 = entry3.getValue();
                t.h(key2, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                t.h(key3, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                t.h(value2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                collector.b(key2, key3, value2);
            }
        }
        for (Map.Entry<KClass<?>, l<?, k<?>>> entry4 : this.polyBase2DefaultSerializerProvider.entrySet()) {
            KClass<?> key4 = entry4.getKey();
            l<?, k<?>> value3 = entry4.getValue();
            t.h(key4, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            t.h(value3, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = 'value')] kotlin.Any, kotlinx.serialization.SerializationStrategy<kotlin.Any>?>{ kotlinx.serialization.modules.SerializersModuleKt.PolymorphicSerializerProvider<kotlin.Any> }");
            collector.a(key4, (l) v0.e(value3, 1));
        }
        for (Map.Entry<KClass<?>, l<String, kotlinx.serialization.b<?>>> entry5 : this.polyBase2DefaultDeserializerProvider.entrySet()) {
            KClass<?> key5 = entry5.getKey();
            l<String, kotlinx.serialization.b<?>> value4 = entry5.getValue();
            t.h(key5, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            t.h(value4, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = 'className')] kotlin.String?, kotlinx.serialization.DeserializationStrategy<out kotlin.Any>?>{ kotlinx.serialization.modules.SerializersModuleKt.PolymorphicDeserializerProvider<out kotlin.Any> }");
            collector.d(key5, (l) v0.e(value4, 1));
        }
    }

    @Override // kotlinx.serialization.modules.c
    @Nullable
    public <T> KSerializer<T> b(@NotNull KClass<T> kClass, @NotNull List<? extends KSerializer<?>> typeArgumentsSerializers) {
        t.j(kClass, "kClass");
        t.j(typeArgumentsSerializers, "typeArgumentsSerializers");
        a aVar = this.class2ContextualFactory.get(kClass);
        KSerializer<?> kSerializerA = aVar != null ? aVar.a(typeArgumentsSerializers) : null;
        if (kSerializerA instanceof KSerializer) {
            return (KSerializer<T>) kSerializerA;
        }
        return null;
    }

    @Override // kotlinx.serialization.modules.c
    @Nullable
    public <T> kotlinx.serialization.b<? extends T> d(@NotNull KClass<? super T> baseClass, @Nullable String str) {
        t.j(baseClass, "baseClass");
        Map<String, KSerializer<?>> map = this.polyBase2NamedSerializers.get(baseClass);
        KSerializer<?> kSerializer = map != null ? map.get(str) : null;
        if (!(kSerializer instanceof KSerializer)) {
            kSerializer = null;
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        l<String, kotlinx.serialization.b<?>> lVar = this.polyBase2DefaultDeserializerProvider.get(baseClass);
        l<String, kotlinx.serialization.b<?>> lVar2 = v0.k(lVar, 1) ? lVar : null;
        if (lVar2 != null) {
            return (kotlinx.serialization.b) lVar2.invoke(str);
        }
        return null;
    }

    @Override // kotlinx.serialization.modules.c
    @Nullable
    public <T> k<T> e(@NotNull KClass<? super T> baseClass, @NotNull T value) {
        t.j(baseClass, "baseClass");
        t.j(value, "value");
        if (!p1.i(value, baseClass)) {
            return null;
        }
        Map<KClass<?>, KSerializer<?>> map = this.polyBase2Serializers.get(baseClass);
        KSerializer<?> kSerializer = map != null ? map.get(q0.b(value.getClass())) : null;
        if (!(kSerializer instanceof k)) {
            kSerializer = null;
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        l<?, k<?>> lVar = this.polyBase2DefaultSerializerProvider.get(baseClass);
        l<?, k<?>> lVar2 = v0.k(lVar, 1) ? lVar : null;
        if (lVar2 != null) {
            return (k) lVar2.invoke(value);
        }
        return null;
    }
}
