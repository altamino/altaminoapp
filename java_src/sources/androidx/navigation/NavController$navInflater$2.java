package androidx.navigation;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class NavController$navInflater$2 extends v implements e8.a<NavInflater> {
    final /* synthetic */ NavController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NavController$navInflater$2(NavController navController) {
        super(0);
        this.this$0 = navController;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final NavInflater invoke() {
        NavInflater navInflater = this.this$0.inflater;
        return navInflater == null ? new NavInflater(this.this$0.y(), this.this$0._navigatorProvider) : navInflater;
    }
}
