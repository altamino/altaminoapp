package androidx.privacysandbox.ads.adservices.java.adselection;

import androidx.privacysandbox.ads.adservices.adselection.AdSelectionConfig;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
@f(c = "androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1", f = "AdSelectionManagerFutures.kt", l = {94}, m = "invokeSuspend")
final class AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1 extends l implements p<o0, d<? super AdSelectionOutcome>, Object> {
    final /* synthetic */ AdSelectionConfig $adSelectionConfig;
    int label;
    final /* synthetic */ AdSelectionManagerFutures.Api33Ext4JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1(AdSelectionManagerFutures.Api33Ext4JavaImpl api33Ext4JavaImpl, AdSelectionConfig adSelectionConfig, d<? super AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1> dVar) {
        super(2, dVar);
        this.this$0 = api33Ext4JavaImpl;
        this.$adSelectionConfig = adSelectionConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1(this.this$0, this.$adSelectionConfig, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super AdSelectionOutcome> dVar) {
        return ((AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            AdSelectionManager adSelectionManager = this.this$0.mAdSelectionManager;
            t.g(adSelectionManager);
            AdSelectionConfig adSelectionConfig = this.$adSelectionConfig;
            this.label = 1;
            obj = adSelectionManager.b(adSelectionConfig, this);
            if (obj == objE) {
                return objE;
            }
        }
        return obj;
    }
}
