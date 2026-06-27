package com.narvii.blog.post;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.blog.category.BlogCategoryPickerFragment;
import com.narvii.catalog.picker.CatalogPickerFragment;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.BackgroundPostHelper;
import com.narvii.item.picker.ItemSortFragment;
import com.narvii.location.GPSCoordinate;
import com.narvii.location.LocationService;
import com.narvii.location.ReadableAddress;
import com.narvii.media.MediaOrganizeFragment;
import com.narvii.model.Blog;
import com.narvii.model.BlogCategory;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.post.BackgroundPostActivity;
import com.narvii.post.BasePostActivity;
import com.narvii.post.DraftPostActivity;
import com.narvii.post.LocationPickerFragment;
import com.narvii.post.PostHelper;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.IMGUtils;
import com.narvii.widget.CardView;
import com.narvii.widget.EditTextIMG;
import com.narvii.widget.ThumbImageView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class BlogPostActivity extends BackgroundPostActivity<BlogPost> implements View.OnClickListener, LocationPickerFragment.LocationListener {
    static final int INSERT_IMG = 8;
    protected static final int MAX_MEDIA = 25;
    static final int PICK_CATEGORY_REQUEST = 1;
    static final int PICK_ITEM_REQUEST = 5;
    static final int SORT_ITEM_REQUEST = 6;
    static final int SORT_PHOTO_REQUEST = 2;
    CommunityConfigHelper communityConfigHelper;
    protected EditTextIMG editContent;
    protected EditText editTitle;
    protected View fansOnlyContainer;
    protected TextView itemCount;
    protected CardView itemPreview;
    protected LocationPickerFragment locationPickerFragment;
    protected TextView mediaCount;
    protected ThumbImageView mediaPreview;
    protected Button pickCategories;
    protected ImageView pickItem;
    protected ImageView pickLocation;
    protected View pickLocationProgress;
    protected ImageView pickMedia;
    boolean stat_add_category;
    boolean stat_add_category_success;
    boolean stat_add_photo;
    boolean stat_add_photo_success;
    boolean stat_link_favorite;
    boolean stat_link_favorite_success;
    boolean stat_remove_location;
    boolean stat_remove_location_success;

    @Override // com.narvii.post.DraftPostActivity
    public String draftType() {
        return "blog";
    }

    protected int layoutId() {
        return R.layout.post_blog_layout;
    }

    @Override // com.narvii.post.DraftPostActivity
    protected boolean shouldShowFansOnlySwitchDialog() {
        return true;
    }

    @Override // com.narvii.post.BasePostActivity
    protected boolean supportPreview() {
        return true;
    }

    @Override // com.narvii.post.DraftPostActivity
    public ObjectNode buildDraftParams() {
        String stringParam = getStringParam("blogId");
        if (stringParam == null) {
            return null;
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("blogId", stringParam);
        return objectNodeCreateObjectNode;
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<BlogPost> postClazz() {
        return BlogPost.class;
    }

    public String blogId() {
        return JacksonUtils.nodeString(this.params, "blogId");
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return blogId() != null;
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(layoutId());
        AndroidBug5497Workaround.assistActivity(this);
        this.locationPickerFragment = (LocationPickerFragment) getSupportFragmentManager().findFragmentByTag("locationPicker");
        if (this.locationPickerFragment == null) {
            this.locationPickerFragment = new LocationPickerFragment();
            getSupportFragmentManager().beginTransaction().add(this.locationPickerFragment, "locationPicker").commit();
        }
        this.locationPickerFragment.listener = this;
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.editTitle = (EditText) findViewById(R.id.title);
        this.editContent = (EditTextIMG) findViewById(R.id.content);
        this.editContent.imgMode = new ImgCallback();
        this.editContent.addTextChangedListener(new BasePostActivity.HideHintWatcher(findViewById(R.id.post_embed_image_hint)));
        this.pickMedia = (ImageView) findViewById(R.id.pick_media);
        this.pickMedia.setOnClickListener(this);
        this.mediaPreview = (ThumbImageView) findViewById(R.id.media_preview);
        this.mediaPreview.setOnClickListener(this);
        this.mediaCount = (TextView) findViewById(R.id.media_count);
        this.pickItem = (ImageView) findViewById(R.id.pick_item);
        this.pickItem.setOnClickListener(this);
        this.itemPreview = (CardView) findViewById(R.id.item_card_preview);
        this.itemPreview.setOnClickListener(this);
        this.itemCount = (TextView) findViewById(R.id.item_count);
        this.pickLocation = (ImageView) findViewById(R.id.pick_location);
        this.pickLocation.setOnClickListener(this);
        this.pickLocationProgress = findViewById(R.id.pick_locating_progress);
        this.pickCategories = (Button) findViewById(R.id.post_categories);
        this.fansOnlyContainer = findViewById(R.id.fans_only_layout);
        this.pickItem.setVisibility(this.communityConfigHelper.isCatalogEnable() ? 0 : 8);
        this.itemPreview.setVisibility(this.communityConfigHelper.isCatalogEnable() ? 0 : 8);
        this.itemCount.setVisibility(this.communityConfigHelper.isCatalogEnable() ? 0 : 8);
        findViewById(R.id.item_preview_container).setVisibility(this.communityConfigHelper.isCatalogEnable() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity
    public void onPostLoaded(BlogPost blogPost) {
        super.onPostLoaded((BlogPostActivity) blogPost);
        if (isEdit()) {
            setTitle(R.string.edit);
        } else {
            setTitle(R.string.post_blog_title);
        }
        if (blogPost.latitude == 0 || blogPost.longitude == 0 || !TextUtils.isEmpty(blogPost.address)) {
            return;
        }
        ((LocationService) getService("location")).reverseGeocoding(GPSCoordinate.create(blogPost.latitude, blogPost.longitude), null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPreview(BlogPost blogPost) {
        Intent intent = FeedDetailFragment.intent(blogPost.getPreviewBlog((Blog) JacksonUtils.readAs(getStringParam(CommentListFragment.COMMENT_KEY_FEED), Blog.class), this, blogId()));
        intent.putExtra("taggedObjects", JacksonUtils.writeAsString(blogPost.itemList));
        intent.putExtra("preview", true);
        intent.putExtra("Source", "Preview");
        startActivity(intent);
    }

    @Override // com.narvii.post.BasePostActivity
    protected void checkEligible() {
        checkEligible("blog", NotificationChannelHelper.CHANNEL_NORMAL);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        switch (view.getId()) {
            case R.id.address /* 2131296367 */:
            case R.id.pick_location /* 2131298354 */:
                BlogPost blogPostSavePost = savePost();
                this.locationPickerFragment.pickLocation(blogPostSavePost.latitude, blogPostSavePost.longitude, true);
                break;
            case R.id.item_card_preview /* 2131297755 */:
                Intent intent = FragmentWrapperActivity.intent(ItemSortFragment.class);
                intent.putExtra("itemList", JacksonUtils.writeAsString(savePost().itemList));
                startActivityForResult(intent, 6);
                break;
            case R.id.media_preview /* 2131298012 */:
                savePost();
                Intent intent2 = FragmentWrapperActivity.intent(MediaOrganizeFragment.class);
                intent2.putExtra("mediaList", JacksonUtils.writeAsString(((BlogPost) this.post).mediaList));
                intent2.putExtra("coverMediaIndex", ((BlogPost) this.post).getCoverMediaIndex());
                intent2.putExtra("dir", this.draftManager.getDir(this.draftId).getAbsolutePath());
                intent2.putExtra("maximum", 25);
                intent2.putExtra("allowSetCover", true);
                startActivityForResult(intent2, 2);
                break;
            case R.id.pick_item /* 2131298352 */:
                this.stat_link_favorite = true;
                Intent intent3 = FragmentWrapperActivity.intent(CatalogPickerFragment.class);
                intent3.putExtra("mine", true);
                intent3.putExtra("itemList", JacksonUtils.writeAsString(savePost().itemList));
                startActivityForResult(intent3, 5);
                break;
            case R.id.pick_media /* 2131298355 */:
                this.stat_add_photo = true;
                List<Media> list = savePost().mediaList;
                if (list != null && list.size() >= 25) {
                    NVToast.makeText(getContext(), getString(R.string.post_pick_medias_exceed_limit), 0).show();
                    break;
                } else {
                    this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), (Bundle) null, 0, 25 - (list == null ? 0 : list.size()));
                    break;
                }
                break;
            case R.id.post_categories /* 2131298417 */:
                this.stat_add_category = true;
                BlogPost blogPostSavePost2 = savePost();
                Intent intent4 = FragmentWrapperActivity.intent(BlogCategoryPickerFragment.class);
                intent4.putExtra("blogCategoryList", JacksonUtils.writeAsString(blogPostSavePost2.blogCategoryList));
                intent4.putExtra(BlogCategoryPickerFragment.KEY_IS_QUIZ, blogPostSavePost2.type == 6);
                if (blogPostSavePost2.blogCategoryList != null) {
                    i = 0;
                    for (int i2 = 0; i2 < blogPostSavePost2.blogCategoryList.size(); i2++) {
                        if (blogPostSavePost2.blogCategoryList.get(i2).status != 9) {
                            i++;
                        }
                    }
                } else {
                    i = 0;
                }
                intent4.putExtra("maximum", i);
                startActivityForResult(intent4, 1);
                break;
        }
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) throws Resources.NotFoundException {
        ArrayList listAs;
        super.onActivityResult(i, i2, intent);
        if (i == 1 && i2 == -1 && intent != null) {
            ArrayList listAs2 = JacksonUtils.readListAs(intent.getStringExtra("blogCategoryList"), BlogCategory.class);
            BlogPost blogPostSavePost = savePost();
            blogPostSavePost.blogCategoryList = listAs2;
            this.post = blogPostSavePost;
            updateView(blogPostSavePost);
            this.stat_add_category_success = true;
        }
        if (i == 2 && i2 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class)) != null) {
            BlogPost blogPostSavePost2 = savePost();
            blogPostSavePost2.mediaList = listAs;
            blogPostSavePost2.setCoverMediaIndex(intent.getIntExtra("coverMediaIndex", -1));
            this.post = blogPostSavePost2;
            updateView(blogPostSavePost2);
        }
        if ((i == 5 || i == 6) && i2 == -1 && intent != null) {
            ArrayList listAs3 = JacksonUtils.readListAs(intent.getStringExtra("itemList"), Item.class);
            if (listAs3 != null) {
                BlogPost blogPostSavePost3 = savePost();
                blogPostSavePost3.itemList = listAs3;
                this.post = blogPostSavePost3;
                updateView(blogPostSavePost3);
            }
            this.stat_link_favorite_success = true;
        }
        if (i == 8 && i2 == -1 && intent != null) {
            String stringExtra = intent.getStringExtra("refIdList");
            ArrayList listAs4 = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class);
            if (TextUtils.isEmpty(stringExtra) || listAs4 == null) {
                return;
            }
            BlogPost blogPostSavePost4 = savePost();
            blogPostSavePost4.mediaList = listAs4;
            this.post = blogPostSavePost4;
            updateView(blogPostSavePost4);
            IMGUtils.insertEditText(this.editContent, stringExtra);
        }
    }

    @Override // com.narvii.post.BackgroundPostActivity
    protected void onPickOtherMediaResult(List<Media> list, Bundle bundle) {
        ArrayList arrayList = new ArrayList();
        T t = this.post;
        if (((BlogPost) t).mediaList != null) {
            arrayList.addAll(((BlogPost) t).mediaList);
        }
        arrayList.addAll(list);
        T t2 = this.post;
        ((BlogPost) t2).mediaList = arrayList;
        trimMediaList(((BlogPost) t2).mediaList, 25, R.string.post_pick_medias_exceed_limit);
        this.stat_add_photo_success = true;
    }

    @Override // com.narvii.post.LocationPickerFragment.LocationListener
    public void onLocatingChanged(boolean z) {
        this.pickLocation.setVisibility(8);
        this.pickLocationProgress.setVisibility(8);
    }

    @Override // com.narvii.post.LocationPickerFragment.LocationListener
    public void onLocationResult(GPSCoordinate gPSCoordinate) throws Resources.NotFoundException {
        BlogPost blogPostSavePost = savePost();
        if (gPSCoordinate == null) {
            blogPostSavePost.latitude = 0;
            blogPostSavePost.longitude = 0;
            blogPostSavePost.address = null;
            this.stat_remove_location = true;
            this.stat_remove_location_success = true;
        } else {
            blogPostSavePost.latitude = gPSCoordinate.latitudeE6();
            blogPostSavePost.longitude = gPSCoordinate.longitudeE6();
            blogPostSavePost.address = null;
            ((LocationService) getService("location")).reverseGeocoding(GPSCoordinate.create(blogPostSavePost.latitude, blogPostSavePost.longitude), null);
            this.stat_remove_location = false;
            this.stat_remove_location_success = false;
        }
        this.post = blogPostSavePost;
        updateView(blogPostSavePost);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(BlogPost blogPost) throws Resources.NotFoundException {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        super.updateView((BlogPostActivity) blogPost);
        if (blogPost == null) {
            return;
        }
        if (!Utils.isEquals(blogPost.title, this.editTitle.getText().toString())) {
            this.editTitle.setText(blogPost.title);
        }
        if (!Utils.isEquals(blogPost.content, this.editContent.getText().toString())) {
            this.editContent.setText(blogPost.content);
        }
        List<Media> list = blogPost.mediaList;
        int size = list == null ? 0 : list.size();
        Media media = size > 0 ? blogPost.mediaList.get(0) : null;
        ImageView imageView = this.pickMedia;
        if (media == null) {
            drawable = getResources().getDrawable(R.drawable.ic_camera);
        } else {
            drawable = getResources().getDrawable(R.drawable.ic_camera_blue);
        }
        imageView.setImageDrawable(drawable);
        this.mediaPreview.setVisibility(media == null ? 8 : 0);
        this.mediaPreview.setImageMedia(media);
        this.mediaCount.setVisibility(size > 1 ? 0 : 8);
        this.mediaCount.setText(String.valueOf(size));
        List<Item> list2 = blogPost.itemList;
        int size2 = list2 == null ? 0 : list2.size();
        Item item = size2 > 0 ? blogPost.itemList.get(0) : null;
        ImageView imageView2 = this.pickItem;
        if (item == null) {
            drawable2 = getResources().getDrawable(R.drawable.ic_blog_favorite);
        } else {
            drawable2 = getResources().getDrawable(R.drawable.ic_blog_favorite_blue);
        }
        imageView2.setImageDrawable(drawable2);
        this.itemPreview.setVisibility(item == null ? 8 : 0);
        this.itemPreview.setItem(item);
        this.itemCount.setVisibility(size2 <= 1 ? 8 : 0);
        this.itemCount.setText(String.valueOf(size2));
        this.locationPickerFragment.isLocating();
        ImageView imageView3 = this.pickLocation;
        if (blogPost.latitude == 0 || blogPost.longitude == 0) {
            drawable3 = getResources().getDrawable(R.drawable.ic_location);
        } else {
            drawable3 = getResources().getDrawable(R.drawable.ic_location_blue);
        }
        imageView3.setImageDrawable(drawable3);
        this.pickLocation.setVisibility(8);
        this.pickLocationProgress.setVisibility(8);
        this.pickCategories.setOnClickListener(this);
        Button button = this.pickCategories;
        List<BlogCategory> list3 = blogPost.blogCategoryList;
        button.setBackgroundResource((list3 == null || list3.size() <= 0) ? R.drawable.post_categories_empty : R.drawable.post_categories_fill);
        Button button2 = this.pickCategories;
        List<BlogCategory> list4 = blogPost.blogCategoryList;
        button2.setTextColor((list4 == null || list4.size() <= 0) ? -7824986 : -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public BlogPost savePost() {
        ((BlogPost) this.post).title = this.editTitle.getText().toString();
        ((BlogPost) this.post).content = this.editContent.getText().toString();
        T t = this.post;
        if (((BlogPost) t).latitude != 0 && ((BlogPost) t).longitude != 0 && TextUtils.isEmpty(((BlogPost) t).address)) {
            LocationService locationService = (LocationService) getService("location");
            T t2 = this.post;
            ReadableAddress cachedReverseGeocoding = locationService.getCachedReverseGeocoding(GPSCoordinate.create(((BlogPost) t2).latitude, ((BlogPost) t2).longitude));
            if (cachedReverseGeocoding != null) {
                ((BlogPost) this.post).address = cachedReverseGeocoding.getCityLevelAddressText();
            }
        }
        return (BlogPost) this.post;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public boolean validateUpload(BlogPost blogPost) {
        if (!validateEditTextNotEmpty(this.editTitle, R.string.post_error_no_title)) {
            return false;
        }
        if (IMGUtils.filterRefIds(this.editContent.getText(), blogPost.mediaList)) {
            savePost();
        }
        return validateEditTextNotEmpty(this.editContent, R.string.post_error_no_content) && validateMediaListMax(blogPost.mediaList, 25, R.string.post_media_n);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(BlogPost blogPost) {
        String str;
        String strBlogId = blogId();
        ApiRequest.Builder builderPost = ApiRequest.builder().post();
        if (strBlogId == null) {
            str = "/blog";
        } else {
            str = "/blog/" + strBlogId;
        }
        ApiRequest apiRequestBuild = builderPost.path(str).build();
        BackgroundPostHelper backgroundPostHelper = new BackgroundPostHelper(this);
        backgroundPostHelper.setPostListener(this);
        backgroundPostHelper.startPost(blogPost, apiRequestBuild, BlogResponse.class);
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        super.onPostFinished(postHelper, apiResponse);
        Blog blogObject = ((BlogResponse) apiResponse).object();
        if (isEdit()) {
            return;
        }
        Intent intent = FeedDetailFragment.intent(blogObject);
        intent.putExtra("justCreated", true);
        intent.putExtra("Source", "View Created Post");
        startActivity(intent);
    }

    private class ImgCallback extends BasePostActivity.BaseImgCallback {
        public ImgCallback() {
            super(BlogPostActivity.this.editContent);
        }

        @Override // com.narvii.post.BasePostActivity.BaseImgCallback, android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            menu.add(0, R.string.post_insert_image, 0, R.string.post_insert_image).setIcon(new ActionBarIcon(this.editText.getContext(), R.string.ion_images)).setShowAsAction(2);
            return super.onCreateActionMode(actionMode, menu);
        }

        @Override // com.narvii.post.BasePostActivity.BaseImgCallback, android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            if (menuItem.getItemId() == R.string.post_insert_image) {
                if (IMGUtils.isSelectionInTag(BlogPostActivity.this.editContent)) {
                    NVToast.makeText(BlogPostActivity.this.getContext(), R.string.post_cannot_insert_image_here, 0).show();
                } else {
                    List<Media> list = BlogPostActivity.this.savePost().mediaList;
                    Intent intent = FragmentWrapperActivity.intent(MediaOrganizeFragment.class);
                    intent.setAction("android.intent.action.PICK");
                    intent.putExtra("mediaList", JacksonUtils.writeAsString(list));
                    intent.putExtra("dir", ((DraftPostActivity) BlogPostActivity.this).draftManager.getDir(((DraftPostActivity) BlogPostActivity.this).draftId).getAbsolutePath());
                    intent.putExtra("maximum", 25);
                    intent.putExtra("coverMediaIndex", ((BlogPost) ((DraftPostActivity) BlogPostActivity.this).post).getCoverMediaIndex());
                    intent.putExtra("allowSetCover", true);
                    intent.putExtra("existsRefIds", JacksonUtils.writeAsString(IMGUtils.extractRefIds(BlogPostActivity.this.editContent.getText().toString())));
                    BlogPostActivity.this.startActivityForResult(intent, 8);
                }
                return true;
            }
            return super.onActionItemClicked(actionMode, menuItem);
        }
    }

    @Override // com.narvii.post.DraftPostActivity
    protected View getInfluencerLockLayout() {
        return this.fansOnlyContainer;
    }
}
