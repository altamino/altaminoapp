package com.narvii.master.search;

import android.content.Intent;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.community.CommunityLayoutHelper;
import com.narvii.list.NVArrayAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.master.CommunityHelper;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.StrategyObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.user.follow.IUserFollow;
import com.narvii.user.follow.UserFollowDelegate;
import com.narvii.user.list.UserItemLayoutHelper;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class AminoIdMatchedAdapter extends NVArrayAdapter<AminoIdInfo> implements IUserFollow, NotificationListener {
    private static ArrayList<Integer> validObjectId = new ArrayList<>();
    private AccountService accountService;
    private CommunityLayoutHelper communityLayoutHelper;
    private int customObjectType;
    public boolean isRequestFinished;
    public String ketword;
    private ApiRequest request;
    private String searchId;
    private UserFollowDelegate userFollowDelegate;
    private UserItemLayoutHelper userItemLayoutHelper;

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ void followFail() {
        IUserFollow.CC.$default$followFail(this);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ void followSuccess() {
        IUserFollow.CC.$default$followSuccess(this);
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "MatchedAminoID";
    }

    protected int getCommunityLayoutId() {
        return R.layout.item_matched_amino_id_community;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return false;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ boolean needUpdateUserAfterFollow() {
        return IUserFollow.CC.$default$needUpdateUserAfterFollow(this);
    }

    protected boolean showFollowView() {
        return false;
    }

    static {
        validObjectId.add(0);
        validObjectId.add(16);
    }

    public AminoIdMatchedAdapter(NVContext nVContext) {
        super(nVContext, AminoIdInfo.class);
        this.customObjectType = -1;
        this.accountService = (AccountService) getService("account");
        this.userFollowDelegate = new UserFollowDelegate(this, nVContext);
        this.communityLayoutHelper = new CommunityLayoutHelper(nVContext);
        this.userItemLayoutHelper = new UserItemLayoutHelper(nVContext);
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new LinearImpressionCollector(NVObject.class));
        NVContext nVContext = this.context;
        if (nVContext instanceof NVFragment) {
            notifyKeyChange(((NVFragment) nVContext).getStringParam("search_key"));
        }
    }

    public void setCustomObjectType(int i) {
        this.customObjectType = i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        AminoIdInfo aminoIdInfo = (AminoIdInfo) getItem(i);
        int i2 = aminoIdInfo.objectType;
        if (i2 != 0) {
            if (i2 != 16) {
                return null;
            }
            View viewCreateView = createView(getCommunityLayoutId(), viewGroup, view, 16);
            Community community = (Community) aminoIdInfo.refObject;
            View viewFindViewById = viewCreateView.findViewById(R.id.community_activeness_level);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
            View viewFindViewById2 = viewCreateView.findViewById(R.id.matched_community_container);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.selector_white_alpha_90_transparent));
                viewFindViewById2.setOnClickListener(this.subviewClickListener);
            }
            this.communityLayoutHelper.configCommunityCard(viewCreateView, community, true, true, null);
            tagCellForLog(viewCreateView, community);
            return viewCreateView;
        }
        View viewCreateView2 = createView(R.layout.item_matched_amino_id_user, viewGroup, view, 0);
        User user = (User) aminoIdInfo.refObject;
        this.userItemLayoutHelper.configLayout(viewCreateView2, user);
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(this.accountService.getUserId(), user.uid);
        boolean z = true;
        if (user.followingStatus != 1 && user.membershipStatus != 3) {
            z = false;
        }
        boolean zIsSendingFollow = isSendingFollow(user);
        View viewFindViewById3 = viewCreateView2.findViewById(R.id.user_relation_following);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setVisibility((zIsEqualsNotNull || !z) ? 8 : 0);
        }
        View viewFindViewById4 = viewCreateView2.findViewById(R.id.user_follow);
        if (viewFindViewById4 != null) {
            viewFindViewById4.setVisibility((zIsEqualsNotNull || z || !showFollowView()) ? 8 : 0);
            viewFindViewById4.setOnClickListener(this.subviewClickListener);
            viewFindViewById4.findViewById(R.id.user_follow_icon).setVisibility(zIsSendingFollow ? 8 : 0);
            viewFindViewById4.findViewById(R.id.user_follow_text).setVisibility(zIsSendingFollow ? 8 : 0);
            viewFindViewById4.findViewById(R.id.user_follow_progress).setVisibility(zIsSendingFollow ? 0 : 8);
        }
        View viewFindViewById5 = viewCreateView2.findViewById(R.id.matched_user_container);
        if (viewFindViewById5 != null) {
            viewFindViewById5.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.selector_white_alpha_90_transparent));
            viewFindViewById5.setOnClickListener(this.subviewClickListener);
        }
        View viewFindViewById6 = viewCreateView2.findViewById(R.id.matched_user_container);
        if (viewFindViewById6 != null) {
            viewFindViewById6.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.selector_white_alpha_90_transparent));
            viewFindViewById6.setOnClickListener(this.subviewClickListener);
        }
        tagCellForLog(viewCreateView2, user);
        return viewCreateView2;
    }

    public void notifyKeyChange(String str) {
        notifyKeyChange(str, null);
    }

    public void notifyKeyChange(String str, String str2) {
        if (Utils.isEqualsNotNull(str, this.ketword)) {
            return;
        }
        this.ketword = str;
        this.searchId = str2;
        clear();
        if (this.request != null) {
            ((ApiService) getService("api")).abort(this.request);
            this.request = null;
        }
        sendRequest(str);
    }

    @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
    public boolean isListShown() {
        return getList() != null && getList().size() > 0;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof AminoIdInfo) {
            AminoIdInfo aminoIdInfo = (AminoIdInfo) obj;
            int i2 = aminoIdInfo.objectType;
            if (i2 == 0) {
                User user = (User) aminoIdInfo.refObject;
                if (view2 != null && view2.getId() == R.id.user_follow) {
                    logClickEvent(user, ActSemantic.follow);
                    Intent intent = new Intent("follow");
                    intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(user));
                    ensureLogin(intent);
                } else {
                    logClickEvent(user, ActSemantic.checkDetail);
                    Intent intent2 = UserProfileFragment.intent(this, user);
                    if (intent2 == null) {
                        return true;
                    }
                    startActivity(intent2);
                    return true;
                }
            } else if (i2 == 16) {
                Community community = (Community) aminoIdInfo.refObject;
                new CommunityHelper(this.context).visitCommunity(community, view);
                logClickEvent(community, ActSemantic.checkDetail);
                return true;
            }
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.list.NVAdapter
    protected void onLoginResult(boolean z, Intent intent) {
        if (z && "follow".equals(intent.getAction())) {
            User user = (User) JacksonUtils.readAs(intent.getStringExtra(GlobalProfileFragment.KEY_USER), User.class);
            if (user != null) {
                follow(user);
                return;
            }
            return;
        }
        super.onLoginResult(z, intent);
    }

    @Override // com.narvii.list.NVAdapter
    public void onErrorRetry() {
        super.onErrorRetry();
        sendRequest(this.ketword);
    }

    private void sendRequest(String str) {
        if (TextUtils.isEmpty(str)) {
            clear();
            return;
        }
        this.isRequestFinished = false;
        ApiRequest.Builder builderParam = new ApiRequest.Builder().path("search/amino-id-and-link").param("q", str);
        String str2 = this.searchId;
        if (str2 != null) {
            builderParam.param("searchId", str2);
        } else if (getParentContext() instanceof NVFragment) {
            builderParam.param("searchId", SearchUtils.getSearchId((Fragment) getParentContext()));
        }
        this.request = builderParam.build();
        ((ApiService) getService("api")).exec(this.request, new ApiResponseListener<AminoIdMatchListResponse>(AminoIdMatchListResponse.class) { // from class: com.narvii.master.search.AminoIdMatchedAdapter.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, AminoIdMatchListResponse aminoIdMatchListResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) aminoIdMatchListResponse);
                ArrayList arrayList = new ArrayList();
                List<AminoIdInfo> list = aminoIdMatchListResponse.resultList;
                if (list != null) {
                    for (AminoIdInfo aminoIdInfo : list) {
                        if (AminoIdMatchedAdapter.this.customObjectType != -1) {
                            if (AminoIdMatchedAdapter.this.customObjectType == aminoIdInfo.objectType) {
                                arrayList.add(aminoIdInfo);
                            }
                        } else if (AminoIdMatchedAdapter.validObjectId.contains(Integer.valueOf(aminoIdInfo.objectType))) {
                            arrayList.add(aminoIdInfo);
                        }
                    }
                }
                AminoIdMatchedAdapter.this.request = null;
                AminoIdMatchedAdapter aminoIdMatchedAdapter = AminoIdMatchedAdapter.this;
                aminoIdMatchedAdapter.isRequestFinished = true;
                aminoIdMatchedAdapter.setList(arrayList);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List list, String str3, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str3, apiResponse, th);
                AminoIdMatchedAdapter.this.request = null;
                AminoIdMatchedAdapter aminoIdMatchedAdapter = AminoIdMatchedAdapter.this;
                aminoIdMatchedAdapter.isRequestFinished = true;
                aminoIdMatchedAdapter.notifyDataSetChanged();
            }
        });
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void follow(User user) {
        this.userFollowDelegate.follow(user);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public boolean isSendingFollow(User user) {
        return this.userFollowDelegate.isSendingFollow(user);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void onFollowStatusUpdated() {
        notifyDataSetChanged();
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification.obj instanceof User) {
            if ("update".equals(notification.action) || "edit".equals(notification.action)) {
                for (AminoIdInfo aminoIdInfo : getList()) {
                    NVObject nVObject = aminoIdInfo.refObject;
                    if ((nVObject instanceof User) && Utils.isEqualsNotNull(nVObject.id(), notification.id)) {
                        Cloneable cloneable = aminoIdInfo.refObject;
                        String strategyInfo = cloneable instanceof StrategyObject ? ((StrategyObject) cloneable).getStrategyInfo() : null;
                        aminoIdInfo.refObject = ((User) notification.obj).m46clone();
                        Cloneable cloneable2 = aminoIdInfo.refObject;
                        if (cloneable2 instanceof StrategyObject) {
                            ((StrategyObject) cloneable2).setStrategyInfo(strategyInfo);
                        }
                        notifyDataSetChanged();
                    }
                }
            }
        }
    }

    public User getMappedUser() {
        AminoIdInfo item;
        if (getList() == null || getList().size() <= 0 || (item = getItem(0)) == null) {
            return null;
        }
        NVObject nVObject = item.refObject;
        if (nVObject instanceof User) {
            return (User) nVObject;
        }
        return null;
    }

    public Community getMappedCommunity() {
        AminoIdInfo item;
        if (getList() == null || getList().size() <= 0 || (item = getItem(0)) == null) {
            return null;
        }
        NVObject nVObject = item.refObject;
        if (nVObject instanceof Community) {
            return (Community) nVObject;
        }
        return null;
    }
}
