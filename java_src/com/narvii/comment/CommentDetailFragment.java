package com.narvii.comment;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
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
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
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
import com.narvii.sharedfolder.SharedFileResponse;
import com.narvii.sharedfolder.SharedPhotoDetailFragment;
import com.narvii.story.StoryListFragment;
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
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
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

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
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
                this.curComment = (Comment) JacksonUtils.readAs(string, Comment.class);
                Comment comment = this.curComment;
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
                this.curComment = (Comment) JacksonUtils.readAs(getStringParam(COMMENT_OBJECT), Comment.class);
                Comment comment3 = this.curComment;
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

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.curCommentAdapter = new CurCommentAdapter();
        this.mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.comment.CommentDetailFragment.1
            @Override // com.narvii.list.MergeAdapter, android.widget.Adapter
            public int getCount() {
                if (CommentDetailFragment.this.notAvailable()) {
                    return Math.min(super.getCount(), CommentDetailFragment.this.parentSummaryAdapter.getCount());
                }
                return super.getCount();
            }
        };
        this.parentSummaryAdapter = new ParentSummaryAdapter();
        this.mergeAdapter.addAdapter(this.parentSummaryAdapter);
        this.mergeAdapter.addAdapter(this.curCommentAdapter, true);
        this.mergeAdapter.addAdapter(new ViewAllCommentAdapter());
        this.mergeAdapter.addAdapter(new CommentAddAdapter());
        return this.mergeAdapter;
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
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
        int i = this.parentType;
        if (i != -1) {
            bundle.putInt("parent-type", i);
        }
        bundle.putBoolean(PARAMS_SHOW_REPLY, this.showReply);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
        if (liveLayerService == null || id() == null) {
            return;
        }
        liveLayerService.reportBrowsing("comment/" + id() + "?parent-type=" + this.parentType + "&parent-id=" + this.parentId, z);
    }

    private class ParentSummaryAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendParentObjectRequest();
        }

        public ParentSummaryAdapter() {
            super(CommentDetailFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (!CommentDetailFragment.this.isStatusOk() || CommentDetailFragment.this.parentObject == null) ? 0 : 1;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            refreshMonitorStart(i, callback);
            sendParentObjectRequest();
            refreshMonitorEnd();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            if (CommentDetailFragment.this.parentObject == null) {
                return -1;
            }
            return super.getItemViewType(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
            View viewCreateView;
            if (CommentDetailFragment.this.parentObject.objectType() == 1 || CommentDetailFragment.this.parentObject.objectType() == 2 || CommentDetailFragment.this.parentObject.objectType() == 131) {
                int i2 = R.layout.item_summary_blog;
                if (CommentDetailFragment.this.parentObject.objectType() == 2) {
                    i2 = R.layout.item_summary_favorite;
                }
                viewCreateView = createView(i2, viewGroup, view);
                View viewFindViewById = viewCreateView.findViewById(R.id.feed_summary_item);
                if (viewFindViewById instanceof FeedSummaryItem) {
                    ((FeedSummaryItem) viewFindViewById).setFeed((Feed) CommentDetailFragment.this.parentObject);
                }
                int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.detail_comment_divider_height);
                if (CommentDetailFragment.this.notAvailable()) {
                    dimensionPixelSize = 0;
                }
                viewCreateView.setPadding(0, 0, 0, dimensionPixelSize);
            } else if (!(CommentDetailFragment.this.parentObject instanceof User)) {
                if (CommentDetailFragment.this.parentObject instanceof SharedFile) {
                    viewCreateView = createView(R.layout.item_summary_shared_photo, viewGroup, view);
                    View viewFindViewById2 = viewCreateView.findViewById(R.id.photo);
                    if (viewFindViewById2 != null) {
                        ((NVImageView) viewFindViewById2).setImageMedia(((SharedFile) CommentDetailFragment.this.parentObject).media);
                    }
                } else {
                    Log.e(ParentSummaryAdapter.class.getSimpleName() + ".getItemView(" + i + ") returns null for object ");
                    viewCreateView = createView(android.R.layout.simple_list_item_1, viewGroup, view);
                    if (NVApplication.DEBUG) {
                        ((TextView) viewCreateView.findViewById(android.R.id.text1)).setText("getItemView() returns null");
                    }
                }
            } else {
                viewCreateView = createView(R.layout.item_summary_user, viewGroup, view);
                View viewFindViewById3 = viewCreateView.findViewById(R.id.user_avatar_layout);
                if (viewFindViewById3 != null) {
                    ((UserAvatarLayout) viewFindViewById3).setUser((User) CommentDetailFragment.this.parentObject);
                }
                View viewFindViewById4 = viewCreateView.findViewById(R.id.name);
                if (viewFindViewById4 != null) {
                    ((NicknameView) viewFindViewById4).setUser((User) CommentDetailFragment.this.parentObject);
                }
                int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.detail_comment_divider_height);
                if (CommentDetailFragment.this.notAvailable()) {
                    dimensionPixelSize2 = 0;
                }
                viewCreateView.setPadding(0, 0, 0, dimensionPixelSize2);
            }
            return viewCreateView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String parentObjectId() {
            return CommentDetailFragment.this.parentId;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int parentObjectType() {
            return CommentDetailFragment.this.parentType;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onParentRequestFailed(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
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

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            if (CommentDetailFragment.this.parentObject.status() == -1) {
                return false;
            }
            return super.isEnabled(i);
        }

        private void sendParentObjectRequest() {
            if (parentObjectType() == -1) {
                return;
            }
            String strApiTypeName = NVObject.apiTypeName(parentObjectType());
            ApiRequest apiRequestBuild = new ApiRequest.Builder().path("/" + strApiTypeName + "/" + parentObjectId()).build();
            ApiService apiService = (ApiService) getService("api");
            if (getApiResponseListener(parentObjectType()) != null) {
                apiService.exec(apiRequestBuild, getApiResponseListener(parentObjectType()));
            }
        }

        private ApiResponseListener getApiResponseListener(int i) {
            if (i == 0) {
                return new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.comment.CommentDetailFragment.ParentSummaryAdapter.3
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                        super.onFinish(apiRequest, (ApiRequest) userResponse);
                        ParentSummaryAdapter.this.onParentRequestFinished(apiRequest, userResponse);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i2, list, str, apiResponse, th);
                        if (i2 == 225) {
                            ParentSummaryAdapter.this.onParentRequestFailed(apiRequest, i2, list, str, apiResponse, th);
                        } else {
                            ParentSummaryAdapter.this.notifyDataSetChanged();
                        }
                    }
                };
            }
            if (i == 1 || i == 131) {
                return new ApiResponseListener<BlogResponse>(BlogResponse.class) { // from class: com.narvii.comment.CommentDetailFragment.ParentSummaryAdapter.4
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, BlogResponse blogResponse) throws Exception {
                        super.onFinish(apiRequest, (ApiRequest) blogResponse);
                        ParentSummaryAdapter.this.onParentRequestFinished(apiRequest, blogResponse);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i2, list, str, apiResponse, th);
                        ParentSummaryAdapter.this.onParentRequestFailed(apiRequest, i2, list, str, apiResponse, th);
                        if (i2 == 500) {
                            ParentSummaryAdapter.this.onParentRequestFailed(apiRequest, i2, list, str, apiResponse, th);
                        } else {
                            ParentSummaryAdapter.this.notifyDataSetChanged();
                        }
                    }
                };
            }
            if (i == 2) {
                return new ApiResponseListener<ItemResponse>(ItemResponse.class) { // from class: com.narvii.comment.CommentDetailFragment.ParentSummaryAdapter.5
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, ItemResponse itemResponse) throws Exception {
                        super.onFinish(apiRequest, (ApiRequest) itemResponse);
                        ParentSummaryAdapter.this.onParentRequestFinished(apiRequest, itemResponse);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i2, list, str, apiResponse, th);
                        if (i2 == 400) {
                            ParentSummaryAdapter.this.onParentRequestFailed(apiRequest, i2, list, str, apiResponse, th);
                        } else {
                            ParentSummaryAdapter.this.notifyDataSetChanged();
                        }
                    }
                };
            }
            if (i == 109) {
                return new ApiResponseListener<SharedFileResponse>(SharedFileResponse.class) { // from class: com.narvii.comment.CommentDetailFragment.ParentSummaryAdapter.6
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, SharedFileResponse sharedFileResponse) throws Exception {
                        super.onFinish(apiRequest, (ApiRequest) sharedFileResponse);
                        ParentSummaryAdapter.this.onParentRequestFinished(apiRequest, sharedFileResponse);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i2, list, str, apiResponse, th);
                        if (i2 == 3402) {
                            ParentSummaryAdapter.this.onParentRequestFailed(apiRequest, i2, list, str, apiResponse, th);
                        } else {
                            ParentSummaryAdapter.this.notifyDataSetChanged();
                        }
                    }
                };
            }
            return null;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            Intent intent;
            if (CommentDetailFragment.this.parentObject instanceof Feed) {
                if (!(CommentDetailFragment.this.parentObject instanceof Blog) || ((Blog) CommentDetailFragment.this.parentObject).type != 9) {
                    intent = FeedDetailFragment.intent((Feed) CommentDetailFragment.this.parentObject);
                } else {
                    intent = FragmentWrapperActivity.intent(StoryListFragment.class);
                    intent.putExtra(StoryListFragment.KEY_FEED_ID, CommentDetailFragment.this.parentId);
                }
                intent.putExtra("fromHeadline", CommentDetailFragment.this.getBooleanParam("fromHeadline"));
            } else {
                intent = CommentDetailFragment.this.parentObject instanceof User ? UserProfileFragment.intent(this, (User) CommentDetailFragment.this.parentObject) : CommentDetailFragment.this.parentObject instanceof SharedFile ? SharedPhotoDetailFragment.intent((SharedFile) CommentDetailFragment.this.parentObject) : null;
            }
            if (intent != null) {
                startActivity(intent);
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    private class CurCommentAdapter extends CommentListAdapter {
        String errorMessage;
        ArrayList<Comment> list;

        @Override // com.narvii.comment.list.CommentListAdapter
        protected boolean allowViewStickerDetail() {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return false;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return null;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected boolean focusComment() {
            return false;
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

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendAllCommentRequest();
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onReply() {
            CommentDetailFragment.this.pushNotificationHelper.checkRemindDialogWhenPostFinished();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            this.errorMessage = null;
            refreshMonitorStart(i, callback);
            sendAllCommentRequest();
            refreshMonitorEnd();
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected boolean isQuestionAndAnswer() {
            return CommentDetailFragment.this.isQuestion && !CommentDetailFragment.this.isDeleted;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.list;
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

        @Override // com.narvii.comment.list.CommentListAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            CommentDetailFragment commentDetailFragment = CommentDetailFragment.this;
            commentDetailFragment.showNotAvailableView(R.string.comment_not_available, commentDetailFragment.notAvailable());
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public Object getItem(int i) {
            return super.getItem(i);
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            return this.list.size();
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
            View itemView = super.getItemView(obj, view, viewGroup);
            boolean z = obj instanceof Comment;
            if (z) {
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
                        if (Build.VERSION.SDK_INT >= 17) {
                            layoutParams2.removeRule(9);
                            layoutParams2.removeRule(20);
                            layoutParams2.removeRule(10);
                        }
                    }
                    ((CommentItem) itemView).voteCallback = null;
                }
                View viewFindViewById2 = itemView.findViewById(R.id.indicator);
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setVisibility(isCurrentComment((Comment) obj) ? 0 : 4);
                }
            }
            if (z) {
                ((NicknameView) itemView.findViewById(R.id.nickname)).setTextSize((int) Utils.dpToPx(getContext(), 16.0f));
            }
            return itemView;
        }

        private boolean isCurrentComment(Comment comment) {
            if (CommentDetailFragment.this.curComment == null || comment == null) {
                return false;
            }
            return Utils.isEqualsNotNull(CommentDetailFragment.this.curComment.id(), comment.id());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int parentObjectType() {
            return CommentDetailFragment.this.parentType;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String parentObjectId() {
            return CommentDetailFragment.this.parentId;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public String errorMessage() {
            return this.errorMessage;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onErrorRetry() {
            super.onErrorRetry();
            sendAllCommentRequest();
        }

        private void sendAllCommentRequest() {
            this.errorMessage = null;
            notifyDataSetChanged();
            sendCommentRequest(CommentDetailFragment.this.commentId, new ApiResponseListener<CommentResponse>(CommentResponse.class) { // from class: com.narvii.comment.CommentDetailFragment.CurCommentAdapter.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, CommentResponse commentResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) commentResponse);
                    CommentDetailFragment.this.curComment = commentResponse.comment;
                    if (CommentDetailFragment.this.curComment != null && !TextUtils.isEmpty(CommentDetailFragment.this.curComment.headCommentId)) {
                        CurCommentAdapter curCommentAdapter = CurCommentAdapter.this;
                        curCommentAdapter.sendCommentRequest(CommentDetailFragment.this.curComment.headCommentId, new ApiResponseListener<CommentResponse>(CommentResponse.class) { // from class: com.narvii.comment.CommentDetailFragment.CurCommentAdapter.2.1
                            @Override // com.narvii.util.http.ApiResponseListener
                            public void onFinish(ApiRequest apiRequest2, CommentResponse commentResponse2) throws Exception {
                                super.onFinish(apiRequest2, (ApiRequest) commentResponse2);
                                CommentDetailFragment.this.parentComment = commentResponse2.comment;
                                CurCommentAdapter curCommentAdapter2 = CurCommentAdapter.this;
                                curCommentAdapter2.addComment(CommentDetailFragment.this.parentComment);
                                CurCommentAdapter curCommentAdapter3 = CurCommentAdapter.this;
                                curCommentAdapter3.addComment(CommentDetailFragment.this.curComment);
                                CurCommentAdapter.this.notifyDataSetChanged();
                            }

                            @Override // com.narvii.util.http.ApiResponseListener
                            public void onFail(ApiRequest apiRequest2, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                                super.onFail(apiRequest2, i, list, str, apiResponse, th);
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
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    if (i == 700) {
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

        /* JADX INFO: Access modifiers changed from: private */
        public void addComment(Comment comment) {
            if (this.list == null) {
                this.list = new ArrayList<>();
            }
            this.list.add(comment);
            setList(this.list);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendCommentRequest(String str, ApiResponseListener<CommentResponse> apiResponseListener) {
            ((ApiService) getService("api")).exec(new ApiRequest.Builder().path(CommentHelper.getBaseCommentPath(isGlobalInteractionScope(), parentObjectType(), parentObjectId(), str)).build(), apiResponseListener);
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

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if ((obj instanceof Comment) && ((Comment) obj).status() == -1) {
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            Object item = getItem(i);
            if ((item instanceof Comment) && ((Comment) item).status() == 3) {
                return false;
            }
            return super.isEnabled(i);
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x00b1  */
        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.notification.NotificationListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onNotification(com.narvii.notification.Notification r8) {
            /*
                Method dump skipped, instructions count: 284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.comment.CommentDetailFragment.CurCommentAdapter.onNotification(com.narvii.notification.Notification):void");
        }
    }

    private class ViewAllCommentAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public ViewAllCommentAdapter() {
            super(CommentDetailFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return CommentDetailFragment.this.isStatusOk() ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.comment_detail_view_all, viewGroup, view);
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        private int parentType() {
            return CommentDetailFragment.this.parentType;
        }

        private String parentId() {
            return CommentDetailFragment.this.parentId;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 == null || view2.getId() == R.id.view_all_comment_layout) {
                CommentListFragment.IntentBuilder intentBuilder = new CommentListFragment.IntentBuilder();
                if (CommentDetailFragment.this.parentObject instanceof SharedFile) {
                    intentBuilder.background(((SharedFile) CommentDetailFragment.this.parentObject).media).backgroundType(NVImageView.TYPE_SHARED_FOLDER_IMAGE);
                }
                startActivity(intentBuilder.isQuestion(CommentDetailFragment.this.isQuestion).parentType(parentType()).parentId(parentId()).build());
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    private class CommentAddAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i) {
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
        public Object getItem(int i) {
            return DetailAdapter.COMMENT_ADD;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.detail_comment_add_item_wrapper, viewGroup, view);
            viewCreateView.findViewById(R.id.add_comment).setOnClickListener(this.subviewClickListener);
            ((TextView) viewCreateView.findViewById(R.id.add_comment)).setText(CommentDetailFragment.this.getString(R.string.reply));
            ((UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout)).setUser(((AccountService) getService("account")).getUserProfile());
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            CommentDetailFragment commentDetailFragment = CommentDetailFragment.this;
            commentDetailFragment.reply(commentDetailFragment.curComment);
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reply(Comment comment) {
        if (comment == null) {
            return;
        }
        Intent intent = new Intent(getContext(), (Class<?>) CommentPostActivity.class);
        intent.putExtra("parentType", comment.parentType);
        intent.putExtra("parentId", comment.parentId);
        intent.putExtra("respondTo", comment.id());
        CommentPost commentPost = new CommentPost();
        String[] strArr = new String[1];
        User user = comment.author;
        strArr[0] = user == null ? "" : user.nickname();
        String stringForCommunityLocal = StringUtils.getStringForCommunityLocal(this, R.string.comment_reply_to, strArr);
        commentPost.prefix = stringForCommunityLocal + "\n";
        intent.putExtra("hint", stringForCommunityLocal);
        commentPost.respondTo = comment.id();
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(commentPost));
        intent.putExtra("Source", "Quick Reply");
        startActivity(intent);
        this.pushNotificationHelper.checkRemindDialogWhenPostFinished();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isStatusOk() {
        return ((TextUtils.isEmpty(this.commentId) || TextUtils.isEmpty(this.parentId) || this.parentType == -1) && this.curComment == null) ? false : true;
    }
}
