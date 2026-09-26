package com.narvii.paging.source;

import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes7.dex */
public final class PageDataSource$responseListener$1<E> extends ApiResponseListener<E> {
    final /* synthetic */ PageDataSource<T, E> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PageDataSource$responseListener$1(PageDataSource<T, E> pageDataSource, Class<E> cls) {
        super(cls);
        this.this$0 = pageDataSource;
    }

    /* JADX WARN: Incorrect types in method signature: (Lcom/narvii/util/http/ApiRequest;TE;)V */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.narvii.util.http.ApiResponseListener
    public void onFinish(@NotNull ApiRequest req, @NotNull ListResponse resp) throws Exception {
        EventDispatcher<DataSourceRefreshListener> refreshDispatcher;
        t.j(req, "req");
        t.j(resp, "resp");
        super.onFinish(req, resp);
        final int direction = this.this$0.getDirection();
        PageRequestCallback requestCallback = this.this$0.getRequestCallback();
        this.this$0.prepareNewRequestContext();
        this.this$0.getPageLoadState().status = 1;
        this.this$0.getPageLoadState().errorMessage = null;
        if (direction == ((PageDataSource) this.this$0).DIRECTION_REFRESH && (refreshDispatcher = this.this$0.getRefreshDispatcher()) != null) {
            refreshDispatcher.dispatch(new Callback() { // from class: com.narvii.paging.source.c
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ((DataSourceRefreshListener) obj).onRefreshFinishedBeforePageResponse(direction);
                }
            });
        }
        boolean zE = t.e(req.tag(((PageDataSource) this.this$0).REQ_TAG_FROM_START), Boolean.TRUE);
        this.this$0.onPageResponse(req, resp, direction);
        if (zE) {
            this.this$0.setFirstPageRequestFinished();
        }
        this.this$0.setRefreshFlag(0);
        if (requestCallback != null) {
            requestCallback.onPageRequestFinished(0);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.narvii.util.http.ApiResponseListener
    public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<? extends NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
        super.onFail(apiRequest, i10, list, str, apiResponse, th);
        int direction = this.this$0.getDirection();
        PageRequestCallback requestCallback = this.this$0.getRequestCallback();
        this.this$0.prepareNewRequestContext();
        this.this$0.pageLoadFailed(str);
        this.this$0.onFailResponse(apiRequest, str, apiResponse, direction);
        if (apiRequest != null && t.e(apiRequest.tag(((PageDataSource) this.this$0).REQ_TAG_FROM_START), Boolean.TRUE)) {
            this.this$0.setFirstPageRequestFinished();
        }
        this.this$0.setRefreshFlag(0);
        if (requestCallback != null) {
            requestCallback.onPageRequestFinished(1);
        }
    }
}
