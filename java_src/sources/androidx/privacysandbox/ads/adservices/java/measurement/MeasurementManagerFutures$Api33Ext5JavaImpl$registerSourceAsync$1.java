package androidx.privacysandbox.ads.adservices.java.measurement;

import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.measurement.MeasurementManager;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1", f = "MeasurementManagerFutures.kt", l = {133}, m = "invokeSuspend")
final class MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ Uri $attributionSource;
    final /* synthetic */ InputEvent $inputEvent;
    int label;
    final /* synthetic */ MeasurementManagerFutures.Api33Ext5JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1(MeasurementManagerFutures.Api33Ext5JavaImpl api33Ext5JavaImpl, Uri uri, InputEvent inputEvent, d<? super MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1> dVar) {
        super(2, dVar);
        this.this$0 = api33Ext5JavaImpl;
        this.$attributionSource = uri;
        this.$inputEvent = inputEvent;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1(this.this$0, this.$attributionSource, this.$inputEvent, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            Uri uri = this.$attributionSource;
            InputEvent inputEvent = this.$inputEvent;
            this.label = 1;
            if (measurementManager.c(uri, inputEvent, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
