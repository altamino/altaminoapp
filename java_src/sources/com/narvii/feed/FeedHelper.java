package com.narvii.feed;

import android.R;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.util.StateSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.google.firebase.sessions.settings.c;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.blog.post.BlogPost;
import com.narvii.blog.post.BlogPostActivity;
import com.narvii.blog.post.ImagePostActivity;
import com.narvii.blog.post.LinkPostActivity;
import com.narvii.blog.post.PollPostActivity;
import com.narvii.blog.post.QuizPostActivity;
import com.narvii.blog.post.TopicPostActivity;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.vote.VoterListFragment;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.item.ItemPinObject;
import com.narvii.item.post.ItemPost;
import com.narvii.item.post.ItemPostActivity;
import com.narvii.model.Blog;
import com.narvii.model.BlogCategory;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.PreviewObject;
import com.narvii.model.QuizQuestion;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.model.api.FeedResponse;
import com.narvii.model.api.ItemResponse;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.quiz.QuizWelcomeFragment;
import com.narvii.repost.RepostActivity;
import com.narvii.repost.RepostPost;
import com.narvii.share.ShareViewHelper;
import com.narvii.story.detail.VoteHelper;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.FeedBriefContent;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.StatisticsService;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FeedHelper {
    private ConfigService configService;
    private NVContext context;
    public LoggingOrigin loggingOrigin;
    public LoggingSource loggingSource;
    boolean showProgressWhenLoadingQuiz = true;
    public String source;
    public StartQuizInterceptor startQuizInterceptor;
    public StartQuizListener startQuizListener;

    public interface StartQuizInterceptor {
        boolean startQuizAfterRequestFinish();
    }

    public interface StartQuizListener {
        void onQuizStartFailed();

        void onQuizStarted();
    }

    public static boolean isFeedContinuousOpen(NVContext nVContext) {
        return true;
    }

    public static void safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(FeedHelper p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public Drawable getTextOnlyBackground() {
        ConfigService configService = (ConfigService) this.context.getService("config");
        int iColorPrimary = configService.getTheme().colorPrimary();
        configService.getTheme().colorHighlight();
        float[] fArr = new float[3];
        Color.colorToHSV(iColorPrimary, fArr);
        fArr[1] = (float) (((double) fArr[1]) * 0.75d);
        fArr[2] = (float) (((double) fArr[2]) * 1.1d);
        int iHSVToColor = Color.HSVToColor(fArr);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, new ColorDrawable(iColorPrimary));
        stateListDrawable.addState(StateSet.WILD_CARD, new ColorDrawable(iHSVToColor));
        return stateListDrawable;
    }

    public FeedHelper source(String str) {
        this.source = str;
        return this;
    }

    public void startLocalQuiz(Blog blog, Intent intent) {
        startLocalQuiz(blog, intent, false);
    }

    public void startQuiz(final Blog blog, final Intent intent, final boolean z6) {
        if (blog == null) {
            return;
        }
        if (!((AccountService) this.context.getService("account")).hasAccount()) {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://login"));
            intent2.putExtra("promptType", LoginActivity.PromptType.Required.name());
            try {
                safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(this, intent2);
            } catch (Exception unused) {
                Log.e("unable to start login activity");
            }
            StartQuizListener startQuizListener = this.startQuizListener;
            if (startQuizListener != null) {
                startQuizListener.onQuizStartFailed();
            }
            NVToast.makeText(this.context.getContext(), com.narvii.amino.master.R.string.login_first, 0).show();
            return;
        }
        if (!needLoadingQuizQuestions(blog)) {
            startLocalQuiz(blog, intent, z6);
            StartQuizListener startQuizListener2 = this.startQuizListener;
            if (startQuizListener2 != null) {
                startQuizListener2.onQuizStarted();
                return;
            }
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext(), BlogResponse.class);
        if (this.showProgressWhenLoadingQuiz) {
            progressDialog.show();
        }
        ApiService apiService = (ApiService) this.context.getService("api");
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/blog/" + blog.id());
        builderPath.communityId(blog.ndcId);
        apiService.exec(builderPath.build(), new ApiResponseListener<BlogResponse>(BlogResponse.class) { // from class: com.narvii.feed.FeedHelper.10
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, BlogResponse blogResponse) throws Exception {
                super.onFinish(apiRequest, blogResponse);
                ProgressDialog progressDialog2 = progressDialog;
                if (progressDialog2 != null && progressDialog2.isShowing()) {
                    progressDialog.dismiss();
                }
                Blog blog2 = blogResponse.blog;
                blog2.ndcId = blog.ndcId;
                ((NotificationCenter) FeedHelper.this.context.getService("notification")).sendNotification(new Notification("update", blog2));
                StartQuizInterceptor startQuizInterceptor = FeedHelper.this.startQuizInterceptor;
                if (startQuizInterceptor == null || startQuizInterceptor.startQuizAfterRequestFinish()) {
                    FeedHelper.this.startLocalQuiz(blog2, intent, z6);
                    StartQuizListener startQuizListener3 = FeedHelper.this.startQuizListener;
                    if (startQuizListener3 != null) {
                        startQuizListener3.onQuizStarted();
                    }
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                NVToast.makeText(FeedHelper.this.context.getContext(), str, 1).show();
                ProgressDialog progressDialog2 = progressDialog;
                if (progressDialog2 != null && progressDialog2.isShowing()) {
                    progressDialog.dismiss();
                }
                StartQuizListener startQuizListener3 = FeedHelper.this.startQuizListener;
                if (startQuizListener3 != null) {
                    startQuizListener3.onQuizStartFailed();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void edit(Feed feed, List<Item> list, List<BlogCategory> list2) {
        Intent intent;
        if (!(feed instanceof Blog)) {
            if (feed instanceof Item) {
                ItemPost itemPost = new ItemPost(this.context, (Item) feed, list);
                Intent intent2 = new Intent(this.context.getContext(), (Class<?>) ItemPostActivity.class);
                intent2.putExtra("itemId", feed.id());
                intent2.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(itemPost));
                intent2.putExtra("feed", JacksonUtils.writeAsString(feed));
                LoggingSource loggingSource = this.loggingSource;
                intent2.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, loggingSource == null ? null : loggingSource.name());
                LoggingOrigin loggingOrigin = this.loggingOrigin;
                intent2.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, loggingOrigin != null ? loggingOrigin.name() : null);
                safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(this, intent2);
                return;
            }
            return;
        }
        Blog blog = (Blog) feed;
        if (blog.refObject != null) {
            repost(feed);
            return;
        }
        BlogPost blogPost = new BlogPost(blog, list, list2);
        int i10 = blog.type;
        if (i10 == 0) {
            intent = new Intent(this.context.getContext(), (Class<?>) BlogPostActivity.class);
        } else if (i10 == 5) {
            intent = new Intent(this.context.getContext(), (Class<?>) LinkPostActivity.class);
        } else if (i10 == 6) {
            intent = new Intent(this.context.getContext(), (Class<?>) QuizPostActivity.class);
        } else if (i10 == 4) {
            intent = new Intent(this.context.getContext(), (Class<?>) PollPostActivity.class);
        } else {
            intent = i10 == 7 ? new Intent(this.context.getContext(), (Class<?>) ImagePostActivity.class) : new Intent(this.context.getContext(), (Class<?>) TopicPostActivity.class);
        }
        intent.putExtra("blogId", feed.id());
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost));
        intent.putExtra("feed", JacksonUtils.writeAsString(feed));
        LoggingSource loggingSource2 = this.loggingSource;
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, loggingSource2 == null ? null : loggingSource2.name());
        LoggingOrigin loggingOrigin2 = this.loggingOrigin;
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, loggingOrigin2 != null ? loggingOrigin2.name() : null);
        safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(this, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void voteFeed(Feed feed, int i10, Callback callback, final Callback<Boolean> callback2, LoggingSource loggingSource, String str) {
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
        VoteHelper voteHelper = new VoteHelper(this.context);
        voteHelper.loggingSource = loggingSource;
        voteHelper.loggingOriginName = str;
        voteHelper.vote(feed, Integer.valueOf(i10), new VoteHelper.OnVoteListenerAdapter() { // from class: com.narvii.feed.FeedHelper.13
            @Override // com.narvii.story.detail.VoteHelper.OnVoteListenerAdapter, com.narvii.story.detail.VoteHelper.OnVoteListener
            public void onVoteEnd(boolean z6) {
                Callback callback3 = callback2;
                if (callback3 != null) {
                    callback3.call(Boolean.valueOf(z6));
                }
            }
        });
    }

    public void addQuizListExtra(Intent intent, Intent intent2) {
        if (intent2 == null || intent == null || !intent.getBooleanExtra("fromQuizFeedList", false)) {
            return;
        }
        intent2.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_REQUEST, intent.getStringExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_REQUEST));
        intent2.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_LIST, intent.getStringExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_LIST));
        intent2.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_TIMESTAMP, intent.getStringExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_TIMESTAMP));
        intent2.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_CURRENT_POSITION, intent.getIntExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_CURRENT_POSITION, 0));
        intent2.putExtra("fromQuizFeedList", true);
    }

    public void bookmark(Feed feed, Callback<ApiResponse> callback) {
        if (feed == null) {
            return;
        }
        if (!((AccountService) this.context.getService("account")).hasAccount()) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://login"));
            intent.putExtra("promptType", LoginActivity.PromptType.Required.name());
            try {
                safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(this, intent);
                return;
            } catch (Exception unused) {
                Log.e("unable to start login activity");
                return;
            }
        }
        ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.successListener = callback;
        progressDialog.show();
        ((ApiService) this.context.getService("api")).exec(new ApiRequest.Builder().path("/bookmark").post().param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(feed.objectType())).param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, feed.id()).build(), progressDialog.dismissListener);
        ((StatisticsService) this.context.getService("statistics")).event("Bookmarks a post").userPropInc("Bookmarked a post Total").param("Content", StatisticHelper.getStatisticSource(this.context, feed, 1)).source(this.source);
    }

    public void copyAndEdit(final Item item) {
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.show();
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().path("/item/" + item.id()).build(), new ApiResponseListener<ItemResponse>(ItemResponse.class) { // from class: com.narvii.feed.FeedHelper.3
            public static void safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(FeedHelper p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                NVToast.makeText(FeedHelper.this.context.getContext(), str, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ItemResponse itemResponse) throws Exception {
                progressDialog.dismiss();
                ((NotificationCenter) FeedHelper.this.context.getService("notification")).sendNotification(new Notification("update", new ItemPinObject(item.id(), 0)));
                ItemPost itemPost = new ItemPost(FeedHelper.this.context, itemResponse.item, itemResponse.taggedObjects);
                Intent intent = new Intent(FeedHelper.this.context.getContext(), (Class<?>) ItemPostActivity.class);
                intent.putExtra("itemId", itemResponse.item.itemId);
                intent.putExtra("fork", true);
                intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(itemPost));
                intent.putExtra("feed", JacksonUtils.writeAsString(itemResponse.item));
                LoggingSource loggingSource = FeedHelper.this.loggingSource;
                intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, loggingSource == null ? null : loggingSource.name());
                LoggingOrigin loggingOrigin = FeedHelper.this.loggingOrigin;
                intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, loggingOrigin != null ? loggingOrigin.name() : null);
                safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(FeedHelper.this, intent);
            }
        });
    }

    public void delete(final Feed feed, boolean z6) {
        if (feed.author.role != 254) {
            if (!z6) {
                AlertDialog.Builder builder = new AlertDialog.Builder(this.context.getContext());
                builder.setMessage(com.narvii.amino.master.R.string.dialog_delete_confirm);
                builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.narvii.feed.FeedHelper.6
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i10) {
                        FeedHelper.this.delete(feed, true);
                    }
                });
                builder.setNegativeButton(R.string.no, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                builder.show();
                return;
            }
            ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.feed.FeedHelper.7
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    NotificationUtils.sendNotificationIncludeGlobal(FeedHelper.this.context, new Notification("delete", feed));
                }
            };
            progressDialog.show();
            ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().delete().path(feed.apiTypeName() + c.FORWARD_SLASH_STRING + feed.id()).build(), progressDialog.dismissListener);
            return;
        }
        if (!z6) {
            AlertDialog.Builder builder2 = new AlertDialog.Builder(this.context.getContext());
            builder2.setMessage(com.narvii.amino.master.R.string.dialog_delete_confirm_catalog);
            builder2.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.narvii.feed.FeedHelper.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    FeedHelper.this.delete(feed, true);
                }
            });
            builder2.setNegativeButton(R.string.no, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
            builder2.show();
            return;
        }
        ProgressDialog progressDialog2 = new ProgressDialog(this.context.getContext());
        progressDialog2.successListener = new Callback<ApiResponse>() { // from class: com.narvii.feed.FeedHelper.5
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                NotificationCenter notificationCenter = (NotificationCenter) FeedHelper.this.context.getService("notification");
                notificationCenter.sendNotification(new Notification("delete", feed));
                ItemCategory itemCategory = new ItemCategory();
                AccountService accountService = (AccountService) FeedHelper.this.context.getService("account");
                if (itemCategory.author == null) {
                    itemCategory.author = new User();
                }
                itemCategory.author.uid = accountService.getUserId();
                notificationCenter.sendNotification(new Notification("update", itemCategory));
            }
        };
        progressDialog2.show();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        arrayNodeCreateArrayNode.add(feed.id());
        AccountService accountService = (AccountService) this.context.getService("account");
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().post().path(feed.apiTypeName() + c.FORWARD_SLASH_STRING + feed.id() + "/batch-delete").param("sourceUid", accountService.getUserId()).param("itemIdList", arrayNodeCreateArrayNode).build(), progressDialog2.dismissListener);
    }

    public void flagForReview(Feed feed) {
        new FlagReportOptionDialog.Builder(this.context).nvObject(feed).build().show();
    }

    public void follow(final Feed feed, boolean z6, boolean z10, final Callback callback, final Callback callback2, final Callback callback3) {
        ApiRequest apiRequestBuild;
        User user = feed.author;
        if (user == null) {
            return;
        }
        if (z6) {
            apiRequestBuild = ApiRequest.builder().post().path("/user-profile/" + user.id() + "/member").build();
        } else if (z10) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this.context.getContext());
            actionSheetDialog.addItem(com.narvii.amino.master.R.string.user_unfollow, true);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.feed.FeedHelper.8
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    if (i10 == 0) {
                        Callback callback4 = callback;
                        if (callback4 != null) {
                            callback4.call(null);
                        }
                        FeedHelper.this.follow(feed, false, false, callback, callback2, callback3);
                    }
                }
            });
            actionSheetDialog.show();
            apiRequestBuild = null;
        } else {
            AccountService accountService = (AccountService) this.context.getService("account");
            apiRequestBuild = ApiRequest.builder().delete().path("/user-profile/" + user.id() + "/member/" + accountService.getUserId()).build();
        }
        if (apiRequestBuild == null) {
            return;
        }
        ((ApiService) this.context.getService("api")).exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.feed.FeedHelper.9
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                callback3.call(apiResponse);
                NVToast.makeText(FeedHelper.this.context.getContext(), str, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                callback2.call(apiResponse);
            }
        });
    }

    public void followAuthor(Feed feed, boolean z6, Callback callback, Callback callback2, Callback callback3) {
        if (feed == null) {
            return;
        }
        if (z6) {
            follow(feed, true, false, callback, callback2, callback3);
        } else {
            follow(feed, false, true, callback, callback2, callback3);
        }
    }

    public Intent getFeedContinuousIntent(Feed feed, List<? extends Feed> list, int i10, List<String> list2, List<Integer> list3, List<String> list4, List<String> list5) {
        int iMin;
        List<? extends Feed> arrayList = list == null ? new ArrayList<>() : list;
        int iIndexOfId = Utils.indexOfId(arrayList, feed.id());
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        if (list3 != null) {
            while (true) {
                if (i11 >= list3.size()) {
                    i11 = 0;
                    break;
                }
                int iIntValue = list3.get(i11).intValue() + i12;
                if (iIndexOfId >= i12 && iIndexOfId < iIntValue) {
                    i13 = i12;
                    i12 = iIntValue;
                    break;
                }
                i11++;
                i13 = i12;
                i12 = iIntValue;
            }
        }
        List<? extends Feed> arrayList2 = new ArrayList<>();
        if (arrayList.size() >= i12) {
            arrayList2 = arrayList.subList(i13, i12);
        }
        String str = (list4 == null || list4.isEmpty() || list4.size() <= i11) ? null : list4.get(i11);
        String str2 = (list2 == null || list2.isEmpty() || list2.size() <= i11) ? null : list2.get(i11);
        String str3 = (list5 == null || list5.isEmpty() || list5.size() <= i11) ? null : list5.get(i11);
        int pageSize = this.configService.getPageSize();
        if (arrayList2.size() > pageSize) {
            arrayList2 = arrayList2.subList(0, pageSize);
            iMin = Math.min(i10, pageSize);
        } else {
            iMin = i10;
        }
        ArrayList arrayList3 = new ArrayList();
        for (PreviewObject previewObject : arrayList2) {
            if (previewObject instanceof FeedBriefContent) {
                arrayList3.add(((FeedBriefContent) previewObject).getBriefContent());
            } else {
                arrayList3.add(previewObject);
            }
        }
        Intent intent = FeedDetailFragment.intent(this.context, feed, arrayList3, str2, str3, iIndexOfId - i13, str, iMin);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        LoggingOrigin loggingOrigin = this.loggingOrigin;
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, loggingOrigin != null ? loggingOrigin.name() : null);
        return intent;
    }

    public int getHighLightColor() {
        ConfigService configService = (ConfigService) this.context.getService("config");
        int iColorPrimary = configService.getTheme().colorPrimary();
        configService.getTheme().colorHighlight();
        float[] fArr = new float[3];
        Color.colorToHSV(iColorPrimary, fArr);
        fArr[1] = (float) (((double) fArr[1]) * 0.75d);
        fArr[2] = (float) (((double) fArr[2]) * 1.1d);
        return Color.HSVToColor(fArr);
    }

    public String getQuizHintInfo(Blog blog) {
        List<QuizQuestion> list;
        if (blog == null) {
            return null;
        }
        int quizPlayedTimes = blog.getQuizPlayedTimes();
        int quizQuestionCount = blog.getQuizQuestionCount();
        String string = quizPlayedTimes < 10 ? this.context.getContext().getString(com.narvii.amino.master.R.string.quiz_new_quiz) : this.context.getContext().getString(com.narvii.amino.master.R.string.quiz_played_times, Integer.valueOf(quizPlayedTimes));
        if (quizQuestionCount == 0 && (list = blog.quizQuestionList) != null) {
            quizQuestionCount = list.size();
        }
        if (quizQuestionCount == 0) {
            return string;
        }
        return (string + "  •  ") + this.context.getContext().getString(com.narvii.amino.master.R.string.question_count, Integer.valueOf(quizQuestionCount));
    }

    public boolean needLoadingQuizQuestions(Blog blog) {
        return CollectionUtils.isEmpty(blog.quizQuestionList);
    }

    public void refreshAndEdit(Feed feed) {
        Class cls;
        if (feed instanceof Blog) {
            if (((Blog) feed).refObject != null) {
                edit(feed, null, null);
                return;
            }
            cls = BlogResponse.class;
        } else {
            if (!(feed instanceof Item)) {
                throw new IllegalArgumentException();
            }
            cls = ItemResponse.class;
        }
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.show();
        ApiRequest.Builder builderPath = ApiRequest.builder().path(feed.apiTypeName() + '/' + feed.id());
        builderPath.param("action", "edit");
        ((ApiService) this.context.getService("api")).exec(builderPath.build(), new ApiResponseListener<FeedResponse>(cls) { // from class: com.narvii.feed.FeedHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                NVToast.makeText(FeedHelper.this.context.getContext(), str, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, FeedResponse feedResponse) throws Exception {
                progressDialog.dismiss();
                FeedHelper.this.edit(feedResponse.object(), feedResponse.taggedObjects, feedResponse instanceof BlogResponse ? ((BlogResponse) feedResponse).taggedBlogCategoryList : null);
            }
        });
    }

    public void repost(Feed feed) {
        RepostPost repostPost = new RepostPost();
        repostPost.type = 2;
        String str = null;
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            if (blog.refObject != null) {
                if (Utils.isEqualsNotNull(feed.author.uid, ((AccountService) this.context.getService("account")).getUserId())) {
                    str = blog.blogId;
                    repostPost.content = blog.content;
                }
                feed = blog.refObject;
            }
        }
        repostPost.refObjectType = feed.objectType();
        repostPost.refObjectId = feed.id();
        repostPost.previewImage = feed.firstMedia();
        repostPost.previewTitle = feed.title();
        repostPost.previewContent = feed.content();
        repostPost.needHidden = feed.needHidden;
        Intent intent = new Intent(this.context.getContext(), (Class<?>) RepostActivity.class);
        intent.putExtra("refObjectId", feed.id());
        intent.putExtra("repostBlogId", str);
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(repostPost));
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(this, intent);
    }

    public void showExternalSourceNotAvailable() {
        com.narvii.util.dialog.AlertDialog alertDialog = new com.narvii.util.dialog.AlertDialog(this.context.getContext());
        alertDialog.setMessage(com.narvii.amino.master.R.string.external_source_not_available);
        alertDialog.addButton(com.narvii.amino.master.R.string.done, 4, (View.OnClickListener) null);
        alertDialog.show();
    }

    public void showShareFeedDialog(final Feed feed, boolean z6) {
        int i10;
        int i11;
        AccountService accountService = (AccountService) this.context.getService("account");
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this.context.getContext());
        User user = feed.author;
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(user == null ? null : user.uid, accountService.getUserId());
        final int[] iArr = new int[16];
        if (zIsEqualsNotNull) {
            i10 = 0;
        } else {
            actionSheetDialog.addItem(com.narvii.amino.master.R.string.repost, false);
            iArr[0] = com.narvii.amino.master.R.string.repost;
            i10 = 1;
        }
        actionSheetDialog.addItem(com.narvii.amino.master.R.string.copy_link, false);
        int i12 = i10 + 1;
        iArr[i10] = com.narvii.amino.master.R.string.copy_link;
        if (z6) {
            actionSheetDialog.addItem(com.narvii.amino.master.R.string.un_save, false);
            i11 = i10 + 2;
            iArr[i12] = com.narvii.amino.master.R.string.un_save;
        } else {
            actionSheetDialog.addItem(com.narvii.amino.master.R.string.bookmark, false);
            i11 = i10 + 2;
            iArr[i12] = com.narvii.amino.master.R.string.bookmark;
        }
        if (zIsEqualsNotNull) {
            actionSheetDialog.addItem(com.narvii.amino.master.R.string.edit, false);
            iArr[i11] = com.narvii.amino.master.R.string.edit;
            i11++;
        }
        if (!zIsEqualsNotNull) {
            actionSheetDialog.addItem(com.narvii.amino.master.R.string.flag_for_review, false);
            iArr[i11] = com.narvii.amino.master.R.string.flag_for_review;
            i11++;
        }
        if (accountService.getUserProfile() != null && accountService.getUserProfile().isCurator()) {
            actionSheetDialog.addItem(com.narvii.amino.master.R.string.advanced, 0, com.narvii.amino.master.R.layout.dialog_action_moderation);
            iArr[i11] = com.narvii.amino.master.R.string.advanced;
        }
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.feed.FeedHelper.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i13) {
                switch (iArr[i13]) {
                    case com.narvii.amino.master.R.string.advanced /* 2131886237 */:
                        new AdvancedOptionDialog.Builder(FeedHelper.this.context).nvObject(feed).build().show();
                        break;
                    case com.narvii.amino.master.R.string.bookmark /* 2131886523 */:
                        new FeedHelper(FeedHelper.this.context).source("Feed").bookmark(feed, new Callback<ApiResponse>() { // from class: com.narvii.feed.FeedHelper.1.1
                            @Override // com.narvii.util.Callback
                            public void call(ApiResponse apiResponse) {
                                NVToast.makeText(FeedHelper.this.context.getContext(), FeedHelper.this.context.getContext().getString(com.narvii.amino.master.R.string.bookmark_successful), 0).show();
                            }
                        });
                        break;
                    case com.narvii.amino.master.R.string.copy_link /* 2131886921 */:
                        ShareViewHelper shareViewHelper = new ShareViewHelper(FeedHelper.this.context);
                        shareViewHelper.source = FeedHelper.this.source;
                        shareViewHelper.copyLink(feed);
                        break;
                    case com.narvii.amino.master.R.string.edit /* 2131887160 */:
                        FeedHelper.this.refreshAndEdit(feed);
                        break;
                    case com.narvii.amino.master.R.string.flag_for_review /* 2131888001 */:
                        FeedHelper.this.flagForReview(feed);
                        break;
                    case com.narvii.amino.master.R.string.repost /* 2131890169 */:
                        FeedHelper.this.repost(feed);
                        break;
                    case com.narvii.amino.master.R.string.un_save /* 2131890692 */:
                        FeedHelper.this.unBookmark(feed, new Callback<ApiResponse>() { // from class: com.narvii.feed.FeedHelper.1.2
                            @Override // com.narvii.util.Callback
                            public void call(ApiResponse apiResponse) {
                                NotificationCenter notificationCenter = (NotificationCenter) FeedHelper.this.context.getService("notification");
                                Feed feed2 = (Feed) feed.m1622clone();
                                feed2.status = 304;
                                notificationCenter.sendNotification(new Notification("update", feed2));
                                NVToast.makeText(FeedHelper.this.context.getContext(), com.narvii.amino.master.R.string.done, 1).show();
                            }
                        });
                        break;
                }
            }
        });
        actionSheetDialog.show();
    }

    public void startActivity(Intent intent) {
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
    }

    public void startLocalQuiz(Blog blog, Intent intent, boolean z6) {
        int i10;
        Intent intent2 = FragmentWrapperActivity.intent(QuizWelcomeFragment.class);
        intent2.putExtra("hellMode", z6);
        intent2.putExtra("quiz", blog == null ? null : JacksonUtils.writeAsString(blog));
        if (blog != null && (i10 = blog.ndcId) != -1) {
            intent2.putExtra("__communityId", i10);
        }
        addQuizListExtra(intent, intent2);
        safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(this, intent2);
        LoggingService loggingService = (LoggingService) this.context.getService("logging");
        ArrayList arrayList = new ArrayList();
        if (blog.ndcId > 0) {
            arrayList.add(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
            arrayList.add(Integer.valueOf(blog.ndcId));
        }
        arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID);
        arrayList.add(blog.id());
        if (this.loggingSource != null) {
            arrayList.add("eventSource");
            arrayList.add(this.loggingSource.name());
        }
        if (this.loggingOrigin != null) {
            arrayList.add("eventOrigin");
            arrayList.add(this.loggingOrigin.name());
        }
        loggingService.lambda$logEvent$0("PlayQuizStarting", arrayList.toArray());
    }

    public void unBookmark(Feed feed, Callback<ApiResponse> callback) {
        ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.successListener = callback;
        progressDialog.show();
        ((ApiService) this.context.getService("api")).exec(new ApiRequest.Builder().path("/bookmark/" + feed.id()).delete().build(), progressDialog.dismissListener);
    }

    public void vote(final Feed feed, int i10, final Callback callback, final Callback<Boolean> callback2, final LoggingSource loggingSource, final String str) {
        if (feed == null) {
            if (callback2 != null) {
                callback2.call(null);
            }
        } else if (feed.getVotedValue(Utils.isGlobalInteractionScope(this.context)) == 0 || i10 != 0) {
            if (i10 == 0) {
                i10 = 4;
            }
            voteFeed(feed, i10, callback, callback2, loggingSource, str);
        } else {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this.context.getContext());
            actionSheetDialog.addItem(com.narvii.amino.master.R.string.unlike, true);
            actionSheetDialog.addItem(com.narvii.amino.master.R.string.comment_all_likes, false);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.feed.FeedHelper.12
                public static void safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(FeedHelper p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i11) {
                    if (i11 == 0) {
                        FeedHelper.this.voteFeed(feed, 0, callback, callback2, loggingSource, str);
                    } else if (i11 == 1) {
                        Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                        intent.putExtra("nvObject", JacksonUtils.writeAsString(feed));
                        safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(FeedHelper.this, intent);
                    }
                }
            });
            actionSheetDialog.show();
        }
    }

    public FeedHelper(NVContext nVContext) {
        this.context = nVContext;
        this.configService = (ConfigService) nVContext.getService("config");
    }

    public void loadQuizQuestionList(Blog blog, final Callback<Blog> callback) {
        if (!needLoadingQuizQuestions(blog)) {
            if (callback != null) {
                callback.call(blog);
                return;
            }
            return;
        }
        Class<BlogResponse> cls = BlogResponse.class;
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext(), BlogResponse.class);
        progressDialog.show();
        int communityId = ((ConfigService) this.context.getService("config")).getCommunityId();
        ApiService apiService = (ApiService) this.context.getService("api");
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/blog/" + blog.id());
        if (communityId == 0) {
            builderPath.communityId(blog.ndcId);
        }
        apiService.exec(builderPath.build(), new ApiResponseListener<BlogResponse>(cls) { // from class: com.narvii.feed.FeedHelper.11
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, BlogResponse blogResponse) throws Exception {
                super.onFinish(apiRequest, blogResponse);
                if ((FeedHelper.this.context instanceof NVFragment) && ((NVFragment) FeedHelper.this.context).isAdded()) {
                    ProgressDialog progressDialog2 = progressDialog;
                    if (progressDialog2 != null && progressDialog2.isShowing()) {
                        progressDialog.dismiss();
                    }
                    Blog blog2 = blogResponse.blog;
                    ((NotificationCenter) FeedHelper.this.context.getService("notification")).sendNotification(new Notification("update", blog2));
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(blog2);
                    }
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                if ((FeedHelper.this.context instanceof NVFragment) && ((NVFragment) FeedHelper.this.context).isAdded()) {
                    NVToast.makeText(FeedHelper.this.context.getContext(), str, 1).show();
                    ProgressDialog progressDialog2 = progressDialog;
                    if (progressDialog2 != null && progressDialog2.isShowing()) {
                        progressDialog.dismiss();
                    }
                }
            }
        });
    }

    public Drawable getTextOnlyBackground(Community community) {
        return getTextOnlyBackground(community, 0.0f);
    }

    public Drawable getTextOnlyBackground(Community community, float f) {
        int color = community == null ? ContextCompat.getColor(this.context.getContext(), com.narvii.amino.master.R.color.color_default) : community.themeColor();
        float[] fArr = new float[3];
        Color.colorToHSV(color, fArr);
        fArr[1] = (float) (((double) fArr[1]) * 0.75d);
        fArr[2] = (float) (((double) fArr[2]) * 1.1d);
        int iHSVToColor = Color.HSVToColor(fArr);
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.LEFT_RIGHT;
        GradientDrawable gradientDrawable = new GradientDrawable(orientation, new int[]{iHSVToColor, iHSVToColor});
        gradientDrawable.setCornerRadius(Utils.dpToPx(this.context.getContext(), f));
        GradientDrawable gradientDrawable2 = new GradientDrawable(orientation, new int[]{color, color});
        gradientDrawable2.setCornerRadius(Utils.dpToPx(this.context.getContext(), f));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, gradientDrawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, gradientDrawable);
        return stateListDrawable;
    }

    public void startQuiz(Blog blog, Intent intent) {
        startQuiz(blog, intent, false);
    }
}
