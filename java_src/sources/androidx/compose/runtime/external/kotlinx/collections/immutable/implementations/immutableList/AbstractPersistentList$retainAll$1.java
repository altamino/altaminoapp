package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import e8.l;
import java.util.Collection;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class AbstractPersistentList$retainAll$1 extends v implements l<Object, Boolean> {
    final /* synthetic */ Collection<Object> $elements;

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(Object obj) {
        return Boolean.valueOf(!this.$elements.contains(obj));
    }
}
