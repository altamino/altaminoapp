package com.narvii.blog.post;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.blog.category.BlogCategoryPickerFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.BackgroundPostHelper;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.location.GPSCoordinate;
import com.narvii.location.LocationService;
import com.narvii.location.ReadableAddress;
import com.narvii.media.MediaOrganizeFragment;
import com.narvii.media.MediaPickerFragment;
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
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public class ImagePostActivity extends BackgroundPostActivity<BlogPost> implements View.OnClickListener, LocationPickerFragment.LocationListener {
    private static final int COLUMN_NUMBER = 3;
    protected static final int MAX_MEDIA = 25;
    static final int PICK_CATEGORY_REQUEST = 1;
    static final int SORT_PHOTO_REQUEST = 2;
    private View addPhoto;
    protected EditText editTitle;
    protected View fansOnlyContainer;
    private NVImageView imgContent;
    View.OnLayoutChangeListener layoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.narvii.blog.post.ImagePostActivity.1
        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            TextView textView;
            Drawable drawable;
            if (view.getId() == R.id.image_content && (textView = ImagePostActivity.this.singleImageCaption) != null && textView.getVisibility() == 0) {
                ViewGroup.LayoutParams layoutParams = ImagePostActivity.this.singleImageCaption.getLayoutParams();
                ImagePostActivity imagePostActivity = ImagePostActivity.this;
                if (imagePostActivity.singleImageCaption != null && (view instanceof ImageView) && imagePostActivity.viewHeight != 0 && (drawable = ((ImageView) view).getDrawable()) != null && drawable.getIntrinsicWidth() != 0) {
                    layoutParams.width = (drawable.getIntrinsicWidth() * ImagePostActivity.this.viewHeight) / drawable.getIntrinsicHeight();
                }
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

    class ImageRecyleAdapter extends RecyclerView.Adapter<ImageViewHolder> {
        List<Media> list = new ArrayList();

        ImageRecyleAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<Media> list = this.list;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public void notifyImageChanged(List<Media> list) {
            this.list = list;
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(final ImageViewHolder imageViewHolder, int i10) {
            final Media media = this.list.get(i10);
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

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public ImageViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return ImagePostActivity.this.new ImageViewHolder(LayoutInflater.from(ImagePostActivity.this.getContext()).inflate(R.layout.item_image, viewGroup, false));
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
    public /* synthetic */ void lambda$onCreate$0(NVImageView nVImageView, int i10, Media media) {
        Drawable drawable;
        int i11;
        if (i10 != 4 || (drawable = nVImageView.getDrawable()) == null || drawable.getIntrinsicWidth() == 0 || this.viewHeight == 0 || this.singleImageCaption == null) {
            return;
        }
        int intrinsicWidth = (drawable.getIntrinsicWidth() * this.viewHeight) / drawable.getIntrinsicHeight();
        ViewGroup.LayoutParams layoutParams = this.singleImageCaption.getLayoutParams();
        layoutParams.width = intrinsicWidth;
        if (drawable.getIntrinsicWidth() / (drawable.getIntrinsicHeight() * 1.0f) <= (this.screenSize.x - Utils.dpToPx(getContext(), 20.0f)) / (this.viewHeight * 1.0f) || intrinsicWidth <= (i11 = this.screenSize.x) || i11 == 0) {
            return;
        }
        int intrinsicHeight = (int) (((int) (this.viewHeight - (drawable.getIntrinsicHeight() / (drawable.getIntrinsicWidth() / (this.screenSize.x - Utils.dpToPx(getContext(), 20.0f)))))) / 2.0f);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = intrinsicHeight;
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
        return "image";
    }

    @Override // com.narvii.post.DraftPostActivity
    protected View getInfluencerLockLayout() {
        return this.fansOnlyContainer;
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
        builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.narvii.blog.post.ImagePostActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void organizeMediaList() {
        Intent intent = FragmentWrapperActivity.intent(MediaOrganizeFragment.class);
        intent.putExtra("mediaList", JacksonUtils.writeAsString(savePost().mediaList));
        intent.putExtra("dir", this.draftManager.getDir(this.draftId).getAbsolutePath());
        intent.putExtra("coverMediaIndex", ((BlogPost) this.post).getCoverMediaIndex());
        intent.putExtra("maximum", 25);
        intent.putExtra("allowSetCover", true);
        safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showActionDialog(final Media media, final int i10) {
        if (media == null) {
            return;
        }
        T t5 = this.post;
        final boolean z6 = (t5 == 0 || ((BlogPost) t5).mediaList == null || ((BlogPost) t5).mediaList.size() <= 1) ? false : true;
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(TextUtils.isEmpty(media.caption) ? R.string.add_description : R.string.edit_description, 0);
        if (z6) {
            actionSheetDialog.addItem(R.string.reorder, 0);
        }
        actionSheetDialog.addItem(R.string.delete, 1);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.blog.post.ImagePostActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i11) {
                if (i11 == 0) {
                    ImagePostActivity.this.editCaption(media);
                    return;
                }
                if (i11 != 1) {
                    if (i11 != 2) {
                        return;
                    }
                    if (((DraftPostActivity) ImagePostActivity.this).post != null && ((BlogPost) ((DraftPostActivity) ImagePostActivity.this).post).mediaList != null) {
                        ((BlogPost) ((DraftPostActivity) ImagePostActivity.this).post).mediaList.remove(i10);
                    }
                    ImagePostActivity imagePostActivity = ImagePostActivity.this;
                    imagePostActivity.updateView((BlogPost) ((DraftPostActivity) imagePostActivity).post);
                    return;
                }
                if (z6) {
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
        checkEligible("blog", "image");
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
        updateView((BlogPost) this.post);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity
    public void onPostLoaded(BlogPost blogPost) {
        super.onPostLoaded(blogPost);
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public BlogPost savePost() {
        ((BlogPost) this.post).title = this.editTitle.getText().toString();
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
        List<Media> list = blogPost.mediaList;
        if (list == null || list.size() == 0 || !validateMediaListMax(blogPost.mediaList, 25, R.string.post_media_n)) {
            return false;
        }
        return super.validateUpload(blogPost);
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
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int size;
        int size2;
        boolean z6;
        int i10 = 0;
        switch (view.getId()) {
            case R.id.add_photo_placeholder /* 2131361953 */:
                this.stat_add_photo = true;
                List<Media> list = savePost().mediaList;
                Bundle bundle = new Bundle();
                bundle.putString("type", "pickimage");
                if (list != null) {
                    list.size();
                }
                MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
                File dir = this.draftManager.getDir(this.draftId);
                if (list == null) {
                    size = 0;
                } else {
                    size = list.size();
                }
                mediaPickerFragment.pickMedia(dir, bundle, 0, 25 - size);
                break;
            case R.id.address /* 2131361960 */:
            case R.id.pick_location /* 2131364585 */:
                BlogPost blogPostSavePost = savePost();
                this.locationPickerFragment.pickLocation(blogPostSavePost.latitude, blogPostSavePost.longitude, true);
                break;
            case R.id.image_content /* 2131363580 */:
                showActionDialog(savePost().mediaList.get(0), 0);
                break;
            case R.id.media_preview /* 2131364155 */:
                organizeMediaList();
                break;
            case R.id.pick_media /* 2131364586 */:
                this.stat_add_photo = true;
                List<Media> list2 = savePost().mediaList;
                if (list2 != null && list2.size() >= 25) {
                    NVToast.makeText(getContext(), getString(R.string.post_pick_medias_exceed_limit), 0).show();
                } else {
                    MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
                    File dir2 = this.draftManager.getDir(this.draftId);
                    Bundle bundle2 = new Bundle();
                    if (list2 == null) {
                        size2 = 0;
                    } else {
                        size2 = list2.size();
                    }
                    mediaPickerFragment2.pickMedia(dir2, bundle2, 0, 25 - size2);
                }
                break;
            case R.id.post_categories /* 2131364653 */:
                this.stat_add_category = true;
                BlogPost blogPostSavePost2 = savePost();
                Intent intent = FragmentWrapperActivity.intent(BlogCategoryPickerFragment.class);
                intent.putExtra("blogCategoryList", JacksonUtils.writeAsString(blogPostSavePost2.blogCategoryList));
                if (blogPostSavePost2.type == 6) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                intent.putExtra(BlogCategoryPickerFragment.KEY_IS_QUIZ, z6);
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
                intent.putExtra("maximum", i10);
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent, 1);
                break;
        }
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setShouldInflateAd(true);
        setContentView(R.layout.post_image_layout);
        AndroidBug5497Workaround.assistActivity(this);
        LocationPickerFragment locationPickerFragment = (LocationPickerFragment) getSupportFragmentManager().m0("locationPicker");
        this.locationPickerFragment = locationPickerFragment;
        if (locationPickerFragment == null) {
            this.locationPickerFragment = new LocationPickerFragment();
            getSupportFragmentManager().q().e(this.locationPickerFragment, "locationPicker").j();
        }
        this.locationPickerFragment.listener = this;
        this.editTitle = (EditText) findViewById(R.id.title);
        this.addPhoto = findViewById(R.id.add_photo_placeholder);
        ImageView imageView = (ImageView) findViewById(R.id.pick_location);
        this.pickLocation = imageView;
        imageView.setOnClickListener(this);
        this.pickLocationProgress = findViewById(R.id.pick_locating_progress);
        this.imgContent = (NVImageView) findViewById(R.id.image_content);
        this.singleImageCaption = (TextView) findViewById(R.id.caption);
        this.imgContent.addOnLayoutChangeListener(this.layoutChangeListener);
        this.imgContent.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.blog.post.a
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public final void onImageChanged(NVImageView nVImageView, int i10, Media media) {
                this.f1845a.lambda$onCreate$0(nVImageView, i10, media);
            }
        });
        this.pickCategories = (Button) findViewById(R.id.post_categories);
        ImageView imageView2 = (ImageView) findViewById(R.id.pick_media);
        this.pickMedia = imageView2;
        imageView2.setOnClickListener(this);
        ThumbImageView thumbImageView = (ThumbImageView) findViewById(R.id.media_preview);
        this.mediaPreview = thumbImageView;
        thumbImageView.setOnClickListener(this);
        this.mediaCount = (TextView) findViewById(R.id.media_count);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.multi_image_container);
        this.multiImageContainer = recyclerView;
        recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 3));
        ImageRecyleAdapter imageRecyleAdapter = new ImageRecyleAdapter();
        this.recycleViewAdapter = imageRecyleAdapter;
        this.multiImageContainer.setAdapter(imageRecyleAdapter);
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
        Point screenSize = Utils.getScreenSize(this);
        this.screenSize = screenSize;
        this.viewHeight = (int) (((double) screenSize.y) * 0.32d);
        this.fansOnlyContainer = findViewById(R.id.fans_only_layout);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        NVImageView nVImageView = this.imgContent;
        if (nVImageView != null) {
            nVImageView.removeOnLayoutChangeListener(this.layoutChangeListener);
        }
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

    @Override // com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        String str;
        String str2;
        String str3;
        boolean z6;
        super.onPostFinished(postHelper, apiResponse);
        Blog blogObject = ((BlogResponse) apiResponse).object();
        boolean z10 = true;
        if (!isEdit()) {
            Intent intent = FeedDetailFragment.intent(blogObject);
            intent.putExtra("justCreated", true);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "View Created Post");
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
        }
        StatisticsService statisticsService = (StatisticsService) getService("statistics");
        boolean zIsEdit = isEdit();
        String strDraftType = draftType();
        String str4 = strDraftType.substring(0, 1).toUpperCase(Locale.US) + strDraftType.substring(1);
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
        StatisticsEventBuilder statisticsEventBuilderParam = statisticsEventBuilderEvent.userPropInc(str2).param(EventConstants.PostType.POST_TYPE, str4.toLowerCase());
        boolean z11 = this.stat_add_photo;
        String str5 = null;
        if (z11) {
            str3 = EventConstants.CreatePost.ADD_PHOTO;
        } else {
            str3 = null;
        }
        StatisticsEventBuilder statisticsEventBuilderParam2 = statisticsEventBuilderParam.param(str3, z11);
        if (this.stat_remove_location) {
            str5 = EventConstants.CreatePost.REMOVE_LOCATION;
        }
        StatisticsEventBuilder statisticsEventBuilderParam3 = statisticsEventBuilderParam2.param(str5, this.stat_remove_location_success).param(EventConstants.CreatePost.HAS_VIDEO, Media.hasVideo(blogObject.mediaList));
        if (blogObject.getBackgroundColor() != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        StatisticsEventBuilder statisticsEventBuilderParam4 = statisticsEventBuilderParam3.param(EventConstants.CreatePost.BACKGROUND_COLOR, z6);
        if (blogObject.getBackgroundMedia() == null) {
            z10 = false;
        }
        statisticsEventBuilderParam4.param(EventConstants.CreatePost.BACKGROUND_IMAGE, z10);
        if (!zIsEdit) {
            statisticsEventBuilderEvent.source(getStringParam("source"));
            statisticsEventBuilderEvent.userPropInc("User Submits a New " + str4 + " Total");
            FirebaseLogManager.logEvent(this, statisticsEventBuilderEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(BlogPost blogPost) {
        Drawable drawable;
        Drawable drawable2;
        super.updateView(blogPost);
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
        if (blogPost.latitude != 0 && blogPost.longitude != 0) {
            drawable2 = getResources().getDrawable(R.drawable.ic_location_blue);
        } else {
            drawable2 = getResources().getDrawable(R.drawable.ic_location);
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
            imageRecyleAdapter.notifyImageChanged(size2 > 1 ? list4 : null);
        }
    }
}
