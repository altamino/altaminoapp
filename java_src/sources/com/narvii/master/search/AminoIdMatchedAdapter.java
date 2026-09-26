package com.narvii.master.search;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.community.CommunityLayoutHelper;
import com.narvii.list.NVAdapter;
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
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AminoIdMatchedAdapter extends NVArrayAdapter<AminoIdInfo> implements IUserFollow, NotificationListener {
    private static ArrayList<Integer> validObjectId;
    private AccountService accountService;
    private CommunityLayoutHelper communityLayoutHelper;
    private int customObjectType;
    public boolean isRequestFinished;
    public String ketword;
    private ApiRequest request;
    private String searchId;
    private UserFollowDelegate userFollowDelegate;
    private UserItemLayoutHelper userItemLayoutHelper;

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ void followFail() {
        com.narvii.user.follow.a.a(this);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ void followSuccess() {
        com.narvii.user.follow.a.b(this);
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "MatchedAminoID";
    }

    protected int getCommunityLayoutId() {
        return R.layout.item_matched_amino_id_community;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return false;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ boolean needUpdateUserAfterFollow() {
        return com.narvii.user.follow.a.c(this);
    }

    public void notifyKeyChange(String str) {
        notifyKeyChange(str, null);
    }

    public void setCustomObjectType(int i10) {
        this.customObjectType = i10;
    }

    protected boolean showFollowView() {
        return false;
    }

    static {
        ArrayList<Integer> arrayList = new ArrayList<>();
        validObjectId = arrayList;
        arrayList.add(0);
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

    @Override // com.narvii.user.follow.IUserFollow
    public void follow(User user) {
        this.userFollowDelegate.follow(user);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public boolean isSendingFollow(User user) {
        return this.userFollowDelegate.isSendingFollow(user);
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

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (obj instanceof AminoIdInfo) {
            AminoIdInfo aminoIdInfo = (AminoIdInfo) obj;
            int i11 = aminoIdInfo.objectType;
            if (i11 == 0) {
                User user = (User) aminoIdInfo.refObject;
                if (view2 == null || view2.getId() != R.id.user_follow) {
                    logClickEvent(user, ActSemantic.checkDetail);
                    Intent intent = UserProfileFragment.intent(this, user);
                    if (intent == null) {
                        return true;
                    }
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                    return true;
                }
                logClickEvent(user, ActSemantic.follow);
                Intent intent2 = new Intent("follow");
                intent2.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(user));
                ensureLogin(intent2);
            } else if (i11 == 16) {
                Community community = (Community) aminoIdInfo.refObject;
                new CommunityHelper(this.context).visitCommunity(community, view);
                logClickEvent(community, ActSemantic.checkDetail);
                return true;
            }
        }
        return super.onItemClick(listAdapter, i10, obj, view, view2);
    }

    @Override // com.narvii.list.NVAdapter
    protected void onLoginResult(boolean z6, Intent intent) {
        if (!z6 || !"follow".equals(intent.getAction())) {
            super.onLoginResult(z6, intent);
            return;
        }
        User user = (User) JacksonUtils.readAs(intent.getStringExtra(GlobalProfileFragment.KEY_USER), User.class);
        if (user != null) {
            follow(user);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification.obj instanceof User) {
            if ("update".equals(notification.action) || "edit".equals(notification.action)) {
                for (AminoIdInfo aminoIdInfo : getList()) {
                    NVObject nVObject = aminoIdInfo.refObject;
                    if ((nVObject instanceof User) && Utils.isEqualsNotNull(nVObject.id(), notification.id)) {
                        Cloneable cloneable = aminoIdInfo.refObject;
                        String strategyInfo = cloneable instanceof StrategyObject ? ((StrategyObject) cloneable).getStrategyInfo() : null;
                        NVObject nVObjectM1622clone = ((User) notification.obj).m1622clone();
                        aminoIdInfo.refObject = nVObjectM1622clone;
                        if (nVObjectM1622clone instanceof StrategyObject) {
                            ((StrategyObject) nVObjectM1622clone).setStrategyInfo(strategyInfo);
                        }
                        notifyDataSetChanged();
                    }
                }
            }
        }
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
                super.onFinish(apiRequest, aminoIdMatchListResponse);
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
            public void onFail(ApiRequest apiRequest, int i10, List list, String str3, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str3, apiResponse, th);
                AminoIdMatchedAdapter.this.request = null;
                AminoIdMatchedAdapter aminoIdMatchedAdapter = AminoIdMatchedAdapter.this;
                aminoIdMatchedAdapter.isRequestFinished = true;
                aminoIdMatchedAdapter.notifyDataSetChanged();
            }
        });
    }

    public Community getMappedCommunity() {
        AminoIdInfo item;
        if (getList() != null && getList().size() > 0 && (item = getItem(0)) != null) {
            NVObject nVObject = item.refObject;
            if (nVObject instanceof Community) {
                return (Community) nVObject;
            }
            return null;
        }
        return null;
    }

    public User getMappedUser() {
        AminoIdInfo item;
        if (getList() != null && getList().size() > 0 && (item = getItem(0)) != null) {
            NVObject nVObject = item.refObject;
            if (nVObject instanceof User) {
                return (User) nVObject;
            }
            return null;
        }
        return null;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        int i11;
        int i12;
        int i13;
        int i14;
        AminoIdInfo aminoIdInfo = (AminoIdInfo) getItem(i10);
        int i15 = aminoIdInfo.objectType;
        int i16 = 8;
        if (i15 == 0) {
            View viewCreateView = createView(R.layout.item_matched_amino_id_user, viewGroup, view, 0);
            User user = (User) aminoIdInfo.refObject;
            this.userItemLayoutHelper.configLayout(viewCreateView, user);
            boolean zIsEqualsNotNull = Utils.isEqualsNotNull(this.accountService.getUserId(), user.uid);
            boolean z6 = true;
            if (user.followingStatus != 1 && user.membershipStatus != 3) {
                z6 = false;
            }
            boolean zIsSendingFollow = isSendingFollow(user);
            View viewFindViewById = viewCreateView.findViewById(R.id.user_relation_following);
            if (viewFindViewById != null) {
                if (!zIsEqualsNotNull && z6) {
                    i14 = 0;
                } else {
                    i14 = 8;
                }
                viewFindViewById.setVisibility(i14);
            }
            View viewFindViewById2 = viewCreateView.findViewById(R.id.user_follow);
            if (viewFindViewById2 != null) {
                if (!zIsEqualsNotNull && !z6 && showFollowView()) {
                    i11 = 0;
                } else {
                    i11 = 8;
                }
                viewFindViewById2.setVisibility(i11);
                viewFindViewById2.setOnClickListener(this.subviewClickListener);
                View viewFindViewById3 = viewFindViewById2.findViewById(R.id.user_follow_icon);
                if (zIsSendingFollow) {
                    i12 = 8;
                } else {
                    i12 = 0;
                }
                viewFindViewById3.setVisibility(i12);
                View viewFindViewById4 = viewFindViewById2.findViewById(R.id.user_follow_text);
                if (zIsSendingFollow) {
                    i13 = 8;
                } else {
                    i13 = 0;
                }
                viewFindViewById4.setVisibility(i13);
                View viewFindViewById5 = viewFindViewById2.findViewById(R.id.user_follow_progress);
                if (zIsSendingFollow) {
                    i16 = 0;
                }
                viewFindViewById5.setVisibility(i16);
            }
            View viewFindViewById6 = viewCreateView.findViewById(R.id.matched_user_container);
            if (viewFindViewById6 != null) {
                viewFindViewById6.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.selector_white_alpha_90_transparent));
                viewFindViewById6.setOnClickListener(this.subviewClickListener);
            }
            View viewFindViewById7 = viewCreateView.findViewById(R.id.matched_user_container);
            if (viewFindViewById7 != null) {
                viewFindViewById7.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.selector_white_alpha_90_transparent));
                viewFindViewById7.setOnClickListener(this.subviewClickListener);
            }
            tagCellForLog(viewCreateView, user);
            return viewCreateView;
        }
        if (i15 == 16) {
            View viewCreateView2 = createView(getCommunityLayoutId(), viewGroup, view, 16);
            Community community = (Community) aminoIdInfo.refObject;
            View viewFindViewById8 = viewCreateView2.findViewById(R.id.community_activeness_level);
            if (viewFindViewById8 != null) {
                viewFindViewById8.setVisibility(8);
            }
            View viewFindViewById9 = viewCreateView2.findViewById(R.id.matched_community_container);
            if (viewFindViewById9 != null) {
                viewFindViewById9.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.selector_white_alpha_90_transparent));
                viewFindViewById9.setOnClickListener(this.subviewClickListener);
            }
            this.communityLayoutHelper.configCommunityCard(viewCreateView2, community, true, true, null);
            tagCellForLog(viewCreateView2, community);
            return viewCreateView2;
        }
        return null;
    }

    @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
    public boolean isListShown() {
        if (getList() != null && getList().size() > 0) {
            return true;
        }
        return false;
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

    @Override // com.narvii.list.NVAdapter
    public void onErrorRetry() {
        super.onErrorRetry();
        sendRequest(this.ketword);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void onFollowStatusUpdated() {
        notifyDataSetChanged();
    }
}
