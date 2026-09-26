package com.narvii.chat.post;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.GridLayout;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.ThreadResponse;
import com.narvii.chat.global.GlobalChatThread;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.chat.video.fragments.VVChatMainFragment;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.influencer.StoryInfluencerPostIndicator;
import com.narvii.location.GPSCoordinate;
import com.narvii.logging.LogEvent;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.page.PageManager;
import com.narvii.monetization.bubble.BubbleHelper;
import com.narvii.post.BasePostActivity;
import com.narvii.post.DraftInfo;
import com.narvii.post.DraftPostActivity;
import com.narvii.post.LocationPickerFragment;
import com.narvii.post.PostHelper;
import com.narvii.user.picker.MultiUserPickerFragment;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.EditTextIMG;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.PublishToGlobalLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class ThreadPostActivity extends DraftPostActivity<ThreadPost> implements View.OnClickListener, LocationPickerFragment.LocationListener {
    static final int PICK_MEMBERS = 1;
    private boolean autoShowKeyboard;
    private ChatBubble bubble;
    private CommunityService communityService;
    private ConfigService configService;
    LocationPickerFragment locationPickerFragment;
    private View postOnlyContainer;
    private boolean publishOrgVisible = false;
    private PublishToGlobalLayout publishToGlobalLayout;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPublishToGlobalDialog$2(boolean z6, ACMAlertDialog aCMAlertDialog, View view) {
        if (z6) {
            T t5 = this.post;
            ((ThreadPost) t5).publishToGlobal = 1;
            ((ThreadPost) t5).setFansOnly(false);
            updatePublishToGlobalLayout();
            updateInfluencerView();
        } else {
            T t10 = this.post;
            ((ThreadPost) t10).publishToGlobal = 0;
            ((ThreadPost) t10).setFansOnly(true);
            updatePublishToGlobalLayout();
            updateInfluencerView();
        }
        aCMAlertDialog.dismiss();
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
        return "thread";
    }

    @Override // com.narvii.post.BasePostActivity
    protected int fanClubClosedHintStrId() {
        return R.string.fans_club_closed_chat;
    }

    @Override // com.narvii.post.DraftPostActivity
    protected View getInfluencerLockLayout() {
        return this.postOnlyContainer;
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        ArrayList listAs;
        if (i10 == 1 && i11 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("users"), User.class)) != null && listAs.size() > 0) {
            ThreadPost threadPostSavePost = savePost();
            threadPostSavePost.memberList.addAll(listAs);
            this.post = threadPostSavePost;
            updateView(threadPostSavePost);
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<ThreadPost> postClazz() {
        return ThreadPost.class;
    }

    @Override // com.narvii.post.DraftPostActivity
    protected boolean shouldShowFansOnlySwitchDialog() {
        return false;
    }

    private boolean isCommunityOpen() {
        Community community = this.communityService.getCommunity(this.configService.getCommunityId());
        return community != null && community.joinType == 0;
    }

    private boolean isSupportPublishToGlobal() {
        return ((ConfigService) getService("config")).getCommunityId() != 0;
    }

    private void logCreatePostEvent(String str) {
        FirebaseLogManager.logEvent(this, ((StatisticsService) getService("statistics")).event(EventConstants.CreatePost.CREATE_POST).param(EventConstants.PostType.POST_TYPE, str));
    }

    private void showPublishToGlobalDialog(final boolean z6) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this);
        aCMAlertDialog.setMessage(getString(z6 ? R.string.thread_publish_to_global_comfirm : R.string.thread_fans_only_confirm));
        aCMAlertDialog.addButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.chat.post.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.post.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1987a.lambda$showPublishToGlobalDialog$2(z6, aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.show();
    }

    private void updatePublishToGlobalLayout() {
        PublishToGlobalLayout publishToGlobalLayout = this.publishToGlobalLayout;
        if (publishToGlobalLayout == null) {
            return;
        }
        publishToGlobalLayout.setPublishToGlobal(((ThreadPost) this.post).publishToGlobal == 1);
        if (this.publishOrgVisible) {
            this.publishToGlobalLayout.setVisibility(0);
        } else {
            this.publishToGlobalLayout.setVisibility((this.configService.getCommunityId() == 0 || !isCommunityOpen()) ? 8 : 0);
        }
        TextView textView = (TextView) findViewById(R.id.publish_to_global_text);
        if (textView != null) {
            textView.setTextColor(-1);
        }
    }

    @Override // com.narvii.post.DraftPostActivity
    public ObjectNode buildDraftParams() {
        String stringParam = getStringParam("threadId");
        if (stringParam == null) {
            return null;
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("threadId", stringParam);
        String stringParam2 = getStringParam("userId");
        if (stringParam2 != null) {
            objectNodeCreateObjectNode.put("userId", stringParam2);
        }
        objectNodeCreateObjectNode.put("isGroupChat", getBooleanParam("isGroupChat"));
        return objectNodeCreateObjectNode;
    }

    @Override // com.narvii.post.BasePostActivity
    protected void checkEligible() {
        String stringParam = getStringParam("threadId");
        ConfigService configService = this.configService;
        if (configService == null || configService.getCommunityId() != 0 || TextUtils.isEmpty(stringParam)) {
            checkEligible("chat-thread", isGroupChat() ? "group" : "public");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public String confirmationMessage(ThreadPost threadPost) {
        isGroupChat();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(ThreadPost threadPost) {
        String str;
        if (threadPost != null) {
            LogEvent.clickWildcardBuilder(this).area("CreateButton").extraParam("topicCount", Integer.valueOf(CollectionUtils.getSize(threadPost.userAddedTopicList))).extraParam("isPublishToGlobal", Boolean.valueOf(threadPost.publishToGlobal == 1)).send();
        }
        if (threadId() == null) {
            str = "/chat/thread";
        } else {
            str = "/chat/thread/" + threadId();
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().post().path(str).build();
        PostHelper postHelper = getPostHelper();
        postHelper.setDefaultPhotoUploadTarget(NVImageView.TYPE_CHAT_COVER);
        postHelper.setPostListener(this);
        postHelper.startPost(threadPost, apiRequestBuild, ThreadResponse.class);
    }

    protected PostHelper getPostHelper() {
        return new PostHelper(this);
    }

    public boolean isGroupChat() {
        return getBooleanParam("isGroupChat") || JacksonUtils.nodeBoolean(this.params, "isGroupChat");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity
    public void onPostLoaded(ThreadPost threadPost) {
        super.onPostLoaded(threadPost);
        if (isEdit()) {
            setTitle(R.string.edit);
        } else {
            setTitle(R.string.post_entry_new_chat);
        }
        if (!isEdit() && isSupportPublishToGlobal() && isCommunityOpen()) {
            threadPost.publishToGlobal = 1;
        }
        updatePublishToGlobalLayout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public ThreadPost savePost() {
        TextView textView = (TextView) findViewById(R.id.title);
        ((ThreadPost) this.post).title = textView.getText().toString();
        TextView textView2 = (TextView) findViewById(R.id.content);
        if (textView2 != null) {
            ((ThreadPost) this.post).content = textView2.getText().toString();
        }
        return (ThreadPost) this.post;
    }

    public String threadId() {
        return JacksonUtils.nodeString(this.params, "threadId");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(ThreadPost threadPost) {
        View viewInflate;
        View viewFindViewById = findViewById(R.id.chat_show_guideline);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this);
        }
        View viewFindViewById2 = findViewById(R.id.image);
        ((NVImageView) viewFindViewById2).setImageUrl(threadPost.icon());
        viewFindViewById2.setOnClickListener(this);
        TextView textView = (TextView) findViewById(R.id.title);
        if (!Utils.isEquals(threadPost.title, textView.getText().toString())) {
            textView.setText(threadPost.title);
        }
        TextView textView2 = (TextView) findViewById(R.id.content);
        if (textView2 != null && !Utils.isEquals(threadPost.content, textView2.getText().toString())) {
            textView2.setText(threadPost.content);
        }
        GridLayout gridLayout = (GridLayout) findViewById(R.id.grid);
        int i10 = 8;
        if (gridLayout != null) {
            if (threadPost.memberList == null) {
                gridLayout.setVisibility(8);
            } else {
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
                if (gridLayout.getChildCount() <= 0 || gridLayout.getChildAt(gridLayout.getChildCount() - 1).getId() != R.id.chat_member_invite) {
                    viewInflate = null;
                } else {
                    viewInflate = gridLayout.getChildAt(gridLayout.getChildCount() - 1);
                    gridLayout.removeViewAt(gridLayout.getChildCount() - 1);
                }
                while (gridLayout.getChildCount() > threadPost.memberList.size()) {
                    gridLayout.removeViewAt(gridLayout.getChildCount() - 1);
                }
                int size = threadPost.memberList.size();
                int i11 = 0;
                while (i11 < size) {
                    View childAt = i11 < gridLayout.getChildCount() ? gridLayout.getChildAt(i11) : null;
                    if (childAt == null) {
                        childAt = layoutInflaterFrom.inflate(R.layout.chat_detail_member, (ViewGroup) gridLayout, false);
                        gridLayout.addView(childAt);
                    }
                    User user = threadPost.memberList.get(i11);
                    ((NVImageView) childAt.findViewById(R.id.avatar)).setImageUrl(user.icon());
                    ((NicknameView) childAt.findViewById(R.id.nickname)).setUser(user);
                    childAt.findViewById(R.id.chat_member_invited).setVisibility(4);
                    childAt.findViewById(R.id.chat_member_remove).setVisibility(0);
                    childAt.setOnClickListener(this);
                    childAt.setTag(user);
                    i11++;
                }
                if (viewInflate == null) {
                    viewInflate = layoutInflaterFrom.inflate(R.layout.chat_detail_member_invite, (ViewGroup) gridLayout, false);
                }
                gridLayout.addView(viewInflate);
                viewInflate.setOnClickListener(this);
            }
        }
        ConfigService configService = (ConfigService) getService("config");
        View viewFindViewById3 = findViewById(R.id.publish_to_global_layout);
        if (viewFindViewById3 != null) {
            if (configService.getCommunityId() != 0 && isCommunityOpen()) {
                i10 = 0;
            }
            viewFindViewById3.setVisibility(i10);
        }
    }

    public String userId() {
        return JacksonUtils.nodeString(this.params, "userId");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public boolean validateUpload(ThreadPost threadPost) {
        return isGroupChat() || validateEditTextNotEmpty((EditText) findViewById(R.id.title), R.string.post_error_no_title);
    }

    @Override // com.narvii.post.DraftPostActivity
    protected void fanOnlyStatusChanged(boolean z6) {
        if (isSupportPublishToGlobal() && z6 && ((ThreadPost) this.post).publishToGlobal == 1) {
            showPublishToGlobalDialog(false);
            return;
        }
        if (z6) {
            T t5 = this.post;
            ((ThreadPost) t5).publishToGlobal = 0;
            ((ThreadPost) t5).setFansOnly(true);
            updatePublishToGlobalLayout();
            updateInfluencerView();
            return;
        }
        super.fanOnlyStatusChanged(z6);
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.app.NVActivity, android.app.Activity
    public void finish() {
        if (isGroupChat()) {
            this.discardDraft = true;
        }
        super.finish();
    }

    public int getLayoutId() {
        if (isGroupChat()) {
            return R.layout.post_group_thread_layout;
        }
        return R.layout.post_thread_layout;
    }

    @Override // com.narvii.post.DraftPostActivity
    protected DraftInfo getReusableDraft(ObjectNode objectNode) {
        if (isGroupChat()) {
            return null;
        }
        return super.getReusableDraft(objectNode);
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        if (threadId() != null) {
            return true;
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i10;
        savePost();
        switch (view.getId()) {
            case R.id.chat_member /* 2131362472 */:
                if (view.getTag() instanceof User) {
                    final User user = (User) view.getTag();
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                    actionSheetDialog.addItem(R.string.remove, true);
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.chat.post.ThreadPostActivity.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i11) {
                            ThreadPost threadPostSavePost = ThreadPostActivity.this.savePost();
                            Iterator<User> it = threadPostSavePost.memberList.iterator();
                            while (it.hasNext()) {
                                if (Utils.isEquals(user.uid, it.next().uid)) {
                                    it.remove();
                                }
                            }
                            ((DraftPostActivity) ThreadPostActivity.this).post = threadPostSavePost;
                            ThreadPostActivity.this.updateView(threadPostSavePost);
                        }
                    });
                    actionSheetDialog.show();
                }
                break;
            case R.id.chat_member_invite /* 2131362473 */:
                ThreadPost threadPostSavePost = savePost();
                Intent intent = FragmentWrapperActivity.intent(MultiUserPickerFragment.class);
                intent.putExtra("exists", JacksonUtils.writeAsString(threadPostSavePost.memberList));
                intent.putExtra("maxMember", 100);
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent, 1);
                break;
            case R.id.chat_show_guideline /* 2131362494 */:
                safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, new Intent("android.intent.action.VIEW", Uri.parse(PageManager.PAGE_GUIDELINES_URI)));
                break;
            case R.id.image /* 2131363563 */:
                if (isGroupChat()) {
                    i10 = 64;
                } else {
                    i10 = 0;
                }
                this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), (Bundle) null, i10 | 6, 0);
                break;
            case R.id.publish_to_global_layout /* 2131364767 */:
                if (!isCommunityOpen() && ((ThreadPost) this.post).publishToGlobal == 0) {
                    final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this);
                    aCMAlertDialog.setMessage(getString(R.string.publish_to_global_limit));
                    aCMAlertDialog.addButton(R.string.got_it, new View.OnClickListener() { // from class: com.narvii.chat.post.a
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            aCMAlertDialog.dismiss();
                        }
                    });
                    aCMAlertDialog.show();
                } else if (((ThreadPost) this.post).isFansOnly()) {
                    showPublishToGlobalDialog(true);
                } else {
                    T t5 = this.post;
                    if (((ThreadPost) t5).publishToGlobal == 1) {
                        ((ThreadPost) t5).publishToGlobal = 0;
                        updatePublishToGlobalLayout();
                    } else {
                        ((ThreadPost) t5).publishToGlobal = 1;
                        updatePublishToGlobalLayout();
                    }
                }
                break;
        }
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        StoryInfluencerPostIndicator storyInfluencerPostIndicator;
        super.onCreate(bundle);
        setContentView(getLayoutId());
        AndroidBug5497Workaround.assistActivity(this);
        LocationPickerFragment locationPickerFragment = (LocationPickerFragment) getSupportFragmentManager().m0("locationPicker");
        this.locationPickerFragment = locationPickerFragment;
        if (locationPickerFragment == null) {
            this.locationPickerFragment = new LocationPickerFragment();
            getSupportFragmentManager().q().e(this.locationPickerFragment, "locationPicker").j();
        }
        this.locationPickerFragment.listener = this;
        EditTextIMG editTextIMG = (EditTextIMG) findViewById(R.id.content);
        if (editTextIMG != null) {
            editTextIMG.imgMode = new BasePostActivity.BaseImgCallback(editTextIMG);
        }
        this.configService = (ConfigService) getService("config");
        this.communityService = (CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        this.autoShowKeyboard = getBooleanParam("focusWelcome");
        this.bubble = (ChatBubble) JacksonUtils.readAs(getStringParam("bubble"), ChatBubble.class);
        View viewFindViewById = findViewById(R.id.post_fans_only);
        this.postOnlyContainer = viewFindViewById;
        if (viewFindViewById != null && (storyInfluencerPostIndicator = (StoryInfluencerPostIndicator) viewFindViewById.findViewById(R.id.influencer_post_lock_indicator)) != null) {
            storyInfluencerPostIndicator.setSwitchOnColor(R.drawable.switch_fancy_on);
            storyInfluencerPostIndicator.setSwitchOffColor(R.drawable.switch_fancy_off);
        }
        PublishToGlobalLayout publishToGlobalLayout = (PublishToGlobalLayout) findViewById(R.id.publish_to_global_layout);
        this.publishToGlobalLayout = publishToGlobalLayout;
        if (publishToGlobalLayout != null) {
            publishToGlobalLayout.setOnClickListener(this);
            this.publishToGlobalLayout.setSwitchOnColor(R.drawable.switch_fancy_on);
            this.publishToGlobalLayout.setSwitchOffColor(R.drawable.switch_fancy_off);
        }
        boolean z6 = true;
        if (((ThreadPost) this.post).publishToGlobal != 1) {
            z6 = false;
        }
        this.publishOrgVisible = z6;
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        String str;
        if (isGroupChat() && isFinishing() && (str = this.draftId) != null) {
            this.draftManager.deleteDraft(str);
        }
        super.onDestroy();
    }

    @Override // com.narvii.post.LocationPickerFragment.LocationListener
    public void onLocatingChanged(boolean z6) {
        updateView(savePost());
    }

    @Override // com.narvii.post.LocationPickerFragment.LocationListener
    public void onLocationResult(GPSCoordinate gPSCoordinate) {
        ThreadPost threadPostSavePost = savePost();
        if (gPSCoordinate == null) {
            threadPostSavePost.latitude = 0;
            threadPostSavePost.longitude = 0;
        } else {
            threadPostSavePost.latitude = gPSCoordinate.latitudeE6();
            threadPostSavePost.longitude = gPSCoordinate.longitudeE6();
        }
        this.post = threadPostSavePost;
        updateView(threadPostSavePost);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        String str;
        super.onPickMediaResult(list, bundle);
        ThreadPost threadPostSavePost = savePost();
        if (list.size() == 0) {
            str = null;
        } else {
            str = list.get(0).url;
        }
        threadPostSavePost.setIcon(str);
        this.post = threadPostSavePost;
        updateView(threadPostSavePost);
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        super.onPostFinished(postHelper, apiResponse);
        ChatThread chatThread = ((ThreadResponse) apiResponse).thread;
        boolean z6 = false;
        if (this.bubble != null) {
            new BubbleHelper(this).sendApplyBubbleRequest(this.bubble, false, chatThread.id(), null);
        }
        if (chatThread != null) {
            ((GlobalChatService) getService("globalChat")).addRecentChat(GlobalChatThread.newGlobalChatThread(chatThread, ((ConfigService) getService("config")).getCommunityId(), this));
        }
        boolean zIsEdit = isEdit();
        if (chatThread != null && getStringParam("doAfter") != null) {
            if ("GO_LIVE".equals(getStringParam("doAfter"))) {
                Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
                intent.putExtra("id", chatThread.threadId);
                intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
                intent.putExtra("justCreated", true);
                intent.putExtra(VVChatMainFragment.KEY_SHOW_GO_LIVE, true);
                logCreatePostEvent("live");
                safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
            }
        } else if (chatThread != null && !zIsEdit && chatThread.type == 2) {
            Intent intent2 = FragmentWrapperActivity.intent(ChatFragment.class);
            intent2.putExtra("id", chatThread.threadId);
            intent2.putExtra("justCreated", true);
            intent2.putExtra("thread", JacksonUtils.writeAsString(chatThread));
            intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "View Created Post");
            intent2.putExtra("stickerCollectionId", getStringParam("stickerCollectionId"));
            if (this.bubble != null || getStringParam("stickerCollectionId") != null) {
                z6 = true;
            }
            intent2.putExtra("showKeyboard", z6);
            logCreatePostEvent(EventConstants.PostType.PUBLIC_CHATROOM);
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent2);
        }
        if (chatThread != null && !zIsEdit) {
            StatisticsService statisticsService = (StatisticsService) getService("statistics");
            statisticsService.event("User Creates a Chat").param(EventConstants.CommentPost.TYPE, "Public").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("User Creates a Chat Total");
            statisticsService.event(null).userPropInc("User Creates a Public Chat Total");
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.autoShowKeyboard) {
            final View viewFindViewById = findViewById(R.id.content);
            if (viewFindViewById instanceof EditText) {
                viewFindViewById.requestFocus();
                Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.post.ThreadPostActivity.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SoftKeyboard.showSoftKeyboard((EditText) viewFindViewById);
                        ThreadPostActivity.this.autoShowKeyboard = false;
                    }
                }, 100L);
            }
        }
    }

    @Override // com.narvii.post.DraftPostActivity
    protected void updateInfluencerView() {
        super.updateInfluencerView();
    }
}
