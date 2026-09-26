package com.narvii.comment.post;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.community.CommunityService;
import com.narvii.community.JoinCommunityDialog;
import com.narvii.headlines.HeadlineLoggingHelper;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.CommunityHelper;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Comment;
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
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.TmpValue;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.statistics.constants.UserPropConstants;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.DragSortGallery;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TopTransparentDrawable;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
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

        void onPostDone(CommentPostActivity commentPostActivity, boolean z6);
    }

    public static void clearMemoryDrafts() {
        LATEST_DRAFT = null;
        LATEST_DRAFT_ID = null;
    }

    public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.logging.Page
    public String getPageName() {
        return "comments";
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.logging.Page
    public boolean isValidPage() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0052  */
    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    /* JADX WARN: Code duplicated, block: B:25:0x007b  */
    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        String str;
        String str2;
        StatisticsEventBuilder statisticsEventBuilderSource;
        Comment comment;
        boolean z6 = true;
        this.posted = true;
        clearMemoryDrafts();
        super.onPostFinished(postHelper, apiResponse);
        if (isEdit()) {
            return;
        }
        StatisticsService statisticsService = (StatisticsService) getService("statistics");
        if ((apiResponse instanceof CommentResponse) && (comment = ((CommentResponse) apiResponse).comment) != null) {
            if (comment.type == 3) {
                str = "Sticker";
            } else {
                List<Media> list = comment.mediaList;
                str = (list == null || list.size() <= 0) ? "Text" : "Photo";
            }
            StatisticsEventBuilder statisticsEventBuilderUserPropInc = statisticsService.event(EventConstants.CommentPost.USER_COMMENTS).userPropInc(EventConstants.CommentPost.COMMENTS_WRITTEN_TOTAL);
            if (getStringParam(EventConstants.CommentPost.RESPOND_TO) != null) {
                str2 = EventConstants.CommentPost.REPLAY;
            } else {
                str2 = EventConstants.CommentPost.NEW;
            }
            statisticsEventBuilderSource = statisticsEventBuilderUserPropInc.param(EventConstants.CommentPost.TYPE, str2).param(EventConstants.CommentPost.TYPES, getStringParam(EventConstants.CommentPost.STAT_PARENT_TYPE)).param(EventConstants.CommentPost.CONTENT_TYPE, str).source(getStringParam("source"));
            if (z6) {
                statisticsEventBuilderSource.userPropInc(UserPropConstants.PostEvents.STICKER_COMMENTS_TOTAL);
            }
            StatisticsEventBuilder statisticsEventBuilderParam = statisticsService.event(EventConstants.CommentPost.COMMENT_POST).param(EventConstants.PostType.POST_TYPE, getPostTypeValue());
            FirebaseAnalytics.getInstance(this).a(EventConstants.CommentPost.CREATE_COMMENT, null);
            FirebaseLogManager.logEvent(this, statisticsEventBuilderParam);
        }
        str = null;
        z6 = false;
        StatisticsEventBuilder statisticsEventBuilderUserPropInc2 = statisticsService.event(EventConstants.CommentPost.USER_COMMENTS).userPropInc(EventConstants.CommentPost.COMMENTS_WRITTEN_TOTAL);
        if (getStringParam(EventConstants.CommentPost.RESPOND_TO) != null) {
            str2 = EventConstants.CommentPost.REPLAY;
        } else {
            str2 = EventConstants.CommentPost.NEW;
        }
        statisticsEventBuilderSource = statisticsEventBuilderUserPropInc2.param(EventConstants.CommentPost.TYPE, str2).param(EventConstants.CommentPost.TYPES, getStringParam(EventConstants.CommentPost.STAT_PARENT_TYPE)).param(EventConstants.CommentPost.CONTENT_TYPE, str).source(getStringParam("source"));
        if (z6) {
            statisticsEventBuilderSource.userPropInc(UserPropConstants.PostEvents.STICKER_COMMENTS_TOTAL);
        }
        StatisticsEventBuilder statisticsEventBuilderParam2 = statisticsService.event(EventConstants.CommentPost.COMMENT_POST).param(EventConstants.PostType.POST_TYPE, getPostTypeValue());
        FirebaseAnalytics.getInstance(this).a(EventConstants.CommentPost.CREATE_COMMENT, null);
        FirebaseLogManager.logEvent(this, statisticsEventBuilderParam2);
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<CommentPost> postClazz() {
        return CommentPost.class;
    }

    static class SwitchKeyboard {
        boolean openKeyboard;
        View view;

        public SwitchKeyboard(boolean z6, View view) {
            this.openKeyboard = z6;
            this.view = view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changePanelVisibility(View view, int i10) {
        if (view == null) {
            return;
        }
        view.setVisibility(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeStikerEntryVisibility(boolean z6) {
        View view = this.btnStickerEntry;
        if (view != null) {
            view.setVisibility(z6 ? 0 : 8);
        }
        View view2 = this.btnKeyboardEntry;
        if (view2 != null) {
            view2.setVisibility(z6 ? 8 : 0);
        }
    }

    private String getPostTypeValue() {
        return getStringParam(EventConstants.CommentPost.STAT_PARENT_TYPE).equals("favorite") ? EventConstants.PostType.WIKI : getStringParam(EventConstants.CommentPost.STAT_PARENT_TYPE);
    }

    private boolean isReply() {
        return getStringParam(EventConstants.CommentPost.RESPOND_TO) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLoginResult$0() {
        SoftKeyboard.showSoftKeyboard(this.editContent);
    }

    public static void setStatusListener(StatusListener statusListener2) {
        statusListener = statusListener2 == null ? null : new WeakReference<>(statusListener2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateGalleryViews(boolean z6) {
        if (this.imgs == null) {
            return;
        }
        List<Media> list = savePost().mediaList;
        int size = list == null ? 0 : list.size();
        this.imgs.setVisibility((size <= 0 || z6) ? 8 : 0);
        this.imgs.setDragRange(0, size);
    }

    protected boolean disableMediaPost() {
        return 109 == getIntParam("parentType", -1);
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
        Feed feed = (Feed) JacksonUtils.readUsing(getStringParam("feed"), new Feed.FeedDeserializer());
        LogEvent.Builder builderExtraParam = LogEvent.clickBuilder(this, isReply() ? ActSemantic.reply : ActSemantic.comment).area("CommentArea").extraParam("content", str);
        if (feed != null) {
            builderExtraParam.object(feed);
        } else {
            builderExtraParam.objectId(getStringParam("parentId")).objectType(LogUtils.getObjectType(intParam)).objectSubType(LogUtils.getObjectSubType(intParam, intParam2));
        }
        builderExtraParam.send();
        LiveLayerUtils.reportCommenting(this, getIntParam("parentType"), getStringParam("parentId"), getIntParam("parentSubType", -1));
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return getStringParam("commentId") != null;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 82) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
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
        for (int i10 = 0; i10 < childCount; i10++) {
            NVImageView nVImageViewFindImageById = findImageById(this.imgs.getChildAt(i10));
            if (nVImageViewFindImageById != null && (media = (Media) nVImageViewFindImageById.getTag(R.id.image)) != null) {
                this.post.mediaList.add(media);
            }
        }
        return this.post;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void updateView(CommentPost commentPost) {
        super.updateView(commentPost);
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
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = this.imgs.getChildAt(i11);
            NVImageView nVImageViewFindImageById = findImageById(childAt);
            if (nVImageViewFindImageById != null) {
                Media media = i10 < size ? commentPost.mediaList.get(i10) : null;
                childAt.findViewWithTag(getString(R.string.icon_tag)).setVisibility(media == null ? 0 : 4);
                nVImageViewFindImageById.setImageMedia(media);
                nVImageViewFindImageById.setTag(R.id.image, media);
                i10++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public boolean validateUpload(CommentPost commentPost) {
        return validateEditTextNotEmpty(this.editContent, R.string.post_error_no_content) && validateEditTextMax(this.editContent, 3000, R.string.post_error_edit_max_n) && validateMediaListMax(commentPost.mediaList, 5, R.string.post_media_n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeSegmentBackground(boolean z6) {
        int dimensionPixelSize;
        int keyboardHeight = AndroidBug5497Workaround.getKeyboardHeight(this);
        if (keyboardHeight > 0) {
            dimensionPixelSize = getValidPanelHeight(keyboardHeight);
        } else {
            dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.voice_record_panel_height_min);
        }
        if (Build.VERSION.SDK_INT < 29) {
            View decorView = getWindow().getDecorView();
            if (!z6) {
                dimensionPixelSize = 0;
            }
            decorView.setBackground(new TopTransparentDrawable(-657929, dimensionPixelSize));
        }
    }

    private NVImageView findImageById(View view) {
        int id = view.getId();
        if (id == R.id.image1) {
            return (NVImageView) view.findViewById(R.id.image_1);
        }
        if (id == R.id.image2) {
            return (NVImageView) view.findViewById(R.id.image_2);
        }
        if (id == R.id.image3) {
            return (NVImageView) view.findViewById(R.id.image_3);
        }
        if (id == R.id.image4) {
            return (NVImageView) view.findViewById(R.id.image_4);
        }
        if (id == R.id.image5) {
            return (NVImageView) view.findViewById(R.id.image_5);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoCommunityDetail() {
        int configCid = getConfigCid();
        Community community = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(configCid);
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", configCid);
        intent.putExtra("joinOnly", true);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    public void finish() {
        StatusListener statusListener2;
        boolean z6;
        super.finish();
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out_fast);
        WeakReference<StatusListener> weakReference = statusListener;
        if (weakReference == null) {
            statusListener2 = null;
        } else {
            statusListener2 = weakReference.get();
        }
        if (statusListener2 != null) {
            if (this.posted && !isEdit()) {
                z6 = true;
            } else {
                z6 = false;
            }
            statusListener2.onPostDone(this, z6);
        }
    }

    public int getActiveSpaceHeight() {
        View viewFindViewById = findViewById(R.id.stub1);
        if (viewFindViewById == null) {
            return 0;
        }
        Rect rect = new Rect();
        if (!viewFindViewById.getGlobalVisibleRect(rect)) {
            return 0;
        }
        return rect.bottom;
    }

    protected int getValidPanelHeight(int i10) {
        return Math.max(i10, getResources().getDimensionPixelSize(R.dimen.voice_record_panel_height_min));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int size;
        int id = view.getId();
        if (id != R.id.pick_media) {
            if (id != R.id.post) {
                if (id != R.id.sticker_button_container) {
                    NVImageView nVImageViewFindImageById = findImageById(view);
                    if (nVImageViewFindImageById != null) {
                        Media media = (Media) nVImageViewFindImageById.getTag(R.id.image);
                        if (media == null) {
                            this.photoDir.mkdirs();
                            this.mediaPickerFragment.pickMedia(this.photoDir, (Bundle) null, 4, 1);
                            return;
                        }
                        List<Media> list = savePost().mediaList;
                        int iIndexOf = list.indexOf(media);
                        Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryActivity.class);
                        intent.putExtra("list", JacksonUtils.writeAsString(list));
                        if (iIndexOf >= 0) {
                            intent.putExtra("position", iIndexOf);
                        }
                        safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
                        return;
                    }
                    return;
                }
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
            startPost();
            return;
        }
        List<Media> list2 = savePost().mediaList;
        if (list2 != null && list2.size() >= 5) {
            NVToast.makeText(this, getString(R.string.post_pick_medias_exceed_limit), 0).show();
            return;
        }
        this.photoDir.mkdirs();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        File file = this.photoDir;
        if (list2 == null) {
            size = 0;
        } else {
            size = list2.size();
        }
        mediaPickerFragment.pickMedia(file, (Bundle) null, 0, 5 - size);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        int i10;
        boolean z6;
        boolean z10;
        CommentPost commentPost;
        super.onCreate(bundle);
        setShouldInflateAd(true);
        this.photoDir = new File(new File(getFilesDir(), "photo"), CommentListAdapter.COMMENT);
        setContentView(R.layout.post_comment_layout);
        AndroidBug5497Workaround.assistActivity(this);
        getActionBar().hide();
        if (isEdit()) {
            i10 = R.string.edit;
        } else {
            i10 = R.string.post_comment_title;
        }
        setTitle(i10);
        EditText editText = (EditText) findViewById(R.id.content);
        this.editContent = editText;
        this.keyboardObserver = SoftKeyboard.observeKeyboard(editText, new Callback<Boolean>() { // from class: com.narvii.comment.post.CommentPostActivity.1
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
                if (bool == Boolean.FALSE && CommentPostActivity.this.stickerPanel.getVisibility() != 0 && this.called) {
                    CommentPostActivity.this.changeSegmentBackground(false);
                } else {
                    CommentPostActivity.this.changeSegmentBackground(true);
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
            public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
                boolean z11;
                int i14;
                if (charSequence.toString().trim().replaceAll("\\u200D", "").length() == 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                CommentPostActivity.this.postBtn.setClickable(!z11);
                CommentPostActivity commentPostActivity = CommentPostActivity.this;
                ImageView imageView = commentPostActivity.postBtn;
                Context context = commentPostActivity.getContext();
                if (z11) {
                    i14 = R.drawable.ic_comment_post;
                } else {
                    i14 = R.drawable.ic_comment_post_actived;
                }
                imageView.setImageDrawable(ContextCompat.getDrawable(context, i14));
            }
        });
        String stringParam = getStringParam("hint");
        if (!TextUtils.isEmpty(stringParam)) {
            this.editContent.setHint(stringParam);
        }
        findViewById(R.id.pick_media).setOnClickListener(this);
        if (disableMediaPost()) {
            findViewById(R.id.pick_media).setVisibility(8);
            ((ViewGroup.MarginLayoutParams) this.editContent.getLayoutParams()).setMarginStart((int) Utils.dpToPx(getContext(), 8.0f));
        }
        ImageView imageView = (ImageView) findViewById(R.id.post);
        this.postBtn = imageView;
        imageView.setOnClickListener(this);
        findViewById(R.id.stub1).setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.comment.post.CommentPostActivity.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    CommentPostActivity.this.finish();
                    return true;
                }
                return true;
            }
        });
        DragSortGallery dragSortGallery = (DragSortGallery) findViewById(R.id.comment_images);
        this.imgs = dragSortGallery;
        int childCount = dragSortGallery.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = this.imgs.getChildAt(i11);
            if (findImageById(childAt) != null) {
                childAt.setOnClickListener(this);
                childAt.setOnLongClickListener(this);
            }
        }
        if (bundle == null) {
            CommentPost commentPost2 = (CommentPost) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), CommentPost.class);
            this.post = commentPost2;
            if (commentPost2 != null && ((commentPost2.title() != null && this.post.title().trim().length() != 0) || ((this.post.icon() != null && this.post.icon().trim().length() != 0) || (this.post.content() != null && this.post.content().trim().length() != 0)))) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (this.post == null || z10) {
                if (Utils.isEquals(getStringParam("parentType") + "|" + getStringParam("parentId") + "|" + getStringParam(EventConstants.CommentPost.RESPOND_TO) + "|" + getStringParam("commentId"), LATEST_DRAFT_ID) && (commentPost = LATEST_DRAFT) != null) {
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
        View viewFindViewById = findViewById(R.id.sticker_button_container);
        this.stickerContainer = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.stickerPanel = findViewById(R.id.sticker_panel);
        this.btnStickerEntry = findViewById(R.id.sticker_entry);
        this.btnKeyboardEntry = findViewById(R.id.sticker_keyboard);
        if (this.stickerPanel != null) {
            StickerPickerTabFragment stickerPickerTabFragment = (StickerPickerTabFragment) getSupportFragmentManager().m0("stickPicker");
            this.stickerPickerTabFragment = stickerPickerTabFragment;
            if (stickerPickerTabFragment == null) {
                this.stickerPickerTabFragment = new StickerPickerTabFragment();
                Bundle bundle2 = new Bundle();
                if (!getBooleanParam(CommentListFragment.COMMENT_KEY_SHOW_EMOJI_ONLY) && !getBooleanParam(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT)) {
                    z6 = false;
                } else {
                    z6 = true;
                }
                bundle2.putBoolean(CommentListFragment.COMMENT_KEY_SHOW_EMOJI_ONLY, z6);
                bundle2.putBoolean("tabBottom", true);
                bundle2.putString("source", "Sticker Keyboard");
                bundle2.putString("collectionId", getStringParam("stickerCollectionId"));
                if (isGlobalInteractionScope()) {
                    bundle2.putInt("__communityId", 0);
                }
                this.stickerPickerTabFragment.setArguments(bundle2);
                getSupportFragmentManager().q().c(R.id.sticker_panel, this.stickerPickerTabFragment, "stickPicker").k();
            }
            this.stickerPickerTabFragment.setStickerSelectListener(this);
        }
        updateView(this.post);
        this.fromStoryCommentList = getBooleanParam("fromStoryCommentList", false);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        SoftKeyboard.KeyboardObserver keyboardObserver = this.keyboardObserver;
        if (keyboardObserver != null) {
            keyboardObserver.dispose();
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity
    protected void onLoginResult(boolean z6, Intent intent) {
        if (CommunityDetailFragment.KEY_LOGIN_AHEAD.equals(intent.getAction())) {
            Utils.post(new Runnable() { // from class: com.narvii.comment.post.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2221a.lambda$onLoginResult$0();
                }
            });
        }
        super.onLoginResult(z6, intent);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        final Media media = (Media) findImageById(view).getTag(R.id.image);
        if (media != null) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setItems(new CharSequence[]{getContext().getString(R.string.delete)}, new DialogInterface.OnClickListener() { // from class: com.narvii.comment.post.CommentPostActivity.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
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

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        if (!this.posted) {
            CommentPost commentPostSavePost = savePost();
            CommentPost commentPost = (CommentPost) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), CommentPost.class);
            if (commentPostSavePost != null && (((commentPostSavePost.title() != null && commentPostSavePost.title().trim().length() != 0) || ((commentPostSavePost.icon() != null && commentPostSavePost.icon().trim().length() != 0) || (commentPostSavePost.content() != null && commentPostSavePost.content().trim().length() != 0))) && (commentPost == null || !commentPostSavePost.isSame(commentPost)))) {
                LATEST_DRAFT_ID = getStringParam("parentType") + "|" + getStringParam("parentId") + "|" + getStringParam(EventConstants.CommentPost.RESPOND_TO) + "|" + getStringParam("commentId");
                LATEST_DRAFT = commentPostSavePost;
            }
        }
        if (this.fromStoryCommentList) {
            NVPlayerManager.getNVPlayer(getApplicationContext()).setPlayWhenReady(false);
        }
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

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFail(PostHelper postHelper, int i10, String str, Throwable th) {
        super.onPostFail(postHelper, i10, str, th);
        if (i10 == 230) {
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

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.fromStoryCommentList) {
            NVPlayerManager.getNVPlayer(getApplicationContext()).setPlayWhenReady(true);
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(Module.MODULE_POSTS, JacksonUtils.writeAsString(this.post));
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
}
