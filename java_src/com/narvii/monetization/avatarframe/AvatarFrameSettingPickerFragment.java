package com.narvii.monetization.avatarframe;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.influencer.MySubscriptionListFragment;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.membership.MembershipHintDialog;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.User;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.monetization.store.StoreRecommendAdapter;
import com.narvii.monetization.store.data.StoreSection;
import com.narvii.monetization.utils.ExpiredItemHintDialog;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SwipeableLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class AvatarFrameSettingPickerFragment extends SwipeableFragment implements NotificationListener, FragmentOnBackListener {
    public static final String TAG = AvatarFrameSettingPickerFragment.class.getSimpleName();
    private AvatarFrameListAdapter avatarFrameListAdapter;
    private OnPickAvatarFrameListener avatarFramePickListener;
    private String curSelectedFrameId;
    private boolean isGlobal;
    private int layoutMarginTop;
    private MembershipService membershipService;
    private User.AvatarFrameLite originAvatarFrame;
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction()) || AvatarFrameSettingPickerFragment.this.avatarFrameListAdapter == null) {
                return;
            }
            AvatarFrameSettingPickerFragment.this.avatarFrameListAdapter.notifyDataSetChanged();
        }
    };

    public interface OnPickAvatarFrameListener {

        /* renamed from: com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener$-CC, reason: invalid class name */
        public final /* synthetic */ class CC {
            public static void $default$onCancel(OnPickAvatarFrameListener onPickAvatarFrameListener) {
            }

            public static void $default$onStartSubmit(OnPickAvatarFrameListener onPickAvatarFrameListener) {
            }

            public static void $default$onSubmitFail(OnPickAvatarFrameListener onPickAvatarFrameListener, AvatarFrame avatarFrame) {
            }

            public static void $default$onSubmitSuccess(OnPickAvatarFrameListener onPickAvatarFrameListener, AvatarFrame avatarFrame) {
            }
        }

        void onCancel();

        void onPickAvatarFrame(AvatarFrame avatarFrame);

        void onStartSubmit();

        void onSubmitFail(AvatarFrame avatarFrame);

        void onSubmitSuccess(AvatarFrame avatarFrame);
    }

    @Override // com.narvii.monetization.avatarframe.SwipeableFragment
    protected int getContentView() {
        return R.layout.fragment_avatar_frame_picker;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
    }

    public static AvatarFrameSettingPickerFragment show(NVActivity nVActivity, int i, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("isGlobal", z);
        Fragment fragmentShow = SwipeableFragment.show(nVActivity, i, TAG, AvatarFrameSettingPickerFragment.class, bundle);
        if (fragmentShow instanceof AvatarFrameSettingPickerFragment) {
            return (AvatarFrameSettingPickerFragment) fragmentShow;
        }
        return null;
    }

    @Override // com.narvii.monetization.avatarframe.SwipeableFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.membershipService = (MembershipService) getService("membership");
        if (bundle != null) {
            this.curSelectedFrameId = bundle.getString("curSelectedFrameId");
            this.originAvatarFrame = (User.AvatarFrameLite) JacksonUtils.readAs(bundle.getString("originAvatarFrame"), User.AvatarFrameLite.class);
            this.isGlobal = bundle.getBoolean("isGlobal");
        } else {
            this.isGlobal = getBooleanParam("isGlobal");
        }
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("curSelectedFrameId", this.curSelectedFrameId);
        bundle.putString("originAvatarFrame", JacksonUtils.writeAsString(this.originAvatarFrame));
        bundle.putBoolean("isGlobal", this.isGlobal);
    }

    public void setCurSelectedFrameId(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "default";
        }
        this.curSelectedFrameId = str;
        AvatarFrameListAdapter avatarFrameListAdapter = this.avatarFrameListAdapter;
        if (avatarFrameListAdapter != null) {
            avatarFrameListAdapter.notifyDataSetChanged();
        }
    }

    public void setOriginAvatarFrame(User.AvatarFrameLite avatarFrameLite) {
        this.originAvatarFrame = avatarFrameLite;
    }

    public void setOnPickAvatarFrameListener(OnPickAvatarFrameListener onPickAvatarFrameListener) {
        this.avatarFramePickListener = onPickAvatarFrameListener;
    }

    public void setMarginTopSize(int i) {
        this.layoutMarginTop = i;
        SwipeableLayout swipeableLayout = this.swipeableLayout;
        if (swipeableLayout == null || !(swipeableLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        ((ViewGroup.MarginLayoutParams) this.swipeableLayout.getLayoutParams()).topMargin = this.layoutMarginTop;
    }

    @Override // com.narvii.monetization.avatarframe.SwipeableFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        if (this.isGlobal) {
            this.swipeableLayout.setAllowDirection(0);
        }
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
        SwipeableLayout swipeableLayout = this.swipeableLayout;
        if (swipeableLayout != null && (swipeableLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ((ViewGroup.MarginLayoutParams) this.swipeableLayout.getLayoutParams()).topMargin = this.layoutMarginTop;
        }
        ViewUtils.show(view.findViewById(R.id.minimize_area), !this.isGlobal);
        View viewFindViewById = view.findViewById(R.id.close_area);
        ViewUtils.show(viewFindViewById, this.isGlobal);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.avatarframe.-$$Lambda$AvatarFrameSettingPickerFragment$Trn2ryrmzCQgQD5_sLBIQw6gFhs
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$0$AvatarFrameSettingPickerFragment(view2);
            }
        });
        View viewFindViewById2 = view.findViewById(R.id.check_area);
        ViewUtils.show(viewFindViewById2, this.isGlobal);
        viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.avatarframe.-$$Lambda$AvatarFrameSettingPickerFragment$eSHFSGUknjMb6O-DaRcpwbcEMk4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$2$AvatarFrameSettingPickerFragment(view2);
            }
        });
    }

    public /* synthetic */ void lambda$onViewCreated$0$AvatarFrameSettingPickerFragment(View view) {
        dismiss();
    }

    public /* synthetic */ void lambda$onViewCreated$2$AvatarFrameSettingPickerFragment(View view) {
        List list;
        if (this.avatarFramePickListener != null) {
            final AvatarFrame avatarFrame = null;
            AvatarFrameListAdapter avatarFrameListAdapter = this.avatarFrameListAdapter;
            if (avatarFrameListAdapter != null && (list = avatarFrameListAdapter.dataList) != null && list.size() > 0) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    AvatarFrame avatarFrame2 = (AvatarFrame) it.next();
                    if (avatarFrame2 != null && TextUtils.equals(avatarFrame2.id(), this.curSelectedFrameId)) {
                        avatarFrame = avatarFrame2;
                        break;
                    }
                }
            }
            postAvatarFrame(avatarFrame, new Callback() { // from class: com.narvii.monetization.avatarframe.-$$Lambda$AvatarFrameSettingPickerFragment$3Cr_FABMW-Bl-yFDiQYaaJ2V2YY
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f$0.lambda$null$1$AvatarFrameSettingPickerFragment(avatarFrame, (Boolean) obj);
                }
            });
        }
    }

    public /* synthetic */ void lambda$null$1$AvatarFrameSettingPickerFragment(AvatarFrame avatarFrame, Boolean bool) {
        if (bool.booleanValue()) {
            OnPickAvatarFrameListener onPickAvatarFrameListener = this.avatarFramePickListener;
            if (onPickAvatarFrameListener != null) {
                onPickAvatarFrameListener.onSubmitSuccess(avatarFrame);
            }
            close();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) throws Resources.NotFoundException {
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.bubble_setting_padding_horizontal);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        this.avatarFrameListAdapter = new AvatarFrameListAdapter();
        divideColumnAdapter.setAdapter(this.avatarFrameListAdapter, 3);
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        mergeAdapter.addAdapter(new ManageProfileFrameAdapter(this));
        mergeAdapter.addAdapter(new DividerAdapter(this));
        StoreRecommendAdapter storeRecommendAdapter = new StoreRecommendAdapter(this, StoreSection.GROUP_TYPE_AVATAR_FRAME);
        DivideColumnAdapter divideColumnAdapter2 = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        divideColumnAdapter2.setAdapter(storeRecommendAdapter, 3);
        RecommendHeaderAdapter recommendHeaderAdapter = new RecommendHeaderAdapter(this);
        recommendHeaderAdapter.setAttachAdapter(storeRecommendAdapter);
        mergeAdapter.addAdapter(recommendHeaderAdapter);
        mergeAdapter.addAdapter(divideColumnAdapter2);
        mergeAdapter.addAdapter(new MoreAvatarAdapter());
        return mergeAdapter;
    }

    @Override // com.narvii.monetization.avatarframe.SwipeableFragment
    public void dismiss() {
        OnPickAvatarFrameListener onPickAvatarFrameListener = this.avatarFramePickListener;
        if (onPickAvatarFrameListener != null) {
            onPickAvatarFrameListener.onCancel();
        }
        close();
    }

    public void close() {
        SwipeableLayout swipeableLayout = this.swipeableLayout;
        if (swipeableLayout != null) {
            swipeableLayout.dismiss(2);
        } else {
            remove();
        }
    }

    public void postAvatarFrame(final AvatarFrame avatarFrame, final Callback<Boolean> callback) {
        User.AvatarFrameLite avatarFrameLite;
        if (avatarFrame == null || (DefaultAvatarFrame.isDefaultAvatarFrame(avatarFrame) && this.originAvatarFrame == null) || ((avatarFrameLite = this.originAvatarFrame) != null && Utils.isEquals(avatarFrame.frameId, avatarFrameLite.frameId))) {
            callback.call(true);
            return;
        }
        MembershipService membershipService = (MembershipService) getService("membership");
        final AvatarFrameHelper avatarFrameHelper = new AvatarFrameHelper(this);
        avatarFrameHelper.source = "Profile Frame Picker";
        if (avatarFrame.isUsable(membershipService.isMembership())) {
            avatarFrameHelper.sendChangeAvatarSettingRequest(avatarFrame, false, new Callback<Boolean>() { // from class: com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.2
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    if (bool.booleanValue()) {
                        callback.call(true);
                    }
                }
            });
            return;
        }
        RestrictionInfo restrictionInfo = avatarFrame.getRestrictionInfo();
        OwnershipInfo ownershipInfo = avatarFrame.getOwnershipInfo();
        if (restrictionInfo != null && ownershipInfo != null && ownershipInfo.isExpired()) {
            new ExpiredItemHintDialog(this, avatarFrame) { // from class: com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.3
                @Override // com.narvii.monetization.utils.ExpiredItemHintDialog
                protected void jumpToStore() {
                    avatarFrameHelper.jumpToStoreWithCommunityCheck(avatarFrame);
                }
            }.show();
            return;
        }
        if (restrictionInfo == null || restrictionInfo.restrictType != 2 || membershipService.isMembership()) {
            return;
        }
        if (membershipService.isMembershipBefore()) {
            new MembershipExpireDialog(this).show();
        } else {
            new MembershipHintDialog(this).show();
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        dismiss();
        return true;
    }

    public class ManageProfileFrameAdapter extends AdriftAdapter {
        public ManageProfileFrameAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_manage_profile_frame, viewGroup, view);
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            Intent intent = FragmentWrapperActivity.intent(MySubscriptionListFragment.class);
            intent.putExtra("Source", "My Profile Frames");
            startActivity(intent);
            return true;
        }
    }

    public class DividerAdapter extends AdriftAdapter {
        public DividerAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return createView(R.layout.item_avatar_frame_divider, viewGroup, view);
        }
    }

    public class RecommendHeaderAdapter extends AdriftAdapter {
        NVAdapter attachedAdapter;

        public RecommendHeaderAdapter(NVContext nVContext) {
            super(nVContext);
        }

        public void setAttachAdapter(NVAdapter nVAdapter) {
            this.attachedAdapter = nVAdapter;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return createView(R.layout.item_recommnd_header, viewGroup, view);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            NVAdapter nVAdapter = this.attachedAdapter;
            return (nVAdapter == null || !nVAdapter.isListShown() || this.attachedAdapter.getCount() <= 0) ? 0 : 1;
        }
    }

    private class AvatarFrameListAdapter extends NVPagedAdapter<AvatarFrame, AvatarFrameListResponse> {
        private List<AvatarFrame> dataList;

        @Override // com.narvii.list.NVPagedAdapter
        protected List<AvatarFrame> filterResponseList(List<AvatarFrame> list, int i) {
            return list;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 20;
        }

        public AvatarFrameListAdapter() {
            super(AvatarFrameSettingPickerFragment.this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<AvatarFrame> dataType() {
            return AvatarFrame.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends AvatarFrameListResponse> responseType() {
            return AvatarFrameListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return new ApiRequest.Builder().path(StoreSection.GROUP_TYPE_AVATAR_FRAME).build();
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List<? extends AvatarFrame> listRawList = rawList();
            if (listRawList == null) {
                this.dataList = null;
            } else {
                this.dataList = new ArrayList();
                this.dataList.add(new DefaultAvatarFrame(AvatarFrameSettingPickerFragment.this.membershipService.isMembership(), getContext()));
                this.dataList.addAll(listRawList);
            }
            super.notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.dataList;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            boolean zIsEqualsNotNull;
            if (!(obj instanceof AvatarFrame)) {
                return null;
            }
            AvatarFrame avatarFrame = (AvatarFrame) obj;
            View viewCreateView = createView(R.layout.item_avatar_frame_setting, viewGroup, view);
            AvatarFrameSettingPickerFragment.this.membershipService.isMembership();
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.avatar_frame_preview);
            nVImageView.setShowPressedMask(false);
            nVImageView.setImageUrl(avatarFrame.icon);
            View viewFindViewById = viewCreateView.findViewById(R.id.checked_indicator);
            if (AvatarFrameSettingPickerFragment.this.curSelectedFrameId != null) {
                zIsEqualsNotNull = Utils.isEqualsNotNull(AvatarFrameSettingPickerFragment.this.curSelectedFrameId, avatarFrame.id());
            } else {
                zIsEqualsNotNull = Utils.isEqualsNotNull("default", avatarFrame.id());
            }
            viewFindViewById.setVisibility(zIsEqualsNotNull ? 0 : 4);
            viewCreateView.setAlpha(avatarFrame.isUsable(AvatarFrameSettingPickerFragment.this.membershipService.isMembership()) ? 1.0f : 0.5f);
            viewCreateView.findViewById(R.id.membership_lock).setVisibility(8);
            viewCreateView.findViewById(R.id.item_root);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof AvatarFrame) {
                final AvatarFrame avatarFrame = (AvatarFrame) obj;
                if (!avatarFrame.isUsable(AvatarFrameSettingPickerFragment.this.membershipService.isMembership())) {
                    RestrictionInfo restrictionInfo = avatarFrame.getRestrictionInfo();
                    OwnershipInfo ownershipInfo = avatarFrame.getOwnershipInfo();
                    if (restrictionInfo != null && ownershipInfo != null && ownershipInfo.isExpired()) {
                        new ExpiredItemHintDialog(this, avatarFrame) { // from class: com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.AvatarFrameListAdapter.1
                            @Override // com.narvii.monetization.utils.ExpiredItemHintDialog
                            protected void jumpToStore() {
                                new AvatarFrameHelper(AvatarFrameSettingPickerFragment.this).jumpToStoreWithCommunityCheck(avatarFrame);
                            }
                        }.show();
                    } else if (restrictionInfo != null && restrictionInfo.restrictType == 2 && !AvatarFrameSettingPickerFragment.this.membershipService.isMembership()) {
                        if (AvatarFrameSettingPickerFragment.this.membershipService.isMembershipBefore()) {
                            new MembershipExpireDialog(this).show();
                        } else {
                            new MembershipHintDialog(this).show();
                        }
                    }
                    return true;
                }
                AvatarFrameSettingPickerFragment.this.curSelectedFrameId = avatarFrame.id();
                if (AvatarFrameSettingPickerFragment.this.avatarFramePickListener != null) {
                    AvatarFrameSettingPickerFragment.this.avatarFramePickListener.onPickAvatarFrame(avatarFrame);
                }
                notifyDataSetChanged();
            }
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return (rawList() != null && rawList().size() > 0) || this._isEnd;
        }
    }

    class MoreAvatarAdapter extends AdriftAdapter {
        public MoreAvatarAdapter() {
            super(AvatarFrameSettingPickerFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_more_avatar_frame_entry, viewGroup, view);
            viewCreateView.findViewById(R.id.more_avatar_frame).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.more_avatar_frame) {
                enterAvatarShop();
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        private void enterAvatarShop() {
            Intent intent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
            intent.putExtra("scrollSectionGroupId", StoreSection.GROUP_TYPE_AVATAR_FRAME);
            intent.putExtra("Source", "More Profile Frames");
            startActivity(intent);
        }
    }
}
