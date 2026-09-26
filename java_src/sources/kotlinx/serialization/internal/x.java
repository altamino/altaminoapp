package kotlinx.serialization.internal;

import java.util.Collection;
import java.util.Iterator;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public abstract class x<E, C extends Collection<? extends E>, B> extends w<E, C, B> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(@NotNull KSerializer<E> element) {
        super(element, null);
        kotlin.jvm.internal.t.j(element, "element");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public Iterator<E> d(@NotNull C c7) {
        kotlin.jvm.internal.t.j(c7, "<this>");
        return c7.iterator();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public int e(@NotNull C c7) {
        kotlin.jvm.internal.t.j(c7, "<this>");
        return c7.size();
    }
}
