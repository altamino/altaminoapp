package com.narvii.monetization.bubble;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.membership.MembershipHintDialog;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatBubbleListResponse;
import com.narvii.model.ChatBubbleNotificationWrapper;
import com.narvii.model.ChatThread;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.RestrictionInfo;
import com.narvii.monetization.MemberShipExpireWarningFragment;
import com.narvii.monetization.bubble.manage.BubbleManageListFragment;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.monetization.store.data.StoreSection;
import com.narvii.monetization.utils.ExpiredItemHintDialog;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class BubbleSettingFragment extends NVListFragment implements FragmentOnBackListener {
    public static final String KEY_CHAT_THREAD = "key_thread";
    public static final String KEY_CHAT_THREAD_ID = "key_thread_id";
    private static final String KEY_CUR_BUBBLE_ID = "key_cur_id";
    private static final String KEY_ORIGIN_BUBBLE_ID = "key_origin_id";
    private static final String TAG_BACKGROUND = "fragment_background";
    private static final String TAG_MEMBERSHIP_WARNGING = "fragment_membership_warning";
    View btnMoreBubbles;
    private BubbleListAdapter bubbleListAdapter;
    private ChatThread chatThread;
    private String chatThreadId;
    private String communityDefaultBubbleId;
    private ChatBubble curBubble;
    private String curSelectedBubbleId;
    private MembershipService membershipService;
    private String oriSelectedBubbleId;
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.bubble.BubbleSettingFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction()) || BubbleSettingFragment.this.bubbleListAdapter == null) {
                return;
            }
            BubbleSettingFragment.this.bubbleListAdapter.notifyDataSetChanged();
        }
    };
    private View saveButton;
    private boolean selectedBubbleDeleted;

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return null;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        return false;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.pick_your_bubble);
        if (bundle == null) {
            if (getStringParam(KEY_CHAT_THREAD) != null) {
                this.chatThread = (ChatThread) JacksonUtils.readAs(getStringParam(KEY_CHAT_THREAD), ChatThread.class);
            }
        } else {
            this.oriSelectedBubbleId = bundle.getString(KEY_ORIGIN_BUBBLE_ID);
            this.curSelectedBubbleId = bundle.getString(KEY_CUR_BUBBLE_ID);
            String string = bundle.getString(KEY_CHAT_THREAD);
            if (!TextUtils.isEmpty(string)) {
                this.chatThread = (ChatThread) JacksonUtils.readAs(string, ChatThread.class);
            }
        }
        ChatThread chatThread = this.chatThread;
        this.chatThreadId = chatThread == null ? null : chatThread.id();
        if (this.chatThread == null) {
            this.chatThreadId = getStringParam("key_thread_id");
        }
        this.membershipService = (MembershipService) getService("membership");
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
        bundle.putString(KEY_ORIGIN_BUBBLE_ID, this.oriSelectedBubbleId);
        bundle.putString(KEY_CUR_BUBBLE_ID, this.curSelectedBubbleId);
        bundle.putString(KEY_CHAT_THREAD, JacksonUtils.writeAsString(this.chatThread));
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        View customView = getActivity().getActionBar().getCustomView();
        setActionBarRightButton(R.string.done, getResources().getDrawable(R.drawable.selector_save_bubble), new View.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleSettingFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BubbleSettingFragment bubbleSettingFragment = BubbleSettingFragment.this;
                bubbleSettingFragment.saveCurSetting(bubbleSettingFragment.curBubble);
            }
        });
        if (customView != null) {
            ImageView imageView = (ImageView) customView.findViewById(R.id.actionbar_back);
            if (imageView != null) {
                imageView.setImageResource(R.drawable.ic_back_cross);
            }
            this.saveButton = customView.findViewById(R.id.actionbar_right_btn_btn);
            View view = this.saveButton;
            if (view != null) {
                view.setEnabled(false);
            }
        }
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_bubble_setting, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        MemberShipExpireWarningFragment.attachTo(this, "Chat Bubble (Bar)");
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
        view.findViewById(R.id.bubble_setting).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleSettingFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                BubbleSettingFragment.this.enterBubbleManger();
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) throws Resources.NotFoundException {
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.bubble_setting_padding_horizontal);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        new StaticViewAdapter().addViews(new OverlayListPlaceholder(getContext()));
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        this.bubbleListAdapter = new BubbleListAdapter();
        divideColumnAdapter.setAdapter(this.bubbleListAdapter, 3);
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        mergeAdapter.addAdapter(new MoreBubbleAdapter());
        mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 80.0f)));
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCurSetting(final ChatBubble chatBubble) {
        if (chatBubble == null) {
            return;
        }
        RestrictionInfo restrictionInfo = chatBubble.getRestrictionInfo();
        if ((restrictionInfo != null && restrictionInfo.isSupported() && (this.membershipService.isMembership() || restrictionInfo.restrictType != 2)) || chatBubble.type == -1) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.set_cur_chat, 0);
            actionSheetDialog.addItem(R.string.set_all_chats, 0);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleSettingFragment.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    BubbleSettingFragment.this.sendSaveCurBubbleSettingRequest(chatBubble, i == 1);
                }
            });
            actionSheetDialog.show();
            return;
        }
        if (this.membershipService.isMembershipBefore()) {
            new MembershipExpireDialog(this).show();
            return;
        }
        MembershipHintDialog membershipHintDialog = new MembershipHintDialog(this);
        membershipHintDialog.source = "Chat Bubble (Dialog)";
        membershipHintDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSaveCurBubbleSettingRequest(final ChatBubble chatBubble, boolean z) {
        new BubbleHelper(this).sendApplyBubbleRequest(chatBubble, z, this.chatThreadId, new Callback<Boolean>() { // from class: com.narvii.monetization.bubble.BubbleSettingFragment.5
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) throws Resources.NotFoundException {
                if (bool.booleanValue()) {
                    BubbleSettingFragment.this.oriSelectedBubbleId = chatBubble.id;
                    chatBubble.isActivated = true;
                    BubbleSettingFragment.this.updateSaveButton();
                    new BubbleHelper(BubbleSettingFragment.this).sendBubbleNotification(chatBubble, false, BubbleSettingFragment.this.chatThreadId);
                    if (BubbleSettingFragment.this.getContext() instanceof NVActivity) {
                        ((NVActivity) BubbleSettingFragment.this.getContext()).toastImageWithText(ContextCompat.getDrawable(BubbleSettingFragment.this.getContext(), R.drawable.check), BubbleSettingFragment.this.getContext().getString(R.string.saved), R.anim.toast_scale_in, 600L);
                    } else {
                        NVToast.makeText(BubbleSettingFragment.this.getContext(), R.string.saved, 1).show();
                    }
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.monetization.bubble.BubbleSettingFragment.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BubbleSettingFragment.this.finish();
                        }
                    }, 600L);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSaveButton() {
        if (this.saveButton != null) {
            this.saveButton.setEnabled(!(Utils.isEquals(this.curSelectedBubbleId, this.oriSelectedBubbleId) || (this.oriSelectedBubbleId == null && Utils.isEqualsNotNull(this.curSelectedBubbleId, "default"))));
        }
    }

    class MoreBubbleAdapter extends AdriftAdapter {
        public MoreBubbleAdapter() {
            super(BubbleSettingFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_bubble_setting_more_buble, viewGroup, view);
            viewCreateView.findViewById(R.id.more_bubbles).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.more_bubbles) {
                BubbleSettingFragment.this.enterBubbleShop();
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    class BubbleListAdapter extends NVPagedAdapter<ChatBubble, ChatBubbleListResponse> implements NotificationListener {
        public List<ChatBubble> l;

        @Override // com.narvii.list.NVPagedAdapter
        protected List<ChatBubble> filterResponseList(List<ChatBubble> list, int i) {
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

        public BubbleListAdapter() {
            super(BubbleSettingFragment.this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<ChatBubble> dataType() {
            return ChatBubble.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ChatBubbleListResponse> responseType() {
            return ChatBubbleListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = new ApiRequest.Builder().path("chat/chat-bubble");
            builderPath.param("type", "all-my-bubbles");
            builderPath.param("threadId", BubbleSettingFragment.this.chatThreadId);
            return builderPath.build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, ChatBubbleListResponse chatBubbleListResponse, int i) {
            BubbleSettingFragment.this.oriSelectedBubbleId = chatBubbleListResponse.currentSelectedBubbleId;
            BubbleSettingFragment.this.curSelectedBubbleId = chatBubbleListResponse.currentSelectedBubbleId;
            BubbleSettingFragment.this.communityDefaultBubbleId = chatBubbleListResponse.allChatsBubbleId;
            super.onPageResponse(apiRequest, (ApiRequest) chatBubbleListResponse, i);
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List<? extends ChatBubble> listRawList = rawList();
            if (listRawList == null) {
                this.l = null;
            } else {
                this.l = new ArrayList();
                ChatBubble chatBubble = new ChatBubble();
                chatBubble.type = -2;
                chatBubble.id = "edit";
                this.l.add(chatBubble);
                ChatBubble chatBubble2 = new ChatBubble();
                chatBubble2.type = -1;
                chatBubble2.id = "default";
                this.l.add(chatBubble2);
                this.l.addAll(listRawList);
            }
            super.notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.l;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            boolean zIsEqualsNotNull;
            if (!(obj instanceof ChatBubble)) {
                return null;
            }
            ChatBubble chatBubble = (ChatBubble) obj;
            boolean z = chatBubble.type == 2;
            View viewCreateView = createView(z ? R.layout.item_offical_bubble_setting : R.layout.item_bubble_setting, viewGroup, view, Boolean.valueOf(z));
            boolean z2 = chatBubble.type == -2;
            boolean zIsMembership = BubbleSettingFragment.this.membershipService.isMembership();
            boolean z3 = chatBubble.type == -1;
            boolean z4 = chatBubble.status == 9;
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.bubble_preview);
            nVImageView.setShowPressedMask(false);
            int i = chatBubble.type;
            if (i == -1) {
                nVImageView.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_default_bubble));
            } else if (i == -2) {
                nVImageView.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_bubble_item_edit));
            } else {
                nVImageView.setImageUrl(chatBubble.getPreviewUrl());
            }
            viewCreateView.findViewById(R.id.bubble_edit_container).setOnClickListener(this.subviewClickListener);
            viewCreateView.findViewById(R.id.custom_container).setVisibility(z2 ? 0 : 8);
            View viewFindViewById = viewCreateView.findViewById(R.id.checked_indicator);
            if (BubbleSettingFragment.this.curSelectedBubbleId != null) {
                zIsEqualsNotNull = Utils.isEqualsNotNull(BubbleSettingFragment.this.curSelectedBubbleId, chatBubble.id);
            } else {
                zIsEqualsNotNull = (!BubbleSettingFragment.this.selectedBubbleDeleted || BubbleSettingFragment.this.communityDefaultBubbleId == null) ? chatBubble.type == -1 : Utils.isEqualsNotNull(BubbleSettingFragment.this.communityDefaultBubbleId, chatBubble.id);
            }
            viewFindViewById.setVisibility(zIsEqualsNotNull ? 0 : 4);
            viewCreateView.findViewById(R.id.bubble_edit_container).setVisibility((zIsEqualsNotNull && chatBubble.type == 1) ? 0 : 4);
            viewCreateView.setAlpha((chatBubble.isUsable(zIsMembership) || z3 || z2) ? 1.0f : 0.5f);
            viewCreateView.findViewById(R.id.membership_lock).setVisibility(8);
            viewCreateView.findViewById(R.id.item_root).setBackgroundDrawable((z4 && zIsMembership) ? new ColorDrawable(553582592) : ContextCompat.getDrawable(getContext(), R.drawable.selector_bubble_setting_item));
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void editList(Notification notification, boolean z) {
            super.editList(notification, z);
            if ("delete".equals(notification.action)) {
                if (Utils.isEqualsNotNull(notification.id, BubbleSettingFragment.this.curSelectedBubbleId)) {
                    BubbleSettingFragment.this.curSelectedBubbleId = null;
                    BubbleSettingFragment.this.selectedBubbleDeleted = true;
                    notifyDataSetChanged();
                }
                if (Utils.isEqualsNotNull(notification.id, BubbleSettingFragment.this.oriSelectedBubbleId)) {
                    BubbleSettingFragment.this.oriSelectedBubbleId = null;
                }
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof ChatBubble) {
                final ChatBubble chatBubble = (ChatBubble) obj;
                if (view2 != null) {
                    if (view2.getId() == R.id.bubble_edit_container) {
                        Intent intent = FragmentWrapperActivity.intent(BubbleEditFragment.class);
                        intent.putExtra(BubbleEditFragment.KEY_CHAT_BUBBLE, JacksonUtils.writeAsString(chatBubble));
                        startActivity(intent);
                        return true;
                    }
                    if (view2.getId() != R.id.membership_lock) {
                        return true;
                    }
                    if (BubbleSettingFragment.this.membershipService.isMembershipBefore()) {
                        MembershipExpireDialog membershipExpireDialog = new MembershipExpireDialog(BubbleSettingFragment.this);
                        membershipExpireDialog.source = "Chat Bubble (Dialog)";
                        membershipExpireDialog.show();
                        return true;
                    }
                    MembershipHintDialog membershipHintDialog = new MembershipHintDialog(BubbleSettingFragment.this);
                    membershipHintDialog.source = "Chat Bubble (Dialog)";
                    membershipHintDialog.show();
                    return true;
                }
                if (chatBubble.status == 9 && chatBubble.deletable) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                    aCMAlertDialog.setMessage(R.string.bubble_disable_hint);
                    aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, -4473925);
                    aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleSettingFragment.BubbleListAdapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view3) {
                            BubbleListAdapter.this.deleteBubble(chatBubble, null);
                        }
                    });
                    aCMAlertDialog.show();
                    return true;
                }
                int i2 = chatBubble.type;
                if (i2 != -2) {
                    if (i2 != -1 && !chatBubble.isUsable(BubbleSettingFragment.this.membershipService.isMembership())) {
                        RestrictionInfo restrictionInfo = chatBubble.getRestrictionInfo();
                        OwnershipInfo ownershipInfo = chatBubble.getOwnershipInfo();
                        if (restrictionInfo != null && ownershipInfo != null && ownershipInfo.isExpired()) {
                            new ExpiredItemHintDialog(this, chatBubble).show();
                            return true;
                        }
                        if (restrictionInfo == null || restrictionInfo.restrictType != 2 || BubbleSettingFragment.this.membershipService.isMembership()) {
                            return true;
                        }
                        if (BubbleSettingFragment.this.membershipService.isMembershipBefore()) {
                            new MembershipExpireDialog(this).show();
                            return true;
                        }
                        new MembershipHintDialog(this).show();
                        return true;
                    }
                    BubbleSettingFragment.this.curSelectedBubbleId = chatBubble.id();
                    BubbleSettingFragment.this.curBubble = chatBubble;
                    BubbleSettingFragment.this.updateSaveButton();
                    notifyDataSetChanged();
                    return true;
                }
                startActivity(FragmentWrapperActivity.intent(BubbleEditFragment.class));
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        protected void deleteBubble(final ChatBubble chatBubble, final Callback<Boolean> callback) {
            if (chatBubble != null) {
                new BubbleHelper(this).deleteBubble(chatBubble.id(), new Callback<Boolean>() { // from class: com.narvii.monetization.bubble.BubbleSettingFragment.BubbleListAdapter.2
                    @Override // com.narvii.util.Callback
                    public void call(Boolean bool) {
                        if (bool.booleanValue()) {
                            BubbleListAdapter.this.sendNotification(new Notification("delete", chatBubble));
                            Callback callback2 = callback;
                            if (callback2 != null) {
                                callback2.call(Boolean.TRUE);
                            }
                        }
                    }
                });
            } else if (callback != null) {
                callback.call(Boolean.FALSE);
            }
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            ChatBubble chatBubble;
            Object obj = notification.obj;
            if (obj instanceof ChatBubble) {
                editList(notification, false);
                if ("new".equals(notification.action)) {
                    ChatBubble chatBubble2 = (ChatBubble) notification.obj;
                    if (chatBubble2.isUsable(BubbleSettingFragment.this.membershipService.isMembership())) {
                        BubbleSettingFragment.this.curSelectedBubbleId = chatBubble2.id();
                        BubbleSettingFragment.this.curBubble = chatBubble2;
                    }
                    BubbleSettingFragment.this.updateSaveButton();
                    notifyDataSetChanged();
                    return;
                }
                return;
            }
            if (obj instanceof ChatBubbleNotificationWrapper) {
                ChatBubbleNotificationWrapper chatBubbleNotificationWrapper = (ChatBubbleNotificationWrapper) obj;
                if (chatBubbleNotificationWrapper.action == 1) {
                    ChatBubble chatBubble3 = chatBubbleNotificationWrapper.chatBubble;
                    if (!chatBubble3.isActivated && Utils.isEqualsNotNull(chatBubble3.id(), BubbleSettingFragment.this.curSelectedBubbleId)) {
                        if (Utils.isEqualsNotNull(chatBubbleNotificationWrapper.chatBubble.id(), BubbleSettingFragment.this.curSelectedBubbleId)) {
                            BubbleSettingFragment.this.curSelectedBubbleId = null;
                        } else {
                            BubbleSettingFragment bubbleSettingFragment = BubbleSettingFragment.this;
                            bubbleSettingFragment.curSelectedBubbleId = bubbleSettingFragment.communityDefaultBubbleId;
                        }
                        notifyDataSetChanged();
                    }
                }
                new BubbleHelper(this).handleBubbleWrapNotification(notification, this);
                if (!chatBubbleNotificationWrapper.applyForAll || (chatBubble = chatBubbleNotificationWrapper.chatBubble) == null) {
                    return;
                }
                BubbleSettingFragment.this.curSelectedBubbleId = chatBubble.id();
                notifyDataSetChanged();
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return (rawList() != null && rawList().size() > 0) || this._isEnd;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterBubbleManger() {
        Intent intent = FragmentWrapperActivity.intent(BubbleManageListFragment.class);
        intent.putExtra("threadId", this.chatThreadId);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterBubbleShop() {
        Intent intent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
        intent.putExtra("scrollSectionGroupId", StoreSection.GROUP_TYPE_CHAT_BUBBLE);
        intent.putExtra("Source", "More Chat Bubbles");
        startActivity(intent);
    }
}
