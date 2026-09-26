package com.narvii.comment;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.google.firebase.sessions.settings.c;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.comment.list.CommentItem;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPost;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.FeedSummaryItem;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.model.SharedFile;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.model.api.CommentResponse;
import com.narvii.model.api.ItemResponse;
import com.narvii.model.api.ObjectResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.sharedfolder.SharedFileResponse;
import com.narvii.sharedfolder.SharedPhotoDetailFragment;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CommentDetailFragment extends DetailFragment {
    private static final String COMMENT_ID = "comment-id";
    private static final String COMMENT_OBJECT = "commentObject";
    private static final String PARAMS_SHOW_REPLY = "show_reply";
    private static final String PARENT_ID = "parent-id";
    private static final String PARENT_TYPE = "parent-type";
    private static final String STATE_COMMENT = "state_comment";
    private static final String STATE_COMMENT_ID = "state_comment_id";
    private static final String STATE_PARENT_ID = "state_parent_id";
    private static final String STATE_PARENT_TYPE = "state_parent_type";
    private static final int UNVISIBLE = -1;
    private AccountService account;
    private String commentId;
    private Comment curComment;
    CurCommentAdapter curCommentAdapter;
    private boolean isDeleted;
    private boolean isQuestion;
    private MergeAdapter mergeAdapter;
    private Comment parentComment;
    private String parentId;
    private NVObject parentObject;
    private ParentSummaryAdapter parentSummaryAdapter;
    private int parentType = -1;
    private PushNotificationHelper pushNotificationHelper;
    private boolean showReply;

    private class CommentAddAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public CommentAddAdapter() {
            super(CommentDetailFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (CommentDetailFragment.this.isStatusOk() && CommentDetailFragment.this.showReply) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return DetailAdapter.COMMENT_ADD;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            CommentDetailFragment commentDetailFragment = CommentDetailFragment.this;
            commentDetailFragment.reply(commentDetailFragment.curComment);
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.detail_comment_add_item_wrapper, viewGroup, view);
            viewCreateView.findViewById(R.id.add_comment).setOnClickListener(this.subviewClickListener);
            ((TextView) viewCreateView.findViewById(R.id.add_comment)).setText(CommentDetailFragment.this.getString(R.string.reply));
            ((UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout)).setUser(((AccountService) getService("account")).getUserProfile());
            return viewCreateView;
        }
    }

    private class CurCommentAdapter extends CommentListAdapter {
        String errorMessage;
        ArrayList<Comment> list;

        private void sendAllCommentRequest() {
            this.errorMessage = null;
            notifyDataSetChanged();
            sendCommentRequest(CommentDetailFragment.this.commentId, new ApiResponseListener<CommentResponse>(CommentResponse.class) { // from class: com.narvii.comment.CommentDetailFragment.CurCommentAdapter.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, CommentResponse commentResponse) throws Exception {
                    super.onFinish(apiRequest, commentResponse);
                    CommentDetailFragment.this.curComment = commentResponse.comment;
                    if (CommentDetailFragment.this.curComment != null && !TextUtils.isEmpty(CommentDetailFragment.this.curComment.headCommentId)) {
                        CurCommentAdapter curCommentAdapter = CurCommentAdapter.this;
                        curCommentAdapter.sendCommentRequest(CommentDetailFragment.this.curComment.headCommentId, new ApiResponseListener<CommentResponse>(CommentResponse.class) { // from class: com.narvii.comment.CommentDetailFragment.CurCommentAdapter.2.1
                            @Override // com.narvii.util.http.ApiResponseListener
                            public void onFinish(ApiRequest apiRequest2, CommentResponse commentResponse2) throws Exception {
                                super.onFinish(apiRequest2, commentResponse2);
                                CommentDetailFragment.this.parentComment = commentResponse2.comment;
                                CurCommentAdapter curCommentAdapter2 = CurCommentAdapter.this;
                                curCommentAdapter2.addComment(CommentDetailFragment.this.parentComment);
                                CurCommentAdapter curCommentAdapter3 = CurCommentAdapter.this;
                                curCommentAdapter3.addComment(CommentDetailFragment.this.curComment);
                                CurCommentAdapter.this.notifyDataSetChanged();
                            }

                            @Override // com.narvii.util.http.ApiResponseListener
                            public void onFail(ApiRequest apiRequest2, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                                super.onFail(apiRequest2, i10, list, str, apiResponse, th);
                                CurCommentAdapter curCommentAdapter2 = CurCommentAdapter.this;
                                curCommentAdapter2.addComment(CommentDetailFragment.this.curComment);
                                CurCommentAdapter.this.notifyDataSetChanged();
                            }
                        });
                    } else {
                        CurCommentAdapter curCommentAdapter2 = CurCommentAdapter.this;
                        curCommentAdapter2.addComment(CommentDetailFragment.this.curComment);
                        CurCommentAdapter.this.notifyDataSetChanged();
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    if (i10 == 700) {
                        CommentDetailFragment.this.showReply = false;
                        CurCommentAdapter curCommentAdapter = CurCommentAdapter.this;
                        CommentDetailFragment.this.curComment = curCommentAdapter.createFakeComment();
                        CommentDetailFragment.this.isDeleted = true;
                        CurCommentAdapter curCommentAdapter2 = CurCommentAdapter.this;
                        curCommentAdapter2.addComment(CommentDetailFragment.this.curComment);
                        CurCommentAdapter.this.notifyDataSetChanged();
                        return;
                    }
                    CurCommentAdapter curCommentAdapter3 = CurCommentAdapter.this;
                    curCommentAdapter3.errorMessage = str;
                    curCommentAdapter3.notifyDataSetChanged();
                }
            });
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected boolean allowViewStickerDetail() {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return false;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return null;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public String errorMessage() {
            return this.errorMessage;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected boolean focusComment() {
            return false;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.list;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            this.errorMessage = null;
            refreshMonitorStart(i10, callback);
            sendAllCommentRequest();
            refreshMonitorEnd();
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected int subCommentLayoutId() {
            return R.layout.item_comment_detail_with_indicator;
        }

        public CurCommentAdapter() {
            super(CommentDetailFragment.this);
            this.list = new ArrayList<>();
            this.sourceComment = "Quick Reply";
            this.source = "Quick Reply";
            this.loggingSource = LoggingSource.CommentDetailView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addComment(Comment comment) {
            if (this.list == null) {
                this.list = new ArrayList<>();
            }
            this.list.add(comment);
            setList(this.list);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Comment createFakeComment() {
            Comment comment = new Comment() { // from class: com.narvii.comment.CommentDetailFragment.CurCommentAdapter.3
                @Override // com.narvii.model.Comment, com.narvii.model.NVObject
                public int status() {
                    return -1;
                }
            };
            comment.parentId = parentObjectId();
            comment.parentType = parentObjectType();
            comment.commentId = CommentDetailFragment.this.id();
            comment.content = CommentDetailFragment.this.getString(R.string.comment_not_existed);
            comment.author = new User();
            return comment;
        }

        private boolean isCurrentComment(Comment comment) {
            if (CommentDetailFragment.this.curComment == null || comment == null) {
                return false;
            }
            return Utils.isEqualsNotNull(CommentDetailFragment.this.curComment.id(), comment.id());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String parentObjectId() {
            return CommentDetailFragment.this.parentId;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int parentObjectType() {
            return CommentDetailFragment.this.parentType;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            return this.list.size();
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected NVObject getParent() {
            return new NVObject() { // from class: com.narvii.comment.CommentDetailFragment.CurCommentAdapter.1
                @Override // com.narvii.model.NVObject
                public String parentId() {
                    return null;
                }

                @Override // com.narvii.model.NVObject
                public int status() {
                    return 0;
                }

                @Override // com.narvii.model.NVObject
                public String uid() {
                    return null;
                }

                @Override // com.narvii.model.NVObject
                public String id() {
                    return CurCommentAdapter.this.parentObjectId();
                }

                @Override // com.narvii.model.NVObject
                public int objectType() {
                    return CurCommentAdapter.this.parentObjectType();
                }
            };
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected boolean isQuestionAndAnswer() {
            return CommentDetailFragment.this.isQuestion && !CommentDetailFragment.this.isDeleted;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if ((obj instanceof Comment) && ((Comment) obj).status() == -1) {
                return true;
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        /* JADX WARN: Code duplicated, block: B:40:0x00b7  */
        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            int iIndexOfId;
            if (notification != null) {
                Object obj = notification.obj;
                if (obj instanceof Comment) {
                    Comment comment = (Comment) obj;
                    String str = notification.action;
                    if (str == "new") {
                        if (this.list != null && CommentDetailFragment.this.curComment != null && (Utils.isEqualsNotNull(CommentDetailFragment.this.curComment.headCommentId, comment.headCommentId) || Utils.isEqualsNotNull(CommentDetailFragment.this.curComment.id(), comment.headCommentId))) {
                            this.list.add(comment);
                            notifyDataSetChanged();
                        }
                    } else if (str == "update" || str == "edit") {
                        int iIndexOfId2 = Utils.indexOfId(list(), comment.id());
                        if (iIndexOfId2 >= 0) {
                            this.list.set(iIndexOfId2, comment);
                            notifyDataSetChanged();
                        }
                    } else if (str == "delete" && (iIndexOfId = Utils.indexOfId(list(), comment.id())) >= 0) {
                        String strId = null;
                        if (Utils.isEqualsNotNull(comment.id(), CommentDetailFragment.this.curComment == null ? null : CommentDetailFragment.this.curComment.id())) {
                            this.list = new ArrayList<>();
                            CommentDetailFragment.this.curComment = createFakeComment();
                            CommentDetailFragment.this.isDeleted = true;
                            this.list.add(CommentDetailFragment.this.curComment);
                            CommentDetailFragment.this.showReply = false;
                            notifyDataSetChanged();
                        } else {
                            String strId2 = comment.id();
                            if (list() != null && list().size() >= 1) {
                                strId = ((Comment) list().get(0)).id();
                            }
                            if (Utils.isEqualsNotNull(strId2, strId)) {
                                this.list = new ArrayList<>();
                                CommentDetailFragment.this.curComment = createFakeComment();
                                CommentDetailFragment.this.isDeleted = true;
                                this.list.add(CommentDetailFragment.this.curComment);
                                CommentDetailFragment.this.showReply = false;
                                notifyDataSetChanged();
                            } else {
                                this.list.remove(iIndexOfId);
                                notifyDataSetChanged();
                            }
                        }
                    }
                    if (notification.action == "new" && (notification.obj instanceof Comment) && (getParentContext() instanceof NVListFragment)) {
                        ((NVListFragment) getParentContext()).blinkItem(notification.id, true, 400L);
                    }
                }
            }
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onReply() {
            CommentDetailFragment.this.pushNotificationHelper.checkRemindDialogWhenPostFinished();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendCommentRequest(String str, ApiResponseListener<CommentResponse> apiResponseListener) {
            ((ApiService) getService("api")).exec(new ApiRequest.Builder().path(CommentHelper.getBaseCommentPath(isGlobalInteractionScope(), parentObjectType(), parentObjectId(), str)).build(), apiResponseListener);
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public Object getItem(int i10) {
            return super.getItem(i10);
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            boolean z6 = obj instanceof Comment;
            if (z6) {
                int i10 = 4;
                if ((itemView instanceof CommentItem) && ((Comment) obj).status() == -1) {
                    itemView.findViewById(R.id.vote_heart2).setVisibility(8);
                    itemView.findViewById(R.id.vote_count2).setVisibility(8);
                    itemView.findViewById(R.id.comment_reply).setVisibility(8);
                    itemView.findViewById(R.id.nickname).setVisibility(4);
                    itemView.findViewById(R.id.nickname).setClickable(false);
                    View viewFindViewById = itemView.findViewById(R.id.avatar);
                    viewFindViewById.setClickable(false);
                    ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                    if (layoutParams instanceof RelativeLayout.LayoutParams) {
                        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                        layoutParams2.addRule(15);
                        layoutParams2.removeRule(9);
                        layoutParams2.removeRule(20);
                        layoutParams2.removeRule(10);
                    }
                    ((CommentItem) itemView).voteCallback = null;
                }
                View viewFindViewById2 = itemView.findViewById(R.id.indicator);
                if (viewFindViewById2 != null) {
                    if (isCurrentComment((Comment) obj)) {
                        i10 = 0;
                    }
                    viewFindViewById2.setVisibility(i10);
                }
            }
            if (z6) {
                ((NicknameView) itemView.findViewById(R.id.nickname)).setTextSize((int) Utils.dpToPx(getContext(), 16.0f));
            }
            return itemView;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            Object item = getItem(i10);
            if ((item instanceof Comment) && ((Comment) item).status() == 3) {
                return false;
            }
            return super.isEnabled(i10);
        }

        @Override // com.narvii.comment.list.CommentListAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            CommentDetailFragment commentDetailFragment = CommentDetailFragment.this;
            commentDetailFragment.showNotAvailableView(R.string.comment_not_available, commentDetailFragment.notAvailable());
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendAllCommentRequest();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onErrorRetry() {
            super.onErrorRetry();
            sendAllCommentRequest();
        }
    }

    private class ParentSummaryAdapter extends NVAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public ParentSummaryAdapter() {
            super(CommentDetailFragment.this);
        }

        private ApiResponseListener getApiResponseListener(int i10) {
            if (i10 == 0) {
                return new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.comment.CommentDetailFragment.ParentSummaryAdapter.3
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                        super.onFinish(apiRequest, userResponse);
                        ParentSummaryAdapter.this.onParentRequestFinished(apiRequest, userResponse);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i11, list, str, apiResponse, th);
                        if (i11 == 225) {
                            ParentSummaryAdapter.this.onParentRequestFailed(apiRequest, i11, list, str, apiResponse, th);
                        } else {
                            ParentSummaryAdapter.this.notifyDataSetChanged();
                        }
                    }
                };
            }
            if (i10 == 1 || i10 == 131) {
                return new ApiResponseListener<BlogResponse>(BlogResponse.class) { // from class: com.narvii.comment.CommentDetailFragment.ParentSummaryAdapter.4
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, BlogResponse blogResponse) throws Exception {
                        super.onFinish(apiRequest, blogResponse);
                        ParentSummaryAdapter.this.onParentRequestFinished(apiRequest, blogResponse);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i11, list, str, apiResponse, th);
                        ParentSummaryAdapter.this.onParentRequestFailed(apiRequest, i11, list, str, apiResponse, th);
                        if (i11 == 500) {
                            ParentSummaryAdapter.this.onParentRequestFailed(apiRequest, i11, list, str, apiResponse, th);
                        } else {
                            ParentSummaryAdapter.this.notifyDataSetChanged();
                        }
                    }
                };
            }
            if (i10 == 2) {
                return new ApiResponseListener<ItemResponse>(ItemResponse.class) { // from class: com.narvii.comment.CommentDetailFragment.ParentSummaryAdapter.5
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, ItemResponse itemResponse) throws Exception {
                        super.onFinish(apiRequest, itemResponse);
                        ParentSummaryAdapter.this.onParentRequestFinished(apiRequest, itemResponse);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i11, list, str, apiResponse, th);
                        if (i11 == 400) {
                            ParentSummaryAdapter.this.onParentRequestFailed(apiRequest, i11, list, str, apiResponse, th);
                        } else {
                            ParentSummaryAdapter.this.notifyDataSetChanged();
                        }
                    }
                };
            }
            if (i10 == 109) {
                return new ApiResponseListener<SharedFileResponse>(SharedFileResponse.class) { // from class: com.narvii.comment.CommentDetailFragment.ParentSummaryAdapter.6
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, SharedFileResponse sharedFileResponse) throws Exception {
                        super.onFinish(apiRequest, sharedFileResponse);
                        ParentSummaryAdapter.this.onParentRequestFinished(apiRequest, sharedFileResponse);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i11, list, str, apiResponse, th);
                        if (i11 == 3402) {
                            ParentSummaryAdapter.this.onParentRequestFailed(apiRequest, i11, list, str, apiResponse, th);
                        } else {
                            ParentSummaryAdapter.this.notifyDataSetChanged();
                        }
                    }
                };
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onParentRequestFailed(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            CommentDetailFragment.this.parentObject = createUnVisiableObject();
            notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onParentRequestFinished(ApiRequest apiRequest, ObjectResponse objectResponse) {
            CommentDetailFragment.this.parentObject = objectResponse.object();
            if (!new FilterHelper(this).keepForLeaderAndCurator().isAccessible(CommentDetailFragment.this.parentObject)) {
                CommentDetailFragment.this.parentObject = createUnVisiableObject();
            }
            if ((CommentDetailFragment.this.parentObject instanceof Blog) && ((Blog) CommentDetailFragment.this.parentObject).type == 3) {
                CommentDetailFragment.this.isQuestion = true;
                CurCommentAdapter curCommentAdapter = CommentDetailFragment.this.curCommentAdapter;
                if (curCommentAdapter != null) {
                    curCommentAdapter.notifyDataSetChanged();
                }
            }
            notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String parentObjectId() {
            return CommentDetailFragment.this.parentId;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int parentObjectType() {
            return CommentDetailFragment.this.parentType;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (!CommentDetailFragment.this.isStatusOk() || CommentDetailFragment.this.parentObject == null) ? 0 : 1;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            if (CommentDetailFragment.this.parentObject == null) {
                return -1;
            }
            return super.getItemViewType(i10);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView;
            if (CommentDetailFragment.this.parentObject.objectType() == 1 || CommentDetailFragment.this.parentObject.objectType() == 2 || CommentDetailFragment.this.parentObject.objectType() == 131) {
                viewCreateView = createView(CommentDetailFragment.this.parentObject.objectType() == 2 ? R.layout.item_summary_favorite : R.layout.item_summary_blog, viewGroup, view);
                View viewFindViewById = viewCreateView.findViewById(R.id.feed_summary_item);
                if (viewFindViewById instanceof FeedSummaryItem) {
                    ((FeedSummaryItem) viewFindViewById).setFeed((Feed) CommentDetailFragment.this.parentObject);
                }
                int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.detail_comment_divider_height);
                if (CommentDetailFragment.this.notAvailable()) {
                    dimensionPixelSize = 0;
                }
                viewCreateView.setPadding(0, 0, 0, dimensionPixelSize);
            } else if (CommentDetailFragment.this.parentObject instanceof User) {
                viewCreateView = createView(R.layout.item_summary_user, viewGroup, view);
                View viewFindViewById2 = viewCreateView.findViewById(R.id.user_avatar_layout);
                if (viewFindViewById2 != null) {
                    ((UserAvatarLayout) viewFindViewById2).setUser((User) CommentDetailFragment.this.parentObject);
                }
                View viewFindViewById3 = viewCreateView.findViewById(R.id.name);
                if (viewFindViewById3 != null) {
                    ((NicknameView) viewFindViewById3).setUser((User) CommentDetailFragment.this.parentObject);
                }
                int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.detail_comment_divider_height);
                if (CommentDetailFragment.this.notAvailable()) {
                    dimensionPixelSize2 = 0;
                }
                viewCreateView.setPadding(0, 0, 0, dimensionPixelSize2);
            } else if (CommentDetailFragment.this.parentObject instanceof SharedFile) {
                viewCreateView = createView(R.layout.item_summary_shared_photo, viewGroup, view);
                View viewFindViewById4 = viewCreateView.findViewById(R.id.photo);
                if (viewFindViewById4 != null) {
                    ((NVImageView) viewFindViewById4).setImageMedia(((SharedFile) CommentDetailFragment.this.parentObject).media);
                }
            } else {
                Log.e(getClass().getSimpleName() + ".getItemView(" + i10 + ") returns null for object ");
                viewCreateView = createView(android.R.layout.simple_list_item_1, viewGroup, view);
                if (NVApplication.DEBUG) {
                    ((TextView) viewCreateView.findViewById(android.R.id.text1)).setText("getItemView() returns null");
                }
            }
            return viewCreateView;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            if (CommentDetailFragment.this.parentObject.status() == -1) {
                return false;
            }
            return super.isEnabled(i10);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Intent intent;
            if (CommentDetailFragment.this.parentObject instanceof Feed) {
                intent = FeedDetailFragment.intent((Feed) CommentDetailFragment.this.parentObject);
                intent.putExtra("fromHeadline", CommentDetailFragment.this.getBooleanParam("fromHeadline"));
            } else if (CommentDetailFragment.this.parentObject instanceof User) {
                intent = UserProfileFragment.intent(this, (User) CommentDetailFragment.this.parentObject);
            } else {
                intent = CommentDetailFragment.this.parentObject instanceof SharedFile ? SharedPhotoDetailFragment.intent((SharedFile) CommentDetailFragment.this.parentObject) : null;
            }
            if (intent != null) {
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        private void sendParentObjectRequest() {
            if (parentObjectType() == -1) {
                return;
            }
            String strApiTypeName = NVObject.apiTypeName(parentObjectType());
            ApiRequest apiRequestBuild = new ApiRequest.Builder().path(c.FORWARD_SLASH_STRING + strApiTypeName + c.FORWARD_SLASH_STRING + parentObjectId()).build();
            ApiService apiService = (ApiService) getService("api");
            if (getApiResponseListener(parentObjectType()) != null) {
                apiService.exec(apiRequestBuild, getApiResponseListener(parentObjectType()));
            }
        }

        public NVObject createUnVisiableObject() {
            if (parentObjectType() == 0) {
                return new User() { // from class: com.narvii.comment.CommentDetailFragment.ParentSummaryAdapter.1
                    @Override // com.narvii.model.User
                    public String nickname() {
                        return CommentDetailFragment.this.getString(R.string.related_page_not_available);
                    }
                };
            }
            if (parentObjectType() != 1 && parentObjectType() != 2 && CommentDetailFragment.this.parentObject.objectType() != 131) {
                return null;
            }
            Blog blog = new Blog() { // from class: com.narvii.comment.CommentDetailFragment.ParentSummaryAdapter.2
                @Override // com.narvii.model.Blog, com.narvii.model.NVObject
                public String parentId() {
                    return null;
                }

                @Override // com.narvii.model.Blog, com.narvii.model.NVObject
                public int status() {
                    return -1;
                }

                @Override // com.narvii.model.Blog, com.narvii.model.NVObject
                public String uid() {
                    return null;
                }

                @Override // com.narvii.model.Blog, com.narvii.model.NVObject
                public String id() {
                    return ParentSummaryAdapter.this.parentObjectId();
                }

                @Override // com.narvii.model.Blog, com.narvii.model.NVObject
                public int objectType() {
                    return ParentSummaryAdapter.this.parentObjectType();
                }

                @Override // com.narvii.model.Blog, com.narvii.model.Feed
                public String title() {
                    return CommentDetailFragment.this.getString(R.string.related_page_not_available);
                }
            };
            blog.author = new User();
            return blog;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendParentObjectRequest();
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            refreshMonitorStart(i10, callback);
            sendParentObjectRequest();
            refreshMonitorEnd();
        }
    }

    private class ViewAllCommentAdapter extends NVAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public ViewAllCommentAdapter() {
            super(CommentDetailFragment.this);
        }

        private String parentId() {
            return CommentDetailFragment.this.parentId;
        }

        private int parentType() {
            return CommentDetailFragment.this.parentType;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return CommentDetailFragment.this.isStatusOk() ? 1 : 0;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() != R.id.view_all_comment_layout) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            CommentListFragment.IntentBuilder intentBuilder = new CommentListFragment.IntentBuilder();
            if (CommentDetailFragment.this.parentObject instanceof SharedFile) {
                intentBuilder.background(((SharedFile) CommentDetailFragment.this.parentObject).media).backgroundType(NVImageView.TYPE_SHARED_FOLDER_IMAGE);
            }
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intentBuilder.isQuestion(CommentDetailFragment.this.isQuestion).parentType(parentType()).parentId(parentId()).build());
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.comment_detail_view_all, viewGroup, view);
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isStatusOk() {
        return ((TextUtils.isEmpty(this.commentId) || TextUtils.isEmpty(this.parentId) || this.parentType == -1) && this.curComment == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reply(Comment comment) {
        if (comment == null) {
            return;
        }
        Intent intent = new Intent(getContext(), (Class<?>) CommentPostActivity.class);
        intent.putExtra("parentType", comment.parentType);
        intent.putExtra("parentId", comment.parentId);
        intent.putExtra(EventConstants.CommentPost.RESPOND_TO, comment.id());
        CommentPost commentPost = new CommentPost();
        String[] strArr = new String[1];
        User user = comment.author;
        strArr[0] = user == null ? "" : user.nickname();
        String stringForCommunityLocal = StringUtils.getStringForCommunityLocal(this, R.string.comment_reply_to, strArr);
        commentPost.prefix = stringForCommunityLocal + "\n";
        intent.putExtra("hint", stringForCommunityLocal);
        commentPost.respondTo = comment.id();
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(commentPost));
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Quick Reply");
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        this.pushNotificationHelper.checkRemindDialogWhenPostFinished();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.curCommentAdapter = new CurCommentAdapter();
        this.mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.comment.CommentDetailFragment.1
            @Override // com.narvii.list.MergeAdapter, android.widget.Adapter
            public int getCount() {
                return CommentDetailFragment.this.notAvailable() ? Math.min(super.getCount(), CommentDetailFragment.this.parentSummaryAdapter.getCount()) : super.getCount();
            }
        };
        ParentSummaryAdapter parentSummaryAdapter = new ParentSummaryAdapter();
        this.parentSummaryAdapter = parentSummaryAdapter;
        this.mergeAdapter.addAdapter(parentSummaryAdapter);
        this.mergeAdapter.addAdapter(this.curCommentAdapter, true);
        this.mergeAdapter.addAdapter(new ViewAllCommentAdapter());
        this.mergeAdapter.addAdapter(new CommentAddAdapter());
        return this.mergeAdapter;
    }

    @Override // com.narvii.detail.DetailFragment
    public String id() {
        return getStringParam(COMMENT_ID);
    }

    public boolean notAvailable() {
        Comment comment = this.curComment;
        if (comment != null && !comment.isAccessibleByUser(this.account.getUserProfile())) {
            return true;
        }
        Comment comment2 = this.parentComment;
        return (comment2 == null || comment2.isAccessibleByUser(this.account.getUserProfile())) ? false : true;
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
        if (liveLayerService == null || id() == null) {
            return;
        }
        liveLayerService.reportBrowsing("comment/" + id() + "?parent-type=" + this.parentType + "&parent-id=" + this.parentId, z6);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.account = (AccountService) getService("account");
        this.pushNotificationHelper = new PushNotificationHelper(this);
        if (bundle != null) {
            this.commentId = bundle.getString(STATE_COMMENT_ID);
            this.parentType = bundle.getInt(STATE_PARENT_TYPE, -1);
            this.parentId = bundle.getString(STATE_PARENT_ID);
            this.showReply = bundle.getBoolean(PARAMS_SHOW_REPLY);
            String string = bundle.getString(STATE_COMMENT);
            if (!TextUtils.isEmpty(string)) {
                Comment comment = (Comment) JacksonUtils.readAs(string, Comment.class);
                this.curComment = comment;
                if (comment != null) {
                    this.commentId = comment.id();
                    Comment comment2 = this.curComment;
                    this.parentType = comment2.parentType;
                    this.parentId = comment2.parentId;
                }
            }
        } else {
            this.commentId = getStringParam(COMMENT_ID);
            this.parentType = getIntParam("parent-type", -1);
            this.parentId = getStringParam("parent-id");
            this.showReply = getBooleanParam(PARAMS_SHOW_REPLY, true);
            if (!TextUtils.isEmpty(getStringParam(COMMENT_OBJECT))) {
                Comment comment3 = (Comment) JacksonUtils.readAs(getStringParam(COMMENT_OBJECT), Comment.class);
                this.curComment = comment3;
                if (comment3 != null) {
                    this.commentId = comment3.id();
                    Comment comment4 = this.curComment;
                    this.parentType = comment4.parentType;
                    this.parentId = comment4.parentId;
                }
            }
        }
        setTitle(getString(R.string.comment));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Comment comment = this.curComment;
        if (comment != null) {
            bundle.putString(STATE_COMMENT, JacksonUtils.writeAsString(comment));
        }
        if (!TextUtils.isEmpty(this.commentId)) {
            bundle.putString(STATE_COMMENT_ID, this.commentId);
        }
        if (!TextUtils.isEmpty(this.parentId)) {
            bundle.putString(STATE_PARENT_ID, this.parentId);
        }
        int i10 = this.parentType;
        if (i10 != -1) {
            bundle.putInt("parent-type", i10);
        }
        bundle.putBoolean(PARAMS_SHOW_REPLY, this.showReply);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }
}
