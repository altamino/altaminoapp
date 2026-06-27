package com.narvii.link.snippet;

import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.link.view.CommunityFrame;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ObjectResponse;
import com.narvii.share.LinkInfo;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes.dex */
public abstract class NVLinkSnippet<T extends NVObject, E extends ObjectResponse<? extends T>> extends LinkSnippet {
    protected LayoutInflater inflater;
    LinkInfo linkInfo;
    Community otherCommunity;
    protected T shareObject;

    protected abstract View getDetailView();

    protected abstract Class<? extends E> responseType();

    public NVLinkSnippet(NVContext nVContext, LinkInfo linkInfo) {
        super(nVContext);
        this.inflater = LayoutInflater.from(this.context);
        this.linkInfo = linkInfo;
    }

    public void setOtherCommunity(Community community) {
        this.otherCommunity = community;
    }

    @Override // com.narvii.link.snippet.LinkSnippet
    public final void getSnippetBitmap(final Callback<Bitmap> callback) throws NoSuchFieldException {
        if (this.shareObject == null && this.linkInfo == null) {
            Log.e("linkSnippet", "link info and object both are null");
            if (callback != null) {
                callback.call(null);
                return;
            }
            return;
        }
        T t = this.shareObject;
        if (t == null) {
            ApiRequest apiRequestCreateObjectDetailRequest = createObjectDetailRequest();
            ApiService apiService = (ApiService) this.nvContext.getService("api");
            Class<? extends E> clsResponseType = responseType();
            if (apiRequestCreateObjectDetailRequest != null && clsResponseType != null) {
                apiService.exec(apiRequestCreateObjectDetailRequest, new ApiResponseListener<E>(clsResponseType) { // from class: com.narvii.link.snippet.NVLinkSnippet.1
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, E e) throws Exception {
                        super.onFinish(apiRequest, (ApiRequest) e);
                        NVLinkSnippet.this.shareObject = (T) e.object();
                        T t2 = NVLinkSnippet.this.shareObject;
                        if (t2 == null || !t2.isAccessibleByUser(null)) {
                            Callback callback2 = callback;
                            if (callback2 != null) {
                                callback2.call(null);
                                return;
                            }
                            Log.i("linkSnippet", "6");
                        }
                        NVLinkSnippet.this.getBitmapByObject(callback);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i, list, str, apiResponse, th);
                        Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.call(null);
                        }
                        Log.i("linkSnippet", "5");
                    }
                });
                return;
            } else {
                if (callback != null) {
                    callback.call(null);
                    return;
                }
                return;
            }
        }
        if (!t.isAccessibleByUser(null)) {
            if (callback != null) {
                callback.call(null);
                return;
            }
            Log.i("linkSnippet", "6");
        }
        getBitmapByObject(callback);
    }

    protected ApiRequest createObjectDetailRequest() {
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.communityId(this.linkInfo.ndcId).path(NVObject.apiTypeName(this.linkInfo.objectType) + "/" + this.linkInfo.objectId);
        return builder.build();
    }

    @Override // com.narvii.link.snippet.LinkSnippet
    protected final View getView() {
        View detailView = getDetailView();
        if (detailView == null) {
            return null;
        }
        if (this.otherCommunity == null || !useOtherCommunityFrame()) {
            return detailView;
        }
        CommunityFrame communityFrame = new CommunityFrame(this.context);
        communityFrame.addContentView(detailView, this.otherCommunity);
        return communityFrame;
    }
}
