package com.narvii.topic.model.discover;

import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.util.Log;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class SerialRequestHelper {

    @NotNull
    private final SerialRequestChild child;

    @NotNull
    private final NVContext ctx;
    private boolean isCurRequestFinished;
    private boolean isCurRequestSent;
    private boolean isItemShown;

    @Nullable
    private SerialRequestParent parent;

    @NotNull
    public final SerialRequestChild getChild() {
        return this.child;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @Nullable
    public final SerialRequestParent getParent() {
        return this.parent;
    }

    public final boolean isCurRequestFinished() {
        return this.isCurRequestFinished;
    }

    public final boolean isCurRequestSent() {
        return this.isCurRequestSent;
    }

    public final boolean isItemShown() {
        return this.isItemShown;
    }

    public final boolean isRequestFinished() {
        return this.isCurRequestFinished;
    }

    public final void resetSerialRequestChild() {
        this.isCurRequestFinished = false;
        this.isCurRequestSent = false;
        this.isItemShown = false;
    }

    public final void setCurRequestFinished(boolean z6) {
        this.isCurRequestFinished = z6;
    }

    public final void setCurRequestSent(boolean z6) {
        this.isCurRequestSent = z6;
    }

    public final void setParent(@Nullable SerialRequestParent serialRequestParent) {
        this.parent = serialRequestParent;
    }

    public final void setSerialRequestParent(@Nullable SerialRequestParent serialRequestParent) {
        this.parent = serialRequestParent;
    }

    public SerialRequestHelper(@NotNull NVContext ctx, @NotNull SerialRequestChild child) {
        t.j(ctx, "ctx");
        t.j(child, "child");
        this.ctx = ctx;
        this.child = child;
    }

    private final void dispatchRequestConditionChanged(SerialRequestChild serialRequestChild) {
        SerialRequestParent serialRequestParent = this.parent;
        if (serialRequestParent != null) {
            serialRequestParent.notifyNextRequest(serialRequestChild);
        }
    }

    public final boolean isReadyToRequest() {
        SerialRequestParent serialRequestParent = this.parent;
        boolean z6 = serialRequestParent == null || (serialRequestParent != null && serialRequestParent.isReadyToRequest(this.child));
        if (!this.isCurRequestSent && z6) {
            this.isCurRequestSent = true;
        }
        return z6;
    }

    public final void setItemShown() {
        if (this.isItemShown) {
            return;
        }
        this.isItemShown = true;
        Log.d("SerialRequest", "item shown " + this.child);
        dispatchRequestConditionChanged(this.child);
    }

    public final void setRequestFinished(@Nullable ContentModule contentModule) {
        if (this.isCurRequestFinished) {
            return;
        }
        Log.d("SerialRequest", "request finished " + (contentModule != null ? contentModule.dataUrl : null));
        this.isCurRequestFinished = true;
        dispatchRequestConditionChanged(this.child);
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
}
