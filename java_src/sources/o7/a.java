package o7;

import java.lang.reflect.Type;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    @Nullable
    private final KType kotlinType;

    @NotNull
    private final Type reifiedType;

    @NotNull
    private final KClass<?> type;

    public a(@NotNull KClass<?> type, @NotNull Type reifiedType, @Nullable KType kType) {
        t.j(type, "type");
        t.j(reifiedType, "reifiedType");
        this.type = type;
        this.reifiedType = reifiedType;
        this.kotlinType = kType;
    }

    @NotNull
    public final KClass<?> a() {
        return this.type;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return t.e(this.type, aVar.type) && t.e(this.reifiedType, aVar.reifiedType) && t.e(this.kotlinType, aVar.kotlinType);
    }

    public int hashCode() {
        int iHashCode = ((this.type.hashCode() * 31) + this.reifiedType.hashCode()) * 31;
        KType kType = this.kotlinType;
        return iHashCode + (kType == null ? 0 : kType.hashCode());
    }

    @NotNull
    public String toString() {
        return "TypeInfo(type=" + this.type + ", reifiedType=" + this.reifiedType + ", kotlinType=" + this.kotlinType + ')';
    }

    public /* synthetic */ a(KClass kClass, Type type, KType kType, int i10, k kVar) {
        this(kClass, type, (i10 & 4) != 0 ? null : kType);
    }
}
