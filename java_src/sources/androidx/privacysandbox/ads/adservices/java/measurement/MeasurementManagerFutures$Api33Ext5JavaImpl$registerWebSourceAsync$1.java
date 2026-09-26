package androidx.privacysandbox.ads.adservices.java.measurement;

import androidx.privacysandbox.ads.adservices.measurement.MeasurementManager;
import androidx.privacysandbox.ads.adservices.measurement.WebSourceRegistrationRequest;
import e8.p;
import io.agora.rtc.Constants;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1", f = "MeasurementManagerFutures.kt", l = {Constants.ERR_PUBLISH_STREAM_CDN_ERROR}, m = "invokeSuspend")
final class MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ WebSourceRegistrationRequest $request;
    int label;
    final /* synthetic */ MeasurementManagerFutures.Api33Ext5JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1(MeasurementManagerFutures.Api33Ext5JavaImpl api33Ext5JavaImpl, WebSourceRegistrationRequest webSourceRegistrationRequest, d<? super MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1> dVar) {
        super(2, dVar);
        this.this$0 = api33Ext5JavaImpl;
        this.$request = webSourceRegistrationRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1(this.this$0, this.$request, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            MeasurementManager measurementManager = this.this$0.mMeasurementManager;
            WebSourceRegistrationRequest webSourceRegistrationRequest = this.$request;
            this.label = 1;
            if (measurementManager.e(webSourceRegistrationRequest, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
