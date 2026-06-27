package com.narvii.blog.post;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.blog.category.BlogCategoryPickerFragment;
import com.narvii.catalog.picker.CatalogPickerFragment;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.BackgroundPostHelper;
import com.narvii.item.picker.ItemSortFragment;
import com.narvii.list.NVAdapter;
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
import com.narvii.modulization.entry.EntryManager;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.poll.PollDurationView;
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
import com.narvii.widget.AddressView;
import com.narvii.widget.CardView;
import com.narvii.widget.EditTextIMG;
import com.narvii.widget.KeywordsView;
import com.narvii.widget.ThumbImageView;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class TopicPostActivity extends BackgroundPostActivity<BlogPost> implements View.OnClickListener, LocationPickerFragment.LocationListener {
    public static final int DEFAULT_POLL_DURATION = 7;
    static final int INSERT_IMG = 12;
    static final int MAX_MEDIA = 25;
    public static final int MAX_POLL_DURATION = 30;
    static final int PICK_CATEGORY_REQUEST = 1;
    static final int PICK_ITEM_REQUEST = 5;
    static final int SORT_ITEM_REQUEST = 6;
    static final int SORT_PHOTO_REQUEST = 2;
    EditTextIMG editContent;
    View influencerPostContainer;
    LocationPickerFragment locationPickerFragment;
    View rootView;
    boolean stat_add_category;
    boolean stat_add_category_success;
    boolean stat_add_photo;
    boolean stat_add_photo_success;
    boolean stat_link_favorite;
    boolean stat_link_favorite_success;
    boolean stat_remove_location;
    boolean stat_remove_location_success;

    protected boolean allowSetCover() {
        return true;
    }

    @Override // com.narvii.post.DraftPostActivity
    public String draftType() {
        return "topic";
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
        setContentView(R.layout.post_topic_layout);
        AndroidBug5497Workaround.assistActivity(this);
        this.locationPickerFragment = (LocationPickerFragment) getSupportFragmentManager().findFragmentByTag("locationPicker");
        if (this.locationPickerFragment == null) {
            this.locationPickerFragment = new LocationPickerFragment();
            getSupportFragmentManager().beginTransaction().add(this.locationPickerFragment, "locationPicker").commit();
        }
        this.locationPickerFragment.listener = this;
        this.rootView = findViewById(R.id.root);
        this.editContent = (EditTextIMG) findViewById(R.id.content);
        this.influencerPostContainer = findViewById(R.id.post_fans_only);
        this.editContent.imgMode = new ImgCallback();
        this.editContent.addTextChangedListener(new BasePostActivity.HideHintWatcher(findViewById(R.id.post_embed_image_hint)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity
    public void onPostLoaded(BlogPost blogPost) {
        super.onPostLoaded((TopicPostActivity) blogPost);
        if (isEdit()) {
            setTitle(R.string.edit);
            return;
        }
        int i = blogPost.type;
        if (i == 3) {
            setTitle(R.string.post_question_title);
        } else {
            if (i != 4) {
                return;
            }
            setTitle(R.string.post_poll_title);
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

    @Override // com.narvii.post.BasePostActivity
    protected void checkEligible() {
        T t = this.post;
        checkEligible("blog", (t == 0 || ((BlogPost) t).type != 3) ? NotificationChannelHelper.CHANNEL_NORMAL : EntryManager.ENTRY_QUEATION);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.post_add_link /* 2131298414 */:
                BlogPost blogPostSavePost = savePost();
                Intent intent = FragmentWrapperActivity.intent(CatalogPickerFragment.class);
                intent.putExtra("mine", true);
                intent.putExtra("itemList", JacksonUtils.writeAsString(blogPostSavePost.itemList));
                startActivityForResult(intent, 5);
                this.stat_link_favorite = true;
                break;
            case R.id.post_add_location /* 2131298415 */:
            case R.id.post_edit_location /* 2131298426 */:
                BlogPost blogPostSavePost2 = savePost();
                this.locationPickerFragment.pickLocation(blogPostSavePost2.latitude, blogPostSavePost2.longitude, true);
                break;
            case R.id.post_add_photo /* 2131298416 */:
                List<Media> list = savePost().mediaList;
                if (list != null && list.size() >= 25) {
                    NVToast.makeText(this, getString(R.string.post_pick_medias_exceed_limit), 0).show();
                } else {
                    this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), (Bundle) null, 0, 0);
                }
                this.stat_add_photo = true;
                break;
            case R.id.post_category /* 2131298421 */:
                BlogPost blogPostSavePost3 = savePost();
                Intent intent2 = FragmentWrapperActivity.intent(BlogCategoryPickerFragment.class);
                intent2.putExtra("blogCategoryList", JacksonUtils.writeAsString(blogPostSavePost3.blogCategoryList));
                intent2.putExtra(BlogCategoryPickerFragment.KEY_IS_QUIZ, blogPostSavePost3.type == 6);
                startActivityForResult(intent2, 1);
                this.stat_add_category = true;
                break;
            case R.id.post_edit_link /* 2131298425 */:
                BlogPost blogPostSavePost4 = savePost();
                Intent intent3 = FragmentWrapperActivity.intent(ItemSortFragment.class);
                intent3.putExtra("itemList", JacksonUtils.writeAsString(blogPostSavePost4.itemList));
                startActivityForResult(intent3, 6);
                break;
            case R.id.post_edit_photo /* 2131298427 */:
                BlogPost blogPostSavePost5 = savePost();
                Intent intent4 = FragmentWrapperActivity.intent(MediaOrganizeFragment.class);
                intent4.putExtra("mediaList", JacksonUtils.writeAsString(blogPostSavePost5.mediaList));
                intent4.putExtra("dir", this.draftManager.getDir(this.draftId).getAbsolutePath());
                intent4.putExtra("coverMediaIndex", blogPostSavePost5.getCoverMediaIndex());
                intent4.putExtra("maximum", 25);
                intent4.putExtra("allowSetCover", allowSetCover());
                startActivityForResult(intent4, 2);
                break;
            case R.id.post_edit_poll_duration /* 2131298430 */:
                if (savePost().endTime == null) {
                    editPollDuration();
                    break;
                } else {
                    new AlertDialog.Builder(getContext()).setMessage(R.string.post_cannot_change_poll_duration_msg).setNegativeButton(android.R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER).show();
                    break;
                }
        }
        View viewFindFocus = this.rootView.findFocus();
        if (viewFindFocus != null) {
            viewFindFocus.clearFocus();
        }
    }

    public void editPollDuration() {
        savePost();
        final BlogPost blogPostSavePost = savePost();
        NVAdapter nVAdapter = new NVAdapter(this) { // from class: com.narvii.blog.post.TopicPostActivity.1
            @Override // android.widget.Adapter
            public int getCount() {
                return 30;
            }

            @Override // android.widget.Adapter
            public long getItemId(int i) {
                return i;
            }

            @Override // android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View viewCreateView = createView(R.layout.simple_list_item_check, viewGroup, view);
                int i2 = i + 1;
                ((TextView) viewCreateView.findViewById(R.id.text)).setText(TopicPostActivity.this.getString(R.string.datetime_n_days, new Object[]{Integer.valueOf(i2)}));
                viewCreateView.findViewById(R.id.stub1).setVisibility(blogPostSavePost.durationInDays == i2 ? 0 : 8);
                return viewCreateView;
            }

            @Override // android.widget.Adapter
            public Integer getItem(int i) {
                return Integer.valueOf(i);
            }
        };
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(R.string.post_poll_duration);
        builder.setAdapter(nVAdapter, new DialogInterface.OnClickListener() { // from class: com.narvii.blog.post.TopicPostActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                BlogPost blogPost = blogPostSavePost;
                blogPost.durationInDays = i + 1;
                ((DraftPostActivity) TopicPostActivity.this).post = blogPost;
                TopicPostActivity.this.updateView(blogPostSavePost);
            }
        });
        builder.show();
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
            this.stat_remove_location = false;
            this.stat_remove_location_success = false;
        }
        this.post = blogPostSavePost;
        updateView(blogPostSavePost);
    }

    @Override // com.narvii.post.LocationPickerFragment.LocationListener
    public void onLocatingChanged(boolean z) {
        updateView(savePost());
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        ArrayList listAs;
        ArrayList listAs2;
        super.onActivityResult(i, i2, intent);
        if (i == 2 && i2 == -1 && intent != null && (listAs2 = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class)) != null) {
            BlogPost blogPostSavePost = savePost();
            blogPostSavePost.mediaList = listAs2;
            blogPostSavePost.setCoverMediaIndex(intent.getIntExtra("coverMediaIndex", -1));
            this.post = blogPostSavePost;
            updateView(blogPostSavePost);
        }
        if ((i == 5 || i == 6) && i2 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("itemList"), Item.class)) != null) {
            BlogPost blogPostSavePost2 = savePost();
            blogPostSavePost2.itemList = listAs;
            this.post = blogPostSavePost2;
            updateView(blogPostSavePost2);
        }
        if (i == 1 && i2 == -1 && intent != null) {
            ArrayList listAs3 = JacksonUtils.readListAs(intent.getStringExtra("blogCategoryList"), BlogCategory.class);
            BlogPost blogPostSavePost3 = savePost();
            blogPostSavePost3.blogCategoryList = listAs3;
            this.post = blogPostSavePost3;
            updateView(blogPostSavePost3);
            this.stat_add_category_success = true;
        }
        if (i == 12 && i2 == -1 && intent != null) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(BlogPost blogPost) {
        Date date;
        super.updateView((TopicPostActivity) blogPost);
        View view = this.rootView;
        TextView textView = (TextView) view.findViewById(R.id.title);
        int i = blogPost.type;
        if (i == 3) {
            textView.setHint(R.string.post_qa_title_hint);
        } else if (i == 4) {
            textView.setHint(R.string.post_poll_title_hint);
        }
        if (!Utils.isEquals(textView.getText().toString(), blogPost.title)) {
            textView.setText(blogPost.title);
        }
        TextView textView2 = (TextView) view.findViewById(R.id.content);
        int i2 = blogPost.type;
        if (i2 == 3) {
            textView2.setHint(R.string.post_qa_content_hint);
        } else if (i2 == 4) {
            textView2.setHint(R.string.post_poll_content_hint);
        }
        if (!Utils.isEquals(textView2.getText().toString(), blogPost.content)) {
            textView2.setText(blogPost.content);
        }
        List<Media> list = blogPost.mediaList;
        int size = list == null ? 0 : list.size();
        View viewFindViewById = view.findViewById(R.id.post_add_photo);
        viewFindViewById.setOnClickListener(this);
        int i3 = 8;
        viewFindViewById.setVisibility(size == 0 ? 0 : 8);
        View viewFindViewById2 = view.findViewById(R.id.post_edit_photo);
        viewFindViewById2.setOnClickListener(this);
        viewFindViewById2.setVisibility(size > 0 ? 0 : 8);
        ((TextView) viewFindViewById2.findViewById(R.id.hint)).setText(getString(R.string.post_media_n, new Object[]{Integer.valueOf(size)}));
        ViewGroup viewGroup = (ViewGroup) viewFindViewById2;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i4 >= viewGroup.getChildCount()) {
                break;
            }
            View childAt = viewGroup.getChildAt(i4);
            if (childAt.getId() == R.id.image) {
                ThumbImageView thumbImageView = (ThumbImageView) childAt;
                Media media = i5 < size ? blogPost.mediaList.get(i5) : null;
                thumbImageView.setImageMedia(media);
                thumbImageView.setVisibility(media == null ? 4 : 0);
                i5++;
            }
            i4++;
        }
        View viewFindViewById3 = view.findViewById(R.id.post_poll_endtime);
        viewFindViewById3.setVisibility((blogPost.type != 4 || blogPost.endTime == null) ? 8 : 0);
        ((PollDurationView) viewFindViewById3).setEndTime(blogPost.endTime);
        View viewFindViewById4 = view.findViewById(R.id.post_edit_poll_duration);
        viewFindViewById4.setOnClickListener(this);
        if (blogPost.type == 4) {
            Date date2 = blogPost.endTime;
            viewFindViewById4.setVisibility((date2 == null || date2.getTime() > System.currentTimeMillis()) ? 0 : 8);
            TextView textView3 = (TextView) viewFindViewById4.findViewById(R.id.post_edit_poll_duration_hint);
            TextView textView4 = (TextView) viewFindViewById4.findViewById(R.id.post_edit_poll_duration_days);
            if (blogPost.endTime != null) {
                textView3.setVisibility(0);
                textView3.setText(R.string.post_cannot_change);
                textView4.setVisibility(8);
            } else if (blogPost.durationInDays == 0) {
                textView3.setVisibility(0);
                textView3.setText(R.string.post_not_specified);
                textView4.setVisibility(8);
            } else {
                textView3.setVisibility(8);
                textView4.setVisibility(0);
                textView4.setText(getString(R.string.post_poll_duration_n_days, new Object[]{Integer.valueOf(blogPost.durationInDays)}));
            }
        } else {
            viewFindViewById4.setVisibility(8);
        }
        int iNodeInt = JacksonUtils.nodeInt(blogPost.extensions, "pollSettings", "polloptType");
        boolean zNodeBoolean = JacksonUtils.nodeBoolean(blogPost.extensions, "pollSettings", "joinEnabled");
        View viewFindViewById5 = view.findViewById(R.id.post_edit_poll_allow_join);
        viewFindViewById5.setVisibility(blogPost.type == 4 && iNodeInt == 1 && ((date = blogPost.endTime) == null || (date.getTime() > System.currentTimeMillis() ? 1 : (date.getTime() == System.currentTimeMillis() ? 0 : -1)) > 0) ? 0 : 8);
        ((CompoundButton) viewFindViewById5.findViewById(R.id.post_edit_poll_allow_join_switch)).setChecked(zNodeBoolean);
        view.findViewById(R.id.post_category).setOnClickListener(this);
        ArrayList arrayList = new ArrayList();
        List<BlogCategory> list2 = blogPost.blogCategoryList;
        if (list2 != null) {
            Iterator<BlogCategory> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().label);
            }
        }
        ((KeywordsView) view.findViewById(R.id.post_categories)).setKeywords(arrayList);
        ((TextView) view.findViewById(R.id.post_categories_select)).setText(arrayList.size() > 0 ? getString(R.string.topic_categories_modify) : getString(R.string.topic_categories_select));
        if (blogPost.latitude == 0) {
            int i6 = blogPost.longitude;
        }
        this.locationPickerFragment.isLocating();
        View viewFindViewById6 = view.findViewById(R.id.post_add_location);
        viewFindViewById6.setOnClickListener(this);
        viewFindViewById6.setVisibility(8);
        view.findViewById(R.id.post_locating).setVisibility(8);
        View viewFindViewById7 = view.findViewById(R.id.post_edit_location);
        viewFindViewById7.setOnClickListener(this);
        viewFindViewById7.setVisibility(8);
        AddressView addressView = (AddressView) viewFindViewById7.findViewById(R.id.address);
        addressView.setLatLngE6(blogPost.latitude, blogPost.longitude, blogPost.address, false);
        addressView.setVisibility(8);
        List<Item> list3 = blogPost.itemList;
        int size2 = list3 == null ? 0 : list3.size();
        View viewFindViewById8 = view.findViewById(R.id.post_add_link);
        viewFindViewById8.setOnClickListener(this);
        viewFindViewById8.setVisibility((blogPost.type == 4 || size2 > 0) ? 8 : 0);
        View viewFindViewById9 = view.findViewById(R.id.post_edit_link);
        viewFindViewById9.setOnClickListener(this);
        if (blogPost.type != 4 && size2 != 0) {
            i3 = 0;
        }
        viewFindViewById9.setVisibility(i3);
        ((TextView) viewFindViewById9.findViewById(R.id.hint)).setText(getString(R.string.post_link_n, new Object[]{Integer.valueOf(size2)}));
        ViewGroup viewGroup2 = (ViewGroup) viewFindViewById9;
        int i7 = 0;
        for (int i8 = 0; i8 < viewGroup2.getChildCount(); i8++) {
            View childAt2 = viewGroup2.getChildAt(i8);
            if ("link".equals(childAt2.getTag())) {
                CardView cardView = (CardView) childAt2;
                Item item = i7 < size2 ? blogPost.itemList.get(i7) : null;
                cardView.setItem(item);
                cardView.setVisibility(item == null ? 4 : 0);
                i7++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public BlogPost savePost() {
        View view = this.rootView;
        ((BlogPost) this.post).title = ((TextView) view.findViewById(R.id.title)).getText().toString();
        ((BlogPost) this.post).content = ((TextView) view.findViewById(R.id.content)).getText().toString();
        T t = this.post;
        if (((BlogPost) t).type == 4 && JacksonUtils.nodeInt(((BlogPost) t).extensions, "pollSettings", "polloptType") == 1) {
            boolean zIsChecked = ((CompoundButton) view.findViewById(R.id.post_edit_poll_allow_join_switch)).isChecked();
            T t2 = this.post;
            if (((BlogPost) t2).extensions == null) {
                ((BlogPost) t2).extensions = JacksonUtils.createObjectNode();
            }
            JsonNode jsonNodeCreateArrayNode = ((BlogPost) this.post).extensions.get("pollSettings");
            if (jsonNodeCreateArrayNode == null) {
                jsonNodeCreateArrayNode = JacksonUtils.createArrayNode();
                ((BlogPost) this.post).extensions.put("pollSettings", jsonNodeCreateArrayNode);
            }
            ((ObjectNode) jsonNodeCreateArrayNode).put("joinEnabled", zIsChecked);
        }
        T t3 = this.post;
        if (((BlogPost) t3).latitude != 0 && ((BlogPost) t3).longitude != 0 && TextUtils.isEmpty(((BlogPost) t3).address)) {
            LocationService locationService = (LocationService) getService("location");
            T t4 = this.post;
            ReadableAddress cachedReverseGeocoding = locationService.getCachedReverseGeocoding(GPSCoordinate.create(((BlogPost) t4).latitude, ((BlogPost) t4).longitude));
            if (cachedReverseGeocoding != null) {
                ((BlogPost) this.post).address = cachedReverseGeocoding.getCityLevelAddressText();
            }
        }
        return (BlogPost) this.post;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public boolean validateUpload(BlogPost blogPost) {
        if (!validateEditTextNotEmpty((EditText) this.rootView.findViewById(R.id.title), R.string.post_error_no_title)) {
            return false;
        }
        if (IMGUtils.filterRefIds(this.editContent.getText(), blogPost.mediaList)) {
            savePost();
        }
        if (blogPost.type == 3 && !validateEditTextNotEmpty(this.editContent, R.string.post_error_no_content)) {
            return false;
        }
        if (blogPost.type != 4 || blogPost.endTime != null || blogPost.durationInDays > 0) {
            return validateMediaListMax(blogPost.mediaList, 25, R.string.post_error_media_max_n);
        }
        showAlert(R.string.post_error_no_poll_duration);
        return false;
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
        Blog blog = ((BlogResponse) apiResponse).blog;
        if (isEdit()) {
            return;
        }
        Intent intent = FeedDetailFragment.intent(blog);
        intent.putExtra("justCreated", true);
        intent.putExtra("Source", "View Created Post");
        startActivity(intent);
    }

    private class ImgCallback extends BasePostActivity.BaseImgCallback {
        public ImgCallback() {
            super(TopicPostActivity.this.editContent);
        }

        @Override // com.narvii.post.BasePostActivity.BaseImgCallback, android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            menu.add(0, R.string.post_insert_image, 0, R.string.post_insert_image).setIcon(new ActionBarIcon(this.editText.getContext(), R.string.ion_images)).setShowAsAction(2);
            return super.onCreateActionMode(actionMode, menu);
        }

        @Override // com.narvii.post.BasePostActivity.BaseImgCallback, android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            if (menuItem.getItemId() == R.string.post_insert_image) {
                if (IMGUtils.isSelectionInTag(TopicPostActivity.this.editContent)) {
                    NVToast.makeText(TopicPostActivity.this.getContext(), R.string.post_cannot_insert_image_here, 0).show();
                    return true;
                }
                List<Media> list = TopicPostActivity.this.savePost().mediaList;
                Intent intent = FragmentWrapperActivity.intent(MediaOrganizeFragment.class);
                intent.setAction("android.intent.action.PICK");
                intent.putExtra("mediaList", JacksonUtils.writeAsString(list));
                intent.putExtra("dir", ((DraftPostActivity) TopicPostActivity.this).draftManager.getDir(((DraftPostActivity) TopicPostActivity.this).draftId).getAbsolutePath());
                intent.putExtra("maximum", 25);
                intent.putExtra("coverMediaIndex", ((BlogPost) ((DraftPostActivity) TopicPostActivity.this).post).getCoverMediaIndex());
                intent.putExtra("allowSetCover", TopicPostActivity.this.allowSetCover());
                intent.putExtra("existsRefIds", JacksonUtils.writeAsString(IMGUtils.extractRefIds(TopicPostActivity.this.editContent.getText().toString())));
                TopicPostActivity.this.startActivityForResult(intent, 12);
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
