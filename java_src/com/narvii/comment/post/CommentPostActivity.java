package com.narvii.comment.post;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.community.CommunityService;
import com.narvii.community.JoinCommunityDialog;
import com.narvii.headlines.HeadlineLoggingHelper;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.CommunityHelper;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.Sticker;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.CommentResponse;
import com.narvii.modulization.Module;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.picker.StickerPickerTabFragment;
import com.narvii.monetization.sticker.picker.StickerSelectListener;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.post.BasePostActivity;
import com.narvii.post.PostHelper;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.TmpValue;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.DragSortGallery;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TopTransparentDrawable;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class CommentPostActivity extends BasePostActivity<CommentPost> implements View.OnClickListener, View.OnLongClickListener, StickerSelectListener {
    public static final String COMMENT_POST_KEY_NDC_ID = "ndcId";
    static CommentPost LATEST_DRAFT = null;
    static String LATEST_DRAFT_ID = null;
    static final int MAX_MEDIA = 5;
    private static WeakReference<StatusListener> statusListener;
    private View btnKeyboardEntry;
    private View btnStickerEntry;
    boolean defaultStickerSet;
    EditText editContent;
    private boolean fromStoryCommentList;
    DragSortGallery imgs;
    boolean isKeyboardVisible;
    SoftKeyboard.KeyboardObserver keyboardObserver;
    File photoDir;
    CommentPost post;
    ImageView postBtn;
    boolean posted;
    public View stickerContainer;
    private View stickerPanel;
    private StickerPickerTabFragment stickerPickerTabFragment;
    final TmpValue<SwitchKeyboard> switchingKeyboard = new TmpValue<>();

    public interface StatusListener {
        void onHeightFix(CommentPostActivity commentPostActivity);

        void onPostDone(CommentPostActivity commentPostActivity, boolean z);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.logging.Page
    public String getPageName() {
        return "CommentPage";
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.logging.Page
    public boolean isValidPage() {
        return true;
    }

    public static void clearMemoryDrafts() {
        LATEST_DRAFT = null;
        LATEST_DRAFT_ID = null;
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<CommentPost> postClazz() {
        return CommentPost.class;
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return getStringParam("commentId") != null;
    }

    protected boolean disableMediaPost() {
        return 109 == getIntParam("parentType", -1);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        CommentPost commentPost;
        super.onCreate(bundle);
        this.photoDir = new File(new File(getFilesDir(), "photo"), "comment");
        setContentView(R.layout.post_comment_layout);
        AndroidBug5497Workaround.assistActivity(this);
        getActionBar().hide();
        setTitle(isEdit() ? R.string.edit : R.string.post_comment_title);
        this.editContent = (EditText) findViewById(R.id.content);
        this.keyboardObserver = SoftKeyboard.observeKeyboard(this.editContent, new Callback<Boolean>() { // from class: com.narvii.comment.post.CommentPostActivity.1
            boolean called;

            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                CommentPostActivity.this.isKeyboardVisible = bool.booleanValue();
                SwitchKeyboard andRemove = CommentPostActivity.this.switchingKeyboard.getAndRemove();
                if (andRemove == null || andRemove.view == null) {
                    CommentPostActivity commentPostActivity = CommentPostActivity.this;
                    commentPostActivity.changePanelVisibility(commentPostActivity.stickerPanel, 8);
                } else if (bool == Boolean.FALSE && andRemove.openKeyboard == bool.booleanValue()) {
                    CommentPostActivity commentPostActivity2 = CommentPostActivity.this;
                    commentPostActivity2.changePanelVisibility(commentPostActivity2.stickerPanel, 0);
                } else if (bool == Boolean.TRUE) {
                    CommentPostActivity.this.changePanelVisibility(andRemove.view, 8);
                }
                CommentPostActivity.this.changeStikerEntryVisibility(!(CommentPostActivity.this.stickerPanel.getVisibility() == 0));
                if (bool != Boolean.FALSE || CommentPostActivity.this.stickerPanel.getVisibility() == 0 || !this.called) {
                    CommentPostActivity.this.changeSegmentBackground(true);
                } else {
                    CommentPostActivity.this.changeSegmentBackground(false);
                }
                CommentPostActivity commentPostActivity3 = CommentPostActivity.this;
                commentPostActivity3.updateGalleryViews(commentPostActivity3.stickerPanel.getVisibility() == 0);
                if (bool.booleanValue() && !this.called) {
                    final StatusListener statusListener2 = CommentPostActivity.statusListener == null ? null : (StatusListener) CommentPostActivity.statusListener.get();
                    if (statusListener2 != null) {
                        Utils.postDelayed(new Runnable() { // from class: com.narvii.comment.post.CommentPostActivity.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                statusListener2.onHeightFix(CommentPostActivity.this);
                            }
                        }, 200L);
                    }
                    this.called = true;
                }
                CommentPostActivity commentPostActivity4 = CommentPostActivity.this;
                if (!commentPostActivity4.isKeyboardVisible || commentPostActivity4.defaultStickerSet || commentPostActivity4.getStringParam("stickerCollectionId") == null) {
                    return;
                }
                Utils.post(new Runnable() { // from class: com.narvii.comment.post.CommentPostActivity.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        CommentPostActivity.this.stickerContainer.performClick();
                        CommentPostActivity.this.defaultStickerSet = true;
                    }
                });
            }
        });
        ((CommentEditText) this.editContent).onKeyPreImeListener = new Callback<KeyEvent>() { // from class: com.narvii.comment.post.CommentPostActivity.2
            @Override // com.narvii.util.Callback
            public void call(KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                    CommentPostActivity.this.finish();
                }
            }
        };
        this.editContent.addTextChangedListener(new TextWatcher() { // from class: com.narvii.comment.post.CommentPostActivity.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                boolean z = charSequence.toString().trim().replaceAll("\\u200D", "").length() == 0;
                CommentPostActivity.this.postBtn.setClickable(!z);
                CommentPostActivity commentPostActivity = CommentPostActivity.this;
                commentPostActivity.postBtn.setImageDrawable(ContextCompat.getDrawable(commentPostActivity.getContext(), z ? R.drawable.ic_comment_post : R.drawable.ic_comment_post_actived));
            }
        });
        String stringParam = getStringParam("hint");
        if (!TextUtils.isEmpty(stringParam)) {
            this.editContent.setHint(stringParam);
        }
        findViewById(R.id.pick_media).setOnClickListener(this);
        if (disableMediaPost()) {
            findViewById(R.id.pick_media).setVisibility(8);
            if (Build.VERSION.SDK_INT < 17) {
                ((ViewGroup.MarginLayoutParams) this.editContent.getLayoutParams()).leftMargin = (int) Utils.dpToPx(getContext(), 8.0f);
            } else {
                ((ViewGroup.MarginLayoutParams) this.editContent.getLayoutParams()).setMarginStart((int) Utils.dpToPx(getContext(), 8.0f));
            }
        }
        this.postBtn = (ImageView) findViewById(R.id.post);
        this.postBtn.setOnClickListener(this);
        findViewById(R.id.stub1).setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.comment.post.CommentPostActivity.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    return true;
                }
                CommentPostActivity.this.finish();
                return true;
            }
        });
        this.imgs = (DragSortGallery) findViewById(R.id.comment_images);
        int childCount = this.imgs.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.imgs.getChildAt(i);
            if (childAt.findViewById(R.id.image) != null) {
                childAt.setOnClickListener(this);
                childAt.setOnLongClickListener(this);
            }
        }
        if (bundle == null) {
            this.post = (CommentPost) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), CommentPost.class);
            CommentPost commentPost2 = this.post;
            boolean z = commentPost2 == null || ((commentPost2.title() == null || this.post.title().trim().length() == 0) && ((this.post.icon() == null || this.post.icon().trim().length() == 0) && (this.post.content() == null || this.post.content().trim().length() == 0)));
            if (this.post == null || z) {
                if (Utils.isEquals(getStringParam("parentType") + "|" + getStringParam("parentId") + "|" + getStringParam("respondTo") + "|" + getStringParam("commentId"), LATEST_DRAFT_ID) && (commentPost = LATEST_DRAFT) != null) {
                    this.post = commentPost;
                    LATEST_DRAFT = null;
                    LATEST_DRAFT_ID = null;
                } else if (this.post == null) {
                    this.post = new CommentPost();
                }
            }
        } else {
            this.post = (CommentPost) JacksonUtils.readAs(bundle.getString(Module.MODULE_POSTS), CommentPost.class);
        }
        this.stickerContainer = findViewById(R.id.sticker_button_container);
        this.stickerContainer.setOnClickListener(this);
        this.stickerPanel = findViewById(R.id.sticker_panel);
        this.btnStickerEntry = findViewById(R.id.sticker_entry);
        this.btnKeyboardEntry = findViewById(R.id.sticker_keyboard);
        if (this.stickerPanel != null) {
            this.stickerPickerTabFragment = (StickerPickerTabFragment) getSupportFragmentManager().findFragmentByTag("stickPicker");
            if (this.stickerPickerTabFragment == null) {
                this.stickerPickerTabFragment = new StickerPickerTabFragment();
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean(CommentListFragment.COMMENT_KEY_SHOW_EMOJI_ONLY, getBooleanParam(CommentListFragment.COMMENT_KEY_SHOW_EMOJI_ONLY) || getBooleanParam(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT));
                bundle2.putBoolean("tabBottom", true);
                bundle2.putString(CommentListFragment.COMMENT_KEY_SOURCE, "Sticker Keyboard");
                bundle2.putString("collectionId", getStringParam("stickerCollectionId"));
                if (isGlobalInteractionScope()) {
                    bundle2.putInt("__communityId", 0);
                }
                this.stickerPickerTabFragment.setArguments(bundle2);
                getSupportFragmentManager().beginTransaction().add(R.id.sticker_panel, this.stickerPickerTabFragment, "stickPicker").commitAllowingStateLoss();
            }
            this.stickerPickerTabFragment.setStickerSelectListener(this);
        }
        updateView(this.post);
        this.fromStoryCommentList = getBooleanParam("fromStoryCommentList", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changePanelVisibility(View view, int i) {
        if (view == null) {
            return;
        }
        view.setVisibility(i);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(Module.MODULE_POSTS, JacksonUtils.writeAsString(this.post));
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.fromStoryCommentList) {
            NVPlayerManager.getNVPlayer(getApplicationContext()).setPlayWhenReady(true);
        }
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        if (!this.posted) {
            CommentPost commentPostSavePost = savePost();
            CommentPost commentPost = (CommentPost) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), CommentPost.class);
            if (!(commentPostSavePost == null || ((commentPostSavePost.title() == null || commentPostSavePost.title().trim().length() == 0) && ((commentPostSavePost.icon() == null || commentPostSavePost.icon().trim().length() == 0) && (commentPostSavePost.content() == null || commentPostSavePost.content().trim().length() == 0)))) && (commentPost == null || !commentPostSavePost.isSame(commentPost))) {
                LATEST_DRAFT_ID = getStringParam("parentType") + "|" + getStringParam("parentId") + "|" + getStringParam("respondTo") + "|" + getStringParam("commentId");
                LATEST_DRAFT = commentPostSavePost;
            }
        }
        if (this.fromStoryCommentList) {
            NVPlayerManager.getNVPlayer(getApplicationContext()).setPlayWhenReady(false);
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        SoftKeyboard.KeyboardObserver keyboardObserver = this.keyboardObserver;
        if (keyboardObserver != null) {
            keyboardObserver.dispose();
        }
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out_fast);
        WeakReference<StatusListener> weakReference = statusListener;
        StatusListener statusListener2 = weakReference == null ? null : weakReference.get();
        if (statusListener2 != null) {
            statusListener2.onPostDone(this, this.posted && !isEdit());
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 82) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeStikerEntryVisibility(boolean z) {
        View view = this.btnStickerEntry;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
        View view2 = this.btnKeyboardEntry;
        if (view2 != null) {
            view2.setVisibility(z ? 8 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeSegmentBackground(boolean z) {
        int keyboardHeight = AndroidBug5497Workaround.getKeyboardHeight(this);
        int validPanelHeight = keyboardHeight > 0 ? getValidPanelHeight(keyboardHeight) : getResources().getDimensionPixelSize(R.dimen.voice_record_panel_height_min);
        View decorView = getWindow().getDecorView();
        if (!z) {
            validPanelHeight = 0;
        }
        decorView.setBackgroundDrawable(new TopTransparentDrawable(-657929, validPanelHeight));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateGalleryViews(boolean z) {
        if (this.imgs == null) {
            return;
        }
        List<Media> list = savePost().mediaList;
        int size = list == null ? 0 : list.size();
        this.imgs.setVisibility((size <= 0 || z) ? 8 : 0);
        this.imgs.setDragRange(0, size);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.pick_media) {
            List<Media> list = savePost().mediaList;
            if (list != null && list.size() >= 5) {
                NVToast.makeText(this, getString(R.string.post_pick_medias_exceed_limit), 0).show();
                return;
            } else {
                this.photoDir.mkdirs();
                this.mediaPickerFragment.pickMedia(this.photoDir, (Bundle) null, 0, 5 - (list == null ? 0 : list.size()));
                return;
            }
        }
        if (id == R.id.post) {
            startPost();
            return;
        }
        if (id == R.id.sticker_button_container) {
            if (isVisitorNotJoined()) {
                JoinCommunityDialog.showInnerJoinDialog(this);
                return;
            }
            if (this.stickerPanel.getVisibility() != 0) {
                int keyboardHeight = AndroidBug5497Workaround.getKeyboardHeight(this);
                if (keyboardHeight > 0) {
                    this.stickerPanel.getLayoutParams().height = getValidPanelHeight(keyboardHeight);
                }
                if (this.isKeyboardVisible) {
                    this.switchingKeyboard.set(new SwitchKeyboard(false, this.stickerPanel));
                    SoftKeyboard.hideSoftKeyboard(this.editContent);
                } else {
                    changePanelVisibility(this.stickerPanel, 0);
                }
                changeStikerEntryVisibility(false);
                updateGalleryViews(true);
                return;
            }
            updateGalleryViews(false);
            this.switchingKeyboard.set(new SwitchKeyboard(true, this.stickerPanel));
            SoftKeyboard.showSoftKeyboard(this.editContent);
            changeStikerEntryVisibility(true);
            return;
        }
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.image);
        if (nVImageView != null) {
            Media media = (Media) nVImageView.getTag(R.id.image);
            if (media == null) {
                this.photoDir.mkdirs();
                this.mediaPickerFragment.pickMedia(this.photoDir, (Bundle) null, 4, 1);
                return;
            }
            List<Media> list2 = savePost().mediaList;
            int iIndexOf = list2.indexOf(media);
            Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryActivity.class);
            intent.putExtra("list", JacksonUtils.writeAsString(list2));
            if (iIndexOf >= 0) {
                intent.putExtra("position", iIndexOf);
            }
            startActivity(intent);
        }
    }

    protected int getValidPanelHeight(int i) {
        return Math.max(i, getResources().getDimensionPixelSize(R.dimen.voice_record_panel_height_min));
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        final Media media = (Media) ((NVImageView) view.findViewById(R.id.image)).getTag(R.id.image);
        if (media != null) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setItems(new CharSequence[]{getContext().getString(R.string.delete)}, new DialogInterface.OnClickListener() { // from class: com.narvii.comment.post.CommentPostActivity.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    CommentPost commentPostSavePost = CommentPostActivity.this.savePost();
                    commentPostSavePost.mediaList.remove(media);
                    CommentPostActivity commentPostActivity = CommentPostActivity.this;
                    commentPostActivity.post = commentPostSavePost;
                    commentPostActivity.updateView(commentPostSavePost);
                }
            });
            builder.show();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void updateView(CommentPost commentPost) {
        super.updateView((CommentPostActivity) commentPost);
        if (commentPost == null) {
            return;
        }
        if (!Utils.isEquals(commentPost.content, this.editContent.getText().toString())) {
            this.editContent.setText(commentPost.content);
            EditText editText = this.editContent;
            editText.setSelection(editText.getText().length());
        }
        List<Media> list = commentPost.mediaList;
        int size = list == null ? 0 : list.size();
        this.imgs.setVisibility(size > 0 ? 0 : 8);
        this.imgs.setDragRange(0, size);
        int childCount = this.imgs.getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.imgs.getChildAt(i2);
            NVImageView nVImageView = (NVImageView) childAt.findViewById(R.id.image);
            if (nVImageView != null) {
                Media media = i < size ? commentPost.mediaList.get(i) : null;
                childAt.findViewById(R.id.icon).setVisibility(media == null ? 0 : 4);
                nVImageView.setImageMedia(media);
                nVImageView.setTag(R.id.image, media);
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public CommentPost savePost() {
        Media media;
        if (this.post == null) {
            this.post = new CommentPost();
        }
        this.post.content = this.editContent.getText().toString();
        this.post.mediaList = new ArrayList();
        int childCount = this.imgs.getChildCount();
        for (int i = 0; i < childCount; i++) {
            NVImageView nVImageView = (NVImageView) this.imgs.getChildAt(i).findViewById(R.id.image);
            if (nVImageView != null && (media = (Media) nVImageView.getTag(R.id.image)) != null) {
                this.post.mediaList.add(media);
            }
        }
        return this.post;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public boolean validateUpload(CommentPost commentPost) {
        return validateEditTextNotEmpty(this.editContent, R.string.post_error_no_content) && validateEditTextMax(this.editContent, 3000, R.string.post_error_edit_max_n) && validateMediaListMax(commentPost.mediaList, 5, R.string.post_media_n);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        CommentPost commentPostSavePost = savePost();
        ArrayList arrayList = new ArrayList();
        List<Media> list2 = commentPostSavePost.mediaList;
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        arrayList.addAll(list);
        trimMediaList(arrayList, 5, R.string.post_pick_medias_exceed_limit);
        commentPostSavePost.mediaList = arrayList;
        this.post = commentPostSavePost;
        updateView(commentPostSavePost);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.comment.post.CommentPostActivity.6
            @Override // java.lang.Runnable
            public void run() {
                SoftKeyboard.showSoftKeyboard(CommentPostActivity.this.editContent);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(CommentPost commentPost) {
        ApiRequest apiRequestCreatePostCommentRequest = CommentHelper.createPostCommentRequest(getIntParam("parentType"), getStringParam("parentId"), getStringParam("commentId"), isGlobalInteractionScope());
        if (getIntParam(COMMENT_POST_KEY_NDC_ID, -1) > 0) {
            apiRequestCreatePostCommentRequest.edit().communityId(getIntParam(COMMENT_POST_KEY_NDC_ID));
        }
        PostHelper postHelper = new PostHelper(this);
        postHelper.setPostListener(this);
        postHelper.startPost(commentPost, apiRequestCreatePostCommentRequest, CommentResponse.class);
        int intParam = getIntParam("parentType", -1);
        int intParam2 = getIntParam("parentSubType", -1);
        String str = commentPost.type == 3 ? "Sticker" : "Text";
        Feed feed = (Feed) JacksonUtils.readUsing(getStringParam(CommentListFragment.COMMENT_KEY_FEED), new Feed.FeedDeserializer());
        LogEvent.Builder builderExtraParam = LogEvent.clickBuilder(this, isReply() ? ActSemantic.reply : ActSemantic.comment).area("CommentArea").extraParam("content", str);
        if (feed != null) {
            builderExtraParam.object(feed);
        } else {
            builderExtraParam.objectId(getStringParam("parentId")).objectType(LogUtils.getObjectType(intParam)).objectSubType(LogUtils.getObjectSubType(intParam, intParam2));
        }
        builderExtraParam.send();
        LiveLayerUtils.reportCommenting(this, getIntParam("parentType"), getStringParam("parentId"), getIntParam("parentSubType", -1));
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        this.posted = true;
        clearMemoryDrafts();
        super.onPostFinished(postHelper, apiResponse);
    }

    private boolean isReply() {
        return getStringParam("respondTo") != null;
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFail(PostHelper postHelper, int i, String str, Throwable th) {
        super.onPostFail(postHelper, i, str, th);
        if (i == 230) {
            final CommentPost commentPost = (CommentPost) postHelper.getPost();
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.guest_comment_hint);
            aCMAlertDialog.addButton(getString(R.string.cancel), -4473925, (View.OnClickListener) null);
            aCMAlertDialog.addButton(R.string.submit_join, new View.OnClickListener() { // from class: com.narvii.comment.post.CommentPostActivity.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CommunityHelper communityHelper = new CommunityHelper(CommentPostActivity.this);
                    new HeadlineLoggingHelper(CommentPostActivity.this).logJoinAminoStarting(CommentPostActivity.this.getStringParam("parentId"), CommentPostActivity.this.getIntParam("__communityId"), LoggingSource.GuestComment.toString());
                    communityHelper.joinCommunity(CommentPostActivity.this.getIntParam("__communityId"), null, new Callback<Boolean>() { // from class: com.narvii.comment.post.CommentPostActivity.7.1
                        @Override // com.narvii.util.Callback
                        public void call(Boolean bool) {
                            if (!bool.booleanValue()) {
                                CommentPostActivity.this.gotoCommunityDetail();
                            } else {
                                AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                CommentPostActivity.this.doPost(commentPost);
                            }
                        }
                    });
                }
            });
            aCMAlertDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoCommunityDetail() {
        int configCid = getConfigCid();
        Community community = ((CommunityService) getService("community")).getCommunity(configCid);
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", configCid);
        intent.putExtra("joinOnly", true);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        startActivity(intent);
    }

    @Override // com.narvii.monetization.sticker.picker.StickerSelectListener
    public void onStickerSelected(Sticker sticker, StickerCollection stickerCollection) {
        if (sticker == null) {
            return;
        }
        CommentPost commentPostSavePost = savePost();
        commentPostSavePost.stickerId = sticker.stickerId;
        commentPostSavePost.content = null;
        commentPostSavePost.mediaList = null;
        commentPostSavePost.type = 3;
        doPost(commentPostSavePost);
    }

    public static void setStatusListener(StatusListener statusListener2) {
        statusListener = statusListener2 == null ? null : new WeakReference<>(statusListener2);
    }

    public int getActiveSpaceHeight() {
        View viewFindViewById = findViewById(R.id.stub1);
        if (viewFindViewById == null) {
            return 0;
        }
        Rect rect = new Rect();
        if (viewFindViewById.getGlobalVisibleRect(rect)) {
            return rect.bottom;
        }
        return 0;
    }

    public void setTransparentArea(Rect rect) {
        View viewFindViewById = findViewById(R.id.stub1);
        if (viewFindViewById == null) {
            return;
        }
        Rect rect2 = new Rect();
        viewFindViewById.getGlobalVisibleRect(rect2);
        View viewFindViewById2 = viewFindViewById.findViewById(R.id.stub3);
        View viewFindViewById3 = viewFindViewById.findViewById(R.id.stub4);
        viewFindViewById2.getLayoutParams().height = rect.top - rect2.top;
        viewFindViewById3.getLayoutParams().height = rect.height();
        viewFindViewById2.requestLayout();
        viewFindViewById3.requestLayout();
    }

    static class SwitchKeyboard {
        boolean openKeyboard;
        View view;

        public SwitchKeyboard(boolean z, View view) {
            this.openKeyboard = z;
            this.view = view;
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity
    protected void onLoginResult(boolean z, Intent intent) {
        if (CommunityDetailFragment.KEY_LOGIN_AHEAD.equals(intent.getAction())) {
            Utils.post(new Runnable() { // from class: com.narvii.comment.post.-$$Lambda$CommentPostActivity$KF-cA_lgs1Xt3H5Kj2TZWxYc848
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onLoginResult$0$CommentPostActivity();
                }
            });
        }
        super.onLoginResult(z, intent);
    }

    public /* synthetic */ void lambda$onLoginResult$0$CommentPostActivity() {
        SoftKeyboard.showSoftKeyboard(this.editContent);
    }
}
