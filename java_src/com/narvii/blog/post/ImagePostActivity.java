package com.narvii.blog.post;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.blog.category.BlogCategoryPickerFragment;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.BackgroundPostHelper;
import com.narvii.location.GPSCoordinate;
import com.narvii.location.LocationService;
import com.narvii.location.ReadableAddress;
import com.narvii.media.MediaOrganizeFragment;
import com.narvii.model.Blog;
import com.narvii.model.BlogCategory;
import com.narvii.model.Media;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.post.BackgroundPostActivity;
import com.narvii.post.DraftPostActivity;
import com.narvii.post.LocationPickerFragment;
import com.narvii.post.PostHelper;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ImagePostActivity extends BackgroundPostActivity<BlogPost> implements View.OnClickListener, LocationPickerFragment.LocationListener {
    private static final int COLUMN_NUMBER = 3;
    protected static final int MAX_MEDIA = 25;
    static final int PICK_CATEGORY_REQUEST = 1;
    static final int SORT_PHOTO_REQUEST = 2;
    private View addPhoto;
    protected EditText editTitle;
    protected View fansOnlyContainer;
    private NVImageView imgContent;
    View.OnLayoutChangeListener layoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.narvii.blog.post.ImagePostActivity.2
        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            TextView textView;
            Drawable drawable;
            if (view.getId() == R.id.image_content && (textView = ImagePostActivity.this.singleImageCaption) != null && textView.getVisibility() == 0) {
                ViewGroup.LayoutParams layoutParams = ImagePostActivity.this.singleImageCaption.getLayoutParams();
                ImagePostActivity imagePostActivity = ImagePostActivity.this;
                if (imagePostActivity.singleImageCaption == null || !(view instanceof ImageView) || imagePostActivity.viewHeight == 0 || (drawable = ((ImageView) view).getDrawable()) == null || drawable.getIntrinsicWidth() == 0) {
                    return;
                }
                layoutParams.width = (drawable.getIntrinsicWidth() * ImagePostActivity.this.viewHeight) / drawable.getIntrinsicHeight();
            }
        }
    };
    protected LocationPickerFragment locationPickerFragment;
    protected TextView mediaCount;
    protected ThumbImageView mediaPreview;
    RecyclerView multiImageContainer;
    protected Button pickCategories;
    protected ImageView pickLocation;
    protected View pickLocationProgress;
    protected ImageView pickMedia;
    ImageRecyleAdapter recycleViewAdapter;
    Point screenSize;
    TextView singleImageCaption;
    boolean stat_add_category;
    boolean stat_add_category_success;
    boolean stat_add_photo;
    boolean stat_add_photo_success;
    boolean stat_remove_location;
    boolean stat_remove_location_success;
    private int viewHeight;

    @Override // com.narvii.post.DraftPostActivity
    public String draftType() {
        return "image";
    }

    @Override // com.narvii.post.DraftPostActivity
    protected boolean shouldShowFansOnlySwitchDialog() {
        return true;
    }

    @Override // com.narvii.post.BasePostActivity
    protected boolean supportPreview() {
        return true;
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.post_image_layout);
        AndroidBug5497Workaround.assistActivity(this);
        this.locationPickerFragment = (LocationPickerFragment) getSupportFragmentManager().findFragmentByTag("locationPicker");
        if (this.locationPickerFragment == null) {
            this.locationPickerFragment = new LocationPickerFragment();
            getSupportFragmentManager().beginTransaction().add(this.locationPickerFragment, "locationPicker").commit();
        }
        this.locationPickerFragment.listener = this;
        this.editTitle = (EditText) findViewById(R.id.title);
        this.addPhoto = findViewById(R.id.add_photo_placeholder);
        this.pickLocation = (ImageView) findViewById(R.id.pick_location);
        this.pickLocation.setOnClickListener(this);
        this.pickLocationProgress = findViewById(R.id.pick_locating_progress);
        this.imgContent = (NVImageView) findViewById(R.id.image_content);
        this.singleImageCaption = (TextView) findViewById(R.id.caption);
        this.imgContent.addOnLayoutChangeListener(this.layoutChangeListener);
        this.imgContent.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.blog.post.ImagePostActivity.1
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public void onImageChanged(NVImageView nVImageView, int i, Media media) {
                Drawable drawable;
                int i2;
                if (i != 4 || (drawable = nVImageView.getDrawable()) == null || drawable.getIntrinsicWidth() == 0 || ImagePostActivity.this.viewHeight == 0 || ImagePostActivity.this.singleImageCaption == null) {
                    return;
                }
                int intrinsicWidth = (drawable.getIntrinsicWidth() * ImagePostActivity.this.viewHeight) / drawable.getIntrinsicHeight();
                ViewGroup.LayoutParams layoutParams = ImagePostActivity.this.singleImageCaption.getLayoutParams();
                layoutParams.width = intrinsicWidth;
                if (drawable.getIntrinsicWidth() / (drawable.getIntrinsicHeight() * 1.0f) <= ((r0.screenSize.x - Utils.dpToPx(ImagePostActivity.this.getContext(), 20.0f)) * 1.0f) / (ImagePostActivity.this.viewHeight * 1.0f) || intrinsicWidth <= (i2 = ImagePostActivity.this.screenSize.x) || i2 == 0) {
                    return;
                }
                float intrinsicWidth2 = drawable.getIntrinsicWidth();
                ImagePostActivity imagePostActivity = ImagePostActivity.this;
                int intrinsicHeight = (int) (((int) (ImagePostActivity.this.viewHeight - (drawable.getIntrinsicHeight() / (intrinsicWidth2 / ((imagePostActivity.screenSize.x - Utils.dpToPx(imagePostActivity.getContext(), 20.0f)) * 1.0f))))) / 2.0f);
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = intrinsicHeight;
                }
            }
        });
        this.pickCategories = (Button) findViewById(R.id.post_categories);
        this.pickMedia = (ImageView) findViewById(R.id.pick_media);
        this.pickMedia.setOnClickListener(this);
        this.mediaPreview = (ThumbImageView) findViewById(R.id.media_preview);
        this.mediaPreview.setOnClickListener(this);
        this.mediaCount = (TextView) findViewById(R.id.media_count);
        this.multiImageContainer = (RecyclerView) findViewById(R.id.multi_image_container);
        this.multiImageContainer.setLayoutManager(new GridLayoutManager(getContext(), 3));
        this.recycleViewAdapter = new ImageRecyleAdapter();
        this.multiImageContainer.setAdapter(this.recycleViewAdapter);
        this.addPhoto.setOnClickListener(this);
        this.imgContent.setOnClickListener(this);
        if (bundle == null && TextUtils.isEmpty(getStringParam("blogId"))) {
            if (this.post == 0) {
                this.post = new BlogPost();
            }
            ((BlogPost) this.post).type = 7;
        }
        findViewById(R.id.pick_item).setVisibility(8);
        findViewById(R.id.item_preview_container).setVisibility(8);
        this.screenSize = Utils.getScreenSize(this);
        double d = this.screenSize.y;
        Double.isNaN(d);
        this.viewHeight = (int) (d * 0.32d);
        this.fansOnlyContainer = findViewById(R.id.fans_only_layout);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        NVImageView nVImageView = this.imgContent;
        if (nVImageView != null) {
            nVImageView.removeOnLayoutChangeListener(this.layoutChangeListener);
        }
    }

    @Override // com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
    }

    @Override // com.narvii.post.BasePostActivity
    protected void checkEligible() {
        checkEligible("blog", "image");
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

    public String blogId() {
        return JacksonUtils.nodeString(this.params, "blogId");
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<BlogPost> postClazz() {
        return BlogPost.class;
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return blogId() != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public BlogPost savePost() {
        ((BlogPost) this.post).title = this.editTitle.getText().toString();
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
        List<Media> list = blogPost.mediaList;
        if (list == null || list.size() == 0 || !validateMediaListMax(blogPost.mediaList, 25, R.string.post_media_n)) {
            return false;
        }
        return super.validateUpload((ImagePostActivity) blogPost);
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity
    public void onPostLoaded(BlogPost blogPost) {
        super.onPostLoaded((ImagePostActivity) blogPost);
        if (isEdit()) {
            setTitle(R.string.edit);
        } else {
            setTitle(R.string.post_photo_title);
        }
        if (blogPost.latitude != 0 && blogPost.longitude != 0 && TextUtils.isEmpty(blogPost.address)) {
            ((LocationService) getService("location")).reverseGeocoding(GPSCoordinate.create(blogPost.latitude, blogPost.longitude), null);
        }
        SoftKeyboard.showSoftKeyboard(this.editTitle);
        List<Media> list = savePost().mediaList;
        if (list == null || list.size() == 0) {
            this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), new Bundle(), 0, 25 - (list == null ? 0 : list.size()));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i = 0;
        switch (view.getId()) {
            case R.id.add_photo_placeholder /* 2131296360 */:
                this.stat_add_photo = true;
                List<Media> list = savePost().mediaList;
                Bundle bundle = new Bundle();
                bundle.putString("type", "pickimage");
                if (list != null) {
                    list.size();
                }
                this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), bundle, 0, 25 - (list == null ? 0 : list.size()));
                break;
            case R.id.address /* 2131296367 */:
            case R.id.pick_location /* 2131298354 */:
                BlogPost blogPostSavePost = savePost();
                this.locationPickerFragment.pickLocation(blogPostSavePost.latitude, blogPostSavePost.longitude, true);
                break;
            case R.id.image_content /* 2131297656 */:
                showActionDialog(savePost().mediaList.get(0), 0);
                break;
            case R.id.media_preview /* 2131298012 */:
                organizeMediaList();
                break;
            case R.id.pick_media /* 2131298355 */:
                this.stat_add_photo = true;
                List<Media> list2 = savePost().mediaList;
                if (list2 != null && list2.size() >= 25) {
                    NVToast.makeText(getContext(), getString(R.string.post_pick_medias_exceed_limit), 0).show();
                    break;
                } else {
                    this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), new Bundle(), 0, 25 - (list2 == null ? 0 : list2.size()));
                    break;
                }
                break;
            case R.id.post_categories /* 2131298417 */:
                this.stat_add_category = true;
                BlogPost blogPostSavePost2 = savePost();
                Intent intent = FragmentWrapperActivity.intent(BlogCategoryPickerFragment.class);
                intent.putExtra("blogCategoryList", JacksonUtils.writeAsString(blogPostSavePost2.blogCategoryList));
                intent.putExtra(BlogCategoryPickerFragment.KEY_IS_QUIZ, blogPostSavePost2.type == 6);
                if (blogPostSavePost2.blogCategoryList != null) {
                    int i2 = 0;
                    while (i < blogPostSavePost2.blogCategoryList.size()) {
                        if (blogPostSavePost2.blogCategoryList.get(i).status != 9) {
                            i2++;
                        }
                        i++;
                    }
                    i = i2;
                }
                intent.putExtra("maximum", i);
                startActivityForResult(intent, 1);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void organizeMediaList() {
        Intent intent = FragmentWrapperActivity.intent(MediaOrganizeFragment.class);
        intent.putExtra("mediaList", JacksonUtils.writeAsString(savePost().mediaList));
        intent.putExtra("dir", this.draftManager.getDir(this.draftId).getAbsolutePath());
        intent.putExtra("coverMediaIndex", ((BlogPost) this.post).getCoverMediaIndex());
        intent.putExtra("maximum", 25);
        intent.putExtra("allowSetCover", true);
        startActivityForResult(intent, 2);
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
        if (i != 2 || i2 != -1 || intent == null || (listAs = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class)) == null) {
            return;
        }
        BlogPost blogPostSavePost2 = savePost();
        blogPostSavePost2.mediaList = listAs;
        blogPostSavePost2.setCoverMediaIndex(intent.getIntExtra("coverMediaIndex", -1));
        this.post = blogPostSavePost2;
        updateView(blogPostSavePost2);
    }

    @Override // com.narvii.post.BackgroundPostActivity
    protected void onPickOtherMediaResult(List<Media> list, Bundle bundle) throws Resources.NotFoundException {
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
        updateView((BlogPost) this.post);
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
        super.updateView((ImagePostActivity) blogPost);
        if (blogPost == null) {
            return;
        }
        if (!Utils.isEquals(blogPost.title, this.editTitle.getText().toString())) {
            this.editTitle.setText(blogPost.title);
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
        this.locationPickerFragment.isLocating();
        ImageView imageView2 = this.pickLocation;
        if (blogPost.latitude == 0 || blogPost.longitude == 0) {
            drawable2 = getResources().getDrawable(R.drawable.ic_location);
        } else {
            drawable2 = getResources().getDrawable(R.drawable.ic_location_blue);
        }
        imageView2.setImageDrawable(drawable2);
        this.pickLocation.setVisibility(8);
        this.pickLocationProgress.setVisibility(8);
        this.pickCategories.setOnClickListener(this);
        Button button = this.pickCategories;
        List<BlogCategory> list2 = blogPost.blogCategoryList;
        button.setBackgroundResource((list2 == null || list2.size() <= 0) ? R.drawable.post_categories_empty : R.drawable.post_categories_fill);
        Button button2 = this.pickCategories;
        List<BlogCategory> list3 = blogPost.blogCategoryList;
        button2.setTextColor((list3 == null || list3.size() <= 0) ? -7824986 : -1);
        List<Media> list4 = blogPost.mediaList;
        int size2 = list4 == null ? 0 : list4.size();
        this.addPhoto.setVisibility(size2 == 0 ? 0 : 8);
        this.imgContent.setVisibility(size2 == 1 ? 0 : 8);
        this.multiImageContainer.setVisibility(size2 > 1 ? 0 : 8);
        if (size2 == 1 && list4.get(0) != null) {
            this.singleImageCaption.setVisibility(TextUtils.isEmpty(list4.get(0).caption) ? 8 : 0);
            this.singleImageCaption.setText(list4.get(0).caption);
            this.imgContent.setImageMedia(list4.get(0));
        } else {
            this.singleImageCaption.setVisibility(8);
        }
        ImageRecyleAdapter imageRecyleAdapter = this.recycleViewAdapter;
        if (imageRecyleAdapter != null) {
            if (size2 <= 1) {
                list4 = null;
            }
            imageRecyleAdapter.notifyImageChanged(list4);
        }
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

    class ImageRecyleAdapter extends RecyclerView.Adapter<ImageViewHolder> {
        List<Media> list = new ArrayList();

        ImageRecyleAdapter() {
        }

        public void notifyImageChanged(List<Media> list) {
            this.list = list;
            notifyDataSetChanged();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public ImageViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return ImagePostActivity.this.new ImageViewHolder(LayoutInflater.from(ImagePostActivity.this.getContext()).inflate(R.layout.item_image, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(final ImageViewHolder imageViewHolder, int i) {
            final Media media = this.list.get(i);
            imageViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.blog.post.ImagePostActivity.ImageRecyleAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ImagePostActivity.this.showActionDialog(media, imageViewHolder.getAdapterPosition());
                }
            });
            NVImageView nVImageView = imageViewHolder.imgContent;
            if (nVImageView != null) {
                nVImageView.setImageMedia(media);
            }
            TextView textView = imageViewHolder.tvDesc;
            if (textView != null) {
                textView.setVisibility((media == null || TextUtils.isEmpty(media.caption)) ? 8 : 0);
                imageViewHolder.tvDesc.setText(media == null ? null : media.caption);
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<Media> list = this.list;
            if (list == null) {
                return 0;
            }
            return list.size();
        }
    }

    class ImageViewHolder extends RecyclerView.ViewHolder {
        NVImageView imgContent;
        TextView tvDesc;

        public ImageViewHolder(View view) {
            super(view);
            this.imgContent = (NVImageView) view.findViewById(R.id.image);
            this.tvDesc = (TextView) view.findViewById(R.id.caption);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showActionDialog(final Media media, final int i) {
        if (media == null) {
            return;
        }
        T t = this.post;
        final boolean z = (t == 0 || ((BlogPost) t).mediaList == null || ((BlogPost) t).mediaList.size() <= 1) ? false : true;
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(TextUtils.isEmpty(media.caption) ? R.string.add_description : R.string.edit_description, 0);
        if (z) {
            actionSheetDialog.addItem(R.string.reorder, 0);
        }
        actionSheetDialog.addItem(R.string.delete, 1);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.blog.post.ImagePostActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) throws Resources.NotFoundException {
                if (i2 == 0) {
                    ImagePostActivity.this.editCaption(media);
                    return;
                }
                if (i2 != 1) {
                    if (i2 != 2) {
                        return;
                    }
                    if (((DraftPostActivity) ImagePostActivity.this).post != null && ((BlogPost) ((DraftPostActivity) ImagePostActivity.this).post).mediaList != null) {
                        ((BlogPost) ((DraftPostActivity) ImagePostActivity.this).post).mediaList.remove(i);
                    }
                    ImagePostActivity imagePostActivity = ImagePostActivity.this;
                    imagePostActivity.updateView((BlogPost) ((DraftPostActivity) imagePostActivity).post);
                    return;
                }
                if (z) {
                    ImagePostActivity.this.organizeMediaList();
                    return;
                }
                BlogPost blogPostSavePost = ImagePostActivity.this.savePost();
                blogPostSavePost.mediaList.remove(media);
                ((DraftPostActivity) ImagePostActivity.this).post = blogPostSavePost;
                ImagePostActivity.this.updateView(blogPostSavePost);
            }
        });
        actionSheetDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void editCaption(final Media media) {
        String str = media.caption;
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(R.string.media_caption);
        final EditText editText = new EditText(getContext());
        editText.setText(str);
        String str2 = media.caption;
        editText.setSelection(str2 == null ? 0 : str2.length());
        editText.setHint(R.string.add_description);
        builder.setView(editText);
        builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.narvii.blog.post.ImagePostActivity.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) throws Resources.NotFoundException {
                media.caption = editText.getText().toString().trim();
                SoftKeyboard.hideSoftKeyboard(editText);
                ImagePostActivity.this.updateView(ImagePostActivity.this.savePost());
            }
        });
        builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.getWindow().setSoftInputMode(4);
        alertDialogCreate.show();
    }

    @Override // com.narvii.post.DraftPostActivity
    protected View getInfluencerLockLayout() {
        return this.fansOnlyContainer;
    }
}
