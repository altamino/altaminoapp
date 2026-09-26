package androidx.privacysandbox.ads.adservices.topics;

import android.annotation.SuppressLint;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.core.os.OutcomeReceiverKt;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes10.dex */
@RequiresExtension
@SuppressLint({"NewApi"})
@RestrictTo
public class TopicsManagerImplCommon extends TopicsManager {

    @NotNull
    private final android.adservices.topics.TopicsManager mTopicsManager;

    @Override // androidx.privacysandbox.ads.adservices.topics.TopicsManager
    @RequiresPermission
    @DoNotInline
    @Nullable
    public Object a(@NotNull GetTopicsRequest getTopicsRequest, @NotNull kotlin.coroutines.d<? super GetTopicsResponse> dVar) {
        return e(this, getTopicsRequest, dVar);
    }

    public TopicsManagerImplCommon(@NotNull android.adservices.topics.TopicsManager mTopicsManager) {
        t.j(mTopicsManager, "mTopicsManager");
        this.mTopicsManager = mTopicsManager;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @RequiresPermission
    @DoNotInline
    static /* synthetic */ Object e(TopicsManagerImplCommon topicsManagerImplCommon, GetTopicsRequest getTopicsRequest, kotlin.coroutines.d<? super GetTopicsResponse> dVar) throws Throwable {
        TopicsManagerImplCommon$getTopics$1 topicsManagerImplCommon$getTopics$1;
        if (dVar instanceof TopicsManagerImplCommon$getTopics$1) {
            topicsManagerImplCommon$getTopics$1 = (TopicsManagerImplCommon$getTopics$1) dVar;
            int i10 = topicsManagerImplCommon$getTopics$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                topicsManagerImplCommon$getTopics$1.label = i10 - Integer.MIN_VALUE;
            } else {
                topicsManagerImplCommon$getTopics$1 = new TopicsManagerImplCommon$getTopics$1(topicsManagerImplCommon, dVar);
            }
        } else {
            topicsManagerImplCommon$getTopics$1 = new TopicsManagerImplCommon$getTopics$1(topicsManagerImplCommon, dVar);
        }
        Object objF = topicsManagerImplCommon$getTopics$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = topicsManagerImplCommon$getTopics$1.label;
        if (i11 == 0) {
            w.b(objF);
            android.adservices.topics.GetTopicsRequest getTopicsRequestC = topicsManagerImplCommon.c(getTopicsRequest);
            topicsManagerImplCommon$getTopics$1.L$0 = topicsManagerImplCommon;
            topicsManagerImplCommon$getTopics$1.label = 1;
            objF = topicsManagerImplCommon.f(getTopicsRequestC, topicsManagerImplCommon$getTopics$1);
            if (objF == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            topicsManagerImplCommon = (TopicsManagerImplCommon) topicsManagerImplCommon$getTopics$1.L$0;
            w.b(objF);
        }
        return topicsManagerImplCommon.d(g.a(objF));
    }

    @RequiresPermission
    private final Object f(android.adservices.topics.GetTopicsRequest getTopicsRequest, kotlin.coroutines.d<? super android.adservices.topics.GetTopicsResponse> dVar) throws Throwable {
        p pVar = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.x();
        this.mTopicsManager.getTopics(getTopicsRequest, new androidx.media3.exoplayer.dash.offline.a(), OutcomeReceiverKt.a(pVar));
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU;
    }

    @NotNull
    public android.adservices.topics.GetTopicsRequest c(@NotNull GetTopicsRequest request) {
        t.j(request, "request");
        android.adservices.topics.GetTopicsRequest getTopicsRequestBuild = c.a().setAdsSdkName(request.a()).build();
        t.i(getTopicsRequestBuild, "Builder()\n            .s…ame)\n            .build()");
        return getTopicsRequestBuild;
    }

    @NotNull
    public final GetTopicsResponse d(@NotNull android.adservices.topics.GetTopicsResponse response) {
        t.j(response, "response");
        ArrayList arrayList = new ArrayList();
        Iterator it = response.getTopics().iterator();
        while (it.hasNext()) {
            android.adservices.topics.Topic topicA = j.a(it.next());
            arrayList.add(new Topic(topicA.getTaxonomyVersion(), topicA.getModelVersion(), topicA.getTopicId()));
        }
        return new GetTopicsResponse(arrayList);
    }
}
