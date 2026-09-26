package kotlinx.serialization.modules;

import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public interface e {

    public static final class a {

        /* JADX INFO: renamed from: kotlinx.serialization.modules.e$a$a, reason: collision with other inner class name */
        static final class C0468a extends v implements l<List<? extends KSerializer<?>>, KSerializer<?>> {
            final /* synthetic */ KSerializer<T> $serializer;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0468a(KSerializer<T> kSerializer) {
                super(1);
                this.$serializer = kSerializer;
            }

            @Override // e8.l
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final KSerializer<?> invoke(@NotNull List<? extends KSerializer<?>> it) {
                t.j(it, "it");
                return this.$serializer;
            }
        }

        public static <T> void a(@NotNull e eVar, @NotNull KClass<T> kClass, @NotNull KSerializer<T> serializer) {
            t.j(kClass, "kClass");
            t.j(serializer, "serializer");
            eVar.e(kClass, new C0468a(serializer));
        }
    }

    <Base> void a(@NotNull KClass<Base> kClass, @NotNull l<? super Base, ? extends k<? super Base>> lVar);

    <Base, Sub extends Base> void b(@NotNull KClass<Base> kClass, @NotNull KClass<Sub> kClass2, @NotNull KSerializer<Sub> kSerializer);

    <T> void c(@NotNull KClass<T> kClass, @NotNull KSerializer<T> kSerializer);

    <Base> void d(@NotNull KClass<Base> kClass, @NotNull l<? super String, ? extends kotlinx.serialization.b<? extends Base>> lVar);

    <T> void e(@NotNull KClass<T> kClass, @NotNull l<? super List<? extends KSerializer<?>>, ? extends KSerializer<?>> lVar);
}
