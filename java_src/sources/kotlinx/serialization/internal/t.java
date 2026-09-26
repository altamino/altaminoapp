package kotlinx.serialization.internal;

import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class t<T> implements c2<T> {

    @NotNull
    private final a classValue;

    @NotNull
    private final e8.l<KClass<?>, KSerializer<T>> compute;

    public static final class a extends ClassValue<m<T>> {
        final /* synthetic */ t<T> this$0;

        a(t<T> tVar) {
            this.this$0 = tVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ClassValue
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public m<T> computeValue(@NotNull Class<?> type) {
            kotlin.jvm.internal.t.j(type, "type");
            return new m<>((KSerializer) ((t) this.this$0).compute.invoke(d8.a.c(type)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t(@NotNull e8.l<? super KClass<?>, ? extends KSerializer<T>> compute) {
        kotlin.jvm.internal.t.j(compute, "compute");
        this.compute = compute;
        this.classValue = c();
    }

    private final a c() {
        return new a(this);
    }

    @Override // kotlinx.serialization.internal.c2
    @Nullable
    public KSerializer<T> a(@NotNull KClass<Object> key) {
        kotlin.jvm.internal.t.j(key, "key");
        return ((m) this.classValue.get(d8.a.a(key))).serializer;
    }
}
