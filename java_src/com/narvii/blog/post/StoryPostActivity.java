package com.narvii.blog.post;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.editor.generator.MeisheSceneVideoGenerator;
import com.narvii.editor.utils.MeisheUtils;
import com.narvii.editors.ffmpeg.FFmpegJni;
import com.narvii.feed.StoryPostHelper;
import com.narvii.influencer.InfluencerPostIndicator;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.PageSession;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.PollAttach;
import com.narvii.model.Scene;
import com.narvii.model.TopicTag;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.photos.PhotoManager;
import com.narvii.post.DraftManager;
import com.narvii.post.DraftPostActivity;
import com.narvii.post.PostHelper;
import com.narvii.post.StoryEditSessionManager;
import com.narvii.post.StoryUtils;
import com.narvii.scene.ScenePreviewFragment;
import com.narvii.scene.helper.SceneListHelper;
import com.narvii.scene.helper.SceneUtils;
import com.narvii.scene.model.SceneCoverImageInfo;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.scene.notification.PromotedFromObject;
import com.narvii.scene.notification.SceneDraftWrapper;
import com.narvii.scene.notification.StoryCheckEligible;
import com.narvii.scene.service.SceneDraftHelper;
import com.narvii.story.CoverImageFragment;
import com.narvii.story.SceneListFragment;
import com.narvii.story.StoryAddTopicsFragment;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListFragment;
import com.narvii.story.StoryTopicHistoryPrefsHelper;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NotificationUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.video.services.SceneMediaProcessor;
import com.narvii.video.services.VideoManager;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.PublishToGlobalLayout;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* loaded from: classes2.dex */
public class StoryPostActivity extends DraftPostActivity<BlogPost> implements View.OnClickListener, NotificationListener {
    static final int EDIT_COVER_IMAGE_REQUEST = 64786;
    static final int EDIT_POLL_QUZI_REQUEST = 64777;
    static final int EDIT_SCENE_REQUEST = 64784;
    static final int EDIT_TOPIC_REQUEST = 64785;
    private static final String TAG = StoryPostActivity.class.getSimpleName();
    private CommunityService communityService;
    private ConfigService configService;
    private Media coverImageMedia;
    private TintButton createSceneView;
    private EditText editContent;
    private EditText editCredits;
    private View editSceneView;
    private EditText editTitle;
    private View emptySceneLayout;
    private View fansOnlyContainer;
    private ACMAlertDialog fileMisssingDialog;
    private ThumbImageView ivCoverImage;
    private ImageView ivWarning;
    private TextView linkDescription;
    private View linkLayout;
    private MediaPickerFragment mediaPickerFragment;
    private View noSceneLayout;
    private BlogPost originPost;
    private PhotoManager photoManager;
    private ProgressDialog progressView;
    private PublishToGlobalLayout publishToGlobalLayout;
    private SceneDraftHelper sceneDraftHelper;
    private View sceneLayout;
    private SceneListHelper sceneListHelper;
    private View setCoverImageButton;
    private ExecutorService singleThreadExecutor;
    private Button submitButton;
    private NVFlowLayout topicFlowLayout;
    private View topicHint;
    private View topicLayout;
    private MeisheSceneVideoGenerator videoGenerator;
    private VideoManager videoManager;
    private final List<SceneInfo> encodeScenes = new ArrayList();
    private long toSceneListTimeStamp = 0;
    private int originPublishToGlobalValue = 0;
    private boolean checkOriginFileFlag = false;
    View.OnClickListener onTagClickListener = new View.OnClickListener() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$16kMX0NKek-zLmlo3UQ9N3kVvh4
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.lambda$new$10$StoryPostActivity(view);
        }
    };
    View.OnClickListener onSubmitClickListener = new View.OnClickListener() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$YC57mjnGkT83xYvaYU1yMxNh9Zg
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.lambda$new$11$StoryPostActivity(view);
        }
    };

    public static class CheckUneditablePollResponse extends ApiResponse {

        @JsonDeserialize(contentAs = PollAttachWrapper.class, keyAs = String.class)
        public Map<String, PollAttachWrapper> sceneUneditableWidgetsMapping;
    }

    public static class PollAttachWrapper {
        public PollAttach pollAttach;
    }

    @Override // com.narvii.post.DraftPostActivity
    protected int autoSaveDraftInterval() {
        return -1;
    }

    @Override // com.narvii.post.DraftPostActivity
    public String draftType() {
        return "story";
    }

    @Override // com.narvii.app.NVActivity
    protected int getActionbarLayoutId(boolean z, int i, int i2) {
        return z ? i : R.layout.actionbar_layout_no_shadow;
    }

    @Override // com.narvii.app.NVActivity
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.logging.Page
    public String getPageName() {
        return "StoryCompose";
    }

    protected int layoutId() {
        return R.layout.post_story_layout;
    }

    @Override // com.narvii.post.DraftPostActivity
    protected boolean shouldShowFansOnlySwitchDialog() {
        return false;
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

    @Override // com.narvii.post.DraftPostActivity
    protected void updateInfluencerView() {
        super.updateInfluencerView();
        View viewFindViewById = getInfluencerLockLayout().findViewById(R.id.influencer_post_lock_indicator);
        if (viewFindViewById instanceof InfluencerPostIndicator) {
            ((InfluencerPostIndicator) viewFindViewById).setDefaultColor(-2008397238);
        }
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<BlogPost> postClazz() {
        return BlogPost.class;
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return storyId() != null;
    }

    public boolean isFromStoryEditor() {
        T t = this.post;
        return t != 0 && ((BlogPost) t).from == BlogPost.FROM_STORY_EDITOR;
    }

    public boolean isFromBlogPromote() {
        T t = this.post;
        return t != 0 && ((BlogPost) t).from == BlogPost.FROM_BLOG_PROMOTE;
    }

    public String storyId() {
        return JacksonUtils.nodeString(this.params, "blogId");
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        String str;
        super.onPostFinished(postHelper, apiResponse);
        Blog blogObject = ((BlogResponse) apiResponse).object();
        if (!isEdit()) {
            startActivity(new StoryListFragment.IntentBuilder(blogObject).source(StoryApi.COMMUNITY_PLAYER).autoLoadNextPage(false).showCommentBar(true).loadRawVideo(true).justCreated(true).build());
        }
        new StoryTopicHistoryPrefsHelper(getContext()).addTopic(TopicTag.createList(blogObject.userAddedTopicList));
        T t = this.post;
        if (t == 0 || !((BlogPost) t).fromStoryEditor()) {
            int i = NVApplication.CLIENT_TYPE;
            str = i == 100 ? "master" : i == 101 ? "standalone" : null;
        } else {
            str = "storyEditor";
        }
        boolean zContainsPollOrQuiz = blogObject.containsPollOrQuiz();
        LogEvent.clickBuilder(this, ActSemantic.storySubmitted).extraParam("storyDraftId", this.draftId).extraParam("storyId", blogObject != null ? blogObject.id() : null).area("EditArea").extraParam("storySource", str).extraParam("storyType", zContainsPollOrQuiz ? "interactiveStory" : "story").extraParam("pollCount", Integer.valueOf(zContainsPollOrQuiz ? blogObject.getStoryPollCount() : 0)).extraParam("quizCount", Integer.valueOf(zContainsPollOrQuiz ? blogObject.getStoryQuizCount() : 0)).extraParam("isPublished", Boolean.valueOf(isEdit())).extraParam("editSessionId", StoryEditSessionManager.getInstance().getSessionId(this.draftId)).toThirdParty().send();
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setContentView(layoutId());
        this.videoManager = (VideoManager) getService("videoManager");
        this.photoManager = (PhotoManager) getService("photo");
        this.configService = (ConfigService) getService("config");
        this.communityService = (CommunityService) getService("community");
        this.sceneDraftHelper = new SceneDraftHelper(this);
        this.sceneListHelper = new SceneListHelper(this);
        initView();
        AndroidBug5497Workaround.assistActivity(this);
        StatusBarUtils.setSystemUiFlagLightStatusBar((NVContext) this, true);
        setBackButtonTint(ContextCompat.getColor(getContext(), R.color.story_theme_action_bar_view));
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        setActionBarTitleColor(ContextCompat.getColor(getContext(), R.color.story_theme_text_color));
        setTitle(isEdit() ? R.string.edit : R.string.new_story);
        this.mediaPickerFragment = (MediaPickerFragment) getSupportFragmentManager().findFragmentByTag("playListMediaPicker");
        if (this.mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            getSupportFragmentManager().beginTransaction().add(this.mediaPickerFragment, "playListMediaPicker").commitAllowingStateLoss();
        }
        this.mediaPickerFragment.addOnResultListener(this);
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // com.narvii.post.BasePostActivity
    protected void createPreviewOption(Menu menu) {
        menu.add(0, R.string.compose_preview, 0, R.string.compose_preview).setIcon(new ActionBarIcon(getContext(), getString(R.string.ion_eye), 0.85f, ContextCompat.getColor(getContext(), R.color.story_theme_text_color), 127, false)).setShowAsAction(2);
    }

    @Override // com.narvii.post.BasePostActivity
    protected void createSubmitButton(Menu menu) {
        View viewInflate = getLayoutInflater().inflate(R.layout.actionbar_btn, (ViewGroup) null);
        this.submitButton = (Button) viewInflate.findViewById(R.id.actionbar_right_btn_btn);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.submitButton.getLayoutParams();
        if (Build.VERSION.SDK_INT >= 17) {
            marginLayoutParams.setMarginEnd(Utils.dpToPxInt(getContext(), 10.0f));
        } else {
            marginLayoutParams.rightMargin = Utils.dpToPxInt(getContext(), 10.0f);
        }
        this.submitButton.setText(R.string.post_submit);
        this.submitButton.setTextColor(-1);
        this.submitButton.setBackground(NVActivity.getRightButtonBackground(SceneUtils.getStoryThemeColor(this, this.configService.getCommunityId())));
        this.submitButton.setLayoutParams(marginLayoutParams);
        this.submitButton.setOnClickListener(this.onSubmitClickListener);
        menu.add(0, R.string.post_submit, 0, R.string.post_submit).setActionView(viewInflate).setShowAsAction(2);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        T t;
        if (this.draftId != null) {
            StoryEditSessionManager.getInstance().onPageActiveChanged(this.draftId, true);
        }
        super.onResume();
        if (this.checkOriginFileFlag) {
            this.checkOriginFileFlag = false;
            if (isEdit() || (t = this.post) == 0 || ((BlogPost) t).sceneDraft == null || !((BlogPost) t).sceneDraft.originFileMissing() || isFromStoryEditor()) {
                return;
            }
            showOriginFileMissingDialog();
        }
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        if (this.draftId != null) {
            StoryEditSessionManager.getInstance().onPageActiveChanged(this.draftId, false);
        }
        this.checkOriginFileFlag = true;
        super.onPause();
    }

    @Override // com.narvii.app.NVActivity
    protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
        super.completePageViewEvent(builder, z);
        builder.toThirdParty();
        if (this.draftId != null) {
            builder.extraParam("editSessionId", StoryEditSessionManager.getInstance().getSessionId(this.draftId)).extraParam("storyDraftId", this.draftId);
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        ActionBarIcon actionBarIcon;
        if (!MeisheUtils.isSupportMeishe() || !FFmpegJni.ffmpegInstalled) {
            return super.onPrepareOptionsMenu(menu);
        }
        boolean zCheckSubmit = checkSubmit();
        MenuItem menuItemFindItem = menu.findItem(R.string.compose_preview);
        menuItemFindItem.setEnabled(zCheckSubmit);
        if (zCheckSubmit) {
            actionBarIcon = new ActionBarIcon(getContext(), getString(R.string.ion_eye), 0.85f, ContextCompat.getColor(getContext(), R.color.story_theme_action_bar_view), 255, false);
        } else {
            actionBarIcon = new ActionBarIcon(getContext(), getString(R.string.ion_eye), 0.85f, ContextCompat.getColor(getContext(), R.color.story_theme_action_bar_view), 128, false);
        }
        menuItemFindItem.setIcon(actionBarIcon);
        this.submitButton.setEnabled(zCheckSubmit);
        this.submitButton.setAlpha(zCheckSubmit ? 1.0f : 0.5f);
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.sceneListHelper.isSceneEditorResult(i, i2, intent)) {
            SceneInfo sceneInfo = (SceneInfo) JacksonUtils.readAs(intent.getStringExtra("sceneInfo"), SceneInfo.class);
            SceneInfo sceneInfo2 = ((BlogPost) this.post).sceneDraft.getSceneInfo(sceneInfo.id);
            if (sceneInfo2 != null) {
                sceneInfo2.copyScene(sceneInfo);
            }
            this.sceneDraftHelper.correctCoverImage(((BlogPost) this.post).sceneDraft, new Function1() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$KX2QXLBTZQURJK18xwomE8Y_4Fc
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f$0.lambda$onActivityResult$0$StoryPostActivity((SceneDraft) obj);
                }
            });
        } else if (i == EDIT_POLL_QUZI_REQUEST) {
            if (i2 == -1) {
                if (intent != null) {
                    ((BlogPost) this.post).sceneList = JacksonUtils.readListAs(intent.getStringExtra("sceneList"), Scene.class);
                    updateSceneView();
                    invalidateOptionsMenu();
                    savePost();
                    saveDraft();
                    return;
                }
                return;
            }
            saveDraft();
            updateSceneView();
        } else if (i == EDIT_SCENE_REQUEST) {
            if (i2 == -1) {
                if (intent != null) {
                    String stringExtra = intent.getStringExtra("sceneDraft");
                    ((BlogPost) this.post).sceneDraft = (SceneDraft) JacksonUtils.readAs(stringExtra, SceneDraft.class);
                    T t = this.post;
                    ((BlogPost) t).setCoverMedia(((BlogPost) t).sceneDraft.getCoverMedia());
                    updateSceneView();
                    invalidateOptionsMenu();
                    savePost();
                    saveDraft();
                    return;
                }
                return;
            }
            saveDraft();
            updateSceneView();
        } else if (i2 == -1 && i == EDIT_TOPIC_REQUEST) {
            if (intent != null) {
                String stringExtra2 = intent.getStringExtra("topicList");
                ((BlogPost) this.post).userAddedTopicList = TopicTag.convertToStoryTopicList(JacksonUtils.readListAs(stringExtra2, TopicTag.class));
                updateTopicView();
            }
        } else if (i == EDIT_COVER_IMAGE_REQUEST && i2 == -1) {
            SceneCoverImageInfo sceneCoverImageInfo = (SceneCoverImageInfo) JacksonUtils.readAs(intent.getStringExtra("coverImageInfo"), SceneCoverImageInfo.class);
            Media media = new Media();
            media.type = 100;
            media.url = sceneCoverImageInfo.getCoverImage();
            ((BlogPost) this.post).setCoverMedia(media);
            ((BlogPost) this.post).sceneDraft.coverImage = media.getMediaUrl();
            ((BlogPost) this.post).oldSceneDraft.coverImage = media.getMediaUrl();
            T t2 = this.post;
            ((BlogPost) t2).sceneDraft.coverImageInfo = sceneCoverImageInfo;
            ((BlogPost) t2).oldSceneDraft.coverImageInfo = sceneCoverImageInfo;
            this.coverImageMedia = media;
            updateSceneView();
        }
        savePost();
        invalidateOptionsMenu();
    }

    public /* synthetic */ Unit lambda$onActivityResult$0$StoryPostActivity(SceneDraft sceneDraft) {
        T t = this.post;
        ((BlogPost) t).sceneDraft = sceneDraft;
        ((BlogPost) t).setCoverMedia(((BlogPost) t).sceneDraft.getCoverMedia());
        updateSceneView();
        invalidateOptionsMenu();
        savePost();
        saveDraft();
        return null;
    }

    private void initView() {
        this.ivCoverImage = (ThumbImageView) findViewById(R.id.iv_cover_image);
        this.editSceneView = findViewById(R.id.edit_scene_view);
        this.noSceneLayout = findViewById(R.id.no_scene_layout);
        this.emptySceneLayout = findViewById(R.id.empty_scene_layout);
        this.sceneLayout = findViewById(R.id.scene_layout);
        this.ivWarning = (ImageView) findViewById(R.id.iv_warning);
        this.createSceneView = (TintButton) findViewById(R.id.create_scene);
        this.editTitle = (EditText) findViewById(R.id.title);
        this.editContent = (EditText) findViewById(R.id.content);
        this.editCredits = (EditText) findViewById(R.id.credits);
        this.topicFlowLayout = (NVFlowLayout) findViewById(R.id.topic_flow_layout);
        this.topicHint = findViewById(R.id.topic_hint);
        this.fansOnlyContainer = findViewById(R.id.fans_only_layout);
        this.setCoverImageButton = findViewById(R.id.set_cover_image_button);
        this.topicLayout = findViewById(R.id.topic_layout);
        this.publishToGlobalLayout = (PublishToGlobalLayout) findViewById(R.id.publish_to_global_layout);
        ((TintButton) this.publishToGlobalLayout.findViewById(R.id.publish_to_global_indicator)).setTintColor(-3881788);
        this.linkLayout = findViewById(R.id.link_layout);
        this.linkDescription = (TextView) findViewById(R.id.link_description);
        this.editSceneView.setOnClickListener(this);
        this.noSceneLayout.setOnClickListener(this);
        this.emptySceneLayout.setOnClickListener(this);
        this.sceneLayout.setOnClickListener(this);
        this.setCoverImageButton.setOnClickListener(this);
        this.topicLayout.setOnClickListener(this);
        findViewById(R.id.container).setOnClickListener(this);
        this.publishToGlobalLayout.setOnClickListener(this);
        this.progressView = new ProgressDialog(this);
        this.progressView.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$Pl7SXvhmGlz0owoiAScgmlnwy4Q
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$initView$1$StoryPostActivity(dialogInterface);
            }
        });
        this.createSceneView.setTintColor(SceneUtils.getStoryThemeColor(this, this.configService.getCommunityId()));
        this.editTitle.addTextChangedListener(new TextWatcher() { // from class: com.narvii.blog.post.StoryPostActivity.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (StoryPostActivity.this.editTitle.getText() == null || ((DraftPostActivity) StoryPostActivity.this).post == null || !TextUtils.equals(StoryPostActivity.this.editTitle.getText().toString(), ((BlogPost) ((DraftPostActivity) StoryPostActivity.this).post).title)) {
                    StoryPostActivity.this.savePost();
                    StoryPostActivity.this.invalidateOptionsMenu();
                }
            }
        });
    }

    public /* synthetic */ void lambda$initView$1$StoryPostActivity(DialogInterface dialogInterface) {
        SceneMediaProcessor.INSTANCE.terminateAll(this.videoManager, this.videoGenerator);
    }

    private boolean isSupportPublishToGlobal() {
        return isPublishToGlobalPost() || isCommunityOpen();
    }

    private boolean isCommunityOpen() {
        Community community = this.communityService.getCommunity(this.configService.getCommunityId());
        return community != null && community.id > 0 && community.joinType == 0;
    }

    private boolean isPublishToGlobalPost() {
        T t = this.post;
        return t != 0 && ((BlogPost) t).originPublishToGlobal == 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity
    public void onPostLoaded(BlogPost blogPost) {
        super.onPostLoaded((StoryPostActivity) blogPost);
        if (!MeisheUtils.isSupportMeishe() || !FFmpegJni.ffmpegInstalled) {
            final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this);
            aCMAlertDialog.setMessage(getString(R.string.av_not_supported));
            aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$oNQwv6yyplrEn9suQ2lpRtFE-aY
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$onPostLoaded$2$StoryPostActivity(aCMAlertDialog, view);
                }
            });
            aCMAlertDialog.setCancelable(false);
            aCMAlertDialog.show();
            return;
        }
        this.videoGenerator = MeisheSceneVideoGenerator.Companion.getInstance();
        setTitle(isEdit() ? R.string.edit : R.string.new_story);
        invalidateOptionsMenu();
        SceneDraft sceneDraft = blogPost.sceneDraft;
        if (sceneDraft == null) {
            blogPost.sceneDraft = new SceneDraft(this.draftId);
        } else if (!TextUtils.equals(sceneDraft.draftId, this.draftId)) {
            blogPost.sceneDraft.replaceSceneId(this.draftId);
        }
        blogPost.oldSceneDraft = blogPost.sceneDraft.m54clone();
        if (!isEdit()) {
            if (blogPost.originPublishToGlobal == 0 && isCommunityOpen()) {
                blogPost.originPublishToGlobal = 1;
                blogPost.publishToGlobal = !blogPost.isFansOnly() ? 1 : 0;
            } else if (blogPost.originPublishToGlobal == 1 && blogPost.publishToGlobal == 0 && !isCommunityOpen()) {
                blogPost.originPublishToGlobal = 0;
            }
        }
        this.originPublishToGlobalValue = blogPost.publishToGlobal;
        if (blogPost.from == BlogPost.FROM_STORY_EDITOR) {
            blogPost.sceneList = this.sceneDraftHelper.getSceneList(getEncodeScenes(blogPost.sceneDraft), true);
        }
        if (getStringParam("draftId") == null && this.draftId != null) {
            this.originPost = (BlogPost) JacksonUtils.readAs(JacksonUtils.writeAsString(blogPost), BlogPost.class);
        }
        if (blogPost.editSession == null) {
            blogPost.editSession = new PageSession();
        }
        StoryEditSessionManager storyEditSessionManager = StoryEditSessionManager.getInstance();
        PageSession session = storyEditSessionManager.getSession(this.draftId);
        if (session == null) {
            storyEditSessionManager.putSession(this.draftId, blogPost.editSession);
        } else {
            blogPost.editSession = session;
        }
        if (!isEdit() && !isFromStoryEditor() && blogPost.sceneDraft.originFileMissing()) {
            showOriginFileMissingDialog();
        }
        updatePublishToGlobalLayout();
    }

    public /* synthetic */ void lambda$onPostLoaded$2$StoryPostActivity(ACMAlertDialog aCMAlertDialog, View view) {
        aCMAlertDialog.dismiss();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(BlogPost blogPost) {
        super.updateView((StoryPostActivity) blogPost);
        if (isEdit()) {
            this.coverImageMedia = StoryUtils.getStoryCoverImageMedia(blogPost.extensions);
        }
        updateContentView();
        updateTopicView();
        updateSceneView();
        updateInfluencerView();
    }

    private void updatePublishToGlobalLayout() {
        this.publishToGlobalLayout.setPublishToGlobal(((BlogPost) this.post).publishToGlobal == 1);
        this.publishToGlobalLayout.setVisibility(isSupportPublishToGlobal() ? 0 : 8);
        findViewById(R.id.publish_to_global_divider).setVisibility(isSupportPublishToGlobal() ? 0 : 8);
    }

    @Override // com.narvii.post.DraftPostActivity
    protected boolean saveUnpostedDraftInFinish() {
        BlogPost blogPostSavePost = savePost();
        if (blogPostSavePost == null || blogPostSavePost.isEmpty()) {
            deleteDraft(this.draftId);
            this.discardDraft = true;
        } else {
            BlogPost blogPost = this.originPost;
            if (blogPost != null && blogPostSavePost.isSame(blogPost)) {
                deleteDraft(this.draftId);
                this.discardDraft = true;
            }
        }
        return true;
    }

    private void deleteDraft(String str) {
        DraftManager draftManager = this.draftManager;
        if (draftManager == null) {
            return;
        }
        draftManager.deleteDraft(str);
        onDraftDeleted(str);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        SceneMediaProcessor.INSTANCE.release(this.videoManager);
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    private boolean checkSubmit() {
        if (StoryUtils.getStoryCoverImageMedia(((BlogPost) this.post).extensions) == null && !TextUtils.isEmpty(((BlogPost) this.post).sceneDraft.coverImage)) {
            Media media = new Media();
            media.type = 100;
            T t = this.post;
            media.url = ((BlogPost) t).sceneDraft.coverImage;
            ((BlogPost) t).setCoverMedia(media);
        }
        if (isEdit() || isFromStoryEditor()) {
            if (!StringUtils.isTrimEmpty(((BlogPost) this.post).title)) {
                T t2 = this.post;
                if (((BlogPost) t2).sceneList != null && ((BlogPost) t2).extensions != null && StoryUtils.getStoryCoverImageMedia(((BlogPost) t2).extensions) != null) {
                    return true;
                }
            }
            return false;
        }
        if (!StringUtils.isTrimEmpty(((BlogPost) this.post).title)) {
            T t3 = this.post;
            if (((BlogPost) t3).sceneDraft != null && !((BlogPost) t3).sceneDraft.isEmpty()) {
                T t4 = this.post;
                if (((BlogPost) t4).extensions != null && StoryUtils.getStoryCoverImageMedia(((BlogPost) t4).extensions) != null) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.narvii.post.BasePostActivity
    protected void checkEligible() {
        checkEligible("blog", "story");
    }

    private void updateContentView() {
        if (!TextUtils.isEmpty(((BlogPost) this.post).title)) {
            this.editTitle.setText(((BlogPost) this.post).title);
        }
        if (!TextUtils.isEmpty(((BlogPost) this.post).content)) {
            this.editContent.setText(((BlogPost) this.post).content);
        }
        if (!TextUtils.isEmpty(((BlogPost) this.post).credits)) {
            this.editCredits.setText(((BlogPost) this.post).credits);
        }
        if (!TextUtils.isEmpty(((BlogPost) this.post).linkDesc)) {
            this.linkDescription.setText(((BlogPost) this.post).linkDesc);
            this.linkLayout.setVisibility(0);
        } else {
            this.linkLayout.setVisibility(8);
        }
    }

    protected void updateSceneView() {
        if (isEdit() || isFromStoryEditor()) {
            this.noSceneLayout.setVisibility(8);
            this.emptySceneLayout.setVisibility(8);
            this.sceneLayout.setVisibility(0);
            this.editSceneView.setVisibility(0);
            this.setCoverImageButton.setVisibility(0);
            Media media = this.coverImageMedia;
            if (media == null) {
                T t = this.post;
                String str = ((BlogPost) t).sceneDraft != null ? ((BlogPost) t).sceneDraft.coverImage : null;
                if (!TextUtils.isEmpty(str)) {
                    this.ivCoverImage.setImageUrl(str);
                    return;
                } else {
                    this.ivCoverImage.setImageDrawable(ContextCompat.getDrawable(getContext(), android.R.color.black));
                    return;
                }
            }
            this.ivCoverImage.setImageUrl(media.getMediaUrl());
            return;
        }
        T t2 = this.post;
        if (((BlogPost) t2).sceneDraft == null || ((BlogPost) t2).sceneDraft.sceneInfos.size() == 0) {
            this.noSceneLayout.setVisibility(0);
            this.emptySceneLayout.setVisibility(8);
            this.sceneLayout.setVisibility(8);
            this.setCoverImageButton.setVisibility(8);
            return;
        }
        this.noSceneLayout.setVisibility(8);
        if (((BlogPost) this.post).sceneDraft.isEmpty()) {
            this.emptySceneLayout.setVisibility(0);
            this.sceneLayout.setVisibility(8);
            this.setCoverImageButton.setVisibility(8);
            return;
        }
        this.emptySceneLayout.setVisibility(8);
        this.sceneLayout.setVisibility(0);
        this.editSceneView.setVisibility(((BlogPost) this.post).from == BlogPost.FROM_STORY_EDITOR ? 8 : 0);
        this.setCoverImageButton.setVisibility(0);
        Media media2 = this.coverImageMedia;
        if (media2 == null) {
            String str2 = ((BlogPost) this.post).sceneDraft.coverImage;
            if (!TextUtils.isEmpty(str2)) {
                this.ivCoverImage.setImageUrl(str2);
            } else {
                this.ivCoverImage.setImageDrawable(ContextCompat.getDrawable(getContext(), android.R.color.black));
            }
        } else {
            this.ivCoverImage.setImageMedia(media2);
        }
        this.ivWarning.setVisibility(((BlogPost) this.post).sceneDraft.isError() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPreview(BlogPost blogPost) {
        encodeScene(true, blogPost);
    }

    private void encodeScene(final boolean z, final BlogPost blogPost) {
        if (blogPost == null) {
            return;
        }
        if (isEdit() || isSceneDraftNotModify(blogPost) || isFromStoryEditor()) {
            if (z) {
                previewPost(blogPost);
                return;
            } else {
                startPostStory();
                return;
            }
        }
        this.progressView.show();
        this.encodeScenes.clear();
        this.encodeScenes.addAll(getEncodeScenes(blogPost.sceneDraft));
        SceneMediaProcessor.INSTANCE.processStory(this, (ArrayList) this.encodeScenes, blogPost.sceneDraft.bgMusicClip, this.videoManager, this.videoGenerator, new SceneMediaProcessor.MediaProcessListener() { // from class: com.narvii.blog.post.StoryPostActivity.2
            @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
            public void onProgress(float f) {
                StoryPostActivity.this.progressView.updateProgress(((int) ((f * 100.0f) + 0.5f)) + "%");
            }

            @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
            public void onSuccess(ArrayList<String> arrayList) {
                StoryPostActivity.this.progressView.hide();
                SceneMediaProcessor.INSTANCE.clearListeners();
                for (int i = 0; i < StoryPostActivity.this.encodeScenes.size(); i++) {
                    if (i <= arrayList.size() && !TextUtils.isEmpty(arrayList.get(i))) {
                        ((SceneInfo) StoryPostActivity.this.encodeScenes.get(i)).outputUrl = arrayList.get(i);
                    }
                }
                blogPost.sceneList = StoryPostActivity.this.sceneDraftHelper.getSceneList(StoryPostActivity.this.encodeScenes);
                BlogPost blogPost2 = blogPost;
                blogPost2.oldSceneDraft = blogPost2.sceneDraft.m54clone();
                if (z) {
                    StoryPostActivity.this.previewPost(blogPost);
                } else {
                    StoryPostActivity.this.startPostStory();
                }
            }

            @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
            public void onFailed(boolean z2) {
                StoryPostActivity.this.progressView.hide();
                SceneMediaProcessor.INSTANCE.clearListeners();
                if (z2) {
                    return;
                }
                StoryPostActivity.this.showFailedDialog();
            }
        });
    }

    private List<SceneInfo> getEncodeScenes(SceneDraft sceneDraft) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(sceneDraft.sceneInfos);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            SceneInfo sceneInfo = (SceneInfo) it.next();
            if (sceneInfo == null || sceneInfo.isEmpty()) {
                it.remove();
            } else if (TextUtils.isEmpty(sceneInfo.outputUrl)) {
                File sceneDraftFile = SceneUtils.getSceneDraftFile(this.draftManager.getDir(this.draftId).getAbsolutePath(), sceneInfo.id);
                sceneInfo.outputUrl = new File(sceneDraftFile, this.photoManager.getNewVideoName(sceneDraftFile) + ".mp4").getAbsolutePath();
            }
        }
        return arrayList;
    }

    protected void showFailedDialog() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(getString(R.string.check_your_videos_again));
        aCMAlertDialog.addButton(R.string.got_it, null);
        aCMAlertDialog.show();
    }

    protected void showOriginFileMissingDialog() {
        if (this.fileMisssingDialog == null) {
            this.fileMisssingDialog = new ACMAlertDialog(getContext());
            this.fileMisssingDialog.setCancelable(false);
            this.fileMisssingDialog.setCanceledOnTouchOutside(false);
            this.fileMisssingDialog.setMessage(getString(R.string.original_file_missing));
            this.fileMisssingDialog.addButton(R.string.cancel, null);
            this.fileMisssingDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$QBpsPv0_z6H4Ua56QTROw3vqmI8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$showOriginFileMissingDialog$3$StoryPostActivity(view);
                }
            });
        }
        if (this.fileMisssingDialog.isShowing()) {
            return;
        }
        this.fileMisssingDialog.show();
    }

    public /* synthetic */ void lambda$showOriginFileMissingDialog$3$StoryPostActivity(View view) {
        clearUselessClip();
    }

    public void clearUselessClip() {
        T t = this.post;
        ((BlogPost) t).oldSceneDraft = ((BlogPost) t).sceneDraft.clearUselessClip().m54clone();
        this.originPost = (BlogPost) JacksonUtils.readAs(JacksonUtils.writeAsString(this.post), BlogPost.class);
        saveDraft();
        editScene(true);
    }

    private boolean isSceneDraftNotModify(BlogPost blogPost) {
        return blogPost.sceneList != null && blogPost.sceneDraft.equals(blogPost.oldSceneDraft);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void previewPost(BlogPost blogPost) {
        Intent intentBuild = new StoryListFragment.IntentBuilder(blogPost.getPreviewBlog((Blog) JacksonUtils.readAs(getStringParam(CommentListFragment.COMMENT_KEY_FEED), Blog.class), this, storyId())).autoLoadNextPage(false).build();
        intentBuild.putExtra("preview", true);
        new StoryHelper(this).openStoryDetailPageInAnotherActivity(null, intentBuild);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (intent != null && !this.isPosted && !intent.getBooleanExtra("__noInheritance", false) && !intent.hasExtra("__storyDraftId")) {
            intent.putExtra("__storyDraftId", this.draftId);
        }
        super.startActivityForResult(intent, i);
    }

    @Override // com.narvii.post.DraftPostActivity
    protected void saveDraft() {
        SceneMediaProcessor.INSTANCE.onPreSceneDraft();
        super.saveDraft();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public BlogPost savePost() {
        BlogPost blogPostSavePost = savePost((BlogPost) this.post);
        this.post = blogPostSavePost;
        return blogPostSavePost;
    }

    private BlogPost savePost(BlogPost blogPost) {
        blogPost.title = this.editTitle.getText() == null ? null : this.editTitle.getText().toString();
        blogPost.content = this.editContent.getText() == null ? null : this.editContent.getText().toString();
        blogPost.credits = this.editCredits.getText() != null ? this.editCredits.getText().toString() : null;
        return blogPost;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public boolean validateUpload(BlogPost blogPost) {
        if (!validateEditTextNotEmpty(this.editTitle, R.string.post_error_no_title)) {
            return false;
        }
        if (validateSceneCanEncode(blogPost)) {
            return true;
        }
        showFailedDialog();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(BlogPost blogPost) {
        encodeScene(false, blogPost);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPostStory() {
        BlogPost blogPost = (BlogPost) JacksonUtils.readAs(JacksonUtils.writeAsString(this.post), BlogPost.class);
        if (isEdit()) {
            checkUneditablePoll(blogPost);
        } else {
            postStory(blogPost);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postStory(BlogPost blogPost) {
        String str;
        String strStoryId = storyId();
        ApiRequest.Builder builderPost = ApiRequest.builder().post();
        if (strStoryId == null) {
            str = "/blog";
        } else {
            str = "/blog/" + strStoryId + "?updateWidgets=true";
        }
        ApiRequest apiRequestBuild = builderPost.path(str).build();
        StoryPostHelper storyPostHelper = new StoryPostHelper(this);
        storyPostHelper.setPostListener(this);
        if (isFromStoryEditor()) {
            blogPost.sceneList = this.sceneDraftHelper.removeSceneId(blogPost.sceneList);
        }
        storyPostHelper.startPost(blogPost, apiRequestBuild, BlogResponse.class);
    }

    protected boolean validateSceneCanEncode(BlogPost blogPost) {
        if (isEdit() || isFromStoryEditor()) {
            return blogPost.sceneList != null;
        }
        SceneDraft sceneDraft = blogPost.sceneDraft;
        return (sceneDraft == null || sceneDraft.isError()) ? false : true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z = false;
        switch (view.getId()) {
            case R.id.container /* 2131296974 */:
                SoftKeyboard.hideSoftKeyboard(getContext());
                break;
            case R.id.edit_scene_view /* 2131297228 */:
                editScene();
                break;
            case R.id.empty_scene_layout /* 2131297259 */:
            case R.id.no_scene_layout /* 2131298164 */:
                editScene();
                break;
            case R.id.publish_to_global_layout /* 2131298528 */:
                if (((BlogPost) this.post).isFansOnly()) {
                    showPublishToGlobalDialog(true);
                    break;
                } else {
                    T t = this.post;
                    if (((BlogPost) t).publishToGlobal == 1) {
                        if (isEdit()) {
                            showPublishToGlobalTurnOffDialog();
                            break;
                        } else {
                            ((BlogPost) this.post).publishToGlobal = 0;
                            updatePublishToGlobalLayout();
                            break;
                        }
                    } else {
                        ((BlogPost) t).publishToGlobal = 1;
                        updatePublishToGlobalLayout();
                        break;
                    }
                }
            case R.id.scene_layout /* 2131298726 */:
                if (isEdit() || isFromStoryEditor()) {
                    Blog blog = new Blog();
                    T t2 = this.post;
                    blog.type = ((BlogPost) t2).type;
                    blog.sceneList = SceneUtils.getAttachPreviewSceneList(((BlogPost) t2).sceneList);
                    Intent intentBuild = new StoryListFragment.IntentBuilder(blog).autoLoadNextPage(false).build();
                    intentBuild.putExtra(StoryListFragment.KEY_IMMERSION_MODE, true);
                    intentBuild.putExtra(StoryListFragment.KEY_AUTO_LOAD_NEXT_PAGE, false);
                    intentBuild.putExtra("preview", true);
                    intentBuild.putExtra("backDirectly", true);
                    new StoryHelper(this).openStoryDetailPageInAnotherActivity(null, intentBuild);
                    break;
                } else if (((BlogPost) this.post).sceneDraft.isEmpty()) {
                    editScene();
                    break;
                } else {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + ScenePreviewFragment.class.getName()));
                    intent.putExtra("sceneDraft", JacksonUtils.writeAsString(((BlogPost) this.post).sceneDraft));
                    startActivity(intent);
                    break;
                }
            case R.id.set_cover_image_button /* 2131298836 */:
                Intent intent2 = FragmentWrapperActivity.intent(CoverImageFragment.class);
                intent2.putExtra("sceneDraft", JacksonUtils.writeAsString(((BlogPost) this.post).sceneDraft));
                if (!isEdit() && !isFromStoryEditor()) {
                    z = true;
                }
                intent2.putExtra("supportScreenshot", z);
                intent2.putExtra("draftId", this.draftId);
                startActivityForResult(intent2, EDIT_COVER_IMAGE_REQUEST);
                break;
            case R.id.topic_layout /* 2131299277 */:
                Intent intent3 = FragmentWrapperActivity.intent(StoryAddTopicsFragment.class);
                intent3.putExtra("topicList", JacksonUtils.writeAsString(TopicTag.createList(((BlogPost) this.post).userAddedTopicList)));
                startActivityForResult(intent3, EDIT_TOPIC_REQUEST);
                break;
        }
    }

    @Override // com.narvii.post.DraftPostActivity
    protected void fanOnlyStatusChanged(boolean z) {
        if (isSupportPublishToGlobal() && z && ((BlogPost) this.post).publishToGlobal == 1) {
            showPublishToGlobalDialog(false);
            return;
        }
        if (z) {
            T t = this.post;
            ((BlogPost) t).publishToGlobal = 0;
            ((BlogPost) t).setFansOnly(true);
            updatePublishToGlobalLayout();
            updateInfluencerView();
            return;
        }
        super.fanOnlyStatusChanged(z);
    }

    private void showPublishToGlobalTurnOffDialog() {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this);
        aCMAlertDialog.setTitle(getString(R.string.are_you_sure));
        aCMAlertDialog.setMessage(getString(R.string.turn_off_publish_to_global_comfirm));
        aCMAlertDialog.addButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$sRTtIDzELKYybVTax3g3rf32_hk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$Z90Pujdb3vpp5Nn3HSf9BIjlR-U
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showPublishToGlobalTurnOffDialog$5$StoryPostActivity(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.show();
    }

    public /* synthetic */ void lambda$showPublishToGlobalTurnOffDialog$5$StoryPostActivity(ACMAlertDialog aCMAlertDialog, View view) {
        ((BlogPost) this.post).publishToGlobal = 0;
        updatePublishToGlobalLayout();
        aCMAlertDialog.dismiss();
    }

    private void showPublishToGlobalDialog(final boolean z) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this);
        aCMAlertDialog.setMessage(getString(z ? R.string.publish_to_global_comfirm : R.string.fans_only_confirm));
        aCMAlertDialog.addButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$laCZ7ua6vSyoRcdj81VewfOzyBA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$8j6MDrRplD-hBL6pvaNomYgBwS0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showPublishToGlobalDialog$7$StoryPostActivity(z, aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.show();
    }

    public /* synthetic */ void lambda$showPublishToGlobalDialog$7$StoryPostActivity(boolean z, ACMAlertDialog aCMAlertDialog, View view) {
        if (z) {
            T t = this.post;
            ((BlogPost) t).publishToGlobal = 1;
            ((BlogPost) t).setFansOnly(false);
            updatePublishToGlobalLayout();
            updateInfluencerView();
        } else {
            T t2 = this.post;
            ((BlogPost) t2).publishToGlobal = 0;
            ((BlogPost) t2).setFansOnly(true);
            updatePublishToGlobalLayout();
            updateInfluencerView();
        }
        aCMAlertDialog.dismiss();
    }

    protected void editScene() {
        editScene(false);
    }

    protected void editScene(boolean z) {
        if (System.currentTimeMillis() - this.toSceneListTimeStamp < 500) {
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.editStory).area("EditArea").extraParam("isPublished", Boolean.valueOf(isEdit())).send();
        if (isFromBlogPromote()) {
            T t = this.post;
            if (((BlogPost) t).sceneDraft == null || ((BlogPost) t).sceneDraft.sceneInfos.size() <= 0) {
                return;
            }
            new SceneListHelper(this).launchSceneEditor(((BlogPost) this.post).sceneDraft.sceneInfos.get(0), false, this.draftManager.getDir(this.draftId).getAbsolutePath());
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(SceneListFragment.class);
        intent.putExtra("isEdit", isEdit() || isFromStoryEditor());
        intent.putExtra("sceneDraft", JacksonUtils.writeAsString(((BlogPost) this.post).sceneDraft));
        if (isEdit() || isFromStoryEditor()) {
            intent.putExtra("sceneList", JacksonUtils.writeAsString(((BlogPost) this.post).sceneList));
            intent.putExtra("draftId", this.draftId);
        } else {
            intent.putExtra("alreadyClearUselessFile", z);
        }
        intent.putExtra("customFinishAnimIn", 0);
        intent.putExtra("customFinishAnimOut", R.anim.activity_push_bottom_out);
        startActivityForResult(intent, (isEdit() || isFromStoryEditor()) ? EDIT_POLL_QUZI_REQUEST : EDIT_SCENE_REQUEST);
        overridePendingTransition(R.anim.activity_push_bottom_in, R.anim.fade_out);
        this.toSceneListTimeStamp = System.currentTimeMillis();
    }

    private void updateTopicView() {
        this.topicFlowLayout.removeAllViews();
        T t = this.post;
        if (((BlogPost) t).userAddedTopicList != null) {
            Iterator<StoryTopic> it = ((BlogPost) t).userAddedTopicList.iterator();
            while (it.hasNext()) {
                this.topicFlowLayout.addView(createTopicView(it.next()));
            }
        }
        if (this.topicFlowLayout.getChildCount() > 0) {
            this.topicFlowLayout.setVisibility(0);
            this.topicHint.setVisibility(8);
        } else {
            this.topicFlowLayout.setVisibility(8);
            this.topicHint.setVisibility(0);
        }
    }

    private TextView createTopicView(StoryTopic storyTopic) {
        TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout._story_topic_view, (ViewGroup) this.topicFlowLayout, false);
        textView.setOnClickListener(this.onTagClickListener);
        textView.setTag(storyTopic);
        textView.setText(storyTopic.getDisplayName());
        return textView;
    }

    public /* synthetic */ void lambda$new$10$StoryPostActivity(final View view) {
        view.setSelected(true);
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(R.string.remove, true);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$CVD6smy1rAWNE2uV3x3Ra4EKiPc
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$null$8$StoryPostActivity(view, dialogInterface, i);
            }
        });
        actionSheetDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$dpKoUl9k8Ld9pIMddzWv-dTWQvo
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                view.setSelected(false);
            }
        });
        actionSheetDialog.show();
    }

    public /* synthetic */ void lambda$null$8$StoryPostActivity(View view, DialogInterface dialogInterface, int i) {
        if (i != 0) {
            return;
        }
        removeTopicView(view);
    }

    public /* synthetic */ void lambda$new$11$StoryPostActivity(View view) {
        startPost();
    }

    private void removeTopicView(View view) {
        if (this.topicFlowLayout.indexOfChild(view) == -1) {
            return;
        }
        Object tag = view.getTag();
        if (tag instanceof StoryTopic) {
            T t = this.post;
            if (((BlogPost) t).userAddedTopicList != null) {
                Iterator<StoryTopic> it = ((BlogPost) t).userAddedTopicList.iterator();
                while (it.hasNext()) {
                    StoryTopic next = it.next();
                    if (next != null && next.equals(tag)) {
                        it.remove();
                    }
                }
            }
        }
        updateTopicView();
    }

    @Override // com.narvii.post.DraftPostActivity
    protected View getInfluencerLockLayout() {
        return this.fansOnlyContainer;
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // com.narvii.post.BasePostActivity
    protected boolean checkActivation() {
        boolean zCheckActivation = super.checkActivation();
        if (!zCheckActivation) {
            sendNotification(new Notification("update", new StoryCheckEligible(this.draftId, 1, null)));
        }
        return zCheckActivation;
    }

    @Override // com.narvii.post.BasePostActivity
    protected void eligibleFail(String str) {
        super.eligibleFail(str);
        sendNotification(new Notification("update", new StoryCheckEligible(this.draftId, 2, str)));
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) throws Throwable {
        BlogPost blogPost;
        if (notification != null) {
            Object obj = notification.obj;
            if (obj instanceof SceneDraftWrapper) {
                SceneDraftWrapper sceneDraftWrapper = (SceneDraftWrapper) obj;
                if ((!TextUtils.equals(sceneDraftWrapper.id(), this.draftId) && !TextUtils.equals(sceneDraftWrapper.id(), storyId())) || this.isPosted || this.discardDraft || this.draftId == null) {
                    return;
                }
                Log.d(TAG, "saveDraftNotification : isTemporary = " + sceneDraftWrapper.isTemporary + "   isEdit : " + sceneDraftWrapper.isEdit());
                if (sceneDraftWrapper.isTemporary) {
                    blogPost = (BlogPost) JacksonUtils.readAs(JacksonUtils.writeAsString(this.post), BlogPost.class);
                } else {
                    blogPost = (BlogPost) this.post;
                }
                if (sceneDraftWrapper.isEdit()) {
                    blogPost.sceneList = sceneDraftWrapper.sceneList;
                    this.draftManager.savePost(this.draftId, savePost(blogPost));
                    return;
                } else {
                    blogPost.sceneDraft = sceneDraftWrapper.sceneDraft;
                    final BlogPost blogPostSavePost = savePost(blogPost);
                    this.sceneDraftHelper.correctCoverImage(blogPostSavePost.sceneDraft, new Function1() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$vFH0UXHZ5n_m7BxOPQ0UawdEtp0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return this.f$0.lambda$onNotification$12$StoryPostActivity(blogPostSavePost, (SceneDraft) obj2);
                        }
                    });
                    return;
                }
            }
        }
        if (notification != null) {
            Object obj2 = notification.obj;
            if (obj2 instanceof StoryCheckEligible) {
                StoryCheckEligible storyCheckEligible = (StoryCheckEligible) obj2;
                if (TextUtils.equals(storyCheckEligible.id(), this.draftId) && storyCheckEligible.action == 3) {
                    finish();
                }
            }
        }
    }

    public /* synthetic */ Unit lambda$onNotification$12$StoryPostActivity(BlogPost blogPost, SceneDraft sceneDraft) throws Throwable {
        SceneMediaProcessor.INSTANCE.onPreSceneDraft();
        blogPost.sceneDraft = sceneDraft;
        blogPost.setCoverMedia(blogPost.sceneDraft.getCoverMedia());
        this.draftManager.savePost(this.draftId, blogPost);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity
    public void onDraftSavedSuccess(BlogPost blogPost) {
        super.onDraftSavedSuccess((StoryPostActivity) blogPost);
        if (blogPost == null || isEdit() || isFromStoryEditor()) {
            return;
        }
        this.sceneDraftHelper.deleteUselessFile(blogPost.sceneDraft);
    }

    @Override // com.narvii.post.DraftPostActivity
    protected void onDraftDeleted(final String str) {
        super.onDraftDeleted(str);
        Utils.post(new Runnable() { // from class: com.narvii.blog.post.StoryPostActivity.3
            @Override // java.lang.Runnable
            public void run() {
                StoryEditSessionManager.getInstance().removeSession(str);
            }
        });
    }

    @Override // com.narvii.post.BasePostActivity
    protected void sendNotification(ApiResponse apiResponse, NVObject nVObject) {
        Notification notification = new Notification(isEdit() ? "edit" : "new", nVObject);
        notification.response = apiResponse;
        boolean z = nVObject instanceof Blog;
        if (z && isEdit()) {
            Blog blog = (Blog) nVObject;
            if (blog.publishToGlobal == 0 && this.originPublishToGlobalValue == 1) {
                notification.bundle = new Bundle();
                notification.bundle.putBoolean("publishToGlobalTurnOff", true);
            } else if (blog.publishToGlobal == 1 && this.originPublishToGlobalValue == 0) {
                notification.bundle = new Bundle();
                notification.bundle.putBoolean("publishToGlobalTurnOn", true);
            }
        }
        NotificationUtils.sendNotificationIncludeGlobal(this, notification);
        T t = this.post;
        if (t == 0 || TextUtils.isEmpty(((BlogPost) t).promotedFrom) || isEdit() || !z) {
            return;
        }
        PromotedFromObject promotedFromObject = new PromotedFromObject();
        promotedFromObject.story = (Blog) nVObject;
        promotedFromObject.promotedFrom = ((BlogPost) this.post).promotedFrom;
        NotificationUtils.sendNotificationIncludeGlobal(this, new Notification("new", promotedFromObject));
    }

    public void checkUneditablePoll(BlogPost blogPost) {
        ProgressDialog progressDialog = new ProgressDialog(this);
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("blog/" + storyId() + "/uneditable-widgets").build(), new AnonymousClass4(CheckUneditablePollResponse.class, progressDialog, blogPost));
    }

    /* renamed from: com.narvii.blog.post.StoryPostActivity$4, reason: invalid class name */
    class AnonymousClass4 extends ApiResponseListener<CheckUneditablePollResponse> {
        final /* synthetic */ BlogPost val$b;
        final /* synthetic */ ProgressDialog val$loadingDialog;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(Class cls, ProgressDialog progressDialog, BlogPost blogPost) {
            super(cls);
            this.val$loadingDialog = progressDialog;
            this.val$b = blogPost;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, CheckUneditablePollResponse checkUneditablePollResponse) throws Exception {
            PollAttach pollAttach;
            this.val$loadingDialog.dismiss();
            if (checkUneditablePollResponse != null && checkUneditablePollResponse.sceneUneditableWidgetsMapping != null) {
                StringBuilder sb = new StringBuilder();
                List<Scene> list = this.val$b.sceneList;
                Iterator<Map.Entry<String, PollAttachWrapper>> it = checkUneditablePollResponse.sceneUneditableWidgetsMapping.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<String, PollAttachWrapper> next = it.next();
                    if (next != null) {
                        String key = next.getKey();
                        PollAttach pollAttach2 = next.getValue() != null ? next.getValue().pollAttach : null;
                        Scene scene = Scene.getScene(key, list);
                        if (scene != null && pollAttach2 != null && ((pollAttach = scene.pollAttach) == null || (pollAttach.isModified && TextUtils.equals(pollAttach2.attachId, scene.sceneId)))) {
                            sb.append("\n");
                            sb.append("-");
                            sb.append(pollAttach2.title);
                        }
                    }
                }
                if (!TextUtils.isEmpty(sb.toString())) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(StoryPostActivity.this.getContext());
                    aCMAlertDialog.setTitle(R.string.are_you_sure);
                    aCMAlertDialog.setMessage(StoryPostActivity.this.getString(R.string.ignore_the_changes_for_the_polls) + sb.toString(), 3);
                    aCMAlertDialog.addButton(R.string.cancel, null);
                    final BlogPost blogPost = this.val$b;
                    aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.blog.post.-$$Lambda$StoryPostActivity$4$Ng7trLR1R5asK9RxdnCpr3s6Rsc
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onFinish$0$StoryPostActivity$4(blogPost, view);
                        }
                    });
                    aCMAlertDialog.show();
                    return;
                }
            }
            StoryPostActivity.this.postStory(this.val$b);
        }

        public /* synthetic */ void lambda$onFinish$0$StoryPostActivity$4(BlogPost blogPost, View view) {
            StoryPostActivity.this.postStory(blogPost);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            this.val$loadingDialog.dismiss();
            StoryPostActivity.this.postStory(this.val$b);
        }
    }
}
