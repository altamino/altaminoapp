package kotlinx.serialization.json;

import kotlinx.serialization.json.internal.g0;
import kotlinx.serialization.json.internal.h0;
import kotlinx.serialization.json.internal.s0;
import kotlinx.serialization.json.internal.v0;
import kotlinx.serialization.json.internal.x0;
import kotlinx.serialization.json.internal.z0;
import org.apache.commons.compress.archivers.zip.UnixStat;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements kotlinx.serialization.o {

    @NotNull
    public static final C0465a Default = new C0465a(null);

    @NotNull
    private final kotlinx.serialization.json.internal.v _schemaCache;

    @NotNull
    private final e configuration;

    @NotNull
    private final kotlinx.serialization.modules.c serializersModule;

    /* JADX INFO: renamed from: kotlinx.serialization.json.a$a, reason: collision with other inner class name */
    public static final class C0465a extends a {
        public /* synthetic */ C0465a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private C0465a() {
            super(new e(false, false, false, false, false, false, null, false, false, null, false, false, UnixStat.PERM_MASK, null), kotlinx.serialization.modules.d.a(), null);
        }
    }

    public /* synthetic */ a(e eVar, kotlinx.serialization.modules.c cVar, kotlin.jvm.internal.k kVar) {
        this(eVar, cVar);
    }

    @Override // kotlinx.serialization.h
    @NotNull
    public kotlinx.serialization.modules.c a() {
        return this.serializersModule;
    }

    @NotNull
    public final e e() {
        return this.configuration;
    }

    @NotNull
    public final kotlinx.serialization.json.internal.v f() {
        return this._schemaCache;
    }

    private a(e eVar, kotlinx.serialization.modules.c cVar) {
        this.configuration = eVar;
        this.serializersModule = cVar;
        this._schemaCache = new kotlinx.serialization.json.internal.v();
    }

    @Override // kotlinx.serialization.o
    @NotNull
    public final <T> String b(@NotNull kotlinx.serialization.k<? super T> serializer, T t5) {
        kotlin.jvm.internal.t.j(serializer, "serializer");
        h0 h0Var = new h0();
        try {
            g0.a(this, h0Var, serializer, t5);
            return h0Var.toString();
        } finally {
            h0Var.g();
        }
    }

    @Override // kotlinx.serialization.o
    public final <T> T c(@NotNull kotlinx.serialization.b<T> deserializer, @NotNull String string) {
        kotlin.jvm.internal.t.j(deserializer, "deserializer");
        kotlin.jvm.internal.t.j(string, "string");
        v0 v0Var = new v0(string);
        T t5 = (T) new s0(this, z0.OBJ, v0Var, deserializer.getDescriptor(), null).G(deserializer);
        v0Var.w();
        return t5;
    }

    public final <T> T d(@NotNull kotlinx.serialization.b<T> deserializer, @NotNull JsonElement element) {
        kotlin.jvm.internal.t.j(deserializer, "deserializer");
        kotlin.jvm.internal.t.j(element, "element");
        return (T) x0.a(this, element, deserializer);
    }
}
