package com.narvii.chat.post;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.chat.ChatBackgroundFragment;
import com.narvii.chat.ChatBackgroundPickerRecycler;
import com.narvii.config.ConfigService;
import com.narvii.model.Media;
import com.narvii.model.TopicTag;
import com.narvii.model.User;
import com.narvii.model.story.StoryTopic;
import com.narvii.post.BasePostActivity;
import com.narvii.post.DraftPostActivity;
import com.narvii.post.PostHelper;
import com.narvii.story.StoryAddTopicsFragment;
import com.narvii.suggest.interest.ThreadPostAddTopicView;
import com.narvii.suggest.interest.ThreadPostTopicView;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ThreadPostNewActivity extends ThreadPostActivity {
    static final int EDIT_TOPIC_REQUEST = 64785;
    private static final int MAX_TOPIC_COUNT = 10;
    private ChatBackgroundFragment backgroundFragment;
    private ChatBackgroundPickerRecycler chatPicker;
    private StoryTopic defaultTopic;
    private NVFlowLayout topicFlow;
    private FrameLayout topicLayout;
    private List<StoryTopic> topicList = new ArrayList();

    @Override // com.narvii.chat.post.ThreadPostActivity
    public int getLayoutId() {
        return R.layout.post_thread_new_layout;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.logging.Page
    public String getPageName() {
        return "ChatCompose";
    }

    @Override // com.narvii.chat.post.ThreadPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        boolean zIsGroupChat = isGroupChat();
        this.chatPicker = (ChatBackgroundPickerRecycler) findViewById(R.id.chat_background_picker);
        this.chatPicker.setVisibility(zIsGroupChat ? 8 : 0);
        setCurrentBackground(((ThreadPost) this.post).backgroundMedia);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (bundle == null) {
            this.backgroundFragment = new ChatBackgroundFragment();
            supportFragmentManager.beginTransaction().add(R.id.chat_bg_frame, this.backgroundFragment, "chatBackground").commit();
        } else {
            this.backgroundFragment = (ChatBackgroundFragment) supportFragmentManager.findFragmentByTag("chatBackground");
        }
        this.topicLayout = (FrameLayout) findViewById(R.id.topic_layout);
        this.topicFlow = (NVFlowLayout) findViewById(R.id.topic_parent);
        this.defaultTopic = (StoryTopic) JacksonUtils.readAs(getStringParam("topic"), StoryTopic.class);
        StoryTopic storyTopic = this.defaultTopic;
        if (storyTopic != null) {
            this.topicList.add(storyTopic);
        }
        updateTopicView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.chat.post.ThreadPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(ThreadPost threadPost) {
        ChatBackgroundPickerRecycler chatBackgroundPickerRecycler;
        super.updateView(threadPost);
        invalidateOptionsMenu();
        boolean zIsGroupChat = isGroupChat();
        TextView textView = (TextView) findViewById(R.id.chat_show_guideline);
        if (zIsGroupChat) {
            textView.setVisibility(8);
        } else {
            String string = getString(R.string.post_thread_guidelines);
            String string2 = getString(R.string.chat_more_info);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string + " " + string2);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(-1), string.length() + 1, string.length() + 1 + string2.length(), 18);
            spannableStringBuilder.setSpan(new UnderlineSpan(), string.length() + 1, string.length() + 1 + string2.length(), 18);
            textView.setText(spannableStringBuilder);
        }
        View viewFindViewById = findViewById(R.id.add_cover_image_hint);
        View viewFindViewById2 = findViewById(R.id.cover_image_hint);
        if (threadPost.icon() != null) {
            viewFindViewById.setVisibility(8);
            viewFindViewById2.setVisibility(0);
        } else if (zIsGroupChat) {
            viewFindViewById.setVisibility(0);
            viewFindViewById2.setVisibility(8);
        } else {
            User userProfile = ((AccountService) getService("account")).getUserProfile();
            if (userProfile.icon() != null) {
                viewFindViewById.setVisibility(8);
                viewFindViewById2.setVisibility(0);
                ((NVImageView) findViewById(R.id.image)).setImageUrl(userProfile.icon());
                threadPost.setIcon(userProfile.icon());
            } else {
                viewFindViewById.setVisibility(0);
                viewFindViewById2.setVisibility(8);
            }
        }
        if (this.backgroundFragment != null && (chatBackgroundPickerRecycler = this.chatPicker) != null) {
            setCurrentBackground(chatBackgroundPickerRecycler.getCurrentSelect());
        }
        ChatBackgroundPickerRecycler chatBackgroundPickerRecycler2 = this.chatPicker;
        if (chatBackgroundPickerRecycler2 != null && !zIsGroupChat) {
            chatBackgroundPickerRecycler2.setOnSelectBackgroundListener(new ChatBackgroundPickerRecycler.OnSelectBackgroundListener() { // from class: com.narvii.chat.post.ThreadPostNewActivity.1
                @Override // com.narvii.chat.ChatBackgroundPickerRecycler.OnSelectBackgroundListener
                public void onSelectBackground(Media media) {
                    if (ThreadPostNewActivity.this.backgroundFragment != null) {
                        ThreadPostNewActivity.this.setCurrentBackground(media);
                    }
                }

                @Override // com.narvii.chat.ChatBackgroundPickerRecycler.OnSelectBackgroundListener
                public void onStartPick() {
                    Bundle bundle = new Bundle();
                    bundle.putInt("MediaRequestType", 1);
                    ((BasePostActivity) ThreadPostNewActivity.this).mediaPickerFragment.pickMedia(((DraftPostActivity) ThreadPostNewActivity.this).draftManager.getDir(((DraftPostActivity) ThreadPostNewActivity.this).draftId), bundle, 6, 0);
                }
            });
        }
        List<StoryTopic> list = threadPost.userAddedTopicList;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.topicList = threadPost.userAddedTopicList;
        updateTopicView();
    }

    @Override // com.narvii.chat.post.ThreadPostActivity, android.view.View.OnClickListener
    public void onClick(View view) {
        savePost();
        super.onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentBackground(Media media) {
        ChatBackgroundPickerRecycler chatBackgroundPickerRecycler = this.chatPicker;
        if (chatBackgroundPickerRecycler != null) {
            chatBackgroundPickerRecycler.setCurrentSelect(media);
        }
        ChatBackgroundFragment chatBackgroundFragment = this.backgroundFragment;
        if (chatBackgroundFragment != null) {
            if (media == null) {
                chatBackgroundFragment.setDefaultBackground();
            } else {
                chatBackgroundFragment.setBackground(media);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.chat.post.ThreadPostActivity, com.narvii.post.BasePostActivity
    public ThreadPost savePost() {
        ThreadPost threadPostSavePost = super.savePost();
        threadPostSavePost.backgroundMedia = this.chatPicker.getCurrentSelect();
        threadPostSavePost.userAddedTopicList = this.topicList;
        return threadPostSavePost;
    }

    @Override // com.narvii.chat.post.ThreadPostActivity
    protected PostHelper getPostHelper() {
        return new PostHelper(this) { // from class: com.narvii.chat.post.ThreadPostNewActivity.2
            @Override // com.narvii.post.PostHelper
            protected String getPhotoUploadTarget(String str) {
                return (ThreadPostNewActivity.this.chatPicker == null || ThreadPostNewActivity.this.chatPicker.getCurrentSelect() == null || !TextUtils.equals(str, ThreadPostNewActivity.this.chatPicker.getCurrentSelect().url)) ? super.getPhotoUploadTarget(str) : NVImageView.TYPE_CHAT_BACKGROUND;
            }
        };
    }

    @Override // com.narvii.chat.post.ThreadPostActivity, com.narvii.post.BasePostActivity, com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        if (bundle != null && bundle.getInt("MediaRequestType") == 1) {
            if (list == null || list.isEmpty()) {
                return;
            }
            setCurrentBackground(list.get(0));
            return;
        }
        super.onPickMediaResult(list, bundle);
    }

    @Override // com.narvii.post.DraftPostActivity
    protected boolean showFansOnlyLabel() {
        return ((ConfigService) getService("config")).getCommunityId() != 0;
    }

    @Override // com.narvii.chat.post.ThreadPostActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != EDIT_TOPIC_REQUEST || i2 != -1) {
            super.onActivityResult(i, i2, intent);
        } else if (intent != null) {
            this.topicList = TopicTag.convertToStoryTopicList(JacksonUtils.readListAs(intent.getStringExtra("topicList"), TopicTag.class));
            saveDraft();
            updateTopicView();
        }
    }

    private void updateTopicView() {
        if (isGroupChat()) {
            this.topicLayout.setVisibility(8);
            return;
        }
        this.topicFlow.removeAllViews();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this);
        if (!this.topicList.isEmpty()) {
            for (int i = 0; i < this.topicList.size(); i++) {
                final StoryTopic storyTopic = this.topicList.get(i);
                if (storyTopic != null) {
                    final ThreadPostTopicView threadPostTopicView = (ThreadPostTopicView) layoutInflaterFrom.inflate(R.layout.thread_post_interest_topic_item, (ViewGroup) this.topicFlow, false);
                    threadPostTopicView.setStoryTopic(storyTopic);
                    threadPostTopicView.setChecked(false);
                    threadPostTopicView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.post.-$$Lambda$ThreadPostNewActivity$k5G4GYjRBMexqzY0NA6KInBNQZ0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$updateTopicView$2$ThreadPostNewActivity(threadPostTopicView, storyTopic, view);
                        }
                    });
                    this.topicFlow.addView(threadPostTopicView);
                }
            }
        }
        ThreadPostAddTopicView threadPostAddTopicView = (ThreadPostAddTopicView) layoutInflaterFrom.inflate(R.layout.thread_post_add_interest_topic_item, (ViewGroup) this.topicFlow, false);
        threadPostAddTopicView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.post.ThreadPostNewActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = FragmentWrapperActivity.intent(StoryAddTopicsFragment.class);
                intent.putExtra("topicList", JacksonUtils.writeAsString(TopicTag.createList(ThreadPostNewActivity.this.topicList)));
                ThreadPostNewActivity.this.startActivityForResult(intent, ThreadPostNewActivity.EDIT_TOPIC_REQUEST);
            }
        });
        threadPostAddTopicView.setUp();
        this.topicFlow.addView(threadPostAddTopicView);
        updateTopicAddView();
    }

    public /* synthetic */ void lambda$updateTopicView$2$ThreadPostNewActivity(final ThreadPostTopicView threadPostTopicView, final StoryTopic storyTopic, View view) {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(R.string.remove, true);
        threadPostTopicView.setChecked(true);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.chat.post.-$$Lambda$ThreadPostNewActivity$KuoSXK8hWJLQP8dZEGINsxpeMvA
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$null$0$ThreadPostNewActivity(threadPostTopicView, storyTopic, dialogInterface, i);
            }
        });
        actionSheetDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.chat.post.-$$Lambda$ThreadPostNewActivity$WbQcDloWPnlJmVdEYUTysdRp8ac
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                threadPostTopicView.setChecked(false);
            }
        });
        actionSheetDialog.show();
    }

    public /* synthetic */ void lambda$null$0$ThreadPostNewActivity(ThreadPostTopicView threadPostTopicView, StoryTopic storyTopic, DialogInterface dialogInterface, int i) {
        threadPostTopicView.setChecked(false);
        if (i == 0) {
            this.topicList.remove(storyTopic);
            this.topicFlow.removeView(threadPostTopicView);
            updateTopicAddView();
            saveDraft();
        }
    }

    private void updateTopicAddView() {
        if (this.topicFlow.getChildCount() < 1) {
            return;
        }
        NVFlowLayout nVFlowLayout = this.topicFlow;
        View childAt = nVFlowLayout.getChildAt(nVFlowLayout.getChildCount() - 1);
        if (childAt instanceof ThreadPostAddTopicView) {
            childAt.setVisibility(this.topicList.size() < 10 ? 0 : 4);
        }
    }
}
