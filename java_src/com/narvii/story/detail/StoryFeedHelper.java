package com.narvii.story.detail;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.blog.post.BlogPost;
import com.narvii.blog.post.BlogPostActivity;
import com.narvii.blog.post.ImagePostActivity;
import com.narvii.blog.post.LinkPostActivity;
import com.narvii.blog.post.PollPostActivity;
import com.narvii.blog.post.QuizPostActivity;
import com.narvii.blog.post.StoryPostActivity;
import com.narvii.blog.post.TopicPostActivity;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.model.Blog;
import com.narvii.model.BlogCategory;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.model.api.FeedResponse;
import com.narvii.model.api.ItemResponse;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.repost.RepostActivity;
import com.narvii.repost.RepostPost;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.widget.NVImageView;
import java.util.List;

/* loaded from: classes3.dex */
public class StoryFeedHelper {
    private NVContext context;
    public LoggingOrigin loggingOrigin;
    public LoggingSource loggingSource;
    public String source;

    public StoryFeedHelper(NVContext nVContext) {
        this.context = nVContext;
    }

    public StoryFeedHelper source(String str) {
        this.source = str;
        return this;
    }

    public void repost(Feed feed) {
        RepostPost repostPost = new RepostPost();
        repostPost.type = 2;
        String str = null;
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            if (blog.refObject != null) {
                if (Utils.isEqualsNotNull(feed.author.uid, ((AccountService) this.context.getService("account")).getUserId())) {
                    String str2 = blog.blogId;
                    repostPost.content = blog.content;
                    str = str2;
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
        intent.putExtra("Source", this.source);
        if ((feed instanceof Blog) && ((Blog) feed).type == 9) {
            intent.putExtra("imageType", NVImageView.TYPE_STORY_COVER);
        }
        int i = feed.ndcId;
        if (i != -1) {
            intent.putExtra("__communityId", i);
        }
        startActivity(intent);
    }

    public void refreshAndEdit(Feed feed) {
        Class cls = BlogResponse.class;
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            if (blog.refObject != null && blog.type != 9) {
                edit(feed, null, null);
                return;
            }
        } else if (feed instanceof Item) {
            cls = ItemResponse.class;
        } else {
            throw new IllegalArgumentException();
        }
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.show();
        ApiRequest.Builder builderPath = ApiRequest.builder().path(feed.apiTypeName() + '/' + feed.id());
        builderPath.param("action", "edit");
        int i = feed.ndcId;
        if (i != -1) {
            builderPath.communityId(i);
        }
        ((ApiService) this.context.getService("api")).exec(builderPath.build(), new ApiResponseListener<FeedResponse>(cls) { // from class: com.narvii.story.detail.StoryFeedHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, FeedResponse feedResponse) throws Exception {
                progressDialog.dismiss();
                StoryFeedHelper.this.edit(feedResponse.object(), feedResponse.taggedObjects, feedResponse instanceof BlogResponse ? ((BlogResponse) feedResponse).taggedBlogCategoryList : null);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                NVToast.makeText(StoryFeedHelper.this.context.getContext(), str, 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void edit(Feed feed, List<Item> list, List<BlogCategory> list2) {
        Intent intent;
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            if (blog.type == 9) {
                blog.refObject = null;
            }
            if (blog.refObject == null) {
                BlogPost blogPost = new BlogPost(blog, list, list2);
                int i = blog.type;
                if (i == 0) {
                    intent = new Intent(this.context.getContext(), (Class<?>) BlogPostActivity.class);
                } else if (i == 5) {
                    intent = new Intent(this.context.getContext(), (Class<?>) LinkPostActivity.class);
                } else if (i == 6) {
                    intent = new Intent(this.context.getContext(), (Class<?>) QuizPostActivity.class);
                } else if (i == 4) {
                    intent = new Intent(this.context.getContext(), (Class<?>) PollPostActivity.class);
                } else if (i == 7) {
                    intent = new Intent(this.context.getContext(), (Class<?>) ImagePostActivity.class);
                } else if (i == 9) {
                    intent = new Intent(this.context.getContext(), (Class<?>) StoryPostActivity.class);
                } else {
                    intent = new Intent(this.context.getContext(), (Class<?>) TopicPostActivity.class);
                }
                intent.putExtra("blogId", feed.id());
                intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost));
                intent.putExtra(CommentListFragment.COMMENT_KEY_FEED, JacksonUtils.writeAsString(feed));
                LoggingSource loggingSource = this.loggingSource;
                intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, loggingSource == null ? null : loggingSource.name());
                LoggingOrigin loggingOrigin = this.loggingOrigin;
                intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, loggingOrigin != null ? loggingOrigin.name() : null);
                int i2 = feed.ndcId;
                if (i2 != -1) {
                    intent.putExtra("__communityId", i2);
                }
                startActivity(intent);
                return;
            }
            repost(feed);
        }
    }

    public void delete(final Feed feed, boolean z) {
        if (feed.author.role != 254) {
            if (!z) {
                AlertDialog.Builder builder = new AlertDialog.Builder(this.context.getContext());
                builder.setMessage(R.string.dialog_delete_confirm);
                builder.setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.narvii.story.detail.StoryFeedHelper.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        StoryFeedHelper.this.delete(feed, true);
                    }
                });
                builder.setNegativeButton(android.R.string.no, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                builder.show();
                return;
            }
            ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.story.detail.StoryFeedHelper.5
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    NotificationUtils.sendNotificationIncludeGlobal(StoryFeedHelper.this.context, new Notification("delete", feed));
                }
            };
            progressDialog.show();
            ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().delete().path(feed.apiTypeName() + "/" + feed.id()).communityId(feed.ndcId).build(), progressDialog.dismissListener);
            return;
        }
        if (!z) {
            AlertDialog.Builder builder2 = new AlertDialog.Builder(this.context.getContext());
            builder2.setMessage(R.string.dialog_delete_confirm_catalog);
            builder2.setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.narvii.story.detail.StoryFeedHelper.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    StoryFeedHelper.this.delete(feed, true);
                }
            });
            builder2.setNegativeButton(android.R.string.no, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
            builder2.show();
            return;
        }
        ProgressDialog progressDialog2 = new ProgressDialog(this.context.getContext());
        progressDialog2.successListener = new Callback<ApiResponse>() { // from class: com.narvii.story.detail.StoryFeedHelper.3
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Notification notification = new Notification("delete", feed);
                if (Utils.isGlobalInteractionScope(StoryFeedHelper.this.context)) {
                    NotificationUtils.sendNotificationIncludeGlobal(StoryFeedHelper.this.context, notification);
                } else {
                    ((NotificationCenter) StoryFeedHelper.this.context.getService("notification")).sendNotification(notification);
                }
                ItemCategory itemCategory = new ItemCategory();
                AccountService accountService = (AccountService) StoryFeedHelper.this.context.getService("account");
                if (itemCategory.author == null) {
                    itemCategory.author = new User();
                }
                itemCategory.author.uid = accountService.getUserId();
                Notification notification2 = new Notification("update", itemCategory);
                if (Utils.isGlobalInteractionScope(StoryFeedHelper.this.context)) {
                    NotificationUtils.sendNotificationIncludeGlobal(StoryFeedHelper.this.context, notification2);
                } else {
                    ((NotificationCenter) StoryFeedHelper.this.context.getService("notification")).sendNotification(notification2);
                }
            }
        };
        progressDialog2.show();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        arrayNodeCreateArrayNode.add(feed.id());
        AccountService accountService = (AccountService) this.context.getService("account");
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().post().path(feed.apiTypeName() + "/" + feed.id() + "/batch-delete").communityId(feed.ndcId).param("sourceUid", accountService.getUserId()).param("itemIdList", arrayNodeCreateArrayNode).build(), progressDialog2.dismissListener);
    }

    public void startActivity(Intent intent) {
        this.context.startActivity(intent);
    }
}
