package com.narvii.blog.post;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.content.Intent;
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
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.blog.category.BlogCategoryPickerFragment;
import com.narvii.catalog.picker.CatalogPickerFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.BackgroundPostHelper;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.item.picker.ItemSortFragment;
import com.narvii.location.GPSCoordinate;
import com.narvii.location.LocationService;
import com.narvii.location.ReadableAddress;
import com.narvii.media.MediaOrganizeFragment;
import com.narvii.media.MediaPickerFragment;
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
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.text.IMGUtils;
import com.narvii.widget.CardView;
import com.narvii.widget.EditTextIMG;
import com.narvii.widget.ThumbImageView;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
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

    private class ImgCallback extends BasePostActivity.BaseImgCallback {
        public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        public ImgCallback() {
            super(BlogPostActivity.this.editContent);
        }

        @Override // com.narvii.post.BasePostActivity.BaseImgCallback, android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            menu.add(0, R.id.post_insert_image_id, 0, BlogPostActivity.this.getString(R.string.post_insert_image)).setIcon(new ActionBarIcon(this.editText.getContext(), R.string.ion_images)).setShowAsAction(2);
            return super.onCreateActionMode(actionMode, menu);
        }

        @Override // com.narvii.post.BasePostActivity.BaseImgCallback, android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            if (menuItem.getItemId() == R.id.post_insert_image_id) {
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
                    safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(BlogPostActivity.this, intent, 8);
                }
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
        return "blog";
    }

    @Override // com.narvii.post.DraftPostActivity
    protected View getInfluencerLockLayout() {
        return this.fansOnlyContainer;
    }

    protected int layoutId() {
        return R.layout.post_blog_layout;
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<BlogPost> postClazz() {
        return BlogPost.class;
    }

    @Override // com.narvii.post.DraftPostActivity
    protected boolean shouldShowFansOnlySwitchDialog() {
        return true;
    }

    @Override // com.narvii.post.BasePostActivity
    protected boolean supportPreview() {
        return true;
    }

    public String blogId() {
        return JacksonUtils.nodeString(this.params, "blogId");
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
    protected void checkEligible() {
        checkEligible("blog", NotificationChannelHelper.CHANNEL_NORMAL);
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPreview(BlogPost blogPost) {
        Intent intent = FeedDetailFragment.intent(blogPost.getPreviewBlog((Blog) JacksonUtils.readAs(getStringParam("feed"), Blog.class), this, blogId()));
        intent.putExtra("taggedObjects", JacksonUtils.writeAsString(blogPost.itemList));
        intent.putExtra("preview", true);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Preview");
        safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
    }

    @Override // com.narvii.post.LocationPickerFragment.LocationListener
    public void onLocatingChanged(boolean z6) {
        this.pickLocation.setVisibility(8);
        this.pickLocationProgress.setVisibility(8);
    }

    @Override // com.narvii.post.BackgroundPostActivity
    protected void onPickOtherMediaResult(List<Media> list, Bundle bundle) {
        ArrayList arrayList = new ArrayList();
        T t5 = this.post;
        if (((BlogPost) t5).mediaList != null) {
            arrayList.addAll(((BlogPost) t5).mediaList);
        }
        arrayList.addAll(list);
        T t10 = this.post;
        ((BlogPost) t10).mediaList = arrayList;
        trimMediaList(((BlogPost) t10).mediaList, 25, R.string.post_pick_medias_exceed_limit);
        this.stat_add_photo_success = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity
    public void onPostLoaded(BlogPost blogPost) {
        super.onPostLoaded(blogPost);
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
    public BlogPost savePost() {
        ((BlogPost) this.post).title = this.editTitle.getText().toString();
        ((BlogPost) this.post).content = this.editContent.getText().toString();
        T t5 = this.post;
        if (((BlogPost) t5).latitude != 0 && ((BlogPost) t5).longitude != 0 && TextUtils.isEmpty(((BlogPost) t5).address)) {
            LocationService locationService = (LocationService) getService("location");
            T t10 = this.post;
            ReadableAddress cachedReverseGeocoding = locationService.getCachedReverseGeocoding(GPSCoordinate.create(((BlogPost) t10).latitude, ((BlogPost) t10).longitude));
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

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        if (blogId() != null) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        ArrayList listAs;
        super.onActivityResult(i10, i11, intent);
        if (i10 == 1 && i11 == -1 && intent != null) {
            ArrayList listAs2 = JacksonUtils.readListAs(intent.getStringExtra("blogCategoryList"), BlogCategory.class);
            BlogPost blogPostSavePost = savePost();
            blogPostSavePost.blogCategoryList = listAs2;
            this.post = blogPostSavePost;
            updateView(blogPostSavePost);
            this.stat_add_category_success = true;
        }
        if (i10 == 2 && i11 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class)) != null) {
            BlogPost blogPostSavePost2 = savePost();
            blogPostSavePost2.mediaList = listAs;
            blogPostSavePost2.setCoverMediaIndex(intent.getIntExtra("coverMediaIndex", -1));
            this.post = blogPostSavePost2;
            updateView(blogPostSavePost2);
        }
        if ((i10 == 5 || i10 == 6) && i11 == -1 && intent != null) {
            ArrayList listAs3 = JacksonUtils.readListAs(intent.getStringExtra("itemList"), Item.class);
            if (listAs3 != null) {
                BlogPost blogPostSavePost3 = savePost();
                blogPostSavePost3.itemList = listAs3;
                this.post = blogPostSavePost3;
                updateView(blogPostSavePost3);
            }
            this.stat_link_favorite_success = true;
        }
        if (i10 == 8 && i11 == -1 && intent != null) {
            String stringExtra = intent.getStringExtra("refIdList");
            ArrayList listAs4 = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class);
            if (!TextUtils.isEmpty(stringExtra) && listAs4 != null) {
                BlogPost blogPostSavePost4 = savePost();
                blogPostSavePost4.mediaList = listAs4;
                this.post = blogPostSavePost4;
                updateView(blogPostSavePost4);
                IMGUtils.insertEditText(this.editContent, stringExtra);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int size;
        boolean z6;
        int i10 = 0;
        switch (view.getId()) {
            case R.id.address /* 2131361960 */:
            case R.id.pick_location /* 2131364585 */:
                BlogPost blogPostSavePost = savePost();
                this.locationPickerFragment.pickLocation(blogPostSavePost.latitude, blogPostSavePost.longitude, true);
                break;
            case R.id.item_card_preview /* 2131363675 */:
                Intent intent = FragmentWrapperActivity.intent(ItemSortFragment.class);
                intent.putExtra("itemList", JacksonUtils.writeAsString(savePost().itemList));
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent, 6);
                break;
            case R.id.media_preview /* 2131364155 */:
                savePost();
                Intent intent2 = FragmentWrapperActivity.intent(MediaOrganizeFragment.class);
                intent2.putExtra("mediaList", JacksonUtils.writeAsString(((BlogPost) this.post).mediaList));
                intent2.putExtra("coverMediaIndex", ((BlogPost) this.post).getCoverMediaIndex());
                intent2.putExtra("dir", this.draftManager.getDir(this.draftId).getAbsolutePath());
                intent2.putExtra("maximum", 25);
                intent2.putExtra("allowSetCover", true);
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent2, 2);
                break;
            case R.id.pick_item /* 2131364583 */:
                this.stat_link_favorite = true;
                Intent intent3 = FragmentWrapperActivity.intent(CatalogPickerFragment.class);
                intent3.putExtra("mine", true);
                intent3.putExtra("itemList", JacksonUtils.writeAsString(savePost().itemList));
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent3, 5);
                break;
            case R.id.pick_media /* 2131364586 */:
                this.stat_add_photo = true;
                List<Media> list = savePost().mediaList;
                if (list != null && list.size() >= 25) {
                    NVToast.makeText(getContext(), getString(R.string.post_pick_medias_exceed_limit), 0).show();
                } else {
                    MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
                    File dir = this.draftManager.getDir(this.draftId);
                    if (list == null) {
                        size = 0;
                    } else {
                        size = list.size();
                    }
                    mediaPickerFragment.pickMedia(dir, (Bundle) null, 0, 25 - size);
                }
                break;
            case R.id.post_categories /* 2131364653 */:
                this.stat_add_category = true;
                BlogPost blogPostSavePost2 = savePost();
                Intent intent4 = FragmentWrapperActivity.intent(BlogCategoryPickerFragment.class);
                intent4.putExtra("blogCategoryList", JacksonUtils.writeAsString(blogPostSavePost2.blogCategoryList));
                if (blogPostSavePost2.type == 6) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                intent4.putExtra(BlogCategoryPickerFragment.KEY_IS_QUIZ, z6);
                if (blogPostSavePost2.blogCategoryList != null) {
                    int i11 = 0;
                    while (i10 < blogPostSavePost2.blogCategoryList.size()) {
                        if (blogPostSavePost2.blogCategoryList.get(i10).status != 9) {
                            i11++;
                        }
                        i10++;
                    }
                    i10 = i11;
                }
                intent4.putExtra("maximum", i10);
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent4, 1);
                break;
        }
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        int i10;
        int i11;
        int i12;
        super.onCreate(bundle);
        setShouldInflateAd(true);
        setContentView(layoutId());
        AndroidBug5497Workaround.assistActivity(this);
        LocationPickerFragment locationPickerFragment = (LocationPickerFragment) getSupportFragmentManager().m0("locationPicker");
        this.locationPickerFragment = locationPickerFragment;
        if (locationPickerFragment == null) {
            this.locationPickerFragment = new LocationPickerFragment();
            getSupportFragmentManager().q().e(this.locationPickerFragment, "locationPicker").j();
        }
        this.locationPickerFragment.listener = this;
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.editTitle = (EditText) findViewById(R.id.title);
        EditTextIMG editTextIMG = (EditTextIMG) findViewById(R.id.content);
        this.editContent = editTextIMG;
        editTextIMG.imgMode = new ImgCallback();
        this.editContent.addTextChangedListener(new BasePostActivity.HideHintWatcher(findViewById(R.id.post_embed_image_hint)));
        ImageView imageView = (ImageView) findViewById(R.id.pick_media);
        this.pickMedia = imageView;
        imageView.setOnClickListener(this);
        ThumbImageView thumbImageView = (ThumbImageView) findViewById(R.id.media_preview);
        this.mediaPreview = thumbImageView;
        thumbImageView.setOnClickListener(this);
        this.mediaCount = (TextView) findViewById(R.id.media_count);
        ImageView imageView2 = (ImageView) findViewById(R.id.pick_item);
        this.pickItem = imageView2;
        imageView2.setOnClickListener(this);
        CardView cardView = (CardView) findViewById(R.id.item_card_preview);
        this.itemPreview = cardView;
        cardView.setOnClickListener(this);
        this.itemCount = (TextView) findViewById(R.id.item_count);
        ImageView imageView3 = (ImageView) findViewById(R.id.pick_location);
        this.pickLocation = imageView3;
        imageView3.setOnClickListener(this);
        this.pickLocationProgress = findViewById(R.id.pick_locating_progress);
        this.pickCategories = (Button) findViewById(R.id.post_categories);
        this.fansOnlyContainer = findViewById(R.id.fans_only_layout);
        ImageView imageView4 = this.pickItem;
        int i13 = 8;
        if (this.communityConfigHelper.isCatalogEnable()) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        imageView4.setVisibility(i10);
        CardView cardView2 = this.itemPreview;
        if (this.communityConfigHelper.isCatalogEnable()) {
            i11 = 0;
        } else {
            i11 = 8;
        }
        cardView2.setVisibility(i11);
        TextView textView = this.itemCount;
        if (this.communityConfigHelper.isCatalogEnable()) {
            i12 = 0;
        } else {
            i12 = 8;
        }
        textView.setVisibility(i12);
        View viewFindViewById = findViewById(R.id.item_preview_container);
        if (this.communityConfigHelper.isCatalogEnable()) {
            i13 = 0;
        }
        viewFindViewById.setVisibility(i13);
    }

    @Override // com.narvii.post.LocationPickerFragment.LocationListener
    public void onLocationResult(GPSCoordinate gPSCoordinate) {
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

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        boolean z6;
        super.onPostFinished(postHelper, apiResponse);
        Blog blogObject = ((BlogResponse) apiResponse).object();
        if (!isEdit()) {
            Intent intent = FeedDetailFragment.intent(blogObject);
            intent.putExtra("justCreated", true);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "View Created Post");
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
        }
        StatisticsService statisticsService = (StatisticsService) getService("statistics");
        boolean zIsEdit = isEdit();
        String strDraftType = draftType();
        StringBuilder sb = new StringBuilder();
        boolean z10 = false;
        sb.append(strDraftType.substring(0, 1).toUpperCase(Locale.US));
        sb.append(strDraftType.substring(1));
        String string = sb.toString();
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
        StatisticsEventBuilder statisticsEventBuilderParam = statisticsEventBuilderEvent.userPropInc(str2).param(EventConstants.PostType.POST_TYPE, string.toLowerCase());
        boolean z11 = this.stat_add_photo;
        String str6 = null;
        if (z11) {
            str3 = EventConstants.CreatePost.ADD_PHOTO;
        } else {
            str3 = null;
        }
        StatisticsEventBuilder statisticsEventBuilderParam2 = statisticsEventBuilderParam.param(str3, z11);
        if (this.stat_link_favorite) {
            str4 = EventConstants.CreatePost.LINK_RELATED_FAVORITES;
        } else {
            str4 = null;
        }
        StatisticsEventBuilder statisticsEventBuilderParam3 = statisticsEventBuilderParam2.param(str4, this.stat_link_favorite_success);
        if (this.stat_remove_location) {
            str5 = EventConstants.CreatePost.REMOVE_LOCATION;
        } else {
            str5 = null;
        }
        StatisticsEventBuilder statisticsEventBuilderParam4 = statisticsEventBuilderParam3.param(str5, this.stat_remove_location_success);
        if (this.stat_add_category) {
            str6 = EventConstants.CreatePost.ADD_CATEGORY;
        }
        StatisticsEventBuilder statisticsEventBuilderParam5 = statisticsEventBuilderParam4.param(str6, this.stat_add_category_success);
        if (blogObject.getBackgroundColor() != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        StatisticsEventBuilder statisticsEventBuilderParam6 = statisticsEventBuilderParam5.param(EventConstants.CreatePost.BACKGROUND_COLOR, z6);
        if (blogObject.getBackgroundMedia() != null) {
            z10 = true;
        }
        statisticsEventBuilderParam6.param(EventConstants.CreatePost.BACKGROUND_IMAGE, z10).param(EventConstants.CreatePost.HAS_VIDEO, Media.hasVideo(blogObject.mediaList)).param(EventConstants.CreatePost.GATED, !blogObject.isContentAccessible());
        if (!zIsEdit) {
            statisticsEventBuilderEvent.source(getStringParam("source"));
            statisticsEventBuilderEvent.userPropInc("User Submits a New " + string + " Total");
            FirebaseLogManager.logEvent(this, statisticsEventBuilderEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(BlogPost blogPost) {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        super.updateView(blogPost);
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
        if (blogPost.latitude != 0 && blogPost.longitude != 0) {
            drawable3 = getResources().getDrawable(R.drawable.ic_location_blue);
        } else {
            drawable3 = getResources().getDrawable(R.drawable.ic_location);
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
}
