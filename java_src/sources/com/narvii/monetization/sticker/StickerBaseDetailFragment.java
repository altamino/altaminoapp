package com.narvii.monetization.sticker;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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

/* JADX INFO: loaded from: classes9.dex */
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

    private void getStickerCollectionInfo(String str) {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("sticker-collection/" + str).param("includeStickers", Boolean.TRUE).build(), new ApiResponseListener<StickerCollectionResponse>(StickerCollectionResponse.class) { // from class: com.narvii.monetization.sticker.StickerBaseDetailFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StickerCollectionResponse stickerCollectionResponse) throws Exception {
                super.onFinish(apiRequest, stickerCollectionResponse);
                StickerBaseDetailFragment.this.setStickerCollection(stickerCollectionResponse.stickerCollection);
            }
        });
    }

    private boolean isLocalMood() {
        Sticker sticker = this.sticker;
        return sticker != null && sticker.icon.startsWith("ndcsticker://e/");
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
    }

    protected boolean isDeleteOpVisible() {
        return isMyOwned();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.stickerHelper = new StickerHelper(this);
        this.sticker = (Sticker) JacksonUtils.readAs(getStringParam("sticker"), Sticker.class);
        setTitle((CharSequence) null);
        setHasOptionsMenu(true);
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
                StickerHelper stickerHelper = new StickerHelper(this);
                Sticker sticker = this.sticker;
                if (sticker != null) {
                    stickerHelper.saveAsFavorite(sticker);
                }
                return true;
            case R.string.advanced /* 2131886237 */:
                new AdvancedOptionDialog.Builder(this).nvObject(attachObject()).build().show();
                return true;
            case R.string.delete /* 2131887008 */:
                onDeleteOpClicked();
                return true;
            case R.string.flag_for_review /* 2131888001 */:
                new FlagReportOptionDialog.Builder(this).nvObject(attachObject()).build().show();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0031  */
    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        StickerCollection stickerCollection;
        boolean z6;
        boolean z10;
        boolean z11;
        StickerCollection stickerCollection2;
        StickerCollection stickerCollection3;
        super.onPrepareOptionsMenu(menu);
        StickerCollection stickerCollection4 = this.stickerCollection;
        boolean z12 = false;
        if ((stickerCollection4 != null && stickerCollection4.canBeFlagged()) || ((stickerCollection = this.summary) != null && stickerCollection.canBeFlagged())) {
            z6 = true;
        } else {
            z6 = false;
        }
        AccountService accountService = (AccountService) getService("account");
        if (z6) {
            accountService.getUserId();
            if (!isMyOwned()) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        AccountService accountService2 = (AccountService) getService("account");
        if (accountService2.getUserProfile() != null && accountService2.getUserProfile().isCurator()) {
            z11 = true;
        } else {
            z11 = false;
        }
        Sticker sticker = this.sticker;
        if (sticker == null || (!sticker.isLocalMood() && this.sticker.isAccessibleByUser(null) && (((stickerCollection2 = this.stickerCollection) != null && stickerCollection2.isAccessibleByUser(null) && this.stickerHelper.isStickerCollectionValid(this.stickerCollection)) || ((stickerCollection3 = this.summary) != null && stickerCollection3.isAccessibleByUser(null) && this.stickerHelper.isStickerCollectionValid(this.summary))))) {
            z12 = true;
        }
        menu.findItem(R.string.add_sticker).setVisible(z12);
        menu.findItem(R.string.delete).setVisible(isDeleteOpVisible());
        menu.findItem(R.string.flag_for_review).setVisible(z10);
        menu.findItem(R.string.advanced).setVisible(z11);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        String str;
        String str2;
        super.onViewCreated(view, bundle);
        this.chatStickerView = (ChatStickerView) view.findViewById(R.id.chat_sticker);
        this.moodStickerView = (EmojioneView) view.findViewById(R.id.mood_sticker);
        this.subTitle = (TextView) view.findViewById(R.id.subtitle);
        this.aminoPlus = view.findViewById(R.id.amino_plus_badge);
        this.name = (TextView) view.findViewById(R.id.name);
        this.collectionIcon = (StickerImageView) view.findViewById(R.id.collection_icon);
        View viewFindViewById = view.findViewById(R.id.collection_layout);
        this.collectionLayout = viewFindViewById;
        StoreItemStatusView storeItemStatusView = (StoreItemStatusView) viewFindViewById.findViewById(R.id.store_item_status_view);
        this.storeItemStatusView = storeItemStatusView;
        this.stickerCollectionOwnStatusController = new StickerCollectionOwnStatusController(this, storeItemStatusView, false, ignoreGlobalScope()) { // from class: com.narvii.monetization.sticker.StickerBaseDetailFragment.1
            @Override // com.narvii.monetization.StickerCollectionOwnStatusController, com.narvii.monetization.StoreItemOwnStatusController
            protected void useItem() {
                StickerBaseDetailFragment.this.useSticker();
            }
        };
        Sticker sticker = this.sticker;
        if (sticker != null) {
            this.name.setText(sticker.name);
        }
        int i10 = 0;
        if (isLocalMood()) {
            setStickerCollection(new MoodStickerCollection(getContext()));
            this.chatStickerView.setVisibility(8);
            this.moodStickerView.setVisibility(0);
            this.moodStickerView.setEmoji(new String(StringUtils.hex2bytes(this.sticker.icon.substring(15))));
            return;
        }
        Sticker sticker2 = this.sticker;
        String str3 = null;
        if (sticker2 != null) {
            str = sticker2.stickerCollectionId;
        } else {
            str = null;
        }
        ChatStickerView chatStickerView = this.chatStickerView;
        if (sticker2 != null) {
            str3 = sticker2.icon;
        }
        chatStickerView.setStickerImage(str3, str, 0);
        ChatStickerView chatStickerView2 = this.chatStickerView;
        if (this.sticker == null) {
            i10 = 8;
        }
        chatStickerView2.setVisibility(i10);
        this.moodStickerView.setVisibility(8);
        Sticker sticker3 = this.sticker;
        if (sticker3 != null && (str2 = sticker3.stickerCollectionId) != null) {
            getStickerCollectionInfo(str2);
        }
    }
}
