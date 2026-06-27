package com.narvii.story;

import android.app.ActivityOptions;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.blog.post.BlogPost;
import com.narvii.blog.post.StoryPostActivity;
import com.narvii.logging.LogUtils;
import com.narvii.logging.PageRefererInfo;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.modulization.Module;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.delegate.NVVideoPlayHost;
import com.narvii.paging.source.DataSource;
import com.narvii.post.DraftManager;
import com.narvii.post.draft.DraftListFragment;
import com.narvii.story.dialog.StoryCreationDialog;
import com.narvii.util.JacksonUtils;

/* loaded from: classes3.dex */
public class StoryHelper {
    private NVContext context;

    public StoryHelper(NVContext nVContext) {
        this.context = nVContext;
    }

    public StoryListFragment openStoryDetailInCurActivity(FragmentManager fragmentManager, DataSource dataSource, Blog blog, Community community, User user, View view, int i, boolean z, StoryListVisibleChangeListener storyListVisibleChangeListener) {
        return openStoryDetailInCurActivity(fragmentManager, dataSource, blog, community, user, view, i, z, storyListVisibleChangeListener, false);
    }

    public StoryListFragment openStoryDetailInCurActivity(FragmentManager fragmentManager, DataSource dataSource, Blog blog, Community community, User user, View view, int i, boolean z, StoryListVisibleChangeListener storyListVisibleChangeListener, boolean z2) {
        StoryListFragment storyListFragment = new StoryListFragment();
        storyListFragment.setSharedDataSource(dataSource);
        Bundle bundle = new Bundle();
        if (storyListVisibleChangeListener != null) {
            storyListFragment.addStoryVisibleChangeListener(storyListVisibleChangeListener);
        } else {
            bundle.putBoolean(StoryListFragment.ACTIVITY_VISIBLE_HINT_EXCLUSIVE, true);
        }
        bundle.putString(StoryListFragment.KEY_FEED, JacksonUtils.writeAsString(blog));
        bundle.putString(StoryListFragment.KEY_FEED_COMMUNITY, JacksonUtils.writeAsString(community));
        bundle.putString(StoryListFragment.KEY_FEED_USER, JacksonUtils.writeAsString(user));
        bundle.putBoolean(StoryListFragment.KEY_SHOW_COMMENT_BAR, z);
        bundle.putBoolean(StoryListFragment.SHOW_IN_SAME_ACTIVITY, true);
        bundle.putInt(StoryListFragment.KEY_TOPIC_ID, 0);
        if (!TextUtils.isEmpty(LogUtils.nextPageStrategyInfo)) {
            bundle.putString("__strategyInfo", LogUtils.nextPageStrategyInfo);
        }
        PageRefererInfo pageRefererInfo = LogUtils.nextPageRefererInfo;
        if (pageRefererInfo != null) {
            bundle.putString("__pageRefererInfo", JacksonUtils.writeAsString(pageRefererInfo));
        }
        bundle.putString(StoryListFragment.KEY_TYPE, StoryApi.DISCOVER_PLAYER);
        Bundle animationBundles = StoryListFragment.getAnimationBundles(view);
        for (String str : animationBundles.keySet()) {
            bundle.putInt(str, animationBundles.getInt(str));
        }
        bundle.putBoolean(StoryListFragment.KEY_FORCE_VIDEO_AUTO_PLAY, z2);
        storyListFragment.setArguments(bundle);
        if (fragmentManager.findFragmentByTag("story_detail") != null) {
            fragmentManager.beginTransaction().setTransition(FragmentTransaction.TRANSIT_FRAGMENT_OPEN).replace(i, storyListFragment, "story_detail").commitNowAllowingStateLoss();
        } else {
            fragmentManager.beginTransaction().setTransition(FragmentTransaction.TRANSIT_FRAGMENT_OPEN).add(i, storyListFragment, "story_detail").commitNowAllowingStateLoss();
        }
        return storyListFragment;
    }

    public void sendStoryNotification(Blog blog, String str) {
        if (blog == null) {
            return;
        }
        NotificationCenter notificationCenter = (NotificationCenter) this.context.getService("notification");
        Notification notification = new Notification();
        notification.action = "update";
        StoryNotificationStub storyNotificationStub = new StoryNotificationStub();
        storyNotificationStub.story = blog;
        storyNotificationStub.id = blog.id();
        storyNotificationStub.action = str;
        notification.obj = storyNotificationStub;
        notification.id = storyNotificationStub.id();
        notification.uid = storyNotificationStub.uid();
        notificationCenter.sendNotification(notification);
    }

    public void openStoryDetailPageInAnotherActivity(View view, Intent intent) {
        if (intent == null) {
            return;
        }
        if (view != null && Build.VERSION.SDK_INT >= 23) {
            NVContext nVContext = this.context;
            if ((nVContext instanceof NVFragment) && ((NVFragment) nVContext).getActivity() != null) {
                FragmentActivity activity = ((NVFragment) this.context).getActivity();
                activity.startActivity(intent, ActivityOptions.makeSceneTransitionAnimation(activity, view, "renderView").toBundle());
                return;
            }
        }
        this.context.getContext().startActivity(intent);
    }

    public void openStoryListFragment(Intent intent, View view) {
        NVContext nVContext = this.context;
        NVVideoView videoView = nVContext instanceof NVVideoPlayHost ? ((NVVideoPlayHost) nVContext).getVideoDelegate().getVideoView() : null;
        if (videoView != null && Build.VERSION.SDK_INT >= 23 && (this.context instanceof NVFragment)) {
            boolean z = false;
            if ((view.getParent() instanceof ViewGroup) && (((ViewGroup) view.getParent()).indexOfChild(videoView) != -1 || ((ViewGroup) view.getParent()).indexOfChild((View) videoView.getParent()) != -1)) {
                z = true;
            }
            FragmentActivity activity = ((NVFragment) this.context).getActivity();
            ActivityOptions activityOptionsMakeSceneTransitionAnimation = ActivityOptions.makeSceneTransitionAnimation(activity, videoView, "renderView");
            if (z && activity != null) {
                activity.startActivity(intent, activityOptionsMakeSceneTransitionAnimation.toBundle());
                return;
            } else {
                this.context.startActivity(intent);
                return;
            }
        }
        this.context.startActivity(intent);
    }

    public void showStoryPostPage() {
        if (!((AccountService) this.context.getService("account")).hasAccount()) {
            this.context.getContext().startActivity(new Intent(this.context.getContext(), (Class<?>) LoginActivity.class));
        } else if (((DraftManager) this.context.getService(EntryManager.ENTRY_DRAFT)).hasDraft("story")) {
            StoryCreationDialog storyCreationDialog = new StoryCreationDialog(this.context);
            storyCreationDialog.setOnClickListener(new StoryCreationDialog.OnClickListener() { // from class: com.narvii.story.StoryHelper.1
                @Override // com.narvii.story.dialog.StoryCreationDialog.OnClickListener
                public void onCreateNewClick(View view) {
                    BlogPost blogPost = new BlogPost();
                    blogPost.type = 9;
                    Intent intent = new Intent(StoryHelper.this.context.getContext(), (Class<?>) StoryPostActivity.class);
                    intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost));
                    StoryHelper.this.context.getContext().startActivity(intent);
                }

                @Override // com.narvii.story.dialog.StoryCreationDialog.OnClickListener
                public void onViewDraftClick(View view) {
                    Intent intent = FragmentWrapperActivity.intent(DraftListFragment.class);
                    intent.putExtra("draftType", "story");
                    StoryHelper.this.context.getContext().startActivity(intent);
                }
            });
            storyCreationDialog.show();
        } else {
            BlogPost blogPost = new BlogPost();
            blogPost.type = 9;
            Intent intent = new Intent(this.context.getContext(), (Class<?>) StoryPostActivity.class);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost));
            this.context.getContext().startActivity(intent);
        }
    }
}
