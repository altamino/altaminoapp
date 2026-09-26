package com.narvii.item.post;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.firebase.sessions.settings.c;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.catalog.category.CategoryPickerFragment;
import com.narvii.catalog.picker.CatalogPickerFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.BackgroundPostHelper;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.item.picker.ItemSortFragment;
import com.narvii.item.property.ItemPropertyEditList;
import com.narvii.item.property.ItemPropertyEditPanel;
import com.narvii.item.property.ItemPropertyEditPanelFragment;
import com.narvii.location.GPSCoordinate;
import com.narvii.media.MediaOrganizeFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ItemResponse;
import com.narvii.notification.Notification;
import com.narvii.post.BackgroundPostActivity;
import com.narvii.post.BasePostActivity;
import com.narvii.post.DraftPostActivity;
import com.narvii.post.LocationPickerFragment;
import com.narvii.post.PostHelper;
import com.narvii.post.PostOptionsFragment;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.text.IMGUtils;
import com.narvii.widget.AddressView;
import com.narvii.widget.CardView;
import com.narvii.widget.EditTextIMG;
import com.narvii.widget.TagEditText;
import com.narvii.widget.ThumbImageView;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class ItemPostActivity extends BackgroundPostActivity<ItemPost> implements View.OnClickListener, LocationPickerFragment.LocationListener {
    static final int ADVANCED_OPTIONS = 20;
    public static final int IMAGE_AVATAR = 2;
    public static final int IMAGE_GALLEY = 3;
    static final int INSERT_IMG = 28;
    static final int MAX_MEDIA = 50;
    static final int PICK_BACKGROUND_COLOR = 21;
    static final int PICK_CATEGORIES = 8;
    static final int PICK_ITEM_REQUEST = 5;
    static final int SORT_ITEM_REQUEST = 6;
    static final int SORT_PHOTO_REQUEST = 3;
    EditTextIMG editContent;
    View influencerPostContainer;
    LocationPickerFragment locationPickerFragment;
    View rootView;
    boolean stat_about;
    boolean stat_about_success;
    boolean stat_add_category;
    boolean stat_add_category_success;
    boolean stat_keyword;
    boolean stat_keyword_success;
    boolean stat_link_favorite;
    boolean stat_link_favorite_success;
    boolean stat_remove_location;
    boolean stat_remove_location_success;
    boolean stat_user_galery;
    boolean stat_user_galery_suceess;
    boolean stat_user_photo;
    boolean stat_user_photo_success;

    private class ImgCallback extends BasePostActivity.BaseImgCallback {
        public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        public ImgCallback() {
            super(ItemPostActivity.this.editContent);
        }

        @Override // com.narvii.post.BasePostActivity.BaseImgCallback, android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            menu.add(0, R.id.post_insert_image_id, 0, ItemPostActivity.this.getString(R.string.post_insert_image)).setIcon(new ActionBarIcon(this.editText.getContext(), R.string.ion_images)).setShowAsAction(2);
            return super.onCreateActionMode(actionMode, menu);
        }

        @Override // com.narvii.post.BasePostActivity.BaseImgCallback, android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            if (menuItem.getItemId() == R.id.post_insert_image_id) {
                if (IMGUtils.isSelectionInTag(ItemPostActivity.this.editContent)) {
                    NVToast.makeText(ItemPostActivity.this.getContext(), R.string.post_cannot_insert_image_here, 0).show();
                    return true;
                }
                List<Media> list = ItemPostActivity.this.savePost().mediaList;
                Intent intent = FragmentWrapperActivity.intent(MediaOrganizeFragment.class);
                intent.setAction("android.intent.action.PICK");
                intent.putExtra("mediaList", JacksonUtils.writeAsString(list));
                intent.putExtra("dir", ((DraftPostActivity) ItemPostActivity.this).draftManager.getDir(((DraftPostActivity) ItemPostActivity.this).draftId).getAbsolutePath());
                intent.putExtra("maximum", 50);
                intent.putExtra("existsRefIds", JacksonUtils.writeAsString(IMGUtils.extractRefIds(ItemPostActivity.this.editContent.getText().toString())));
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(ItemPostActivity.this, intent, 28);
                return true;
            }
            return super.onActionItemClicked(actionMode, menuItem);
        }
    }

    public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.post.DraftPostActivity
    public String draftType() {
        return "item";
    }

    @Override // com.narvii.post.DraftPostActivity
    protected View getInfluencerLockLayout() {
        return this.influencerPostContainer;
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<ItemPost> postClazz() {
        return ItemPost.class;
    }

    @Override // com.narvii.post.BasePostActivity
    protected boolean supportPreview() {
        return true;
    }

    @Override // com.narvii.post.DraftPostActivity
    public ObjectNode buildDraftParams() {
        String stringParam = getStringParam("itemId");
        if (stringParam == null) {
            return null;
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("itemId", stringParam);
        objectNodeCreateObjectNode.put("fork", getBooleanParam("fork"));
        return objectNodeCreateObjectNode;
    }

    @Override // com.narvii.post.BasePostActivity
    protected void checkEligible() {
        checkEligible("item", null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(ItemPost itemPost) {
        String strItemId = itemId();
        boolean zIsFork = isFork();
        String str = "/item";
        if (strItemId != null) {
            str = "/item" + c.FORWARD_SLASH_STRING + strItemId;
            if (zIsFork) {
                str = str + "/fork";
            }
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().post().path(str).build();
        BackgroundPostHelper backgroundPostHelper = new BackgroundPostHelper(this);
        backgroundPostHelper.setPostListener(this);
        backgroundPostHelper.startPost(itemPost, apiRequestBuild, ItemResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPreview(ItemPost itemPost) {
        Intent intent = FeedDetailFragment.intent(itemPost.getPreviewItem((Item) JacksonUtils.readAs(getStringParam("feed"), Item.class), this, itemId()));
        intent.putExtra("taggedObjects", JacksonUtils.writeAsString(itemPost.itemList));
        intent.putExtra("preview", true);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Preview");
        safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
    }

    public boolean isBackgroundColorSet() {
        return ((ItemPost) this.post).getBackgroundColor() != 0;
    }

    public boolean isFork() {
        return JacksonUtils.nodeBoolean(this.params, "fork");
    }

    public String itemId() {
        return JacksonUtils.nodeString(this.params, "itemId");
    }

    @Override // com.narvii.post.BackgroundPostActivity
    protected void onPickOtherMediaResult(List<Media> list, Bundle bundle) {
        int i10 = bundle.getInt("type");
        if (i10 == 2) {
            ((ItemPost) this.post).icon = list.size() == 0 ? null : list.get(0).url;
            this.stat_user_photo_success = list.size() > 0;
        } else {
            if (i10 != 3) {
                return;
            }
            T t5 = this.post;
            ((ItemPost) t5).mediaList = list;
            trimMediaList(((ItemPost) t5).mediaList, 50, R.string.post_pick_medias_exceed_limit);
            this.stat_user_galery_suceess = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity
    public void onPostLoaded(ItemPost itemPost) {
        super.onPostLoaded(itemPost);
        if (isEdit() && isFork()) {
            setTitle(getString(R.string.create_my_own_version));
        } else if (isEdit()) {
            setTitle(R.string.edit);
        } else {
            setTitle(R.string.post_item_title);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public ItemPost savePost() {
        View view = this.rootView;
        TextView textView = (TextView) view.findViewById(R.id.post_item_header).findViewById(R.id.label);
        ((ItemPost) this.post).label = textView.getText().toString();
        String keywords = ((TagEditText) view.findViewById(R.id.post_item_keywords)).getKeywords();
        if (!Utils.isStringEquals(keywords, ((ItemPost) this.post).keywords)) {
            this.stat_keyword = true;
            this.stat_keyword_success = true;
        }
        ((ItemPost) this.post).keywords = keywords;
        JsonNode jsonNode = ((ItemPropertyEditList) view.findViewById(R.id.post_item_property_list)).get();
        if (jsonNode == null) {
            T t5 = this.post;
            if (((ItemPost) t5).extensions != null) {
                ((ItemPost) t5).extensions.remove("props");
            }
        } else {
            T t10 = this.post;
            if (((ItemPost) t10).extensions == null) {
                ((ItemPost) t10).extensions = JacksonUtils.createObjectNode();
            }
            ((ItemPost) this.post).extensions.put("props", jsonNode);
        }
        String string = ((TextView) view.findViewById(R.id.content)).getText().toString();
        if (!Utils.isStringEquals(string, ((ItemPost) this.post).content)) {
            this.stat_about = true;
            this.stat_about_success = true;
        }
        ((ItemPost) this.post).content = string;
        AddressView addressView = (AddressView) view.findViewById(R.id.post_edit_location).findViewById(R.id.address);
        ((ItemPost) this.post).address = addressView.getAddress();
        addressView.setVisibility(8);
        return (ItemPost) this.post;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public boolean validateUpload(ItemPost itemPost) {
        View view = this.rootView;
        if (!validateEditTextNotEmpty((EditText) view.findViewById(R.id.post_item_header).findViewById(R.id.label), R.string.post_error_no_title)) {
            return false;
        }
        if (itemPost.icon == null) {
            showAlert(R.string.post_error_no_profile_photo);
            return false;
        }
        if (!validateMediaListMax(itemPost.mediaList, 50, R.string.post_error_media_max_n) || !((ItemPropertyEditList) view.findViewById(R.id.post_item_property_list)).validate()) {
            return false;
        }
        if (!IMGUtils.filterRefIds(this.editContent.getText(), itemPost.mediaList)) {
            return true;
        }
        savePost();
        return true;
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        if (itemId() != null) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        ArrayList listAs;
        super.onActivityResult(i10, i11, intent);
        if (i10 == 3 && i11 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class)) != null) {
            ItemPost itemPostSavePost = savePost();
            itemPostSavePost.mediaList = listAs;
            this.post = itemPostSavePost;
            updateView(itemPostSavePost);
        }
        if ((i10 == 5 || i10 == 6) && i11 == -1 && intent != null) {
            ArrayList listAs2 = JacksonUtils.readListAs(intent.getStringExtra("itemList"), Item.class);
            if (listAs2 != null) {
                Utils.removeId(listAs2, itemId());
                ItemPost itemPostSavePost2 = savePost();
                itemPostSavePost2.itemList = listAs2;
                this.post = itemPostSavePost2;
                updateView(itemPostSavePost2);
            }
            this.stat_link_favorite_success = true;
        }
        if (i10 == 20 && i11 == -1 && intent != null) {
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode(intent.getStringExtra("extensions"));
            ItemPost itemPostSavePost3 = savePost();
            itemPostSavePost3.extensions = objectNodeCreateObjectNode;
            this.post = itemPostSavePost3;
            updateView(itemPostSavePost3);
        }
        if (i10 == 28 && i11 == -1 && intent != null) {
            String stringExtra = intent.getStringExtra("refIdList");
            ArrayList listAs3 = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class);
            if (!TextUtils.isEmpty(stringExtra) && listAs3 != null) {
                ItemPost itemPostSavePost4 = savePost();
                itemPostSavePost4.mediaList = listAs3;
                this.post = itemPostSavePost4;
                updateView(itemPostSavePost4);
                IMGUtils.insertEditText(this.editContent, stringExtra);
            }
        }
        if (i10 == 8 && i11 == -1 && intent != null) {
            ArrayList listAs4 = JacksonUtils.readListAs(intent.getStringExtra("categoryList"), ItemCategory.class);
            ItemPost itemPostSavePost5 = savePost();
            itemPostSavePost5.itemCategoryList = listAs4;
            this.post = itemPostSavePost5;
            updateView(itemPostSavePost5);
            this.stat_add_category_success = true;
        }
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (((ItemPropertyEditPanel) findViewById(R.id.post_item_property_panel)).onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int size;
        ItemPost itemPostSavePost = savePost();
        switch (view.getId()) {
            case R.id.item_card_preview /* 2131363675 */:
                Bundle bundle = new Bundle();
                bundle.putInt("type", 2);
                this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), bundle, 70, 0);
                this.stat_user_photo = true;
                break;
            case R.id.item_card_preview_empty /* 2131363676 */:
                Bundle bundle2 = new Bundle();
                bundle2.putInt("type", 2);
                this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), bundle2, 6, 0);
                this.stat_user_photo = true;
                break;
            case R.id.post_add_link /* 2131364650 */:
                Intent intent = FragmentWrapperActivity.intent(CatalogPickerFragment.class);
                intent.putExtra("mine", true);
                intent.putExtra("itemList", JacksonUtils.writeAsString(itemPostSavePost.itemList));
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent, 5);
                this.stat_link_favorite = true;
                break;
            case R.id.post_add_location /* 2131364651 */:
            case R.id.post_edit_location /* 2131364662 */:
                this.locationPickerFragment.pickLocation(itemPostSavePost.latitude, itemPostSavePost.longitude, true);
                break;
            case R.id.post_add_photo /* 2131364652 */:
                List<Media> list = itemPostSavePost.mediaList;
                if (list != null && list.size() >= 50) {
                    NVToast.makeText(this, getString(R.string.post_pick_medias_exceed_limit), 0).show();
                } else {
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt("type", 3);
                    MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
                    File dir = this.draftManager.getDir(this.draftId);
                    if (list == null) {
                        size = 0;
                    } else {
                        size = list.size();
                    }
                    mediaPickerFragment.pickMedia(dir, bundle3, 0, 50 - size);
                }
                this.stat_user_galery = true;
                break;
            case R.id.post_categories_op /* 2131364655 */:
                AccountService accountService = (AccountService) getService("account");
                Intent intent2 = FragmentWrapperActivity.intent(CategoryPickerFragment.class);
                intent2.putExtra("uid", accountService.getUserId());
                intent2.putExtra("multiPick", true);
                intent2.putExtra("title", getString(R.string.catalog_add_to_categories));
                if (itemPostSavePost.itemCategoryList != null) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<ItemCategory> it = itemPostSavePost.itemCategoryList.iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next().categoryId);
                    }
                    intent2.putExtra("categoryIdList", JacksonUtils.writeAsString(arrayList));
                }
                this.stat_add_category = true;
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent2, 8);
                break;
            case R.id.post_category_remove /* 2131364660 */:
                Utils.removeId(itemPostSavePost.itemCategoryList, ((ItemCategory) ((View) view.getParent()).getTag()).categoryId);
                this.post = itemPostSavePost;
                updateView(itemPostSavePost);
                break;
            case R.id.post_edit_link /* 2131364661 */:
                Intent intent3 = FragmentWrapperActivity.intent(ItemSortFragment.class);
                intent3.putExtra("itemList", JacksonUtils.writeAsString(itemPostSavePost.itemList));
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent3, 6);
                break;
            case R.id.post_edit_photo /* 2131364663 */:
                List<Media> list2 = itemPostSavePost.mediaList;
                if (list2.size() != 0) {
                    Intent intent4 = FragmentWrapperActivity.intent(MediaOrganizeFragment.class);
                    intent4.putExtra("mediaList", JacksonUtils.writeAsString(list2));
                    intent4.putExtra("dir", this.draftManager.getDir(this.draftId).getAbsolutePath());
                    intent4.putExtra("maximum", 50);
                    safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent4, 3);
                }
                break;
            case R.id.post_item_property_add /* 2131364684 */:
                ((ItemPropertyEditList) findViewById(R.id.post_item_property_list)).addNewProperty();
                break;
            case R.id.post_options /* 2131364703 */:
                Intent intent5 = FragmentWrapperActivity.intent(PostOptionsFragment.class);
                intent5.putExtra("extensions", JacksonUtils.writeAsString(itemPostSavePost.extensions));
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent5, 20);
                break;
        }
        View viewFindFocus = this.rootView.findFocus();
        if (viewFindFocus != null) {
            viewFindFocus.clearFocus();
        }
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setShouldInflateAd(true);
        setContentView(R.layout.post_item_layout);
        AndroidBug5497Workaround.assistActivity(this);
        if (bundle == null) {
            getSupportFragmentManager().q().b(R.id.frame, new ItemPropertyEditPanelFragment()).j();
        }
        LocationPickerFragment locationPickerFragment = (LocationPickerFragment) getSupportFragmentManager().m0("locationPicker");
        this.locationPickerFragment = locationPickerFragment;
        if (locationPickerFragment == null) {
            this.locationPickerFragment = new LocationPickerFragment();
            getSupportFragmentManager().q().e(this.locationPickerFragment, "locationPicker").j();
        }
        this.locationPickerFragment.listener = this;
        this.rootView = findViewById(R.id.root);
        EditTextIMG editTextIMG = (EditTextIMG) findViewById(R.id.content);
        this.editContent = editTextIMG;
        editTextIMG.imgMode = new ImgCallback();
        this.editContent.addTextChangedListener(new BasePostActivity.HideHintWatcher(findViewById(R.id.post_embed_image_hint)));
        this.influencerPostContainer = findViewById(R.id.post_fans_only);
    }

    @Override // com.narvii.post.LocationPickerFragment.LocationListener
    public void onLocatingChanged(boolean z6) {
        updateView(savePost());
    }

    @Override // com.narvii.post.LocationPickerFragment.LocationListener
    public void onLocationResult(GPSCoordinate gPSCoordinate) {
        ItemPost itemPostSavePost = savePost();
        if (gPSCoordinate != null) {
            itemPostSavePost.latitude = gPSCoordinate.latitudeE6();
            itemPostSavePost.longitude = gPSCoordinate.longitudeE6();
            itemPostSavePost.address = null;
            this.stat_remove_location = false;
            this.stat_remove_location_success = false;
        } else {
            itemPostSavePost.latitude = 0;
            itemPostSavePost.longitude = 0;
            itemPostSavePost.address = null;
            this.stat_remove_location = true;
            this.stat_remove_location_success = true;
        }
        this.post = itemPostSavePost;
        updateView(itemPostSavePost);
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        boolean z6;
        super.onPostFinished(postHelper, apiResponse);
        Item itemObject = ((ItemResponse) apiResponse).object();
        ItemCategory itemCategory = new ItemCategory();
        User user = new User();
        itemCategory.author = user;
        user.uid = itemObject.uid();
        sendNotification(new Notification("update", itemCategory));
        if (!isEdit() && !getBooleanParam("disableOpenCallback")) {
            Intent intent = FeedDetailFragment.intent(itemObject);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "View Created Post");
            intent.putExtra("justCreated", true);
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
        }
        boolean zIsEdit = isEdit();
        StatisticsService statisticsService = (StatisticsService) getService("statistics");
        if (zIsEdit) {
            str = EventConstants.CreatePost.USER_EDITS_A_POST;
        } else {
            str = EventConstants.CreatePost.CREATE_POST;
        }
        StatisticsEventBuilder statisticsEventBuilderEvent = statisticsService.event(str);
        if (zIsEdit) {
            str2 = EventConstants.CreatePost.TOTAL_EDITED_POSTS;
        } else {
            str2 = EventConstants.CreatePost.TOTAL_NEW_POSTS;
        }
        StatisticsEventBuilder statisticsEventBuilderParam = statisticsEventBuilderEvent.userPropInc(str2).param(EventConstants.PostType.POST_TYPE, EventConstants.PostType.WIKI);
        String str9 = null;
        if (this.stat_link_favorite) {
            str3 = EventConstants.CreatePost.LINK_RELATED_FAVORITES;
        } else {
            str3 = null;
        }
        StatisticsEventBuilder statisticsEventBuilderParam2 = statisticsEventBuilderParam.param(str3, this.stat_link_favorite_success);
        if (this.stat_about) {
            str4 = EventConstants.CreatePost.FILL_IN_ABOUT;
        } else {
            str4 = null;
        }
        StatisticsEventBuilder statisticsEventBuilderParam3 = statisticsEventBuilderParam2.param(str4, this.stat_about_success);
        if (this.stat_keyword) {
            str5 = EventConstants.CreatePost.ADD_KEYWORDS;
        } else {
            str5 = null;
        }
        StatisticsEventBuilder statisticsEventBuilderParam4 = statisticsEventBuilderParam3.param(str5, this.stat_keyword_success);
        if (this.stat_user_galery) {
            str6 = EventConstants.CreatePost.ADD_GALLERY_PHOTOS;
        } else {
            str6 = null;
        }
        StatisticsEventBuilder statisticsEventBuilderParam5 = statisticsEventBuilderParam4.param(str6, this.stat_user_galery_suceess);
        if (this.stat_user_photo) {
            str7 = EventConstants.CreatePost.ADD_PROFILE_PHOTO;
        } else {
            str7 = null;
        }
        StatisticsEventBuilder statisticsEventBuilderParam6 = statisticsEventBuilderParam5.param(str7, this.stat_user_photo_success);
        if (this.stat_remove_location) {
            str8 = EventConstants.CreatePost.REMOVE_LOCATION;
        } else {
            str8 = null;
        }
        StatisticsEventBuilder statisticsEventBuilderParam7 = statisticsEventBuilderParam6.param(str8, this.stat_remove_location_success);
        if (this.stat_add_category) {
            str9 = EventConstants.CreatePost.ADD_CATEGORY;
        }
        StatisticsEventBuilder statisticsEventBuilderParam8 = statisticsEventBuilderParam7.param(str9, this.stat_add_category_success);
        boolean z10 = false;
        if (itemObject.getBackgroundColor() != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        StatisticsEventBuilder statisticsEventBuilderParam9 = statisticsEventBuilderParam8.param(EventConstants.CreatePost.BACKGROUND_COLOR, z6);
        if (itemObject.getBackgroundMedia() != null) {
            z10 = true;
        }
        statisticsEventBuilderParam9.param(EventConstants.CreatePost.BACKGROUND_IMAGE, z10).param(EventConstants.CreatePost.HAS_VIDEO, Media.hasVideo(itemObject.mediaList)).param(EventConstants.CreatePost.GATED, !itemObject.isContentAccessible());
        if (!zIsEdit) {
            statisticsEventBuilderEvent.source(getStringParam("source"));
            statisticsEventBuilderEvent.userPropInc("User Submits a New Favorite Total");
            FirebaseLogManager.logEvent(this, statisticsEventBuilderEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(ItemPost itemPost) {
        super.updateView(itemPost);
        View view = this.rootView;
        View viewFindViewById = view.findViewById(R.id.post_item_header);
        viewFindViewById.findViewById(R.id.item_card_preview).setOnClickListener(this);
        viewFindViewById.findViewById(R.id.item_card_preview_empty).setOnClickListener(this);
        String str = itemPost.icon;
        viewFindViewById.findViewById(R.id.item_card_preview_empty).setVisibility(str == null ? 0 : 8);
        viewFindViewById.findViewById(R.id.item_card_preview).setVisibility(str == null ? 8 : 0);
        ((ThumbImageView) viewFindViewById.findViewById(R.id.item_card_image)).setImageUrl(str);
        ((TextView) viewFindViewById.findViewWithTag(getString(R.string.title_tag))).setText(getString(str == null ? R.string.post_add : R.string.post_edit));
        TextView textView = (TextView) viewFindViewById.findViewById(R.id.label);
        if (!Utils.isEquals(itemPost.label, textView.getText().toString())) {
            textView.setText(itemPost.label);
        }
        List<Media> list = itemPost.mediaList;
        View viewFindViewById2 = view.findViewById(R.id.post_add_photo);
        viewFindViewById2.setOnClickListener(this);
        viewFindViewById2.setVisibility((list == null || list.size() == 0) ? 0 : 8);
        View viewFindViewById3 = view.findViewById(R.id.post_edit_photo);
        viewFindViewById3.setOnClickListener(this);
        viewFindViewById3.setVisibility((list == null || list.size() <= 0) ? 8 : 0);
        TextView textView2 = (TextView) viewFindViewById3.findViewWithTag(getString(R.string.hint_tag));
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(list == null ? 0 : list.size());
        textView2.setText(getString(R.string.post_gallery_n, objArr));
        ViewGroup viewGroup = (ViewGroup) viewFindViewById3;
        int i10 = 0;
        for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if (getString(R.string.image_tag).equals(childAt.getTag())) {
                ThumbImageView thumbImageView = (ThumbImageView) childAt;
                Media media = (list != null && i10 < list.size()) ? list.get(i10) : null;
                i10++;
                thumbImageView.setImageMedia(media);
                thumbImageView.setVisibility(media == null ? 4 : 0);
            }
        }
        if (isEdit()) {
            view.findViewById(R.id.post_categories_header).setVisibility(8);
            view.findViewById(R.id.post_categories).setVisibility(8);
        } else {
            view.findViewById(R.id.post_categories_header).setVisibility(0);
            ViewGroup viewGroup2 = (ViewGroup) view.findViewById(R.id.post_categories);
            viewGroup2.setVisibility(0);
            TextView textView3 = (TextView) viewGroup2.findViewById(R.id.post_categories_op);
            List<ItemCategory> list2 = itemPost.itemCategoryList;
            textView3.setText((list2 == null || list2.size() <= 0) ? R.string.add_it_to : R.string.edit_categories);
            textView3.setOnClickListener(this);
            int childCount = viewGroup2.getChildCount();
            List<ItemCategory> list3 = itemPost.itemCategoryList;
            int size = list3 == null ? 0 : list3.size();
            LayoutInflater layoutInflater = getLayoutInflater();
            int i12 = 0;
            while (i12 < size) {
                ItemCategory itemCategory = itemPost.itemCategoryList.get(i12);
                View childAt2 = i12 < childCount + (-1) ? viewGroup2.getChildAt(i12) : null;
                if (childAt2 == null) {
                    childAt2 = layoutInflater.inflate(R.layout.post_item_category_item, viewGroup2, false);
                    childAt2.findViewById(R.id.post_category_remove).setOnClickListener(this);
                    viewGroup2.addView(childAt2, viewGroup2.getChildCount() - 1);
                }
                ((TextView) childAt2.findViewById(R.id.post_category_label)).setText(itemCategory.label);
                childAt2.setTag(itemCategory);
                i12++;
            }
            while (viewGroup2.getChildCount() - 1 > size) {
                viewGroup2.removeViewAt(size);
            }
        }
        ((TagEditText) view.findViewById(R.id.post_item_keywords)).setKeywords(itemPost.keywords);
        ((ItemPropertyEditList) view.findViewById(R.id.post_item_property_list)).set(JacksonUtils.nodePath(itemPost.extensions, "props"));
        view.findViewById(R.id.post_item_property_add).setOnClickListener(this);
        TextView textView4 = (TextView) view.findViewById(R.id.content);
        if (!Utils.isEquals(itemPost.content, textView4.getText().toString())) {
            textView4.setText(itemPost.content);
        }
        this.locationPickerFragment.isLocating();
        if (itemPost.latitude == 0) {
            int i13 = itemPost.longitude;
        }
        View viewFindViewById4 = view.findViewById(R.id.post_add_location);
        viewFindViewById4.setOnClickListener(this);
        viewFindViewById4.setVisibility(8);
        view.findViewById(R.id.post_locating).setVisibility(8);
        View viewFindViewById5 = view.findViewById(R.id.post_edit_location);
        viewFindViewById5.setOnClickListener(this);
        viewFindViewById5.setVisibility(8);
        AddressView addressView = (AddressView) viewFindViewById5.findViewById(R.id.address);
        addressView.setLatLngE6(itemPost.latitude, itemPost.longitude, itemPost.address, false);
        addressView.setVisibility(8);
        List<Item> list4 = itemPost.itemList;
        int size2 = list4 == null ? 0 : list4.size();
        View viewFindViewById6 = view.findViewById(R.id.post_add_link);
        viewFindViewById6.setOnClickListener(this);
        viewFindViewById6.setVisibility(size2 == 0 ? 0 : 8);
        View viewFindViewById7 = view.findViewById(R.id.post_edit_link);
        viewFindViewById7.setOnClickListener(this);
        viewFindViewById7.setVisibility(size2 != 0 ? 0 : 8);
        ((TextView) viewFindViewById7.findViewWithTag(getString(R.string.hint_tag))).setText(getString(R.string.post_link_n, Integer.valueOf(size2)));
        ViewGroup viewGroup3 = (ViewGroup) viewFindViewById7;
        int i14 = 0;
        for (int i15 = 0; i15 < viewGroup3.getChildCount(); i15++) {
            View childAt3 = viewGroup3.getChildAt(i15);
            if ("link".equals(childAt3.getTag())) {
                CardView cardView = (CardView) childAt3;
                Item item = i14 < size2 ? itemPost.itemList.get(i14) : null;
                cardView.setItem(item);
                cardView.setVisibility(item == null ? 4 : 0);
                i14++;
            }
        }
        view.findViewById(R.id.post_options).setOnClickListener(this);
    }
}
