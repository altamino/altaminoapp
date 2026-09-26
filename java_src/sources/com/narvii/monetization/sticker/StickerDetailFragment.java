package com.narvii.monetization.sticker;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.model.ChatMessage;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.monetization.StickerCollectionOwnStatusController;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.sticker.model.MoodStickerCollection;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.model.StickerCollectionResponse;
import com.narvii.monetization.sticker.widget.StickerCollectionSourceView;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ChatStickerView;
import com.narvii.widget.EmojioneView;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes9.dex */
public class StickerDetailFragment extends NVFragment implements NotificationListener {
    private static final int RC_JOIN_COMMUNITY = 103;
    View aminoPlus;
    ChatMessage chatMessage;
    ChatStickerView chatStickerView;
    StickerImageView collectionIcon;
    View collectionLayout;
    TextView collectionName;
    private GlobalChatHelper globalChatHelper;
    EmojioneView moodStickerView;
    TextView name;
    StickerCollection stickerCollection;
    private StickerCollectionOwnStatusController stickerCollectionOwnStatusController;
    StickerHelper stickerHelper;
    private StoreItemStatusView storeItemStatusView;
    TextView subTitle;
    private StickerCollection summary;
    String threadId;

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkAminoPlus() {
        RestrictionInfo restrictionInfo;
        boolean z6 = false;
        if (!((AccountService) getService("account")).hasAccount()) {
            ensureLogin(new Intent());
            return false;
        }
        final int intParam = getIntParam("__communityId");
        StickerCollection stickerCollection = this.stickerCollection;
        boolean z10 = stickerCollection != null && stickerCollection.isUserCreated() && this.stickerCollection.isShared();
        StickerCollection stickerCollection2 = this.stickerCollection;
        boolean z11 = (stickerCollection2 == null || (restrictionInfo = stickerCollection2.restrictionInfo) == null || restrictionInfo.restrictType != 2) ? false : true;
        GlobalChatHelper globalChatHelper = this.globalChatHelper;
        if (z11 && !z10) {
            z6 = true;
        }
        return globalChatHelper.checkGlobalChatAminoPlusOperation(z6, intParam, new Callback<Boolean>() { // from class: com.narvii.monetization.sticker.StickerDetailFragment.4
            public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivityForResult(p1, p5);
            }

            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(StickerDetailFragment.this, StickerDetailFragment.this.globalChatHelper.communityDetailIntent(Integer.valueOf(intParam), null), 103);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkCommunityJoined() {
        if (((AccountService) getService("account")).hasAccount()) {
            final int intParam = getIntParam("__communityId");
            return this.globalChatHelper.checkCommunityJoined(intParam, new Callback<Boolean>() { // from class: com.narvii.monetization.sticker.StickerDetailFragment.3
                public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivityForResult(p1, p5);
                }

                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(StickerDetailFragment.this, StickerDetailFragment.this.globalChatHelper.communityDetailIntent(Integer.valueOf(intParam), null), 103);
                }
            });
        }
        ensureLogin(new Intent());
        return false;
    }

    private void getStickerCollectionInfo(String str) {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("sticker-collection/" + str).param("includeStickers", Boolean.TRUE).build(), new ApiResponseListener<StickerCollectionResponse>(StickerCollectionResponse.class) { // from class: com.narvii.monetization.sticker.StickerDetailFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StickerCollectionResponse stickerCollectionResponse) throws Exception {
                super.onFinish(apiRequest, stickerCollectionResponse);
                StickerDetailFragment.this.setStickerCollection(stickerCollectionResponse.stickerCollection);
            }
        });
    }

    private boolean isLocalMood() {
        return this.chatMessage.mediaValue.startsWith("ndcsticker://e/");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStickerCollection(final StickerCollection stickerCollection) {
        this.stickerCollection = stickerCollection;
        invalidateOptionsMenu();
        boolean z6 = stickerCollection != null && stickerCollection.isUserCreated() && (this.stickerHelper.isCreatedByMe(stickerCollection) || stickerCollection.isShared());
        if (stickerCollection == null || !((stickerCollection.isLocalMood() || stickerCollection.isNormal() || z6) && stickerCollection.isAccessibleByUser(null))) {
            this.collectionLayout.setVisibility(8);
            return;
        }
        this.collectionLayout.setVisibility(0);
        this.collectionLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.StickerDetailFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (StickerDetailFragment.this.checkCommunityJoined()) {
                    StickerDetailFragment.this.stickerHelper.onClickStickerCollection(stickerCollection, "Message Detail Page");
                }
            }
        });
        this.collectionIcon.setStickerImageUrl(stickerCollection.id(), stickerCollection.icon);
        ((StoreItemNameView) getView().findViewById(R.id.sticker_collection_name)).setStoreItem(stickerCollection);
        ((StickerCollectionSourceView) getView().findViewById(R.id.source_view)).setStickerCollection(stickerCollection);
        ViewUtils.show(this.subTitle, stickerCollection instanceof MoodStickerCollection);
        this.stickerCollectionOwnStatusController.setStoreItem(stickerCollection);
    }

    public void delete(ChatMessage chatMessage) {
        new ChatRequestHelper(this).sendDeleteChatMessageRequest(this.threadId, this.chatMessage);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        StickerCollection updatedStickerCollection;
        Object obj = notification.obj;
        if ((obj instanceof StickerCollection) && notification.action == "update" && (updatedStickerCollection = StickerCollection.getUpdatedStickerCollection(this.stickerCollection, (StickerCollection) obj)) != null) {
            setStickerCollection(updatedStickerCollection);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 103 && i11 == -1) {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://x" + getIntParam("__communityId") + "/chat-thread/" + this.threadId));
            intent2.putExtra("__model", false);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent2);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.stickerHelper = new StickerHelper(this);
        this.chatMessage = (ChatMessage) JacksonUtils.readAs(getStringParam(AccountNotice.LEVEL_MESSAGE), ChatMessage.class);
        this.threadId = getStringParam("threadId");
        ChatMessage chatMessage = this.chatMessage;
        if (chatMessage != null && chatMessage.mediaValue != null) {
            this.summary = new ChatHelper(getContext()).getStickerCollectionSummary(this.chatMessage);
            if (this.threadId == null) {
                this.threadId = this.chatMessage.threadId;
            }
            setHasOptionsMenu(true);
            setTitle((CharSequence) null);
            this.globalChatHelper = new GlobalChatHelper(this);
            return;
        }
        finish();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.flag_for_review, 1, R.string.flag_for_review).setIcon(R.drawable.ic_flag_white).setShowAsAction(2);
        menu.add(0, R.string.add_sticker, 1, R.string.add_sticker);
        menu.add(0, R.string.delete, 1, R.string.delete);
        menu.add(0, R.string.advanced, 1, R.string.advanced);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sticker_detail, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.string.add_sticker /* 2131886217 */:
                if (checkCommunityJoined()) {
                    StickerHelper stickerHelper = new StickerHelper(this);
                    Sticker stickerInfo = this.chatMessage.getStickerInfo();
                    if (stickerInfo != null) {
                        stickerHelper.saveAsFavorite(stickerInfo);
                    } else {
                        stickerHelper.saveAsFavorite(this.chatMessage.mediaValue);
                    }
                }
                return true;
            case R.string.advanced /* 2131886237 */:
                new AdvancedOptionDialog.Builder(this).nvObject(this.chatMessage).build().show();
                return true;
            case R.string.delete /* 2131887008 */:
                delete(this.chatMessage);
                return true;
            case R.string.flag_for_review /* 2131888001 */:
                if (checkCommunityJoined()) {
                    new FlagReportOptionDialog.Builder(this).nvObject(this.chatMessage).build().show();
                }
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0053  */
    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean zCanBeFlagged;
        String strUid;
        boolean z6;
        boolean z10;
        boolean z11;
        Sticker stickerInfo;
        StickerCollection stickerCollection;
        StickerCollection stickerCollection2;
        String str;
        super.onPrepareOptionsMenu(menu);
        StickerCollection stickerCollection3 = this.stickerCollection;
        boolean z12 = false;
        if (stickerCollection3 != null) {
            zCanBeFlagged = stickerCollection3.canBeFlagged();
        } else {
            StickerCollection stickerCollection4 = this.summary;
            if (stickerCollection4 != null && !stickerCollection4.canBeFlagged()) {
                zCanBeFlagged = false;
            } else {
                zCanBeFlagged = true;
            }
        }
        AccountService accountService = (AccountService) getService("account");
        ChatMessage chatMessage = this.chatMessage;
        if (chatMessage != null) {
            strUid = chatMessage.uid();
        } else {
            strUid = null;
        }
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(strUid, accountService.getUserId());
        if (this.chatMessage != null && zCanBeFlagged) {
            String userId = accountService.getUserId();
            User user = this.chatMessage.author;
            if (user == null) {
                str = null;
            } else {
                str = user.uid;
            }
            if (!Utils.isEquals(str, userId)) {
                z6 = true;
            } else {
                z6 = false;
            }
        } else {
            z6 = false;
        }
        AccountService accountService2 = (AccountService) getService("account");
        if (accountService2.getUserProfile() != null && accountService2.getUserProfile().isCurator()) {
            z10 = true;
        } else {
            z10 = false;
        }
        ChatMessage chatMessage2 = this.chatMessage;
        if (chatMessage2 != null && ((stickerInfo = chatMessage2.getStickerInfo()) == null || (!stickerInfo.isLocalMood() && stickerInfo.isAccessibleByUser(null) && (((stickerCollection = this.stickerCollection) != null && stickerCollection.isAccessibleByUser(null) && this.stickerHelper.isStickerCollectionValid(this.stickerCollection)) || ((stickerCollection2 = this.summary) != null && stickerCollection2.isAccessibleByUser(null) && this.stickerHelper.isStickerCollectionValid(this.summary)))))) {
            z11 = true;
        } else {
            z11 = false;
        }
        menu.findItem(R.string.add_sticker).setVisible(z11);
        MenuItem menuItemFindItem = menu.findItem(R.string.delete);
        if (this.threadId != null && zIsEqualsNotNull) {
            z12 = true;
        }
        menuItemFindItem.setVisible(z12);
        menu.findItem(R.string.flag_for_review).setVisible(z6);
        menu.findItem(R.string.advanced).setVisible(z10);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        String str;
        String str2;
        super.onViewCreated(view, bundle);
        ChatMessage chatMessage = this.chatMessage;
        if (chatMessage != null && chatMessage.mediaValue != null) {
            this.chatStickerView = (ChatStickerView) view.findViewById(R.id.chat_sticker);
            this.moodStickerView = (EmojioneView) view.findViewById(R.id.mood_sticker);
            this.subTitle = (TextView) view.findViewById(R.id.subtitle);
            this.aminoPlus = view.findViewById(R.id.amino_plus_badge);
            ChatMessage chatMessage2 = this.chatMessage;
            String str3 = chatMessage2.mediaValue;
            Sticker stickerInfo = chatMessage2.getStickerInfo();
            TextView textView = (TextView) view.findViewById(R.id.name);
            this.name = textView;
            if (stickerInfo != null) {
                textView.setText(stickerInfo.name);
            }
            this.collectionIcon = (StickerImageView) view.findViewById(R.id.collection_icon);
            View viewFindViewById = view.findViewById(R.id.collection_layout);
            this.collectionLayout = viewFindViewById;
            StoreItemStatusView storeItemStatusView = (StoreItemStatusView) viewFindViewById.findViewById(R.id.store_item_status_view);
            this.storeItemStatusView = storeItemStatusView;
            StickerCollectionOwnStatusController stickerCollectionOwnStatusController = new StickerCollectionOwnStatusController(this, storeItemStatusView, false) { // from class: com.narvii.monetization.sticker.StickerDetailFragment.1
                @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
                public void onClickActivateItem() {
                    if (StickerDetailFragment.this.checkAminoPlus()) {
                        super.onClickActivateItem();
                    }
                }

                @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
                public void onClickGetItem() {
                    if (StickerDetailFragment.this.checkAminoPlus()) {
                        super.onClickGetItem();
                    }
                }

                @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
                public void onClickUseItem() {
                    if (StickerDetailFragment.this.checkAminoPlus()) {
                        super.onClickUseItem();
                    }
                }
            };
            this.stickerCollectionOwnStatusController = stickerCollectionOwnStatusController;
            stickerCollectionOwnStatusController.source = "Message Detail Page";
            if (isLocalMood()) {
                setStickerCollection(new MoodStickerCollection(getContext()));
                this.chatStickerView.setVisibility(8);
                this.moodStickerView.setVisibility(0);
                this.moodStickerView.setEmoji(new String(StringUtils.hex2bytes(str3.substring(15))));
                return;
            }
            if (stickerInfo != null) {
                str = stickerInfo.stickerCollectionId;
            } else {
                str = null;
            }
            this.chatStickerView.setStickerImage(str3, str, this.chatMessage.getClientRefIdTmp());
            this.chatStickerView.setVisibility(0);
            this.moodStickerView.setVisibility(8);
            if (stickerInfo != null && (str2 = stickerInfo.stickerCollectionId) != null) {
                getStickerCollectionInfo(str2);
            }
        }
    }
}
