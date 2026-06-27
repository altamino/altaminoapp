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
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.model.ChatMessage;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.Sticker;
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
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ChatStickerView;
import com.narvii.widget.EmojioneView;

/* loaded from: classes3.dex */
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

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.stickerHelper = new StickerHelper(this);
        this.chatMessage = (ChatMessage) JacksonUtils.readAs(getStringParam(AccountNotice.LEVEL_MESSAGE), ChatMessage.class);
        this.threadId = getStringParam("threadId");
        ChatMessage chatMessage = this.chatMessage;
        if (chatMessage == null || chatMessage.mediaValue == null) {
            finish();
            return;
        }
        this.summary = new ChatHelper(getContext()).getStickerCollectionSummary(this.chatMessage);
        if (this.threadId == null) {
            this.threadId = this.chatMessage.threadId;
        }
        setHasOptionsMenu(true);
        setTitle((CharSequence) null);
        this.globalChatHelper = new GlobalChatHelper(this);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sticker_detail, viewGroup, false);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.flag_for_review, 1, R.string.flag_for_review).setIcon(R.drawable.ic_flag_white).setShowAsAction(2);
        menu.add(0, R.string.add_sticker, 1, R.string.add_sticker);
        menu.add(0, R.string.delete, 1, R.string.delete);
        menu.add(0, R.string.advanced, 1, R.string.advanced);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0053  */
    @Override // android.support.v4.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPrepareOptionsMenu(android.view.Menu r9) {
        /*
            r8 = this;
            super.onPrepareOptionsMenu(r9)
            com.narvii.monetization.sticker.model.StickerCollection r0 = r8.stickerCollection
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Le
            boolean r0 = r0.canBeFlagged()
            goto L1c
        Le:
            com.narvii.monetization.sticker.model.StickerCollection r0 = r8.summary
            if (r0 == 0) goto L1b
            boolean r0 = r0.canBeFlagged()
            if (r0 == 0) goto L19
            goto L1b
        L19:
            r0 = 0
            goto L1c
        L1b:
            r0 = 1
        L1c:
            java.lang.String r3 = "account"
            java.lang.Object r4 = r8.getService(r3)
            com.narvii.account.AccountService r4 = (com.narvii.account.AccountService) r4
            com.narvii.model.ChatMessage r5 = r8.chatMessage
            r6 = 0
            if (r5 == 0) goto L2e
            java.lang.String r5 = r5.uid()
            goto L2f
        L2e:
            r5 = r6
        L2f:
            java.lang.String r7 = r4.getUserId()
            boolean r5 = com.narvii.util.Utils.isEqualsNotNull(r5, r7)
            com.narvii.model.ChatMessage r7 = r8.chatMessage
            if (r7 == 0) goto L53
            if (r0 == 0) goto L53
            java.lang.String r0 = r4.getUserId()
            com.narvii.model.ChatMessage r4 = r8.chatMessage
            com.narvii.model.User r4 = r4.author
            if (r4 != 0) goto L49
            r4 = r6
            goto L4b
        L49:
            java.lang.String r4 = r4.uid
        L4b:
            boolean r0 = com.narvii.util.Utils.isEquals(r4, r0)
            if (r0 != 0) goto L53
            r0 = 1
            goto L54
        L53:
            r0 = 0
        L54:
            java.lang.Object r3 = r8.getService(r3)
            com.narvii.account.AccountService r3 = (com.narvii.account.AccountService) r3
            com.narvii.model.User r4 = r3.getUserProfile()
            if (r4 == 0) goto L6c
            com.narvii.model.User r3 = r3.getUserProfile()
            boolean r3 = r3.isCurator()
            if (r3 == 0) goto L6c
            r3 = 1
            goto L6d
        L6c:
            r3 = 0
        L6d:
            com.narvii.model.ChatMessage r4 = r8.chatMessage
            if (r4 == 0) goto Laf
            com.narvii.model.Sticker r4 = r4.getStickerInfo()
            if (r4 != 0) goto L79
        L77:
            r4 = 1
            goto Lb0
        L79:
            boolean r7 = r4.isLocalMood()
            if (r7 != 0) goto Laf
            boolean r4 = r4.isAccessibleByUser(r6)
            if (r4 == 0) goto Laf
            com.narvii.monetization.sticker.model.StickerCollection r4 = r8.stickerCollection
            if (r4 == 0) goto L9a
            boolean r4 = r4.isAccessibleByUser(r6)
            if (r4 == 0) goto L9a
            com.narvii.monetization.sticker.StickerHelper r4 = r8.stickerHelper
            com.narvii.monetization.sticker.model.StickerCollection r7 = r8.stickerCollection
            boolean r4 = r4.isStickerCollectionValid(r7)
            if (r4 == 0) goto L9a
            goto L77
        L9a:
            com.narvii.monetization.sticker.model.StickerCollection r4 = r8.summary
            if (r4 == 0) goto Laf
            boolean r4 = r4.isAccessibleByUser(r6)
            if (r4 == 0) goto Laf
            com.narvii.monetization.sticker.StickerHelper r4 = r8.stickerHelper
            com.narvii.monetization.sticker.model.StickerCollection r6 = r8.summary
            boolean r4 = r4.isStickerCollectionValid(r6)
            if (r4 == 0) goto Laf
            goto L77
        Laf:
            r4 = 0
        Lb0:
            r6 = 2131689600(0x7f0f0080, float:1.900822E38)
            android.view.MenuItem r6 = r9.findItem(r6)
            r6.setVisible(r4)
            r4 = 2131690312(0x7f0f0348, float:1.9009664E38)
            android.view.MenuItem r4 = r9.findItem(r4)
            java.lang.String r6 = r8.threadId
            if (r6 == 0) goto Lc8
            if (r5 == 0) goto Lc8
            r1 = 1
        Lc8:
            r4.setVisible(r1)
            r1 = 2131691221(0x7f0f06d5, float:1.9011508E38)
            android.view.MenuItem r1 = r9.findItem(r1)
            r1.setVisible(r0)
            r0 = 2131689620(0x7f0f0094, float:1.900826E38)
            android.view.MenuItem r9 = r9.findItem(r0)
            r9.setVisible(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.monetization.sticker.StickerDetailFragment.onPrepareOptionsMenu(android.view.Menu):void");
    }

    public void delete(ChatMessage chatMessage) {
        new ChatRequestHelper(this).sendDeleteChatMessageRequest(this.threadId, this.chatMessage);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.string.add_sticker /* 2131689600 */:
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
            case R.string.advanced /* 2131689620 */:
                new AdvancedOptionDialog.Builder(this).nvObject(this.chatMessage).build().show();
                return true;
            case R.string.delete /* 2131690312 */:
                delete(this.chatMessage);
                return true;
            case R.string.flag_for_review /* 2131691221 */:
                if (checkCommunityJoined()) {
                    new FlagReportOptionDialog.Builder(this).nvObject(this.chatMessage).build().show();
                }
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        String str;
        super.onViewCreated(view, bundle);
        ChatMessage chatMessage = this.chatMessage;
        if (chatMessage == null || chatMessage.mediaValue == null) {
            return;
        }
        this.chatStickerView = (ChatStickerView) view.findViewById(R.id.chat_sticker);
        this.moodStickerView = (EmojioneView) view.findViewById(R.id.mood_sticker);
        this.subTitle = (TextView) view.findViewById(R.id.subtitle);
        this.aminoPlus = view.findViewById(R.id.amino_plus_badge);
        ChatMessage chatMessage2 = this.chatMessage;
        String str2 = chatMessage2.mediaValue;
        Sticker stickerInfo = chatMessage2.getStickerInfo();
        this.name = (TextView) view.findViewById(R.id.name);
        if (stickerInfo != null) {
            this.name.setText(stickerInfo.name);
        }
        this.collectionIcon = (StickerImageView) view.findViewById(R.id.collection_icon);
        this.collectionLayout = view.findViewById(R.id.collection_layout);
        this.storeItemStatusView = (StoreItemStatusView) this.collectionLayout.findViewById(R.id.store_item_status_view);
        this.stickerCollectionOwnStatusController = new StickerCollectionOwnStatusController(this, this.storeItemStatusView, false) { // from class: com.narvii.monetization.sticker.StickerDetailFragment.1
            @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
            public void onClickGetItem() {
                if (StickerDetailFragment.this.checkAminoPlus()) {
                    super.onClickGetItem();
                }
            }

            @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
            public void onClickActivateItem() {
                if (StickerDetailFragment.this.checkAminoPlus()) {
                    super.onClickActivateItem();
                }
            }

            @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
            public void onClickUseItem() {
                if (StickerDetailFragment.this.checkAminoPlus()) {
                    super.onClickUseItem();
                }
            }
        };
        this.stickerCollectionOwnStatusController.source = "Message Detail Page";
        if (isLocalMood()) {
            setStickerCollection(new MoodStickerCollection(getContext()));
            this.chatStickerView.setVisibility(8);
            this.moodStickerView.setVisibility(0);
            this.moodStickerView.setEmoji(new String(StringUtils.hex2bytes(str2.substring(15))));
            return;
        }
        this.chatStickerView.setStickerImage(str2, stickerInfo != null ? stickerInfo.stickerCollectionId : null, this.chatMessage.clientRefId);
        this.chatStickerView.setVisibility(0);
        this.moodStickerView.setVisibility(8);
        if (stickerInfo == null || (str = stickerInfo.stickerCollectionId) == null) {
            return;
        }
        getStickerCollectionInfo(str);
    }

    private boolean isLocalMood() {
        return this.chatMessage.mediaValue.startsWith("ndcsticker://e/");
    }

    private void getStickerCollectionInfo(String str) {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("sticker-collection/" + str).param("includeStickers", true).build(), new ApiResponseListener<StickerCollectionResponse>(StickerCollectionResponse.class) { // from class: com.narvii.monetization.sticker.StickerDetailFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StickerCollectionResponse stickerCollectionResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) stickerCollectionResponse);
                StickerDetailFragment.this.setStickerCollection(stickerCollectionResponse.stickerCollection);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkCommunityJoined() {
        if (!((AccountService) getService("account")).hasAccount()) {
            ensureLogin(new Intent());
            return false;
        }
        final int intParam = getIntParam("__communityId");
        return this.globalChatHelper.checkCommunityJoined(intParam, new Callback<Boolean>() { // from class: com.narvii.monetization.sticker.StickerDetailFragment.3
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                StickerDetailFragment.this.startActivityForResult(StickerDetailFragment.this.globalChatHelper.communityDetailIntent(Integer.valueOf(intParam), null), 103);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkAminoPlus() {
        RestrictionInfo restrictionInfo;
        boolean z = false;
        if (!((AccountService) getService("account")).hasAccount()) {
            ensureLogin(new Intent());
            return false;
        }
        final int intParam = getIntParam("__communityId");
        StickerCollection stickerCollection = this.stickerCollection;
        boolean z2 = stickerCollection != null && stickerCollection.isUserCreated() && this.stickerCollection.isShared();
        StickerCollection stickerCollection2 = this.stickerCollection;
        boolean z3 = (stickerCollection2 == null || (restrictionInfo = stickerCollection2.restrictionInfo) == null || restrictionInfo.restrictType != 2) ? false : true;
        GlobalChatHelper globalChatHelper = this.globalChatHelper;
        if (z3 && !z2) {
            z = true;
        }
        return globalChatHelper.checkGlobalChatAminoPlusOperation(z, intParam, new Callback<Boolean>() { // from class: com.narvii.monetization.sticker.StickerDetailFragment.4
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                StickerDetailFragment.this.startActivityForResult(StickerDetailFragment.this.globalChatHelper.communityDetailIntent(Integer.valueOf(intParam), null), 103);
            }
        });
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 103 && i2 == -1) {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://x" + getIntParam("__communityId") + "/chat-thread/" + this.threadId));
            intent2.putExtra("__model", false);
            startActivity(intent2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStickerCollection(final StickerCollection stickerCollection) {
        this.stickerCollection = stickerCollection;
        invalidateOptionsMenu();
        boolean z = stickerCollection != null && stickerCollection.isUserCreated() && (this.stickerHelper.isCreatedByMe(stickerCollection) || stickerCollection.isShared());
        if (stickerCollection != null && ((stickerCollection.isLocalMood() || stickerCollection.isNormal() || z) && stickerCollection.isAccessibleByUser(null))) {
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
            return;
        }
        this.collectionLayout.setVisibility(8);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        StickerCollection updatedStickerCollection;
        Object obj = notification.obj;
        if ((obj instanceof StickerCollection) && notification.action == "update" && (updatedStickerCollection = StickerCollection.getUpdatedStickerCollection(this.stickerCollection, (StickerCollection) obj)) != null) {
            setStickerCollection(updatedStickerCollection);
        }
    }
}
