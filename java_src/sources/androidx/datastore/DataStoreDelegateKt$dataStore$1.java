package androidx.datastore;

import android.content.Context;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class DataStoreDelegateKt$dataStore$1 extends v implements l {
    public static final DataStoreDelegateKt$dataStore$1 INSTANCE = new DataStoreDelegateKt$dataStore$1();

    DataStoreDelegateKt$dataStore$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List invoke(@NotNull Context it) {
        t.j(it, "it");
        return kotlin.collections.v.m();
    }
}
