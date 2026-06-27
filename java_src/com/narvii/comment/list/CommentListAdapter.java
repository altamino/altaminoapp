package com.narvii.comment.list;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.post.CommentPost;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.CommunityHelper;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
import com.narvii.model.CommunityObjectInGlobal;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.CommentListResponse;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.story.StoryNotificationStub;
import com.narvii.story.detail.VoteHelper;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.StatisticHelper;
import com.narvii.util.StringUtils;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.ws.WsMessage;
import com.narvii.widget.NVListView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes2.dex */
public abstract class CommentListAdapter extends NVPagedAdapter<Comment, CommentListResponse> implements NotificationListener, CommentPostActivity.StatusListener {
    public static final int STATUS_CODE_OPEN_STICKER_DETAIL = 102;
    static final int SUBCOMMENT_PAGE_SIZE = 25;
    private AccountService account;
    private int bottomPadding;
    private final CommentHelper commentHelper;
    private final CommunityHelper communityHelper;
    public boolean dividerAtTop;
    private final HashSet<String> expands;
    private Rect focusingCommentRect;
    private List<?> list;
    private ListView listView;
    public LoggingOrigin loggingOrigin;
    public LoggingSource loggingSource;
    private PushNotificationHelper pushNotificationHelper;
    protected int sort;
    public String source;
    public String sourceComment;
    private final ApiResponseListener<CommentListResponse> subcommentListener;
    private final HashMap<ApiRequest, String> subloading;
    private CommentTagClickListener tagClickListener;
    private final Callback<CommentItem> voteCallback;
    private final HashSet<String> voting;
    protected static Tag DIVIDER = new Tag("divider");
    protected static Tag SUBDIVIDER = new Tag("subdivider");
    static Tag SUBLOADING = new Tag("subloading");
    static Tag BOTTOM_PADDING = new Tag("bottomPadding");

    protected boolean allowViewStickerDetail() {
        return true;
    }

    protected int bottomPadding() {
        return 0;
    }

    protected boolean commentDisableMedia() {
        return false;
    }

    protected int firstLoadingHeight() {
        return 0;
    }

    protected boolean focusComment() {
        return true;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "CommentList";
    }

    protected int getFeedNdcId() {
        return -1;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 6;
    }

    protected int getListEndItemTextColor(boolean z) {
        return z ? -1 : -7829368;
    }

    protected abstract NVObject getParent();

    protected int headerCommentLayoutId() {
        return R.layout.comment_item;
    }

    protected boolean isAnnouncement() {
        return false;
    }

    protected boolean isNestedScrollMode() {
        return false;
    }

    protected void onNestedCollapse() {
    }

    protected void onReply() {
    }

    @Override // com.narvii.list.NVPagedAdapter
    public boolean showListEnd(int i) {
        return true;
    }

    protected int subCommentLayoutId() {
        return R.layout.comment_sub_item;
    }

    public static class ReadMore {
        Comment head;

        ReadMore(Comment comment) {
            this.head = comment;
        }
    }

    public CommentListAdapter(NVContext nVContext) {
        super(nVContext);
        this.dividerAtTop = true;
        this.sourceComment = "Comment";
        this.loggingSource = LoggingSource.CommentDetailView;
        this.subloading = new HashMap<>();
        this.expands = new HashSet<>();
        this.voting = new HashSet<>();
        this.sort = -1;
        this.subcommentListener = new ApiResponseListener<CommentListResponse>(CommentListResponse.class) { // from class: com.narvii.comment.list.CommentListAdapter.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommentListResponse commentListResponse) throws Exception {
                List<Comment> list;
                String str = (String) CommentListAdapter.this.subloading.remove(apiRequest);
                if (str == null) {
                    return;
                }
                for (Comment comment : CommentListAdapter.this.rawList()) {
                    if (str.equals(comment.id())) {
                        List<Comment> list2 = commentListResponse.commentList;
                        if (list2 != null && list2.isEmpty()) {
                            comment.subcommentIsEnd = true;
                            CommentListAdapter.this.notifyDataSetChanged();
                            return;
                        }
                        int i = -1;
                        List<Comment> list3 = comment.subcommentsPreview;
                        Comment comment2 = list3 == null ? null : list3.get(list3.size() - 1);
                        int i2 = 0;
                        if (CommentListAdapter.this.listView != null && comment2 != null) {
                            ListAdapter adapter = CommentListAdapter.this.listView.getAdapter();
                            int firstVisiblePosition = CommentListAdapter.this.listView.getFirstVisiblePosition();
                            int childCount = CommentListAdapter.this.listView.getChildCount();
                            int count = adapter.getCount();
                            int top = -1;
                            for (int i3 = 0; i3 < childCount; i3++) {
                                int i4 = i3 + firstVisiblePosition;
                                if (i4 >= count || firstVisiblePosition < 0) {
                                    break;
                                }
                                Object item = adapter.getItem(i4);
                                if ((item instanceof Comment) && Utils.isIdEquals((NVObject) item, comment2)) {
                                    top = CommentListAdapter.this.listView.getChildAt(i3).getTop();
                                }
                            }
                            i = top;
                        }
                        ArrayList arrayList = new ArrayList();
                        if (comment.subcommentStoptime != null && (list = comment.subcommentsPreview) != null) {
                            arrayList.addAll(list);
                        }
                        FilterHelper filterHelper = new FilterHelper(CommentListAdapter.this);
                        for (Comment comment3 : commentListResponse.commentList) {
                            if (filterHelper.keepForLeaderAndCurator().isAccessible(comment3)) {
                                arrayList.add(comment3);
                            }
                        }
                        comment.subcommentsPreview = arrayList;
                        comment.subcommentStart += 25;
                        comment.subcommentStoptime = commentListResponse.timestamp;
                        CommentListAdapter.this.notifyDataSetChanged();
                        if (i < 0) {
                            return;
                        }
                        ListAdapter adapter2 = CommentListAdapter.this.listView.getAdapter();
                        int firstVisiblePosition2 = CommentListAdapter.this.listView.getFirstVisiblePosition();
                        int count2 = adapter2.getCount();
                        while (true) {
                            int i5 = i2 + firstVisiblePosition2;
                            if (i5 >= count2 || firstVisiblePosition2 < 0) {
                                return;
                            }
                            Object item2 = adapter2.getItem(i5);
                            if ((item2 instanceof Comment) && Utils.isIdEquals((NVObject) item2, comment2)) {
                                CommentListAdapter.this.listView.setSelectionFromTop(i5, i);
                            }
                            i2++;
                        }
                    }
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                CommentListAdapter.this.subloading.remove(apiRequest);
                CommentListAdapter.this.notifyDataSetChanged();
            }
        };
        this.voteCallback = new Callback<CommentItem>() { // from class: com.narvii.comment.list.CommentListAdapter.5
            @Override // com.narvii.util.Callback
            public void call(CommentItem commentItem) {
                Comment comment;
                if (commentItem.hasVotes() || Utils.shouldShowLoginPage(CommentListAdapter.this.getParentContext()) || (comment = commentItem.getComment()) == null || comment.votedValue > 0) {
                    return;
                }
                CommentListAdapter.this.vote(comment, 1, true);
                if (CommentListAdapter.this.getContext() instanceof NVActivity) {
                    ((NVActivity) CommentListAdapter.this.getContext()).toastImage(R.drawable.ic_vote_heart);
                }
            }
        };
        this.account = (AccountService) nVContext.getService("account");
        if (nVContext instanceof NVListFragment) {
            this.listView = ((NVListFragment) nVContext).getListView();
        }
        this.bottomPadding = bottomPadding();
        this.communityHelper = new CommunityHelper(this) { // from class: com.narvii.comment.list.CommentListAdapter.1
            @Override // com.narvii.community.CommunityHelper
            protected void startActivity(Intent intent) {
                CommentListAdapter.this.startActivity(intent);
            }
        };
        this.commentHelper = new CommentHelper(this, isGlobalInteractionScope());
        this.pushNotificationHelper = new PushNotificationHelper(this);
    }

    protected boolean ownParent() {
        User userProfile;
        NVObject parent = getParent();
        if (parent == null || (userProfile = ((AccountService) getService("account")).getUserProfile()) == null) {
            return false;
        }
        return Utils.isEqualsNotNull(userProfile.uid, parent.uid());
    }

    protected boolean isOwner(Comment comment) {
        NVObject parent = getParent();
        if (parent == null) {
            return false;
        }
        int communityId = comment.parentNdcId;
        if (communityId == -1 && (parent instanceof Feed)) {
            communityId = ((Feed) parent).ndcId;
        }
        if (communityId == -1) {
            communityId = ((ConfigService) getService("config")).getCommunityId();
        }
        User user = comment.author;
        return user != null && Utils.isEqualsNotNull(user.uid, parent.uid()) && communityId == comment.author.ndcId;
    }

    protected boolean isQuestionAndAnswer() {
        NVObject parent = getParent();
        return parent != null && (parent instanceof Blog) && ((Blog) parent).type == 3;
    }

    public int sort() {
        int i = this.sort;
        if (i == 0 || i == 1 || i == 2) {
            return this.sort;
        }
        return isQuestionAndAnswer() ? 2 : 0;
    }

    protected String sortName() {
        int iSort = sort();
        return iSort != 0 ? iSort != 1 ? iSort != 2 ? "newest" : StoryNotificationStub.ACTION_VOTE : "oldest" : "newest";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        NVObject parent = getParent();
        if (parent == 0 || parent.id() == null) {
            return null;
        }
        ApiRequest.Builder builderPath = ApiRequest.builder().path(CommentHelper.getBaseCommentPath(isGlobalInteractionScope(), parent.apiTypeName(), parent.id(), (String) null));
        builderPath.param("sort", sortName());
        if (parent instanceof CommunityObjectInGlobal) {
            CommunityObjectInGlobal communityObjectInGlobal = (CommunityObjectInGlobal) parent;
            if (communityObjectInGlobal.getNdcId() != -1) {
                builderPath.communityId(communityObjectInGlobal.getNdcId());
            }
        }
        return builderPath.build();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<Comment> filterResponseList(List<Comment> list, int i) {
        List<Comment> listFilterResponseList = super.filterResponseList(list, i);
        for (Comment comment : listFilterResponseList) {
            List<Comment> list2 = comment.subcommentsPreview;
            if (list2 != null && list2.size() > 0) {
                Iterator<Comment> it = comment.subcommentsPreview.iterator();
                FilterHelper filterHelper = new FilterHelper(this);
                while (it.hasNext()) {
                    if (!filterHelper.isAccessible(it.next())) {
                        it.remove();
                    }
                }
            }
        }
        return listFilterResponseList;
    }

    protected ApiRequest createSubcommentRequest(Comment comment, int i, int i2, String str) {
        NVObject parent = getParent();
        if (parent == null) {
            return null;
        }
        ApiRequest.Builder builderPath = ApiRequest.builder().path(CommentHelper.getBaseCommentPath(isGlobalInteractionScope(), parent.apiTypeName(), parent.id(), comment.id()) + "/response");
        builderPath.param(TtmlNode.START, Integer.valueOf(i));
        builderPath.param("size", Integer.valueOf(i2));
        if (!TextUtils.isEmpty(str)) {
            builderPath.param("stoptime", str);
        }
        return builderPath.build();
    }

    public void setSort(int i) {
        if (this.sort != i) {
            this.sort = i;
            resetList();
        }
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        this.list = null;
        super.notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVPagedAdapter
    public List<?> list() {
        if (this.list == null) {
            this.list = buildList(rawList());
        }
        return this.list;
    }

    protected List<?> buildList(List<? extends Comment> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        if (this.dividerAtTop) {
            arrayList.add(DIVIDER);
        }
        for (Comment comment : list) {
            arrayList.add(comment);
            List<Comment> list2 = comment.subcommentsPreview;
            if (list2 != null && list2.size() > 0) {
                if (this.subloading.containsValue(comment.id())) {
                    arrayList.add(SUBLOADING);
                } else if (comment.subcommentsCount > comment.subcommentsPreview.size() && !comment.subcommentIsEnd) {
                    arrayList.add(new ReadMore(comment));
                } else {
                    arrayList.add(DIVIDER);
                }
                List<Comment> list3 = comment.subcommentsPreview;
                ListIterator<Comment> listIterator = list3.listIterator(list3.size());
                while (listIterator.hasPrevious()) {
                    Comment commentPrevious = listIterator.previous();
                    commentPrevious.headCommentId = comment.id();
                    arrayList.add(commentPrevious);
                    if (listIterator.hasPrevious()) {
                        arrayList.add(SUBDIVIDER);
                    }
                }
            }
            arrayList.add(DIVIDER);
        }
        return arrayList;
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public int getCount() {
        return super.getCount() + (this.bottomPadding > 0 ? 1 : 0);
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public Object getItem(int i) {
        if (this.bottomPadding > 0 && i == getCount() - 1) {
            return BOTTOM_PADDING;
        }
        return super.getItem(i);
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        if (getItem(i) == BOTTOM_PADDING) {
            return super.getViewTypeCount();
        }
        return super.getItemViewType(i);
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return super.getViewTypeCount() + 1;
    }

    protected boolean isSubComment(Comment comment) {
        return comment.headCommentId != null;
    }

    protected void loadSubComment(Comment comment) {
        if (this.subloading.containsValue(comment.id())) {
            return;
        }
        ApiRequest apiRequestCreateSubcommentRequest = createSubcommentRequest(comment, comment.subcommentStart, 25, comment.subcommentStoptime);
        this.subloading.put(apiRequestCreateSubcommentRequest, comment.id());
        ((ApiService) getService("api")).exec(apiRequestCreateSubcommentRequest, this.subcommentListener);
        notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVPagedAdapter
    public void resetList() {
        ApiService apiService = (ApiService) getService("api");
        Iterator<ApiRequest> it = this.subloading.keySet().iterator();
        while (it.hasNext()) {
            apiService.abort(it.next());
        }
        this.subloading.clear();
        notifyDataSetChanged();
        super.resetList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<Comment> dataType() {
        return Comment.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<CommentListResponse> responseType() {
        return CommentListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        if (obj instanceof Comment) {
            return isSubComment((Comment) obj) ? 1 : 0;
        }
        if (obj instanceof ReadMore) {
            return 2;
        }
        if (obj == SUBDIVIDER) {
            return 3;
        }
        if (obj == DIVIDER) {
            return 4;
        }
        return obj == SUBLOADING ? 5 : -1;
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        Object item = getItem(i);
        if (item == DIVIDER || item == SUBDIVIDER || item == NVPagedAdapter.LIST_END || item == BOTTOM_PADDING) {
            return false;
        }
        return super.isEnabled(i);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
        if (this.listView == null && (viewGroup instanceof ListView)) {
            this.listView = (ListView) viewGroup;
        }
        boolean z = false;
        if (obj instanceof Comment) {
            Comment comment = (Comment) obj;
            View viewCreateView = createView(isSubComment(comment) ? subCommentLayoutId() : headerCommentLayoutId(), viewGroup, view);
            CommentItem commentItem = viewCreateView instanceof CommentItem ? (CommentItem) viewCreateView : (CommentItem) viewCreateView.findViewById(R.id.comment_item);
            commentItem.setOnClickListener(this.subviewClickListener);
            commentItem.findViewById(R.id.avatar).setOnClickListener(this.subviewClickListener);
            commentItem.findViewById(R.id.vote_heart2).setOnClickListener(this.subviewClickListener);
            commentItem.findViewById(R.id.nickname).setOnClickListener(this.subviewClickListener);
            commentItem.findViewById(R.id.expand).setOnClickListener(this.subviewClickListener);
            commentItem.findViewById(R.id.image1).setOnClickListener(this.subviewClickListener);
            commentItem.findViewById(R.id.image2).setOnClickListener(this.subviewClickListener);
            commentItem.findViewById(R.id.image3).setOnClickListener(this.subviewClickListener);
            commentItem.findViewById(R.id.image4).setOnClickListener(this.subviewClickListener);
            commentItem.findViewById(R.id.image5).setOnClickListener(this.subviewClickListener);
            if (isAnnouncement()) {
                commentItem.disableVote();
            } else {
                commentItem.voteCallback = this.voteCallback;
            }
            if (!isSubComment(comment) && isQuestionAndAnswer()) {
                z = true;
            }
            commentItem.setHasVotes(z);
            if (z) {
                commentItem.findViewById(R.id.vote_up).setOnClickListener(this.subviewClickListener);
                commentItem.findViewById(R.id.vote_down).setOnClickListener(this.subviewClickListener);
            }
            commentItem.setVoting(this.voting.contains(comment.id()));
            String userId = this.account.getUserId();
            User user = comment.author;
            commentItem.setIsMine(Utils.isEqualsNotNull(userId, user == null ? null : user.uid));
            commentItem.setIsOwner(isOwner(comment));
            commentItem.setDarkTheme(this.darkTheme, this.backgroundColor);
            if (this.tagClickListener == null) {
                this.tagClickListener = new CommentTagClickListener();
            }
            commentItem.setComment(comment, this.tagClickListener);
            commentItem.setExpand(this.expands.contains(comment.id()));
            return viewCreateView;
        }
        if (obj instanceof ReadMore) {
            View viewCreateView2 = createView(R.layout.comment_readmore, viewGroup, view);
            TextView textView = (TextView) viewCreateView2.findViewById(R.id.text);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) getContext().getString(R.string.comment_readmore));
            spannableStringBuilder.setSpan(new UnderlineSpan(), 0, spannableStringBuilder.length(), 33);
            StringBuilder sb = new StringBuilder();
            sb.append(" (");
            Comment comment2 = ((ReadMore) obj).head;
            sb.append(comment2.subcommentsCount - comment2.subcommentsPreview.size());
            sb.append(")");
            spannableStringBuilder.append((CharSequence) sb.toString());
            textView.setText(spannableStringBuilder);
            textView.setTextColor(ContextCompat.getColor(getContext(), this.darkTheme ? R.color.text_clickable_white : R.color.text_clickable));
            return viewCreateView2;
        }
        if (obj == DIVIDER) {
            return createView(this.darkTheme ? R.layout.list_divider_dark : R.layout.list_divider, viewGroup, view, Boolean.valueOf(this.darkTheme));
        }
        if (obj == SUBDIVIDER) {
            View viewCreateView3 = createView(R.layout.comment_sub_divider, viewGroup, view);
            viewCreateView3.findViewById(R.id.list_divider).setBackgroundColor(ContextCompat.getColor(getContext(), this.darkTheme ? R.color.list_divider_dark : R.color.list_divider));
            return viewCreateView3;
        }
        if (obj == SUBLOADING) {
            return createView(R.layout.comment_sub_loading, viewGroup, view);
        }
        if (obj != BOTTOM_PADDING) {
            return null;
        }
        View viewCreateView4 = createView(R.layout.list_bottom_placeholder, viewGroup, view);
        viewCreateView4.getLayoutParams().height = this.bottomPadding;
        viewCreateView4.requestLayout();
        return viewCreateView4;
    }

    private class CommentTagClickListener extends DefaultTagClickListener {
        private CommentTagClickListener() {
        }

        @Override // com.narvii.util.text.DefaultTagClickListener
        protected void startActivity(View view, Intent intent) {
            CommentListAdapter.this.startActivity(intent);
        }
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public View createLoadingItem(ViewGroup viewGroup, View view) {
        View viewCreateLoadingItem = super.createLoadingItem(viewGroup, view);
        int iFirstLoadingHeight = list().isEmpty() ? firstLoadingHeight() : 0;
        ViewGroup.LayoutParams layoutParams = viewCreateLoadingItem.getLayoutParams();
        if (iFirstLoadingHeight <= ViewCompat.getMinimumHeight(viewCreateLoadingItem)) {
            iFirstLoadingHeight = -2;
        }
        layoutParams.height = iFirstLoadingHeight;
        viewCreateLoadingItem.requestLayout();
        return viewCreateLoadingItem;
    }

    @Override // com.narvii.list.NVPagedAdapter
    public View createListEndItem(ViewGroup viewGroup, View view, int i) {
        String string;
        if (i == 0) {
            View viewCreateListEndItem = super.createListEndItem(viewGroup, view, i);
            if (isQuestionAndAnswer()) {
                string = getContext().getString(R.string.detail_0_answers);
            } else {
                string = getContext().getString(R.string.detail_0_comments);
            }
            TextView textView = (TextView) viewCreateListEndItem.findViewById(R.id.text);
            textView.setTextColor(getListEndItemTextColor(this.darkTheme));
            textView.setText(string);
            viewCreateListEndItem.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.comment.list.CommentListAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    CommentListAdapter.this.refresh(0, null);
                }
            });
            return viewCreateListEndItem;
        }
        View viewCreateView = createView(R.layout.list_bottom_placeholder, viewGroup, view, "placeholder");
        viewCreateView.getLayoutParams().height = -2;
        return viewCreateView;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(23:118|(1:120)(1:121)|(1:123)(1:124)|125|(1:127)(1:128)|129|(1:137)(2:133|(1:135)(1:136))|(1:139)(16:141|(1:143)|144|(1:160)(2:148|(3:205|150|(1:159)(0))(3:154|(1:156)|159))|(1:165)|(1:168)|(2:170|(1:175)(1:174))(1:176)|177|(1:184)(1:183)|(1:188)|189|203|190|194|(1:196)|197)|140|144|(2:146|160)(0)|(2:162|165)|(1:168)(0)|(0)(0)|177|(2:179|184)(0)|(2:186|188)|189|203|190|194|(0)|197) */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x0320, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0321, code lost:
    
        com.narvii.util.Log.e("comment", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x032f  */
    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onItemClick(android.widget.ListAdapter r17, int r18, java.lang.Object r19, android.view.View r20, android.view.View r21) {
        /*
            Method dump skipped, instructions count: 842
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.comment.list.CommentListAdapter.onItemClick(android.widget.ListAdapter, int, java.lang.Object, android.view.View, android.view.View):boolean");
    }

    protected void onViewStickerClicked(Intent intent) {
        startActivity(intent);
    }

    public void onNotification(Notification notification) {
        List<? extends Comment> listRawList;
        int iIndexOfId;
        int iIndexOfId2;
        List<Comment> list;
        int iIndexOfId3;
        if (notification.parentId != null) {
            Object obj = notification.obj;
            if (obj instanceof Comment) {
                Comment comment = (Comment) obj;
                if (isGlobalInteractionScope() != (comment.ndcId == 0)) {
                    return;
                }
                if (getParent() != null && !TextUtils.isEmpty(getParent().id()) && getParent().id().equals(notification.parentId)) {
                    if (isSubComment(comment)) {
                        int iIndexOfId4 = Utils.indexOfId(rawList(), comment.headCommentId);
                        if (iIndexOfId4 >= 0) {
                            Comment comment2 = rawList().get(iIndexOfId4);
                            String str = notification.action;
                            if (str == "update" || str == "edit") {
                                List<Comment> list2 = comment2.subcommentsPreview;
                                if (list2 != null && (iIndexOfId2 = Utils.indexOfId(list2, comment.id())) >= 0) {
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.addAll(comment2.subcommentsPreview);
                                    arrayList.set(iIndexOfId2, comment);
                                    comment2.subcommentsPreview = arrayList;
                                    notifyDataSetChanged();
                                }
                            } else if (str == "new") {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(comment);
                                List<Comment> list3 = comment2.subcommentsPreview;
                                if (list3 != null) {
                                    if (Utils.containsId(list3, comment.id())) {
                                        return;
                                    } else {
                                        arrayList2.addAll(comment2.subcommentsPreview);
                                    }
                                }
                                comment2.subcommentsPreview = arrayList2;
                                comment2.subcommentsCount++;
                                notifyDataSetChanged();
                            } else if (str == "delete" && (list = comment2.subcommentsPreview) != null && (iIndexOfId3 = Utils.indexOfId(list, comment.id())) >= 0) {
                                ArrayList arrayList3 = new ArrayList();
                                arrayList3.addAll(comment2.subcommentsPreview);
                                arrayList3.remove(iIndexOfId3);
                                comment2.subcommentsPreview = arrayList3;
                                comment2.subcommentsCount--;
                                notifyDataSetChanged();
                            }
                        }
                    } else {
                        if (notification.action == "edit" && (iIndexOfId = Utils.indexOfId((listRawList = rawList()), notification.id)) >= 0) {
                            Comment comment3 = listRawList.get(iIndexOfId);
                            Comment comment4 = (Comment) ((Comment) notification.obj).m46clone();
                            comment4.subcommentIsEnd = comment3.subcommentIsEnd;
                            comment4.subcommentsCount = comment3.subcommentsCount;
                            comment4.subcommentStart = comment3.subcommentStart;
                            comment4.subcommentStoptime = comment3.subcommentStoptime;
                            comment4.subcommentsPreview = comment3.subcommentsPreview;
                            notification = new Notification(notification.action, comment4);
                        }
                        editList(notification, false);
                        if (notification.action == "new" && (getParentContext() instanceof NVListFragment) && this.focusingCommentRect == null && ((NVListFragment) getParentContext()).getHoverCurrentView() != null) {
                            Utils.postDelayed(new Runnable() { // from class: com.narvii.comment.list.CommentListAdapter.6
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (CommentListAdapter.this.focusingCommentRect == null) {
                                        CommentListAdapter commentListAdapter = CommentListAdapter.this;
                                        commentListAdapter.scrollCommentAddAtTop(((NVListFragment) commentListAdapter.getParentContext()).getHoverTopOffset());
                                    }
                                }
                            }, 200L);
                        }
                    }
                }
            }
        }
        if (notification.action == "new" && (notification.obj instanceof Comment) && (getParentContext() instanceof NVListFragment)) {
            ((NVListFragment) getParentContext()).blinkItem(notification.id, true, 400L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vote(final Comment comment, int i, boolean z) {
        if (Utils.shouldShowLoginPage(getParentContext())) {
            return;
        }
        logClickEvent(comment, i == 0 ? ActSemantic.dislike : ActSemantic.like);
        this.voting.add(comment.id());
        notifyDataSetChanged();
        LiveLayerUtils.reportVoting(getParentContext(), comment, i);
        VoteHelper voteHelper = new VoteHelper(this);
        voteHelper.loggingOrigin = this.loggingOrigin;
        voteHelper.loggingSource = this.loggingSource;
        voteHelper.vote(comment, Integer.valueOf(i), getParent(), new VoteHelper.OnVoteListenerAdapter() { // from class: com.narvii.comment.list.CommentListAdapter.7
            @Override // com.narvii.story.detail.VoteHelper.OnVoteListenerAdapter, com.narvii.story.detail.VoteHelper.OnVoteListener
            public void onVoteEnd(boolean z2) {
                CommentListAdapter.this.voting.remove(comment.id());
                CommentListAdapter.this.notifyDataSetChanged();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void edit(Comment comment) {
        Intent intent = new Intent(getContext(), (Class<?>) CommentPostActivity.class);
        intent.putExtra("parentType", comment.parentType);
        intent.putExtra("parentId", comment.parentId);
        intent.putExtra("commentId", comment.id());
        if (getParent() instanceof Blog) {
            intent.putExtra("parentSubType", ((Blog) getParent()).type);
        }
        if (getParent() instanceof Feed) {
            intent.putExtra(CommentListFragment.COMMENT_KEY_FEED, JacksonUtils.writeAsString(getParent()));
        }
        intent.putExtra("stat_parent_type", StatisticHelper.getStatisticSource(this, null, comment.parentType));
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new CommentPost(comment)));
        intent.putExtra("Source", this.source);
        intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, isAnnouncement());
        LoggingSource loggingSource = this.loggingSource;
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, loggingSource == null ? null : loggingSource.name());
        LoggingOrigin loggingOrigin = this.loggingOrigin;
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, loggingOrigin != null ? loggingOrigin.name() : null);
        startActivity(intent);
        setFocusingComment(comment);
        CommentPostActivity.setStatusListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void delete(final Comment comment, boolean z) {
        if (!z) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setMessage(R.string.dialog_delete_confirm);
            builder.setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.narvii.comment.list.CommentListAdapter.8
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    CommentListAdapter.this.delete(comment, true);
                }
            });
            builder.setNegativeButton(android.R.string.no, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
            builder.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        this.commentHelper.sendDeleteCommentRequest(comment, progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reply(Comment comment) {
        if (Utils.shouldShowLoginPage(getParentContext())) {
            return;
        }
        logClickEvent(comment, ActSemantic.reply);
        Intent intent = new Intent(getContext(), (Class<?>) CommentPostActivity.class);
        intent.putExtra("parentType", comment.parentType);
        intent.putExtra("parentId", comment.parentId);
        intent.putExtra("respondTo", comment.id());
        intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, isAnnouncement());
        if ((getParent() instanceof Feed) && ((Feed) getParent()).ndcId != -1) {
            intent.putExtra("__communityId", ((Feed) getParent()).ndcId);
        }
        if (getParent() instanceof Blog) {
            intent.putExtra("parentSubType", ((Blog) getParent()).type);
        }
        if (getParent() instanceof Feed) {
            intent.putExtra(CommentListFragment.COMMENT_KEY_FEED, JacksonUtils.writeAsString(getParent()));
        }
        intent.putExtra("stat_parent_type", StatisticHelper.getStatisticSource(this, null, comment.parentType));
        CommentPost commentPost = new CommentPost();
        if (isSubComment(comment)) {
            NVContext nVContext = this.context;
            String[] strArr = new String[1];
            User user = comment.author;
            strArr[0] = user == null ? "" : user.nickname();
            String stringForCommunityLocal = StringUtils.getStringForCommunityLocal(nVContext, R.string.comment_reply_to, strArr);
            commentPost.prefix = stringForCommunityLocal + "\n";
            intent.putExtra("hint", stringForCommunityLocal);
        } else {
            commentPost.prefix = null;
        }
        commentPost.respondTo = comment.id();
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(commentPost));
        intent.putExtra("Source", this.source);
        LoggingSource loggingSource = this.loggingSource;
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, loggingSource == null ? null : loggingSource.name());
        LoggingOrigin loggingOrigin = this.loggingOrigin;
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, loggingOrigin != null ? loggingOrigin.name() : null);
        intent.putExtra(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, getFeedNdcId());
        intent.putExtra(NVActivity.INTERACTION_SCOPE, isGlobalInteractionScope());
        startActivity(intent);
        if (focusComment()) {
            setFocusingComment(comment);
            CommentPostActivity.setStatusListener(this);
        }
        onReply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flagForReview(Comment comment) {
        new FlagReportOptionDialog.Builder(this.context).nvObject(comment).build().show();
    }

    void setFocusingComment(Comment comment) {
        ListView listView = this.listView;
        if (listView == null) {
            return;
        }
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        ListAdapter adapter = this.listView.getAdapter();
        int childCount = this.listView.getChildCount();
        int count = adapter.getCount();
        for (int i = 0; i < childCount; i++) {
            int i2 = i + firstVisiblePosition;
            if (i2 >= count || firstVisiblePosition < 0) {
                return;
            }
            Object item = adapter.getItem(i2);
            if ((item instanceof Comment) && Utils.isIdEquals((Comment) item, comment)) {
                View childAt = this.listView.getChildAt(i);
                Rect rect = new Rect();
                this.listView.getGlobalVisibleRect(rect);
                this.focusingCommentRect = new Rect();
                Rect rect2 = this.focusingCommentRect;
                rect2.left = rect.left;
                rect2.right = rect.right;
                rect2.top = rect.top + childAt.getTop();
                this.focusingCommentRect.bottom = rect.top + childAt.getBottom();
                return;
            }
        }
    }

    @Override // com.narvii.comment.post.CommentPostActivity.StatusListener
    public void onPostDone(CommentPostActivity commentPostActivity, boolean z) {
        CommentPostActivity.setStatusListener(null);
        this.focusingCommentRect = null;
        this.bottomPadding = bottomPadding();
        notifyDataSetChanged();
        if (z) {
            this.pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_COMMENT);
        }
    }

    @Override // com.narvii.comment.post.CommentPostActivity.StatusListener
    public void onHeightFix(final CommentPostActivity commentPostActivity) {
        if (this.focusingCommentRect == null) {
            NVContext nVContext = this.context;
            if ((nVContext instanceof NVListFragment) && ((NVListFragment) nVContext).getHoverCurrentView() != null) {
                return;
            }
        }
        View viewFindViewById = commentPostActivity.findViewById(android.R.id.content);
        this.bottomPadding = viewFindViewById == null ? bottomPadding() : viewFindViewById.getHeight();
        notifyDataSetChanged();
        if (this.listView == null) {
            return;
        }
        if (this.focusingCommentRect == null) {
            scrollCommentAddAtTop();
            return;
        }
        int activeSpaceHeight = commentPostActivity.getActiveSpaceHeight();
        long j = 0;
        int i = this.focusingCommentRect.bottom;
        if (i > activeSpaceHeight) {
            int iScrollParentAndReturnUnconsumedDistance = i - activeSpaceHeight;
            if (Build.VERSION.SDK_INT >= 19) {
                this.listView.scrollListBy(-1);
            }
            this.focusingCommentRect.offset(0, -iScrollParentAndReturnUnconsumedDistance);
            if (isNestedScrollMode()) {
                iScrollParentAndReturnUnconsumedDistance = scrollParentAndReturnUnconsumedDistance(iScrollParentAndReturnUnconsumedDistance);
            }
            this.listView.smoothScrollBy(iScrollParentAndReturnUnconsumedDistance, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
            j = 200;
        }
        final Rect rect = new Rect();
        this.listView.getGlobalVisibleRect(rect);
        rect.top = Math.max(rect.top, this.focusingCommentRect.top);
        rect.bottom = this.focusingCommentRect.bottom;
        Utils.postDelayed(new Runnable() { // from class: com.narvii.comment.list.CommentListAdapter.9
            @Override // java.lang.Runnable
            public void run() {
                commentPostActivity.setTransparentArea(rect);
            }
        }, j);
    }

    private void scrollCommentAddAtTop() {
        scrollCommentAddAtTop(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollCommentAddAtTop(int i) {
        int i2;
        int actionBarOverlaySize;
        int statusBarOverlaySize;
        ListAdapter adapter = this.listView.getAdapter();
        int count = adapter.getCount();
        int i3 = 0;
        while (true) {
            if (i3 >= count) {
                i3 = -1;
                break;
            } else if (adapter.getItem(i3) == DetailAdapter.COMMENT_ADD) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 != -1) {
            int firstVisiblePosition = this.listView.getFirstVisiblePosition();
            int childCount = this.listView.getChildCount();
            if (i == -1) {
                NVContext nVContext = this.context;
                if (nVContext instanceof NVFragment) {
                    NVFragment nVFragment = (NVFragment) nVContext;
                    actionBarOverlaySize = nVFragment.getActionBarOverlaySize();
                    statusBarOverlaySize = nVFragment.getStatusBarOverlaySize();
                } else if (getContext() instanceof NVActivity) {
                    NVActivity nVActivity = (NVActivity) getContext();
                    actionBarOverlaySize = nVActivity.getActionBarOverlaySize();
                    statusBarOverlaySize = nVActivity.getStatusBarOverlaySize();
                } else {
                    i = 0;
                }
                i = statusBarOverlaySize + actionBarOverlaySize;
            }
            if (firstVisiblePosition >= 0 && (i2 = i3 - firstVisiblePosition) >= 0 && i2 < childCount) {
                View childAt = this.listView.getChildAt(i2);
                if (isNestedScrollMode()) {
                    onNestedCollapse();
                    this.listView.smoothScrollBy(childAt != null ? childAt.getTop() : 0, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
                    return;
                } else {
                    this.listView.smoothScrollBy(childAt != null ? childAt.getTop() - i : 0, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
                    return;
                }
            }
            if (isNestedScrollMode()) {
                onNestedCollapse();
            }
            this.listView.setSelectionFromTop(i3, i);
        }
    }

    private int scrollParentAndReturnUnconsumedDistance(int i) {
        ListView listView = this.listView;
        if (!(listView instanceof NVListView)) {
            return i;
        }
        NVListView nVListView = (NVListView) listView;
        int[] iArr = new int[2];
        nVListView.startNestedScroll(2);
        nVListView.dispatchNestedPreScroll(0, i, iArr, null);
        int i2 = i - iArr[1];
        nVListView.dispatchNestedScroll(0, i2, 0, iArr[1], null);
        nVListView.stopNestedScroll();
        return i2;
    }
}
