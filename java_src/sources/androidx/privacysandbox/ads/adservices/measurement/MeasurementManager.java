package androidx.privacysandbox.ads.adservices.measurement;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.InputEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class MeasurementManager {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MEASUREMENT_API_STATE_DISABLED = 0;
    public static final int MEASUREMENT_API_STATE_ENABLED = 1;

    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    @RequiresExtension
    private static final class Api33Ext5Impl extends MeasurementManager {

        @NotNull
        private final android.adservices.measurement.MeasurementManager mMeasurementManager;

        public Api33Ext5Impl(@NotNull android.adservices.measurement.MeasurementManager mMeasurementManager) {
            kotlin.jvm.internal.t.j(mMeasurementManager, "mMeasurementManager");
            this.mMeasurementManager = mMeasurementManager;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Api33Ext5Impl(@NotNull Context context) {
            kotlin.jvm.internal.t.j(context, "context");
            Object systemService = context.getSystemService((Class<Object>) h0.a());
            kotlin.jvm.internal.t.i(systemService, "context.getSystemService…:class.java\n            )");
            this(i0.a(systemService));
        }

        private final List<android.adservices.measurement.WebSourceParams> l(List<WebSourceParams> list) {
            ArrayList arrayList = new ArrayList();
            for (WebSourceParams webSourceParams : list) {
                f.a();
                android.adservices.measurement.WebSourceParams webSourceParamsBuild = e.a(webSourceParams.b()).setDebugKeyAllowed(webSourceParams.a()).build();
                kotlin.jvm.internal.t.i(webSourceParamsBuild, "Builder(param.registrati…                 .build()");
                arrayList.add(webSourceParamsBuild);
            }
            return arrayList;
        }

        private final List<android.adservices.measurement.WebTriggerParams> n(List<WebTriggerParams> list) {
            ArrayList arrayList = new ArrayList();
            for (WebTriggerParams webTriggerParams : list) {
                k.a();
                android.adservices.measurement.WebTriggerParams webTriggerParamsBuild = j.a(webTriggerParams.b()).setDebugKeyAllowed(webTriggerParams.a()).build();
                kotlin.jvm.internal.t.i(webTriggerParamsBuild, "Builder(param.registrati…                 .build()");
                arrayList.add(webTriggerParamsBuild);
            }
            return arrayList;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @DoNotInline
        @Nullable
        public Object a(@NotNull DeletionRequest deletionRequest, @NotNull kotlin.coroutines.d<? super l0> dVar) throws Throwable {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            this.mMeasurementManager.deleteRegistrations(k(deletionRequest), new androidx.media3.exoplayer.dash.offline.a(), OutcomeReceiverKt.a(pVar));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU == kotlin.coroutines.intrinsics.d.e() ? objU : l0.INSTANCE;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object b(@NotNull kotlin.coroutines.d<? super Integer> dVar) throws Throwable {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            this.mMeasurementManager.getMeasurementApiStatus(new androidx.media3.exoplayer.dash.offline.a(), OutcomeReceiverKt.a(pVar));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object c(@NotNull Uri uri, @Nullable InputEvent inputEvent, @NotNull kotlin.coroutines.d<? super l0> dVar) throws Throwable {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            this.mMeasurementManager.registerSource(uri, inputEvent, new androidx.media3.exoplayer.dash.offline.a(), OutcomeReceiverKt.a(pVar));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU == kotlin.coroutines.intrinsics.d.e() ? objU : l0.INSTANCE;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object d(@NotNull Uri uri, @NotNull kotlin.coroutines.d<? super l0> dVar) throws Throwable {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            this.mMeasurementManager.registerTrigger(uri, new androidx.media3.exoplayer.dash.offline.a(), OutcomeReceiverKt.a(pVar));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU == kotlin.coroutines.intrinsics.d.e() ? objU : l0.INSTANCE;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object e(@NotNull WebSourceRegistrationRequest webSourceRegistrationRequest, @NotNull kotlin.coroutines.d<? super l0> dVar) throws Throwable {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            this.mMeasurementManager.registerWebSource(m(webSourceRegistrationRequest), new androidx.media3.exoplayer.dash.offline.a(), OutcomeReceiverKt.a(pVar));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU == kotlin.coroutines.intrinsics.d.e() ? objU : l0.INSTANCE;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object f(@NotNull WebTriggerRegistrationRequest webTriggerRegistrationRequest, @NotNull kotlin.coroutines.d<? super l0> dVar) throws Throwable {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            this.mMeasurementManager.registerWebTrigger(o(webTriggerRegistrationRequest), new androidx.media3.exoplayer.dash.offline.a(), OutcomeReceiverKt.a(pVar));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU == kotlin.coroutines.intrinsics.d.e() ? objU : l0.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final android.adservices.measurement.DeletionRequest k(DeletionRequest deletionRequest) {
            android.adservices.measurement.DeletionRequest deletionRequestBuild = i.a().setDeletionMode(deletionRequest.a()).setMatchBehavior(deletionRequest.d()).setStart(deletionRequest.f()).setEnd(deletionRequest.c()).setDomainUris(deletionRequest.b()).setOriginUris(deletionRequest.e()).build();
            kotlin.jvm.internal.t.i(deletionRequestBuild, "Builder()\n              …\n                .build()");
            return deletionRequestBuild;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final android.adservices.measurement.WebSourceRegistrationRequest m(WebSourceRegistrationRequest webSourceRegistrationRequest) {
            k0.a();
            android.adservices.measurement.WebSourceRegistrationRequest webSourceRegistrationRequestBuild = j0.a(l(webSourceRegistrationRequest.f()), webSourceRegistrationRequest.c()).setWebDestination(webSourceRegistrationRequest.e()).setAppDestination(webSourceRegistrationRequest.a()).setInputEvent(webSourceRegistrationRequest.b()).setVerifiedDestination(webSourceRegistrationRequest.d()).build();
            kotlin.jvm.internal.t.i(webSourceRegistrationRequestBuild, "Builder(\n               …\n                .build()");
            return webSourceRegistrationRequestBuild;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final android.adservices.measurement.WebTriggerRegistrationRequest o(WebTriggerRegistrationRequest webTriggerRegistrationRequest) {
            h.a();
            android.adservices.measurement.WebTriggerRegistrationRequest webTriggerRegistrationRequestBuild = g.a(n(webTriggerRegistrationRequest.b()), webTriggerRegistrationRequest.a()).build();
            kotlin.jvm.internal.t.i(webTriggerRegistrationRequestBuild, "Builder(\n               …\n                .build()");
            return webTriggerRegistrationRequestBuild;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        @Nullable
        public final MeasurementManager a(@NotNull Context context) {
            kotlin.jvm.internal.t.j(context, "context");
            StringBuilder sb = new StringBuilder();
            sb.append("AdServicesInfo.version=");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            sb.append(adServicesInfo.a());
            Log.d("MeasurementManager", sb.toString());
            if (adServicesInfo.a() >= 5) {
                return new Api33Ext5Impl(context);
            }
            return null;
        }
    }

    @Nullable
    public abstract Object a(@NotNull DeletionRequest deletionRequest, @NotNull kotlin.coroutines.d<? super l0> dVar);

    @RequiresPermission
    @Nullable
    public abstract Object b(@NotNull kotlin.coroutines.d<? super Integer> dVar);

    @RequiresPermission
    @Nullable
    public abstract Object c(@NotNull Uri uri, @Nullable InputEvent inputEvent, @NotNull kotlin.coroutines.d<? super l0> dVar);

    @RequiresPermission
    @Nullable
    public abstract Object d(@NotNull Uri uri, @NotNull kotlin.coroutines.d<? super l0> dVar);

    @RequiresPermission
    @Nullable
    public abstract Object e(@NotNull WebSourceRegistrationRequest webSourceRegistrationRequest, @NotNull kotlin.coroutines.d<? super l0> dVar);

    @RequiresPermission
    @Nullable
    public abstract Object f(@NotNull WebTriggerRegistrationRequest webTriggerRegistrationRequest, @NotNull kotlin.coroutines.d<? super l0> dVar);
}
