package androidx.navigation;

import android.content.Context;
import android.content.ContextWrapper;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class NavController$activity$1 extends v implements l<Context, Context> {
    public static final NavController$activity$1 INSTANCE = new NavController$activity$1();

    NavController$activity$1() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Context invoke(@NotNull Context it) {
        t.j(it, "it");
        if (it instanceof ContextWrapper) {
            return ((ContextWrapper) it).getBaseContext();
        }
        return null;
    }
}
