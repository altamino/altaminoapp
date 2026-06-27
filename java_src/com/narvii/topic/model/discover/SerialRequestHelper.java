package com.narvii.topic.model.discover;

import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.util.Log;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SerialRequestHelper.kt */
/* loaded from: classes3.dex */
public final class SerialRequestHelper {
    private final SerialRequestChild child;
    private final NVContext ctx;
    private boolean isCurRequestFinished;
    private boolean isCurRequestSent;
    private boolean isItemShown;
    private SerialRequestParent parent;

    public SerialRequestHelper(NVContext ctx, SerialRequestChild child) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(child, "child");
        this.ctx = ctx;
        this.child = child;
    }

    public final SerialRequestChild getChild() {
        return this.child;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final SerialRequestParent getParent() {
        return this.parent;
    }

    public final void setParent(SerialRequestParent serialRequestParent) {
        this.parent = serialRequestParent;
    }

    public final boolean isCurRequestSent() {
        return this.isCurRequestSent;
    }

    public final void setCurRequestSent(boolean z) {
        this.isCurRequestSent = z;
    }

    public final boolean isCurRequestFinished() {
        return this.isCurRequestFinished;
    }

    public final void setCurRequestFinished(boolean z) {
        this.isCurRequestFinished = z;
    }

    public final void setSerialRequestParent(SerialRequestParent serialRequestParent) {
        this.parent = serialRequestParent;
    }

    public final boolean isReadyToRequest() {
        SerialRequestParent serialRequestParent = this.parent;
        boolean z = serialRequestParent == null || (serialRequestParent != null && serialRequestParent.isReadyToRequest(this.child));
        if (!this.isCurRequestSent && z) {
            this.isCurRequestSent = true;
        }
        return z;
    }

    public final boolean isRequestFinished() {
        return this.isCurRequestFinished;
    }

    public final void setRequestFinished(ContentModule contentModule) {
        if (this.isCurRequestFinished) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("request finished ");
        sb.append(contentModule != null ? contentModule.dataUrl : null);
        Log.d("SerialRequest", sb.toString());
        this.isCurRequestFinished = true;
        dispatchRequestConditionChanged(this.child);
    }

    public final void setItemShown() {
        if (this.isItemShown) {
            return;
        }
        this.isItemShown = true;
        Log.d("SerialRequest", "item shown " + this.child);
        dispatchRequestConditionChanged(this.child);
    }

    private final void dispatchRequestConditionChanged(SerialRequestChild serialRequestChild) {
        SerialRequestParent serialRequestParent = this.parent;
        if (serialRequestParent != null) {
            serialRequestParent.notifyNextRequest(serialRequestChild);
        }
    }

    public final boolean isItemShown() {
        return this.isItemShown;
    }

    public final void requestDataWhenReady() {
        if (isReadyToRequest()) {
            NVContext nVContext = this.ctx;
            if (nVContext instanceof PagingRecyclerViewAdapter) {
                ((PagingRecyclerViewAdapter) nVContext).loadInitData();
            } else if (nVContext instanceof NVRecyclerViewBaseAdapter) {
                ((NVRecyclerViewBaseAdapter) nVContext).refresh(0, null);
            }
        }
    }

    public final void resetSerialRequestChild() {
        this.isCurRequestFinished = false;
        this.isCurRequestSent = false;
        this.isItemShown = false;
    }
}
