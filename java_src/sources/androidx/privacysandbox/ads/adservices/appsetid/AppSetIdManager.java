package androidx.privacysandbox.ads.adservices.appsetid;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.core.os.OutcomeReceiverKt;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AppSetIdManager {

    @NotNull
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClassVerificationFailure", "NewApi"})
    @RequiresExtension
    static final class Api33Ext4Impl extends AppSetIdManager {

        @NotNull
        private final android.adservices.appsetid.AppSetIdManager mAppSetIdManager;

        public Api33Ext4Impl(@NotNull android.adservices.appsetid.AppSetIdManager mAppSetIdManager) {
            t.j(mAppSetIdManager, "mAppSetIdManager");
            this.mAppSetIdManager = mAppSetIdManager;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Api33Ext4Impl(@NotNull Context context) {
            t.j(context, "context");
            Object systemService = context.getSystemService((Class<Object>) a.a());
            t.i(systemService, "context.getSystemService…:class.java\n            )");
            this(b.a(systemService));
        }

        private final Object d(kotlin.coroutines.d<? super android.adservices.appsetid.AppSetId> dVar) throws Throwable {
            p pVar = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            this.mAppSetIdManager.getAppSetId(new androidx.media3.exoplayer.dash.offline.a(), OutcomeReceiverKt.a(pVar));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                h.c(dVar);
            }
            return objU;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManager
        @DoNotInline
        @Nullable
        public Object a(@NotNull kotlin.coroutines.d<? super AppSetId> dVar) throws Throwable {
            AppSetIdManager$Api33Ext4Impl$getAppSetId$1 appSetIdManager$Api33Ext4Impl$getAppSetId$1;
            Api33Ext4Impl api33Ext4Impl;
            if (dVar instanceof AppSetIdManager$Api33Ext4Impl$getAppSetId$1) {
                appSetIdManager$Api33Ext4Impl$getAppSetId$1 = (AppSetIdManager$Api33Ext4Impl$getAppSetId$1) dVar;
                int i10 = appSetIdManager$Api33Ext4Impl$getAppSetId$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    appSetIdManager$Api33Ext4Impl$getAppSetId$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    appSetIdManager$Api33Ext4Impl$getAppSetId$1 = new AppSetIdManager$Api33Ext4Impl$getAppSetId$1(this, dVar);
                }
            } else {
                appSetIdManager$Api33Ext4Impl$getAppSetId$1 = new AppSetIdManager$Api33Ext4Impl$getAppSetId$1(this, dVar);
            }
            Object objD = appSetIdManager$Api33Ext4Impl$getAppSetId$1.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = appSetIdManager$Api33Ext4Impl$getAppSetId$1.label;
            if (i11 == 0) {
                w.b(objD);
                appSetIdManager$Api33Ext4Impl$getAppSetId$1.L$0 = this;
                appSetIdManager$Api33Ext4Impl$getAppSetId$1.label = 1;
                objD = d(appSetIdManager$Api33Ext4Impl$getAppSetId$1);
                if (objD == objE) {
                    return objE;
                }
                api33Ext4Impl = this;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                api33Ext4Impl = (Api33Ext4Impl) appSetIdManager$Api33Ext4Impl$getAppSetId$1.L$0;
                w.b(objD);
            }
            return api33Ext4Impl.c(c.a(objD));
        }

        private final AppSetId c(android.adservices.appsetid.AppSetId appSetId) {
            if (appSetId.getScope() == 1) {
                String id = appSetId.getId();
                t.i(id, "response.id");
                return new AppSetId(id, 1);
            }
            String id2 = appSetId.getId();
            t.i(id2, "response.id");
            return new AppSetId(id2, 2);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Nullable
    public abstract Object a(@NotNull kotlin.coroutines.d<? super AppSetId> dVar);
}
