package androidx.privacysandbox.ads.adservices.topics;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@RequiresExtension
@SuppressLint({"NewApi", "ClassVerificationFailure"})
@RestrictTo
public final class TopicsManagerApi33Ext5Impl extends TopicsManagerImplCommon {
    /* JADX WARN: Illegal instructions before constructor call */
    public TopicsManagerApi33Ext5Impl(@NotNull Context context) {
        t.j(context, "context");
        Object systemService = context.getSystemService((Class<Object>) a.a());
        t.i(systemService, "context.getSystemService…opicsManager::class.java)");
        super(b.a(systemService));
    }

    @Override // androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon
    @NotNull
    public android.adservices.topics.GetTopicsRequest c(@NotNull GetTopicsRequest request) {
        t.j(request, "request");
        android.adservices.topics.GetTopicsRequest getTopicsRequestBuild = c.a().setAdsSdkName(request.a()).setShouldRecordObservation(request.b()).build();
        t.i(getTopicsRequestBuild, "Builder()\n            .s…ion)\n            .build()");
        return getTopicsRequestBuild;
    }
}
