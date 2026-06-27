package com.narvii.monetization.sticker;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.model.NVObject;
import com.narvii.model.Sticker;
import com.narvii.monetization.StickerCollectionOwnStatusController;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.sticker.model.MoodStickerCollection;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.model.StickerCollectionResponse;
import com.narvii.monetization.sticker.widget.StickerCollectionSourceView;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ChatStickerView;
import com.narvii.widget.EmojioneView;

/* loaded from: classes3.dex */
public class StickerBaseDetailFragment extends NVFragment {
    View aminoPlus;
    ChatStickerView chatStickerView;
    StickerImageView collectionIcon;
    View collectionLayout;
    TextView collectionName;
    EmojioneView moodStickerView;
    TextView name;
    protected Sticker sticker;
    StickerCollection stickerCollection;
    StickerCollectionOwnStatusController stickerCollectionOwnStatusController;
    StickerHelper stickerHelper;
    StoreItemStatusView storeItemStatusView;
    TextView subTitle;
    StickerCollection summary;

    protected NVObject attachObject() {
        return null;
    }

    protected boolean ignoreGlobalScope() {
        return false;
    }

    protected boolean isFromComment() {
        return false;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    protected boolean isMyOwned() {
        return false;
    }

    protected void onDeleteOpClicked() {
    }

    protected void useSticker() {
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.stickerHelper = new StickerHelper(this);
        this.sticker = (Sticker) JacksonUtils.readAs(getStringParam("sticker"), Sticker.class);
        setTitle((CharSequence) null);
        setHasOptionsMenu(true);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sticker_detail, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        String str;
        super.onViewCreated(view, bundle);
        this.chatStickerView = (ChatStickerView) view.findViewById(R.id.chat_sticker);
        this.moodStickerView = (EmojioneView) view.findViewById(R.id.mood_sticker);
        this.subTitle = (TextView) view.findViewById(R.id.subtitle);
        this.aminoPlus = view.findViewById(R.id.amino_plus_badge);
        this.name = (TextView) view.findViewById(R.id.name);
        this.collectionIcon = (StickerImageView) view.findViewById(R.id.collection_icon);
        this.collectionLayout = view.findViewById(R.id.collection_layout);
        this.storeItemStatusView = (StoreItemStatusView) this.collectionLayout.findViewById(R.id.store_item_status_view);
        this.stickerCollectionOwnStatusController = new StickerCollectionOwnStatusController(this, this.storeItemStatusView, false, ignoreGlobalScope()) { // from class: com.narvii.monetization.sticker.StickerBaseDetailFragment.1
            @Override // com.narvii.monetization.StickerCollectionOwnStatusController, com.narvii.monetization.StoreItemOwnStatusController
            protected void useItem() {
                StickerBaseDetailFragment.this.useSticker();
            }
        };
        Sticker sticker = this.sticker;
        if (sticker != null) {
            this.name.setText(sticker.name);
        }
        if (isLocalMood()) {
            setStickerCollection(new MoodStickerCollection(getContext()));
            this.chatStickerView.setVisibility(8);
            this.moodStickerView.setVisibility(0);
            this.moodStickerView.setEmoji(new String(StringUtils.hex2bytes(this.sticker.icon.substring(15))));
            return;
        }
        Sticker sticker2 = this.sticker;
        String str2 = sticker2 != null ? sticker2.stickerCollectionId : null;
        ChatStickerView chatStickerView = this.chatStickerView;
        Sticker sticker3 = this.sticker;
        chatStickerView.setStickerImage(sticker3 != null ? sticker3.icon : null, str2, 0);
        this.chatStickerView.setVisibility(this.sticker == null ? 8 : 0);
        this.moodStickerView.setVisibility(8);
        Sticker sticker4 = this.sticker;
        if (sticker4 == null || (str = sticker4.stickerCollectionId) == null) {
            return;
        }
        getStickerCollectionInfo(str);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.flag_for_review, 1, R.string.flag_for_review).setIcon(R.drawable.ic_flag_white).setShowAsAction(2);
        menu.add(0, R.string.add_sticker, 1, R.string.add_sticker);
        menu.add(0, R.string.delete, 1, R.string.delete);
        menu.add(0, R.string.advanced, 1, R.string.advanced);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0031  */
    @Override // android.support.v4.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPrepareOptionsMenu(android.view.Menu r8) {
        /*
            r7 = this;
            super.onPrepareOptionsMenu(r8)
            com.narvii.monetization.sticker.model.StickerCollection r0 = r7.stickerCollection
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lf
            boolean r0 = r0.canBeFlagged()
            if (r0 != 0) goto L19
        Lf:
            com.narvii.monetization.sticker.model.StickerCollection r0 = r7.summary
            if (r0 == 0) goto L1b
            boolean r0 = r0.canBeFlagged()
            if (r0 == 0) goto L1b
        L19:
            r0 = 1
            goto L1c
        L1b:
            r0 = 0
        L1c:
            java.lang.String r3 = "account"
            java.lang.Object r4 = r7.getService(r3)
            com.narvii.account.AccountService r4 = (com.narvii.account.AccountService) r4
            if (r0 == 0) goto L31
            r4.getUserId()
            boolean r0 = r7.isMyOwned()
            if (r0 != 0) goto L31
            r0 = 1
            goto L32
        L31:
            r0 = 0
        L32:
            java.lang.Object r3 = r7.getService(r3)
            com.narvii.account.AccountService r3 = (com.narvii.account.AccountService) r3
            com.narvii.model.User r4 = r3.getUserProfile()
            if (r4 == 0) goto L4a
            com.narvii.model.User r3 = r3.getUserProfile()
            boolean r3 = r3.isCurator()
            if (r3 == 0) goto L4a
            r3 = 1
            goto L4b
        L4a:
            r3 = 0
        L4b:
            com.narvii.model.Sticker r4 = r7.sticker
            if (r4 != 0) goto L50
            goto L8a
        L50:
            boolean r4 = r4.isLocalMood()
            if (r4 != 0) goto L89
            com.narvii.model.Sticker r4 = r7.sticker
            r5 = 0
            boolean r4 = r4.isAccessibleByUser(r5)
            if (r4 == 0) goto L89
            com.narvii.monetization.sticker.model.StickerCollection r4 = r7.stickerCollection
            if (r4 == 0) goto L74
            boolean r4 = r4.isAccessibleByUser(r5)
            if (r4 == 0) goto L74
            com.narvii.monetization.sticker.StickerHelper r4 = r7.stickerHelper
            com.narvii.monetization.sticker.model.StickerCollection r6 = r7.stickerCollection
            boolean r4 = r4.isStickerCollectionValid(r6)
            if (r4 == 0) goto L74
            goto L8a
        L74:
            com.narvii.monetization.sticker.model.StickerCollection r4 = r7.summary
            if (r4 == 0) goto L89
            boolean r4 = r4.isAccessibleByUser(r5)
            if (r4 == 0) goto L89
            com.narvii.monetization.sticker.StickerHelper r4 = r7.stickerHelper
            com.narvii.monetization.sticker.model.StickerCollection r5 = r7.summary
            boolean r4 = r4.isStickerCollectionValid(r5)
            if (r4 == 0) goto L89
            goto L8a
        L89:
            r2 = 0
        L8a:
            r1 = 2131689600(0x7f0f0080, float:1.900822E38)
            android.view.MenuItem r1 = r8.findItem(r1)
            r1.setVisible(r2)
            r1 = 2131690312(0x7f0f0348, float:1.9009664E38)
            android.view.MenuItem r1 = r8.findItem(r1)
            boolean r2 = r7.isDeleteOpVisible()
            r1.setVisible(r2)
            r1 = 2131691221(0x7f0f06d5, float:1.9011508E38)
            android.view.MenuItem r1 = r8.findItem(r1)
            r1.setVisible(r0)
            r0 = 2131689620(0x7f0f0094, float:1.900826E38)
            android.view.MenuItem r8 = r8.findItem(r0)
            r8.setVisible(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.monetization.sticker.StickerBaseDetailFragment.onPrepareOptionsMenu(android.view.Menu):void");
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.string.add_sticker /* 2131689600 */:
                StickerHelper stickerHelper = new StickerHelper(this);
                Sticker sticker = this.sticker;
                if (sticker != null) {
                    stickerHelper.saveAsFavorite(sticker);
                }
                return true;
            case R.string.advanced /* 2131689620 */:
                new AdvancedOptionDialog.Builder(this).nvObject(attachObject()).build().show();
                return true;
            case R.string.delete /* 2131690312 */:
                onDeleteOpClicked();
                return true;
            case R.string.flag_for_review /* 2131691221 */:
                new FlagReportOptionDialog.Builder(this).nvObject(attachObject()).build().show();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    protected boolean isDeleteOpVisible() {
        return isMyOwned();
    }

    private void getStickerCollectionInfo(String str) {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("sticker-collection/" + str).param("includeStickers", true).build(), new ApiResponseListener<StickerCollectionResponse>(StickerCollectionResponse.class) { // from class: com.narvii.monetization.sticker.StickerBaseDetailFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StickerCollectionResponse stickerCollectionResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) stickerCollectionResponse);
                StickerBaseDetailFragment.this.setStickerCollection(stickerCollectionResponse.stickerCollection);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStickerCollection(final StickerCollection stickerCollection) {
        this.stickerCollection = stickerCollection;
        invalidateOptionsMenu();
        boolean z = stickerCollection != null && stickerCollection.isUserCreated() && (this.stickerHelper.isCreatedByMe(stickerCollection) || stickerCollection.isShared());
        if (stickerCollection != null && ((stickerCollection.isLocalMood() || stickerCollection.isNormal() || z) && stickerCollection.isAccessibleByUser(null))) {
            this.collectionLayout.setVisibility(getBooleanParam("hideCollectionInfo") ? 8 : 0);
            this.collectionLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.StickerBaseDetailFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    StickerBaseDetailFragment stickerBaseDetailFragment = StickerBaseDetailFragment.this;
                    stickerBaseDetailFragment.stickerHelper.onClickStickerCollection(stickerCollection, "Message Detail Page", stickerBaseDetailFragment.isFromComment());
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

    private boolean isLocalMood() {
        Sticker sticker = this.sticker;
        return sticker != null && sticker.icon.startsWith("ndcsticker://e/");
    }
}
