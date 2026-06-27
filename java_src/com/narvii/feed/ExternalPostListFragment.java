package com.narvii.feed;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.narvii.model.ExternalSource;
import com.narvii.model.Feed;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogListResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes2.dex */
public class ExternalPostListFragment extends FeedListFragment {
    public static final String KEY_EXTERNAL_SOURCE = "KEY_EXTERNAL_SOURCE";
    public static final String KEY_SOURCE_ORIGIN_ID = "KEY_EXTERNAL_SOURCE_ID";
    String sourceId;
    String sourceTitle;

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.sourceId = getStringParam(KEY_SOURCE_ORIGIN_ID);
        this.sourceTitle = getStringParam("title");
        ExternalSource externalSource = (ExternalSource) JacksonUtils.readAs(getStringParam(KEY_EXTERNAL_SOURCE), ExternalSource.class);
        if (externalSource != null) {
            if (TextUtils.isEmpty(this.sourceId)) {
                this.sourceId = externalSource.sourceId;
            }
            if (TextUtils.isEmpty(this.sourceTitle)) {
                this.sourceTitle = externalSource.title;
            }
        }
        setTitle(this.sourceTitle);
        if (!TextUtils.isEmpty(this.sourceTitle) || TextUtils.isEmpty(this.sourceId)) {
            return;
        }
        sendExternalSoureRequest();
    }

    @Override // com.narvii.feed.FeedListFragment
    protected FeedListAdapter createFeedAdapter(Bundle bundle) {
        return new Adapter();
    }

    class Adapter extends FeedListAdapter {
        public Adapter() {
            super(ExternalPostListFragment.this);
            this.source = "External Content";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ListResponse<? extends Feed>> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/blog");
            builderPath.param("type", "external-source");
            builderPath.param("q", ExternalPostListFragment.this.sourceId);
            return builderPath.build();
        }
    }

    private void sendExternalSoureRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/external-source/" + this.sourceId).build(), new ApiResponseListener<ExternalSourceResponse>(ExternalSourceResponse.class) { // from class: com.narvii.feed.ExternalPostListFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ExternalSourceResponse externalSourceResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) externalSourceResponse);
                if (!ExternalPostListFragment.this.isAdded() || ExternalPostListFragment.this.getActivity() == null) {
                    return;
                }
                ExternalPostListFragment externalPostListFragment = ExternalPostListFragment.this;
                ExternalSource externalSource = externalSourceResponse.externalSource;
                externalPostListFragment.setTitle(externalSource != null ? externalSource.title : null);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
            }
        });
    }
}
