package com.narvii.community;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.webview.WebViewFragment;
import com.narvii.widget.JoinCommunityProgressLayout;
import java.util.List;

/* loaded from: classes2.dex */
public class PreviewWebViewFragment extends WebViewFragment implements View.OnClickListener {
    private boolean isJoined;
    JoinCommunityProgressLayout joinCommunityProgressLayout;
    TextView tvJoin;

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.webview.WebViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.preview_webview_layout, viewGroup, false);
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.joinCommunityProgressLayout = (JoinCommunityProgressLayout) view.findViewById(R.id.join_community);
        this.joinCommunityProgressLayout.setOnClickListener(this);
        this.tvJoin = (TextView) view.findViewById(R.id.join);
        hideToolbar(true);
    }

    @Override // com.narvii.webview.WebViewFragment, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view.getId() == R.id.join_community) {
            if (getIntParam("joinType") == 0) {
                ensureLogin(new Intent("join"));
                return;
            }
            Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
            intent.putExtra("id", getIntParam("communityId"));
            startActivity(intent);
        }
    }

    @Override // com.narvii.app.NVFragment
    protected void onLoginResult(boolean z, Intent intent) {
        if (z && "join".equals(intent.getAction())) {
            this.joinCommunityProgressLayout.setForcePressed(true);
            this.joinCommunityProgressLayout.setProgress(40);
            ((ApiService) getService("api")).exec(ApiRequest.builder().post().communityId(getIntParam("communityId")).path("/community/join").build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.community.PreviewWebViewFragment.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) userResponse);
                    PreviewWebViewFragment.this.isJoined = true;
                    PreviewWebViewFragment.this.joinCommunityProgressLayout.setProgress(100);
                    ((MyCommunityListService) PreviewWebViewFragment.this.getService("myCommunityList")).refresh(0, null);
                    Utils.post(new Runnable() { // from class: com.narvii.community.PreviewWebViewFragment.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PreviewWebViewFragment.this.enterCommunity();
                        }
                    });
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    PreviewWebViewFragment.this.joinCommunityProgressLayout.setProgress(0);
                    PreviewWebViewFragment.this.joinCommunityProgressLayout.setForcePressed(false);
                    NVToast.makeText(PreviewWebViewFragment.this.getContext(), str, 1).show();
                    PreviewWebViewFragment.this.tvJoin.setText(R.string.join_the_community);
                }
            });
        }
        super.onLoginResult(z, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterCommunity() {
        this.tvJoin.setText(R.string.enter);
        ((AffiliationsService) NVApplication.instance().getService("affiliations")).opAdd(getIntParam("communityId"));
        setResult(-1);
        finish();
        getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    @Override // com.narvii.webview.WebViewFragment
    protected void startActivityFromWebView(Intent intent) {
        Uri data;
        if (intent == null || (data = intent.getData()) == null) {
            return;
        }
        if (Utils.isEqualsNotNull(data.getScheme(), "pebkitapp") || Utils.isEqualsNotNull(data.getScheme(), "narviiapp")) {
            View view = new View(getContext());
            view.setId(R.id.join_community);
            onClick(view);
        }
    }
}
