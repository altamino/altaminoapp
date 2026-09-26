package androidx.privacysandbox.ads.adservices.java.measurement;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.measurement.DeletionRequest;
import androidx.privacysandbox.ads.adservices.measurement.MeasurementManager;
import androidx.privacysandbox.ads.adservices.measurement.WebSourceRegistrationRequest;
import androidx.privacysandbox.ads.adservices.measurement.WebTriggerRegistrationRequest;
import com.google.common.util.concurrent.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MeasurementManagerFutures {

    @NotNull
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: Access modifiers changed from: private */
    static final class Api33Ext5JavaImpl extends MeasurementManagerFutures {

        @NotNull
        private final MeasurementManager mMeasurementManager;

        public Api33Ext5JavaImpl(@NotNull MeasurementManager mMeasurementManager) {
            t.j(mMeasurementManager, "mMeasurementManager");
            this.mMeasurementManager = mMeasurementManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        @RequiresPermission
        @DoNotInline
        @NotNull
        public k<l0> c(@NotNull Uri attributionSource, @Nullable InputEvent inputEvent) {
            t.j(attributionSource, "attributionSource");
            return CoroutineAdapterKt.c(kotlinx.coroutines.k.b(p0.a(e1.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1(this, attributionSource, inputEvent, null), 3, null), null, 1, null);
        }

        @RequiresPermission
        @DoNotInline
        @NotNull
        public k<l0> f(@NotNull DeletionRequest deletionRequest) {
            t.j(deletionRequest, "deletionRequest");
            return CoroutineAdapterKt.c(kotlinx.coroutines.k.b(p0.a(e1.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1(this, deletionRequest, null), 3, null), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        @RequiresPermission
        @DoNotInline
        @NotNull
        public k<Integer> b() {
            return CoroutineAdapterKt.c(kotlinx.coroutines.k.b(p0.a(e1.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1(this, null), 3, null), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        @RequiresPermission
        @DoNotInline
        @NotNull
        public k<l0> d(@NotNull Uri trigger) {
            t.j(trigger, "trigger");
            return CoroutineAdapterKt.c(kotlinx.coroutines.k.b(p0.a(e1.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1(this, trigger, null), 3, null), null, 1, null);
        }

        @RequiresPermission
        @DoNotInline
        @NotNull
        public k<l0> g(@NotNull WebSourceRegistrationRequest request) {
            t.j(request, "request");
            return CoroutineAdapterKt.c(kotlinx.coroutines.k.b(p0.a(e1.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1(this, request, null), 3, null), null, 1, null);
        }

        @RequiresPermission
        @DoNotInline
        @NotNull
        public k<l0> h(@NotNull WebTriggerRegistrationRequest request) {
            t.j(request, "request");
            return CoroutineAdapterKt.c(kotlinx.coroutines.k.b(p0.a(e1.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebTriggerAsync$1(this, request, null), 3, null), null, 1, null);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @Nullable
        public final MeasurementManagerFutures a(@NotNull Context context) {
            t.j(context, "context");
            MeasurementManager measurementManagerA = MeasurementManager.Companion.a(context);
            if (measurementManagerA != null) {
                return new Api33Ext5JavaImpl(measurementManagerA);
            }
            return null;
        }
    }

    @Nullable
    public static final MeasurementManagerFutures a(@NotNull Context context) {
        return Companion.a(context);
    }

    @RequiresPermission
    @NotNull
    public abstract k<Integer> b();

    @RequiresPermission
    @NotNull
    public abstract k<l0> c(@NotNull Uri uri, @Nullable InputEvent inputEvent);

    @RequiresPermission
    @NotNull
    public abstract k<l0> d(@NotNull Uri uri);
}
