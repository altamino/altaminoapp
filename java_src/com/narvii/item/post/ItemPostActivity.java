package com.narvii.item.post;

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
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.catalog.category.CategoryPickerFragment;
import com.narvii.catalog.picker.CatalogPickerFragment;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.BackgroundPostHelper;
import com.narvii.item.picker.ItemSortFragment;
import com.narvii.item.property.ItemPropertyEditList;
import com.narvii.item.property.ItemPropertyEditPanel;
import com.narvii.item.property.ItemPropertyEditPanelFragment;
import com.narvii.location.GPSCoordinate;
import com.narvii.media.MediaOrganizeFragment;
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
import com.narvii.util.text.IMGUtils;
import com.narvii.widget.AddressView;
import com.narvii.widget.CardView;
import com.narvii.widget.EditTextIMG;
import com.narvii.widget.TagEditText;
import com.narvii.widget.ThumbImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
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

    @Override // com.narvii.post.DraftPostActivity
    public String draftType() {
        return "item";
    }

    @Override // com.narvii.post.BasePostActivity
    protected boolean supportPreview() {
        return true;
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<ItemPost> postClazz() {
        return ItemPost.class;
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

    public String itemId() {
        return JacksonUtils.nodeString(this.params, "itemId");
    }

    public boolean isFork() {
        return JacksonUtils.nodeBoolean(this.params, "fork");
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return itemId() != null;
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.post_item_layout);
        AndroidBug5497Workaround.assistActivity(this);
        if (bundle == null) {
            getSupportFragmentManager().beginTransaction().add(R.id.frame, new ItemPropertyEditPanelFragment()).commit();
        }
        this.locationPickerFragment = (LocationPickerFragment) getSupportFragmentManager().findFragmentByTag("locationPicker");
        if (this.locationPickerFragment == null) {
            this.locationPickerFragment = new LocationPickerFragment();
            getSupportFragmentManager().beginTransaction().add(this.locationPickerFragment, "locationPicker").commit();
        }
        this.locationPickerFragment.listener = this;
        this.rootView = findViewById(R.id.root);
        this.editContent = (EditTextIMG) findViewById(R.id.content);
        this.editContent.imgMode = new ImgCallback();
        this.editContent.addTextChangedListener(new BasePostActivity.HideHintWatcher(findViewById(R.id.post_embed_image_hint)));
        this.influencerPostContainer = findViewById(R.id.post_fans_only);
    }

    @Override // com.narvii.post.BasePostActivity
    protected void checkEligible() {
        checkEligible("item", null);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (((ItemPropertyEditPanel) findViewById(R.id.post_item_property_panel)).onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity
    public void onPostLoaded(ItemPost itemPost) {
        super.onPostLoaded((ItemPostActivity) itemPost);
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
    public void doPreview(ItemPost itemPost) {
        Intent intent = FeedDetailFragment.intent(itemPost.getPreviewItem((Item) JacksonUtils.readAs(getStringParam(CommentListFragment.COMMENT_KEY_FEED), Item.class), this, itemId()));
        intent.putExtra("taggedObjects", JacksonUtils.writeAsString(itemPost.itemList));
        intent.putExtra("preview", true);
        intent.putExtra("Source", "Preview");
        startActivity(intent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ItemPost itemPostSavePost = savePost();
        switch (view.getId()) {
            case R.id.item_card_preview /* 2131297755 */:
                Bundle bundle = new Bundle();
                bundle.putInt("type", 2);
                this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), bundle, 70, 0);
                this.stat_user_photo = true;
                break;
            case R.id.item_card_preview_empty /* 2131297756 */:
                Bundle bundle2 = new Bundle();
                bundle2.putInt("type", 2);
                this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), bundle2, 6, 0);
                this.stat_user_photo = true;
                break;
            case R.id.post_add_link /* 2131298414 */:
                Intent intent = FragmentWrapperActivity.intent(CatalogPickerFragment.class);
                intent.putExtra("mine", true);
                intent.putExtra("itemList", JacksonUtils.writeAsString(itemPostSavePost.itemList));
                startActivityForResult(intent, 5);
                this.stat_link_favorite = true;
                break;
            case R.id.post_add_location /* 2131298415 */:
            case R.id.post_edit_location /* 2131298426 */:
                this.locationPickerFragment.pickLocation(itemPostSavePost.latitude, itemPostSavePost.longitude, true);
                break;
            case R.id.post_add_photo /* 2131298416 */:
                List<Media> list = itemPostSavePost.mediaList;
                if (list != null && list.size() >= 50) {
                    NVToast.makeText(this, getString(R.string.post_pick_medias_exceed_limit), 0).show();
                } else {
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt("type", 3);
                    this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), bundle3, 0, 50 - (list == null ? 0 : list.size()));
                }
                this.stat_user_galery = true;
                break;
            case R.id.post_categories_op /* 2131298419 */:
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
                startActivityForResult(intent2, 8);
                break;
            case R.id.post_category_remove /* 2131298424 */:
                Utils.removeId(itemPostSavePost.itemCategoryList, ((ItemCategory) ((View) view.getParent()).getTag()).categoryId);
                this.post = itemPostSavePost;
                updateView(itemPostSavePost);
                break;
            case R.id.post_edit_link /* 2131298425 */:
                Intent intent3 = FragmentWrapperActivity.intent(ItemSortFragment.class);
                intent3.putExtra("itemList", JacksonUtils.writeAsString(itemPostSavePost.itemList));
                startActivityForResult(intent3, 6);
                break;
            case R.id.post_edit_photo /* 2131298427 */:
                List<Media> list2 = itemPostSavePost.mediaList;
                if (list2.size() != 0) {
                    Intent intent4 = FragmentWrapperActivity.intent(MediaOrganizeFragment.class);
                    intent4.putExtra("mediaList", JacksonUtils.writeAsString(list2));
                    intent4.putExtra("dir", this.draftManager.getDir(this.draftId).getAbsolutePath());
                    intent4.putExtra("maximum", 50);
                    startActivityForResult(intent4, 3);
                    break;
                }
                break;
            case R.id.post_item_property_add /* 2131298447 */:
                ((ItemPropertyEditList) findViewById(R.id.post_item_property_list)).addNewProperty();
                break;
            case R.id.post_options /* 2131298466 */:
                Intent intent5 = FragmentWrapperActivity.intent(PostOptionsFragment.class);
                intent5.putExtra("extensions", JacksonUtils.writeAsString(itemPostSavePost.extensions));
                startActivityForResult(intent5, 20);
                break;
        }
        View viewFindFocus = this.rootView.findFocus();
        if (viewFindFocus != null) {
            viewFindFocus.clearFocus();
        }
    }

    @Override // com.narvii.post.BackgroundPostActivity
    protected void onPickOtherMediaResult(List<Media> list, Bundle bundle) {
        int i = bundle.getInt("type");
        if (i == 2) {
            ((ItemPost) this.post).icon = list.size() == 0 ? null : list.get(0).url;
            this.stat_user_photo_success = list.size() > 0;
        } else {
            if (i != 3) {
                return;
            }
            T t = this.post;
            ((ItemPost) t).mediaList = list;
            trimMediaList(((ItemPost) t).mediaList, 50, R.string.post_pick_medias_exceed_limit);
            this.stat_user_galery_suceess = true;
        }
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

    @Override // com.narvii.post.LocationPickerFragment.LocationListener
    public void onLocatingChanged(boolean z) {
        updateView(savePost());
    }

    public boolean isBackgroundColorSet() {
        return ((ItemPost) this.post).getBackgroundColor() != 0;
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        ArrayList listAs;
        super.onActivityResult(i, i2, intent);
        if (i == 3 && i2 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class)) != null) {
            ItemPost itemPostSavePost = savePost();
            itemPostSavePost.mediaList = listAs;
            this.post = itemPostSavePost;
            updateView(itemPostSavePost);
        }
        if ((i == 5 || i == 6) && i2 == -1 && intent != null) {
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
        if (i == 20 && i2 == -1 && intent != null) {
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode(intent.getStringExtra("extensions"));
            ItemPost itemPostSavePost3 = savePost();
            itemPostSavePost3.extensions = objectNodeCreateObjectNode;
            this.post = itemPostSavePost3;
            updateView(itemPostSavePost3);
        }
        if (i == 28 && i2 == -1 && intent != null) {
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
        if (i == 8 && i2 == -1 && intent != null) {
            ArrayList listAs4 = JacksonUtils.readListAs(intent.getStringExtra("categoryList"), ItemCategory.class);
            ItemPost itemPostSavePost5 = savePost();
            itemPostSavePost5.itemCategoryList = listAs4;
            this.post = itemPostSavePost5;
            updateView(itemPostSavePost5);
            this.stat_add_category_success = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(ItemPost itemPost) {
        super.updateView((ItemPostActivity) itemPost);
        View view = this.rootView;
        View viewFindViewById = view.findViewById(R.id.post_item_header);
        viewFindViewById.findViewById(R.id.item_card_preview).setOnClickListener(this);
        viewFindViewById.findViewById(R.id.item_card_preview_empty).setOnClickListener(this);
        String str = itemPost.icon;
        viewFindViewById.findViewById(R.id.item_card_preview_empty).setVisibility(str == null ? 0 : 8);
        viewFindViewById.findViewById(R.id.item_card_preview).setVisibility(str == null ? 8 : 0);
        ((ThumbImageView) viewFindViewById.findViewById(R.id.image)).setImageUrl(str);
        ((TextView) viewFindViewById.findViewById(R.id.title)).setText(getString(str == null ? R.string.post_add : R.string.post_edit));
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
        TextView textView2 = (TextView) viewFindViewById3.findViewById(R.id.hint);
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(list == null ? 0 : list.size());
        textView2.setText(getString(R.string.post_gallery_n, objArr));
        ViewGroup viewGroup = (ViewGroup) viewFindViewById3;
        int i = 0;
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getId() == R.id.image) {
                ThumbImageView thumbImageView = (ThumbImageView) childAt;
                Media media = (list != null && i < list.size()) ? list.get(i) : null;
                i++;
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
            int i3 = 0;
            while (i3 < size) {
                ItemCategory itemCategory = itemPost.itemCategoryList.get(i3);
                View childAt2 = i3 < childCount + (-1) ? viewGroup2.getChildAt(i3) : null;
                if (childAt2 == null) {
                    childAt2 = layoutInflater.inflate(R.layout.post_item_category_item, viewGroup2, false);
                    childAt2.findViewById(R.id.post_category_remove).setOnClickListener(this);
                    viewGroup2.addView(childAt2, viewGroup2.getChildCount() - 1);
                }
                ((TextView) childAt2.findViewById(R.id.post_category_label)).setText(itemCategory.label);
                childAt2.setTag(itemCategory);
                i3++;
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
            int i4 = itemPost.longitude;
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
        ((TextView) viewFindViewById7.findViewById(R.id.hint)).setText(getString(R.string.post_link_n, new Object[]{Integer.valueOf(size2)}));
        ViewGroup viewGroup3 = (ViewGroup) viewFindViewById7;
        int i5 = 0;
        for (int i6 = 0; i6 < viewGroup3.getChildCount(); i6++) {
            View childAt3 = viewGroup3.getChildAt(i6);
            if ("link".equals(childAt3.getTag())) {
                CardView cardView = (CardView) childAt3;
                Item item = i5 < size2 ? itemPost.itemList.get(i5) : null;
                cardView.setItem(item);
                cardView.setVisibility(item == null ? 4 : 0);
                i5++;
            }
        }
        view.findViewById(R.id.post_options).setOnClickListener(this);
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
            T t = this.post;
            if (((ItemPost) t).extensions != null) {
                ((ItemPost) t).extensions.remove("props");
            }
        } else {
            T t2 = this.post;
            if (((ItemPost) t2).extensions == null) {
                ((ItemPost) t2).extensions = JacksonUtils.createObjectNode();
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(ItemPost itemPost) {
        String strItemId = itemId();
        boolean zIsFork = isFork();
        String str = "/item";
        if (strItemId != null) {
            str = "/item/" + strItemId;
            if (zIsFork) {
                str = str + "/fork";
            }
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().post().path(str).build();
        BackgroundPostHelper backgroundPostHelper = new BackgroundPostHelper(this);
        backgroundPostHelper.setPostListener(this);
        backgroundPostHelper.startPost(itemPost, apiRequestBuild, ItemResponse.class);
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        super.onPostFinished(postHelper, apiResponse);
        Item itemObject = ((ItemResponse) apiResponse).object();
        ItemCategory itemCategory = new ItemCategory();
        itemCategory.author = new User();
        itemCategory.author.uid = itemObject.uid();
        sendNotification(new Notification("update", itemCategory));
        if (isEdit() || getBooleanParam("disableOpenCallback")) {
            return;
        }
        Intent intent = FeedDetailFragment.intent(itemObject);
        intent.putExtra("Source", "View Created Post");
        intent.putExtra("justCreated", true);
        startActivity(intent);
    }

    private class ImgCallback extends BasePostActivity.BaseImgCallback {
        public ImgCallback() {
            super(ItemPostActivity.this.editContent);
        }

        @Override // com.narvii.post.BasePostActivity.BaseImgCallback, android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            menu.add(0, R.string.post_insert_image, 0, R.string.post_insert_image).setIcon(new ActionBarIcon(this.editText.getContext(), R.string.ion_images)).setShowAsAction(2);
            return super.onCreateActionMode(actionMode, menu);
        }

        @Override // com.narvii.post.BasePostActivity.BaseImgCallback, android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            if (menuItem.getItemId() == R.string.post_insert_image) {
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
                ItemPostActivity.this.startActivityForResult(intent, 28);
                return true;
            }
            return super.onActionItemClicked(actionMode, menuItem);
        }
    }

    @Override // com.narvii.post.DraftPostActivity
    protected View getInfluencerLockLayout() {
        return this.influencerPostContainer;
    }
}
