package androidx.privacysandbox.ads.adservices.java.customaudience;

import androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager;
import androidx.privacysandbox.ads.adservices.customaudience.JoinCustomAudienceRequest;
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

/* JADX INFO: loaded from: classes5.dex */
@f(c = "androidx.privacysandbox.ads.adservices.java.customaudience.CustomAudienceManagerFutures$Api33Ext4JavaImpl$joinCustomAudienceAsync$1", f = "CustomAudienceManagerFutures.kt", l = {113}, m = "invokeSuspend")
final class CustomAudienceManagerFutures$Api33Ext4JavaImpl$joinCustomAudienceAsync$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ JoinCustomAudienceRequest $request;
    int label;
    final /* synthetic */ CustomAudienceManagerFutures.Api33Ext4JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CustomAudienceManagerFutures$Api33Ext4JavaImpl$joinCustomAudienceAsync$1(CustomAudienceManagerFutures.Api33Ext4JavaImpl api33Ext4JavaImpl, JoinCustomAudienceRequest joinCustomAudienceRequest, d<? super CustomAudienceManagerFutures$Api33Ext4JavaImpl$joinCustomAudienceAsync$1> dVar) {
        super(2, dVar);
        this.this$0 = api33Ext4JavaImpl;
        this.$request = joinCustomAudienceRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new CustomAudienceManagerFutures$Api33Ext4JavaImpl$joinCustomAudienceAsync$1(this.this$0, this.$request, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((CustomAudienceManagerFutures$Api33Ext4JavaImpl$joinCustomAudienceAsync$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            CustomAudienceManager customAudienceManager = this.this$0.mCustomAudienceManager;
            t.g(customAudienceManager);
            JoinCustomAudienceRequest joinCustomAudienceRequest = this.$request;
            this.label = 1;
            if (customAudienceManager.a(joinCustomAudienceRequest, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
