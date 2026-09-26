package androidx.navigation;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class NavController$restoreStateInternal$1 extends v implements l<String, Boolean> {
    final /* synthetic */ String $backStackId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NavController$restoreStateInternal$1(String str) {
        super(1);
        this.$backStackId = str;
    }

    @Override // e8.l
    @NotNull
    public final Boolean invoke(@Nullable String str) {
        return Boolean.valueOf(t.e(str, this.$backStackId));
    }
}
