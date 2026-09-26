package com.narvii.influencer;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.widget.MasterBottomItemView;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.StoreItemBaseObject;
import com.narvii.model.User;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.monetization.subscription.StoreItemSubscriptionDetailFragment;
import com.narvii.monetization.subscription.StoreItemSubscriptionListResponse;
import com.narvii.monetization.utils.StoreItemHelper;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class MySubscriptionListFragment extends NVListFragment {
    int cid;
    private MembershipService membershipService;
    private StoreItemHelper storeItemHelper;

    class FanClubListAdapter extends NVPagedAdapter<FanClub, FanClubListResponse> implements NotificationListener {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<FanClub> dataType() {
            return FanClub.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends FanClubListResponse> responseType() {
            return FanClubListResponse.class;
        }

        public FanClubListAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            String string = null;
            if (!(obj instanceof FanClub)) {
                return null;
            }
            FanClub fanClub = (FanClub) obj;
            User user = fanClub.targetUserProfile;
            Community community = fanClub.community;
            View viewCreateView = createView(R.layout.item_fan_club, viewGroup, view);
            ((UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout)).setUser(user);
            ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setUser(user);
            ((CommunityIconView) viewCreateView.findViewById(R.id.community_icon)).setCommunity(community);
            ((TextView) viewCreateView.findViewById(R.id.community_name)).setText(community == null ? null : community.name);
            ((ImageView) viewCreateView.findViewById(R.id.fan_club_icon)).setImageResource(fanClub.isActive() ? R.drawable.ic_fan_club_logo : R.drawable.ic_fan_club_logo_grey);
            if (fanClub.isActive() && !fanClub.isAutoRenew) {
                int iExpiringDays = fanClub.expiringDays();
                if (iExpiringDays == 0) {
                    string = MySubscriptionListFragment.this.getString(R.string.membership_status_expiring_in_0_day);
                } else if (iExpiringDays == 1) {
                    string = MySubscriptionListFragment.this.getString(R.string.membership_status_expiring_in_1_day);
                } else if (iExpiringDays > 0 && iExpiringDays <= 7) {
                    string = MySubscriptionListFragment.this.getString(R.string.membership_status_expiring_in_n_day, Integer.valueOf(iExpiringDays));
                }
            }
            ((TextView) viewCreateView.findViewById(R.id.status)).setText(string);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Intent intent = FragmentWrapperActivity.intent(FanClubDetailFragment.class);
            intent.putExtra("fanClub", JacksonUtils.writeAsString(obj));
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            List<? extends FanClub> listRawList;
            Object obj = notification.obj;
            if ((obj instanceof FanClub) && notification.action == "delete") {
                List<? extends FanClub> listRawList2 = rawList();
                if (listRawList2 != null) {
                    Iterator<? extends FanClub> it = listRawList2.iterator();
                    while (it.hasNext()) {
                        FanClub next = it.next();
                        if (next instanceof FanClub) {
                            FanClub fanClub = next;
                            int i10 = fanClub.ndcId;
                            Object obj2 = notification.obj;
                            if (i10 == ((FanClub) obj2).ndcId && Utils.isEqualsNotNull(fanClub.targetUid, ((FanClub) obj2).targetUid)) {
                                it.remove();
                                notifyDataSetChanged();
                                return;
                            }
                        }
                    }
                    return;
                }
                return;
            }
            if (notification.action == "update" && (obj instanceof FanClub) && (listRawList = rawList()) != null) {
                for (int i11 = 0; i11 < listRawList.size(); i11++) {
                    FanClub fanClub2 = listRawList.get(i11);
                    int i12 = fanClub2.ndcId;
                    Object obj3 = notification.obj;
                    if (i12 == ((FanClub) obj3).ndcId && Utils.isEqualsNotNull(fanClub2.targetUid, ((FanClub) obj3).targetUid)) {
                        FanClub fanClub3 = (FanClub) ((FanClub) notification.obj).m1622clone();
                        if (MySubscriptionListFragment.this.cid == 0) {
                            fanClub3.community = fanClub2.community;
                        }
                        listRawList.set(i11, fanClub3);
                        notifyDataSetChanged();
                        return;
                    }
                }
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().global().path("/influencer/fans").build();
        }
    }

    public class SectionHeaderAdapter extends AdriftAdapter {
        private NVAdapter attachedAdapter;
        private String text;

        public void setAttachAdapter(NVAdapter nVAdapter) {
            this.attachedAdapter = nVAdapter;
        }

        public SectionHeaderAdapter(NVContext nVContext, String str) {
            super(nVContext);
            this.text = str;
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            NVAdapter nVAdapter = this.attachedAdapter;
            return (nVAdapter == null || !nVAdapter.isListShown() || this.attachedAdapter.getCount() <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_subscription_list_header, viewGroup, view);
            if (viewCreateView instanceof TextView) {
                ((TextView) viewCreateView).setText(this.text);
            }
            return viewCreateView;
        }
    }

    private class StoreItemListAdapter extends NVPagedAdapter<StoreItem, StoreItemSubscriptionListResponse> implements NotificationListener {
        private final int objectType;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<StoreItem> dataType() {
            return StoreItem.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<StoreItemSubscriptionListResponse> responseType() {
            return StoreItemSubscriptionListResponse.class;
        }

        public StoreItemListAdapter(NVContext nVContext, int i10) {
            super(nVContext);
            this.objectType = i10;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof StoreItem)) {
                return null;
            }
            View viewCreateView = createView(R.layout.item_subscription_list, viewGroup, view);
            NVObject refObject = ((StoreItem) obj).getRefObject();
            if (!(refObject instanceof StoreItemBaseObject)) {
                return viewCreateView;
            }
            StoreItemBaseObject storeItemBaseObject = (StoreItemBaseObject) refObject;
            ((NVImageView) viewCreateView.findViewById(R.id.avatar_frame_icon)).setImageUrl(storeItemBaseObject.getStoreIcon());
            ((TextView) viewCreateView.findViewById(R.id.avatar_frame_name)).setText(storeItemBaseObject.getName());
            View viewFindViewById = viewCreateView.findViewById(R.id.amino_plus_badge);
            RestrictionInfo restrictionInfo = storeItemBaseObject.getRestrictionInfo();
            ViewUtils.show(viewFindViewById, restrictionInfo != null && restrictionInfo.restrictType == 2);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.status);
            OwnershipInfo ownershipInfo = storeItemBaseObject.ownershipInfo;
            boolean z6 = ownershipInfo != null && ownershipInfo.isExpired();
            OwnershipInfo ownershipInfo2 = storeItemBaseObject.ownershipInfo;
            boolean z10 = ownershipInfo2 != null && ownershipInfo2.isAutoRenew();
            textView.setTextColor(MySubscriptionListFragment.this.storeItemHelper.getExpiredTimeStringColor(storeItemBaseObject.ownershipInfo));
            if (z10) {
                textView.setText(R.string.active);
                textView.setTextColor(-16724355);
            } else if (z6) {
                textView.setText(R.string.expired);
                textView.setTextColor(MasterBottomItemView.TEXT_COLOR_UNSELECTED);
            } else {
                int i10 = -storeItemBaseObject.ownershipInfo.daysExpired();
                if (i10 == 0) {
                    textView.setText(MySubscriptionListFragment.this.getString(R.string.membership_status_expiring_in_0_day));
                    textView.setTextColor(-49088);
                } else if (i10 == 1) {
                    textView.setText(MySubscriptionListFragment.this.getString(R.string.membership_status_expiring_in_1_day));
                    textView.setTextColor(-49088);
                } else if (i10 > 0 && i10 <= 7) {
                    textView.setText(MySubscriptionListFragment.this.getString(R.string.membership_status_expiring_in_n_day, Integer.valueOf(i10)));
                    textView.setTextColor(-49088);
                } else if (i10 > 7) {
                    textView.setText(R.string.active);
                    textView.setTextColor(-16724355);
                }
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Intent intent = FragmentWrapperActivity.intent(StoreItemSubscriptionDetailFragment.class);
            intent.putExtra("storeItem", JacksonUtils.writeAsString(obj));
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            List<? extends StoreItem> listRawList;
            if (notification.action == "update" && (notification.obj instanceof StoreItemBaseObject) && (listRawList = rawList()) != null) {
                for (int i10 = 0; i10 < listRawList.size(); i10++) {
                    StoreItem storeItem = listRawList.get(i10);
                    if (Utils.isEqualsNotNull(storeItem.id(), ((StoreItemBaseObject) notification.obj).id())) {
                        storeItem.setChangedRefObject((StoreItemBaseObject) notification.obj);
                        listRawList.set(i10, storeItem);
                        notifyDataSetChanged();
                        return;
                    }
                }
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().global().path("/store/subscription");
            builderPath.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(this.objectType));
            return builderPath.build();
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        final StoreItemListAdapter storeItemListAdapter = new StoreItemListAdapter(this, 122);
        SectionHeaderAdapter sectionHeaderAdapter = new SectionHeaderAdapter(this, getString(R.string.profile_frames));
        sectionHeaderAdapter.setAttachAdapter(storeItemListAdapter);
        final FanClubListAdapter fanClubListAdapter = new FanClubListAdapter(this);
        SectionHeaderAdapter sectionHeaderAdapter2 = new SectionHeaderAdapter(this, getString(R.string.fan_clubs));
        sectionHeaderAdapter2.setAttachAdapter(fanClubListAdapter);
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.influencer.MySubscriptionListFragment.1
            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public String errorMessage() {
                String strErrorMessage = storeItemListAdapter.errorMessage();
                return strErrorMessage == null ? fanClubListAdapter.errorMessage() : strErrorMessage;
            }

            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                return storeItemListAdapter.isEmpty() && fanClubListAdapter.isEmpty();
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                return storeItemListAdapter.isListShown() && fanClubListAdapter.isListShown();
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public void onErrorRetry() {
                storeItemListAdapter.onErrorRetry();
                fanClubListAdapter.onErrorRetry();
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public void refresh(int i10, Callback<Integer> callback) {
                storeItemListAdapter.refresh(i10, callback);
                fanClubListAdapter.refresh(i10, callback);
            }

            @Override // com.narvii.list.MergeAdapter, android.widget.Adapter
            public int getCount() {
                return super.getCount();
            }
        };
        mergeAdapter.addAdapter(sectionHeaderAdapter);
        mergeAdapter.addAdapter(storeItemListAdapter);
        mergeAdapter.addAdapter(sectionHeaderAdapter2);
        mergeAdapter.addAdapter(fanClubListAdapter);
        return mergeAdapter;
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-13785881);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getString(R.string.my_subscriptions));
        this.cid = ((ConfigService) getService("config")).getCommunityId();
        this.storeItemHelper = new StoreItemHelper(this);
        this.membershipService = (MembershipService) getService("membership");
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Subscription Manager Opened").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Subscription Manager Opened Total");
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyText(R.string.subscription_empty_hint);
    }
}
