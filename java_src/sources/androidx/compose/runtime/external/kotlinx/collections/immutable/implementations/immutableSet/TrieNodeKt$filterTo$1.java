package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class TrieNodeKt$filterTo$1 extends v implements l<Object, Boolean> {
    public static final TrieNodeKt$filterTo$1 INSTANCE = new TrieNodeKt$filterTo$1();

    public TrieNodeKt$filterTo$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@Nullable Object obj) {
        return Boolean.valueOf(obj != TrieNode.Companion.a());
    }
}
