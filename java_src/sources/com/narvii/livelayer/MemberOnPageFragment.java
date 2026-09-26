package com.narvii.livelayer;

import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListAdapter;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.config.ConfigService;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.onlinestatus.BaseOnlineMembersFragment;
import com.narvii.onlinestatus.OnlineMembersAdapter;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import io.agora.rtc.Constants;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MemberOnPageFragment extends BaseOnlineMembersFragment {
    LiveLayerService liveLayerService;

    class OnlineAdapter extends OnlineMembersAdapter {
        AccountService account;

        public OnlineAdapter() {
            super(MemberOnPageFragment.this);
            this.account = (AccountService) getService("account");
        }

        @Override // com.narvii.onlinestatus.OnlineMembersAdapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected List<User> filterResponseList(List<User> list, int i10) {
            String userId = this.account.getUserId();
            if (userId != null) {
                Utils.removeId(list, userId);
            }
            BaseOnlineMembersFragment.onlineMemberList = list;
            return super.filterResponseList(list, i10);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i10) {
            int onlineStatus;
            User userProfile;
            super.onPageResponse(apiRequest, userListResponse, i10);
            if (!"start0".equals(apiRequest.tag()) || (onlineStatus = this.account.getOnlineStatus()) == 0 || onlineStatus == 2 || (userProfile = this.account.getUserProfile()) == null) {
                return;
            }
            rawList().add(userProfile);
            notifyDataSetChanged();
        }

        @Override // com.narvii.user.list.UserListAdapter
        protected void userClicked(User user) {
            MemberOnPageFragment.this.showUserDialog(user);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/live-layer");
            String stringParam = MemberOnPageFragment.this.getStringParam("topic");
            if (TextUtils.isEmpty(stringParam)) {
                stringParam = "online-members";
            }
            ((ConfigService) getService("config")).getCommunityId();
            builderPath.param("topic", MemberOnPageFragment.this.liveLayerService.getNdtopic(stringParam));
            if (z6) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }
    }

    @Override // com.narvii.onlinestatus.BaseOnlineMembersFragment, com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.onlinestatus.BaseOnlineMembersFragment, com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        int iDpToPx = (int) Utils.dpToPx(getContext(), 10.0f);
        OnlineAdapter onlineAdapter = new OnlineAdapter();
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPx, iDpToPx);
        divideColumnAdapter.setAdapter(onlineAdapter, 3);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        this.mergeAdapter = mergeAdapter;
        return mergeAdapter;
    }

    @Override // com.narvii.onlinestatus.BaseOnlineMembersFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringParam = getStringParam("title");
        if (stringParam == null) {
            setTitle(R.string.live_layer_page_online_title);
        } else {
            setTitle(stringParam);
        }
        this.liveLayerService = (LiveLayerService) getService("liveLayer");
    }

    @Override // com.narvii.onlinestatus.BaseOnlineMembersFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        int intParam = getIntParam("pageBackgroundColor");
        if (intParam != 0) {
            ((RealtimeBlurView) view.findViewById(R.id.blur_bg)).setOverlayColor(Color.argb(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, Color.red(intParam), Color.green(intParam), Color.blue(intParam)));
            View viewFindViewById = view.findViewById(R.id.dark_theme_overlay);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
        }
    }
}
