package kotlinx.serialization.modules;

import e8.l;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class a {

    /* JADX INFO: renamed from: kotlinx.serialization.modules.a$a, reason: collision with other inner class name */
    public static final class C0467a extends a {

        @NotNull
        private final KSerializer<?> serializer;

        @Override // kotlinx.serialization.modules.a
        @NotNull
        public KSerializer<?> a(@NotNull List<? extends KSerializer<?>> typeArgumentsSerializers) {
            t.j(typeArgumentsSerializers, "typeArgumentsSerializers");
            return this.serializer;
        }

        @NotNull
        public final KSerializer<?> b() {
            return this.serializer;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0467a(@NotNull KSerializer<?> serializer) {
            super(null);
            t.j(serializer, "serializer");
            this.serializer = serializer;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof C0467a) && t.e(((C0467a) obj).serializer, this.serializer);
        }

        public int hashCode() {
            return this.serializer.hashCode();
        }
    }

    public static final class b extends a {

        @NotNull
        private final l<List<? extends KSerializer<?>>, KSerializer<?>> provider;

        @NotNull
        public final l<List<? extends KSerializer<?>>, KSerializer<?>> b() {
            return this.provider;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(@NotNull l<? super List<? extends KSerializer<?>>, ? extends KSerializer<?>> provider) {
            super(null);
            t.j(provider, "provider");
            this.provider = provider;
        }

        @Override // kotlinx.serialization.modules.a
        @NotNull
        public KSerializer<?> a(@NotNull List<? extends KSerializer<?>> typeArgumentsSerializers) {
            t.j(typeArgumentsSerializers, "typeArgumentsSerializers");
            return this.provider.invoke(typeArgumentsSerializers);
        }
    }

    public /* synthetic */ a(k kVar) {
        this();
    }

    @NotNull
    public abstract KSerializer<?> a(@NotNull List<? extends KSerializer<?>> list);

    private a() {
    }
}
