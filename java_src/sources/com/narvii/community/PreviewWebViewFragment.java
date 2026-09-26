package com.narvii.community;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
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
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class PreviewWebViewFragment extends WebViewFragment {
    private boolean isJoined;
    JoinCommunityProgressLayout joinCommunityProgressLayout;
    TextView tvJoin;

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterCommunity() {
        this.tvJoin.setText(R.string.enter);
        ((AffiliationsService) NVApplication.instance().getService("affiliations")).opAdd(getIntParam("communityId"));
        setResult(-1);
        finish();
        getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    @Override // com.narvii.app.NVFragment
    protected void onLoginResult(boolean z6, Intent intent) {
        if (z6 && "join".equals(intent.getAction())) {
            this.joinCommunityProgressLayout.setForcePressed(true);
            this.joinCommunityProgressLayout.setProgress(40);
            ((ApiService) getService("api")).exec(ApiRequest.builder().post().communityId(getIntParam("communityId")).path("/community/join").build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.community.PreviewWebViewFragment.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                    super.onFinish(apiRequest, userResponse);
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
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    PreviewWebViewFragment.this.joinCommunityProgressLayout.setProgress(0);
                    PreviewWebViewFragment.this.joinCommunityProgressLayout.setForcePressed(false);
                    NVToast.makeText(PreviewWebViewFragment.this.getContext(), str, 1).show();
                    PreviewWebViewFragment.this.tvJoin.setText(R.string.join_the_community);
                }
            });
        }
        super.onLoginResult(z6, intent);
    }

    @Override // com.narvii.webview.WebViewFragment
    protected void startActivityFromWebView(Intent intent) {
        Uri data;
        if (intent == null || (data = intent.getData()) == null) {
            return;
        }
        if (Utils.isEqualsNotNull(data.getScheme(), "pabkitapp") || Utils.isEqualsNotNull(data.getScheme(), "aminoapp")) {
            View view = new View(getContext());
            view.setId(R.id.join_community);
            onClick(view);
        }
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
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        }
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.webview.WebViewFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.preview_webview_layout, viewGroup, false);
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        JoinCommunityProgressLayout joinCommunityProgressLayout = (JoinCommunityProgressLayout) view.findViewById(R.id.join_community);
        this.joinCommunityProgressLayout = joinCommunityProgressLayout;
        joinCommunityProgressLayout.setOnClickListener(this);
        this.tvJoin = (TextView) view.findViewById(R.id.join);
        hideToolbar(true);
    }
}
