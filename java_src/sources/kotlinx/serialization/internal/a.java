package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.Decoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class a<Element, Collection, Builder> implements KSerializer<Collection> {
    public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
        this();
    }

    protected abstract Builder a();

    protected abstract int b(Builder builder);

    protected abstract void c(Builder builder, int i10);

    @NotNull
    protected abstract Iterator<Element> d(Collection collection);

    protected abstract int e(Collection collection);

    protected abstract void g(@NotNull kotlinx.serialization.encoding.c cVar, Builder builder, int i10, int i11);

    protected abstract void h(@NotNull kotlinx.serialization.encoding.c cVar, int i10, Builder builder, boolean z6);

    protected abstract Builder k(Collection collection);

    protected abstract Collection l(Builder builder);

    private a() {
    }

    public static /* synthetic */ void i(a aVar, kotlinx.serialization.encoding.c cVar, int i10, Object obj, boolean z6, int i11, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readElement");
        }
        if ((i11 & 8) != 0) {
            z6 = true;
        }
        aVar.h(cVar, i10, obj, z6);
    }

    @Override // kotlinx.serialization.b
    public Collection deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return f(decoder, null);
    }

    public final Collection f(@NotNull Decoder decoder, @Nullable Collection collection) {
        Builder builderA;
        kotlin.jvm.internal.t.j(decoder, "decoder");
        if (collection == null || (builderA = k(collection)) == null) {
            builderA = a();
        }
        int iB = b(builderA);
        kotlinx.serialization.encoding.c cVarB = decoder.b(getDescriptor());
        if (!cVarB.k()) {
            while (true) {
                int iW = cVarB.w(getDescriptor());
                if (iW == -1) {
                    break;
                }
                i(this, cVarB, iB + iW, builderA, false, 8, null);
            }
        } else {
            g(cVarB, builderA, iB, j(cVarB, builderA));
        }
        cVarB.c(getDescriptor());
        return l(builderA);
    }

    private final int j(kotlinx.serialization.encoding.c cVar, Builder builder) {
        int iV = cVar.v(getDescriptor());
        c(builder, iV);
        return iV;
    }
}
