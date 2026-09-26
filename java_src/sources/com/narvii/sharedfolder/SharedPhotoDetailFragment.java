package com.narvii.sharedfolder;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.feed.vote.VoteAnimationHelper;
import com.narvii.feed.vote.VotePopupDialog;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.media.SaveImageFragment;
import com.narvii.model.Comment;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.SharedAlbum;
import com.narvii.model.SharedFile;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.CommentListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.share.ShareDialog;
import com.narvii.share.ShareViewHelper;
import com.narvii.story.detail.VoteHelper;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.FixedFragmentStatePagerAdapter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.statistics.constants.UserPropConstants;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.ExpandTextView;
import com.narvii.widget.InputDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TouchImageView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.VoteIcon;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public class SharedPhotoDetailFragment extends DetailFragment implements View.OnClickListener, NotificationListener, HideDetailStatusManager.OnHideStatusChangedListener, FixedFragmentStatePagerAdapter.FragmentSaveInstanceInPagerListener {
    public static final String SHARED_FOLDER_MEDIA = "Shared Folder Media";
    public AlbumAdapter albumAdapter;
    NVListView albumList;
    public CommentAdapter commentAdapter;
    NVListView commentList;
    public View detailLayout;
    public Callback<SharedFile> onFinishListener;
    public Callback<SharedFile> onPhotoDeleteCallback;
    public View overlayPlaceholder;
    public PhotoDetailAdapter photoDetailAdapter;
    Bundle savedInstanceState;
    SharedFolderHelper sharedFolderHelper;
    SharedPhotoColorHelper sharedPhotoColorHelper;
    public boolean subListSetted;
    public View voteIconView;
    private boolean voting;
    private boolean willSaveInstanceInPager;
    private View.OnLongClickListener longClickVote = new View.OnLongClickListener() { // from class: com.narvii.sharedfolder.SharedPhotoDetailFragment.2
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            SharedFile sharedPhoto = SharedPhotoDetailFragment.this.getSharedPhoto();
            if (sharedPhoto == null) {
                return false;
            }
            final VoteIcon voteIcon = (VoteIcon) view.findViewById(R.id.vote_icon);
            VotePopupDialog votePopupDialog = new VotePopupDialog(SharedPhotoDetailFragment.this.getContext());
            votePopupDialog.setFeed(sharedPhoto);
            votePopupDialog.setPosition(view);
            votePopupDialog.setVoteListener(new Callback<Integer>() { // from class: com.narvii.sharedfolder.SharedPhotoDetailFragment.2.1
                @Override // com.narvii.util.Callback
                public void call(Integer num) {
                    SharedPhotoDetailFragment.this.voteIconView = voteIcon;
                    Intent intent = new Intent("vote");
                    intent.putExtra("voteValue", num.intValue());
                    SharedPhotoDetailFragment.this.ensureLogin(intent);
                }
            });
            votePopupDialog.show();
            return true;
        }
    };
    public HideDetailStatusManager hideDetailStatusManager = new HideDetailStatusManager();

    class AlbumAdapter extends NVPagedAdapter<SharedAlbum, SharedAlbumListResponse> {
        public static final int SHOW_MORE_COUNT = 4;
        public final Tag MORE;
        boolean animated;
        private boolean showMore;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<SharedAlbum> dataType() {
            return SharedAlbum.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 2;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 25;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends SharedAlbumListResponse> responseType() {
            return SharedAlbumListResponse.class;
        }

        public AlbumAdapter(NVContext nVContext) {
            super(nVContext);
            this.showMore = true;
            this.MORE = new Tag("more");
            this.animated = false;
            setDarkTheme(true);
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            return this.showMore ? Math.min(5, super.getCount()) : super.getCount();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return obj instanceof SharedAlbum ? 0 : 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (obj instanceof SharedAlbum) {
                SharedAlbum sharedAlbum = (SharedAlbum) obj;
                View viewCreateView = createView(R.layout.item_photo_joined_album, viewGroup, view);
                SharedAlbumTagView sharedAlbumTagView = (SharedAlbumTagView) viewCreateView.findViewById(R.id.album);
                sharedAlbumTagView.setAlbum(sharedAlbum);
                sharedAlbumTagView.setText(sharedAlbum.getTitle(getContext()));
                return viewCreateView;
            }
            if (obj != this.MORE) {
                return null;
            }
            View viewCreateView2 = createView(R.layout.item_photo_joined_album_more, viewGroup, view);
            viewCreateView2.findViewById(R.id.album).setBackgroundDrawable(SharedPhotoDetailFragment.this.sharedPhotoColorHelper.getTagBackground(getContext(), -1761607681));
            viewCreateView2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.sharedfolder.SharedPhotoDetailFragment.AlbumAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AlbumAdapter.this.showMore = false;
                    AlbumAdapter.this.loadNextPage(true);
                    AlbumAdapter.this.notifyDataSetChanged();
                }
            });
            return viewCreateView2;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean saveInstanceState() {
            return SharedPhotoDetailFragment.this.willSaveInstanceInPager;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("shared-folder/files/" + SharedPhotoDetailFragment.this.id() + "/joined-folders").build();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public Object getItem(int i10) {
            if (rawList().size() > 4 && this.showMore && i10 == 4) {
                return this.MORE;
            }
            return super.getItem(i10);
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            Object item = getItem(i10);
            if (!(item instanceof SharedAlbum) && item != this.MORE) {
                if (!this.showMore && item == NVPagedAdapter.LOADING) {
                    return super.getView(i10, view, viewGroup);
                }
                return new View(getContext());
            }
            return super.getView(i10, view, viewGroup);
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            if (!this.animated && CollectionUtils.isEmpty(rawList()) && SharedPhotoDetailFragment.this.albumList != null) {
                SharedPhotoDetailFragment.this.albumList.startAnimation(AnimationUtils.loadAnimation(getContext(), android.R.anim.fade_in));
                this.animated = true;
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            this.animated = bundle.getBoolean("animated", false);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("animated", this.animated);
            return bundleOnSaveInstanceState;
        }
    }

    class CommentAdapter extends CommentListAdapter {
        private Tag VIEW_ALL_COMMENTS;
        boolean animated;
        private final HashSet<String> expands;
        boolean requestFinished;

        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i10) {
            this.requestFinished = true;
            super.onFailResponse(apiRequest, str, apiResponse, i10);
        }

        public CommentAdapter(NVContext nVContext) {
            super(nVContext);
            this.animated = false;
            this.expands = new HashSet<>();
            this.VIEW_ALL_COMMENTS = new Tag("view_all_comments");
            this.requestFinished = false;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected List<?> buildList(List<? extends Comment> list) {
            if (list == null) {
                return null;
            }
            if (list.isEmpty()) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (Comment comment : list) {
                if (!canAdd(arrayList)) {
                    break;
                }
                arrayList.add(comment);
                List<Comment> list2 = comment.subcommentsPreview;
                if (list2 != null && list2.size() > 0) {
                    List<Comment> list3 = comment.subcommentsPreview;
                    ListIterator<Comment> listIterator = list3.listIterator(list3.size());
                    while (listIterator.hasPrevious()) {
                        Comment commentPrevious = listIterator.previous();
                        commentPrevious.headCommentId = comment.id();
                        if (!canAdd(arrayList)) {
                            break;
                        }
                        arrayList.add(commentPrevious);
                    }
                }
            }
            SharedFile sharedPhoto = SharedPhotoDetailFragment.this.getSharedPhoto();
            if (sharedPhoto != null && sharedPhoto.commentsCount > 0 && this.animated) {
                arrayList.add(this.VIEW_ALL_COMMENTS);
            }
            return arrayList;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected NVObject getParent() {
            return SharedPhotoDetailFragment.this.getSharedPhoto();
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof Comment) || view2 == null || view2.getId() != R.id.expand) {
                SharedPhotoDetailFragment.this.goAllCommentsPage();
                return true;
            }
            Comment comment = (Comment) obj;
            if (!this.expands.remove(comment.id())) {
                this.expands.add(comment.id());
            }
            notifyDataSetChanged();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, CommentListResponse commentListResponse, int i10) {
            this.requestFinished = true;
            super.onPageResponse(apiRequest, commentListResponse, i10);
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onViewStickerClicked(Intent intent) {
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(SharedPhotoDetailFragment.this, intent, 111);
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean saveInstanceState() {
            return SharedPhotoDetailFragment.this.willSaveInstanceInPager;
        }

        private boolean canAdd(List list) {
            if (list.size() < 4) {
                return true;
            }
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            boolean z6;
            Sticker commentSticker;
            String strNickname;
            String string;
            String string2;
            int iDpToPx = 0;
            if (getItem(i10) instanceof Comment) {
                Comment comment = (Comment) getItem(i10);
                if (comment.type == 3 && comment.getCommentSticker() == null) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (comment.type == 3) {
                    commentSticker = comment.getCommentSticker();
                } else {
                    commentSticker = null;
                }
                View viewCreateView = createView(R.layout.item_shared_photo_comment, viewGroup, view);
                ExpandTextView expandTextView = (ExpandTextView) viewCreateView.findViewById(R.id.comment);
                User user = comment.author;
                if (user == null) {
                    strNickname = "";
                } else {
                    strNickname = user.nickname();
                }
                if (commentSticker != null && !TextUtils.isEmpty(commentSticker.name)) {
                    string = commentSticker.name;
                } else {
                    string = SharedPhotoDetailFragment.this.getString(R.string.stickers);
                }
                if (z6) {
                    string2 = SharedPhotoDetailFragment.this.getResources().getString(R.string.comment_not_available);
                } else if (commentSticker != null) {
                    string2 = "[" + string + "]";
                } else {
                    string2 = comment.content;
                }
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strNickname + " " + string2);
                spannableStringBuilder.setSpan(new ForegroundColorSpan(SharedPhotoDetailFragment.this.sharedPhotoColorHelper.getNickNameColor(strNickname)), 0, strNickname.length(), 33);
                spannableStringBuilder.setSpan(new StyleSpan(1), 0, strNickname.length(), 33);
                expandTextView.setText(spannableStringBuilder);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) expandTextView.getLayoutParams();
                if (isSubComment(comment)) {
                    iDpToPx = (int) Utils.dpToPx(getContext(), 25.0f);
                }
                marginLayoutParams.setMarginStart(iDpToPx);
                viewCreateView.setOnClickListener(this.subviewClickListener);
                viewCreateView.findViewById(R.id.expand).setOnClickListener(this.subviewClickListener);
                expandTextView.setExpand(!this.expands.contains(comment.id()));
                return viewCreateView;
            }
            if (getItem(i10) == this.VIEW_ALL_COMMENTS) {
                View viewCreateView2 = createView(R.layout.photo_see_all_comments, viewGroup, view);
                TextView textView = (TextView) viewCreateView2.findViewById(R.id.view_all_comments);
                SharedFile sharedPhoto = SharedPhotoDetailFragment.this.getSharedPhoto();
                if (sharedPhoto != null) {
                    if (sharedPhoto.commentsCount <= 0) {
                        iDpToPx = 8;
                    }
                    textView.setVisibility(iDpToPx);
                    textView.setText(com.narvii.util.text.TextUtils.getCountText(getContext(), sharedPhoto.commentsCount, R.string.comment_view_all, R.string.view_all_n_comments));
                }
                viewCreateView2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.sharedfolder.SharedPhotoDetailFragment.CommentAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        SharedPhotoDetailFragment.this.goAllCommentsPage();
                    }
                });
                return viewCreateView2;
            }
            return new View(getContext());
        }

        @Override // com.narvii.comment.list.CommentListAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            if (SharedPhotoDetailFragment.this.isAdded() && !this.animated && this.requestFinished && SharedPhotoDetailFragment.this.commentList != null) {
                this.animated = true;
                super.notifyDataSetChanged();
                SharedPhotoDetailFragment.this.commentList.startAnimation(AnimationUtils.loadAnimation(getContext(), android.R.anim.fade_in));
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            this.animated = bundle.getBoolean("animated", false);
            this.requestFinished = bundle.getBoolean("requestFinished", false);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("animated", this.animated);
            bundleOnSaveInstanceState.putBoolean("requestFinished", this.animated);
            return bundleOnSaveInstanceState;
        }
    }

    class PhotoDetailAdapter extends DetailAdapter<SharedFile, SharedFileResponse> {
        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List list) {
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class objectType() {
            return SharedFile.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class responseType() {
            return SharedFileResponse.class;
        }

        public PhotoDetailAdapter(NVContext nVContext) {
            super(nVContext);
            this.source = SharedPhotoDetailFragment.SHARED_FOLDER_MEDIA;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean saveInstanceState() {
            return SharedPhotoDetailFragment.this.willSaveInstanceInPager;
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(SharedFile sharedFile) {
            SharedFileResponse sharedFileResponse = new SharedFileResponse();
            sharedFileResponse.file = sharedFile;
            setResponse(sharedFileResponse);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setResponse(SharedFileResponse sharedFileResponse) {
            Callback<SharedFile> callback;
            if (SharedPhotoDetailFragment.this.isAdded()) {
                if (sharedFileResponse.timestamp != null && (callback = SharedPhotoDetailFragment.this.onFinishListener) != null) {
                    callback.call(sharedFileResponse.object());
                }
                SharedFile object = getObject();
                super.setResponse(sharedFileResponse);
                SharedFile object2 = getObject();
                if (object2 != null) {
                    CommentAdapter commentAdapter = SharedPhotoDetailFragment.this.commentAdapter;
                    if (commentAdapter != null && object == null) {
                        commentAdapter.resetList();
                    }
                    boolean z6 = object2.status == 9;
                    View view = SharedPhotoDetailFragment.this.overlayPlaceholder;
                    if (view != null) {
                        view.setVisibility(z6 ? 8 : 0);
                    }
                    SharedPhotoDetailFragment.this.setDisabledStatus(object2);
                    SharedPhotoDetailFragment.this.updateCommentCountView();
                    invalidateOptionsMenu();
                }
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            return ApiRequest.builder().path("/shared-folder/files/" + SharedPhotoDetailFragment.this.id()).build();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (getObject() == null) {
                return true;
            }
            return false;
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            SharedPhotoDetailFragment.this.updateDetailView();
        }
    }

    private boolean isMine(SharedFile sharedFile, User user) {
        if (sharedFile == null || sharedFile.author == null || user == null) {
            return false;
        }
        return Utils.isEqualsNotNull(user.id(), sharedFile.author.uid());
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.detail.DetailFragment
    protected boolean changeActionBarBackground() {
        return false;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.detail.DetailFragment
    protected int getDetailObjectDisableStrId() {
        return R.string.photo_disabled_message;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    protected boolean isInFlagMode() {
        return false;
    }

    @Override // com.narvii.util.FixedFragmentStatePagerAdapter.FragmentSaveInstanceInPagerListener
    public void onPostSaveInstanceInPager() {
        this.willSaveInstanceInPager = false;
    }

    @Override // com.narvii.util.FixedFragmentStatePagerAdapter.FragmentSaveInstanceInPagerListener
    public void onPreSaveInstanceInPager() {
        this.willSaveInstanceInPager = true;
    }

    @Override // com.narvii.detail.DetailFragment
    protected boolean shouldShowNotAvailable(NVObject nVObject) {
        return false;
    }

    public void vote(Integer num) {
        vote(num, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SharedFile getSharedPhoto() {
        PhotoDetailAdapter photoDetailAdapter = this.photoDetailAdapter;
        if (photoDetailAdapter == null) {
            return null;
        }
        return photoDetailAdapter.getObject();
    }

    public static Intent intent(SharedFile sharedFile) {
        if (sharedFile == null) {
            return null;
        }
        Intent intent = FragmentWrapperActivity.intent(SharedPhotoDetailFragment.class);
        intent.putExtra("id", sharedFile.id());
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(sharedFile));
        return intent;
    }

    private void setUpSubList() {
        setUpCommentList(this.savedInstanceState);
        setUpAlbumList(this.savedInstanceState);
        this.subListSetted = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCommentCountView() {
        CommentAdapter commentAdapter = this.commentAdapter;
        if (commentAdapter != null) {
            commentAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vote(Integer num, final ApiService apiService) {
        SharedFile object = this.photoDetailAdapter.getObject();
        if (object == null) {
            return;
        }
        final int targetVotedValue = VoteHelper.getTargetVotedValue(num, object, isGlobalInteractionScope());
        if (num == null && targetVotedValue == 0) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.unlike, true);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.sharedfolder.SharedPhotoDetailFragment.6
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    SharedPhotoDetailFragment.this.vote(0, apiService);
                }
            });
            actionSheetDialog.show();
            return;
        }
        if (targetVotedValue != 0) {
            FirebaseLogManager.logEvent(this, ((StatisticsService) getService("statistics")).event(EventConstants.LikePost.LIKE_POST).param(EventConstants.PostType.POST_TYPE, SHARED_FOLDER_MEDIA).source(SHARED_FOLDER_MEDIA).userPropInc(UserPropConstants.PostEvents.LIKES_TOTAL));
        }
        LiveLayerUtils.reportVoting(getParentContext(), object, targetVotedValue);
        new VoteHelper(this).vote(object, Integer.valueOf(targetVotedValue), apiService, new VoteHelper.OnVoteListenerAdapter() { // from class: com.narvii.sharedfolder.SharedPhotoDetailFragment.7
            @Override // com.narvii.story.detail.VoteHelper.OnVoteListenerAdapter, com.narvii.story.detail.VoteHelper.OnVoteListener
            public void onVoteEnd(boolean z6) {
                SharedPhotoDetailFragment.this.voting = false;
                SharedPhotoDetailFragment.this.updateVoteViews();
                if (!z6 || targetVotedValue == 0) {
                    return;
                }
                SharedPhotoDetailFragment sharedPhotoDetailFragment = SharedPhotoDetailFragment.this;
                if (sharedPhotoDetailFragment.voteIconView != null) {
                    new VoteAnimationHelper(sharedPhotoDetailFragment.getContext()).startAnimation(SharedPhotoDetailFragment.this.voteIconView, targetVotedValue, null);
                }
            }
        });
        this.voting = true;
        updateVoteViews();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        PhotoDetailAdapter photoDetailAdapter = new PhotoDetailAdapter(this);
        this.photoDetailAdapter = photoDetailAdapter;
        return photoDetailAdapter;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 111 && i11 == -1) {
            this.photoDetailAdapter.commentNew(intent.getStringExtra("collectionId"));
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        HideDetailStatusManager hideDetailStatusManager = this.hideDetailStatusManager;
        if (hideDetailStatusManager != null) {
            hideDetailStatusManager.unRegister(this);
        }
        super.onDestroy();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z6, Intent intent) {
        if (z6 && "vote".equals(intent.getAction())) {
            vote(intent.hasExtra("voteValue") ? Integer.valueOf(intent.getIntExtra("voteValue", 4)) : null, null);
        } else {
            super.onLoginResult(z6, intent);
        }
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        this.savedInstanceState = bundle;
        this.overlayPlaceholder = view.findViewById(R.id.overlay_placeholder);
        this.detailLayout = view.findViewById(R.id.detail_layout);
        super.onViewCreated(view, bundle);
        view.findViewById(R.id.touch_area).setOnClickListener(this);
        view.findViewById(R.id.image).setOnClickListener(this);
        updateDetailView();
        if (isActive() || bundle != null) {
            setUpSubList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goAllCommentsPage() {
        SharedFile sharedPhoto = getSharedPhoto();
        if (sharedPhoto != null) {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, new CommentListFragment.IntentBuilder().parentType(sharedPhoto.objectType()).parentId(sharedPhoto.id()).background(sharedPhoto.media).backgroundType(NVImageView.TYPE_SHARED_FOLDER_IMAGE).build());
        }
    }

    private void setUpAlbumList(Bundle bundle) {
        NVListView nVListView = (NVListView) getView().findViewById(R.id.album_list);
        this.albumList = nVListView;
        Bundle bundle2 = null;
        nVListView.setDivider(null);
        this.albumList.setDividerHeight(0);
        this.albumList.setSelector(new ColorDrawable(0));
        this.albumList.setOverScrollMode(2);
        this.albumAdapter = new AlbumAdapter(this);
        if (bundle != null) {
            bundle2 = bundle.getBundle("albumAdapter");
        }
        if (bundle2 != null) {
            this.albumAdapter.onRestoreInstanceState(bundle2);
        }
        this.albumAdapter.onAttach();
        this.albumList.setAdapter((ListAdapter) this.albumAdapter);
        this.albumList.setOnItemClickListener(this.albumAdapter);
    }

    private void setUpCommentList(Bundle bundle) {
        NVListView nVListView = (NVListView) getView().findViewById(R.id.comment_list);
        this.commentList = nVListView;
        Bundle bundle2 = null;
        nVListView.setDivider(null);
        this.commentList.setDividerHeight(0);
        this.commentList.setSelector(new ColorDrawable(0));
        this.commentList.setOverScrollMode(2);
        this.commentAdapter = new CommentAdapter(this);
        if (bundle != null) {
            bundle2 = bundle.getBundle("commentAdapter");
        }
        if (bundle2 != null) {
            this.commentAdapter.onRestoreInstanceState(bundle2);
        }
        this.commentAdapter.onAttach();
        this.commentList.setAdapter((ListAdapter) this.commentAdapter);
        this.commentList.setOnItemClickListener(this.commentAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDetailView() {
        boolean z6;
        boolean z10;
        View view = getView();
        if (view == null) {
            return;
        }
        SharedFile sharedPhoto = getSharedPhoto();
        int i10 = 8;
        if (sharedPhoto == null) {
            this.detailLayout.setVisibility(8);
            return;
        }
        View view2 = this.detailLayout;
        if (!this.hideDetailStatusManager.isHideDetail()) {
            i10 = 0;
        }
        view2.setVisibility(i10);
        final TouchImageView touchImageView = (TouchImageView) view.findViewById(R.id.image);
        Media media = sharedPhoto.media;
        if (media != null && media.type == 100) {
            z6 = true;
        } else {
            z6 = false;
        }
        touchImageView.setZoomEnabled(z6);
        final ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.image_loading);
        touchImageView.setImageMedia(sharedPhoto.media);
        Media media2 = sharedPhoto.media;
        if (media2 != null && media2.url != null && touchImageView.getStatus() == 1) {
            if (touchImageView.getStatus() == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            ViewUtils.show(progressBar, z10);
            touchImageView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.sharedfolder.SharedPhotoDetailFragment.1
                @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                public void onImageChanged(NVImageView nVImageView, int i11, Media media3) {
                    ViewUtils.show(progressBar, touchImageView.getStatus() == 1);
                }
            });
        }
        Media media3 = sharedPhoto.media;
        if (media3 != null && media3.isVideo()) {
            ViewGroup.LayoutParams layoutParams = touchImageView.getLayoutParams();
            layoutParams.height = (getContext().getResources().getDisplayMetrics().widthPixels * 3) / 4;
            touchImageView.setLayoutParams(layoutParams);
        }
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) view.findViewById(R.id.user_avatar_layout);
        userAvatarLayout.setUser(sharedPhoto.author);
        userAvatarLayout.setDarkTheme(isDarkTheme(), ViewCompat.MEASURED_STATE_MASK);
        NicknameView nicknameView = (NicknameView) view.findViewById(R.id.nickname);
        nicknameView.setUser(sharedPhoto.author);
        if (nicknameView.getNameView() != null) {
            nicknameView.getNameView().setShadowLayer(1.0f, 0.0f, 1.0f, 855638016);
        }
        view.findViewById(R.id.user_layout).setOnClickListener(this);
        ((TextView) view.findViewById(R.id.title)).setText(sharedPhoto.title);
        ((TextView) view.findViewById(R.id.datetime)).setText(getString(R.string.uploaded_placeholder, DateTimeFormatter.getInstance(getContext()).format(sharedPhoto.createdTime)));
        view.findViewById(R.id.vote_btn).setOnClickListener(this);
        view.findViewById(R.id.comment_btn).setOnClickListener(this);
        updateVoteViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVoteViews() {
        SharedFile sharedPhoto;
        int i10;
        String strValueOf;
        if (getView() == null || (sharedPhoto = getSharedPhoto()) == null) {
            return;
        }
        View viewFindViewById = getView().findViewById(R.id.vote_btn);
        viewFindViewById.setOnClickListener(this);
        viewFindViewById.setOnLongClickListener(this.longClickVote);
        VoteIcon voteIcon = (VoteIcon) getView().findViewById(R.id.vote_icon);
        voteIcon.setVotedValue(sharedPhoto.votedValue);
        voteIcon.setNoneColor(-1);
        int i11 = 0;
        if (this.voting) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        voteIcon.setVisibility(i10);
        SpinningView spinningView = (SpinningView) getView().findViewById(R.id.vote_progress);
        if (spinningView != null) {
            if (!this.voting) {
                i11 = 8;
            }
            spinningView.setVisibility(i11);
        }
        TextView textView = (TextView) getView().findViewById(R.id.vote_count);
        int i12 = sharedPhoto.votesCount;
        if (i12 == 0) {
            strValueOf = getString(R.string.like);
        } else {
            strValueOf = String.valueOf(i12);
        }
        textView.setText(strValueOf);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        if (z6 && getView() != null && !this.subListSetted) {
            setUpSubList();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PhotoDetailAdapter photoDetailAdapter;
        Media media;
        User user;
        Intent intent;
        SharedFile sharedPhoto = getSharedPhoto();
        switch (view.getId()) {
            case R.id.comment_btn /* 2131362645 */:
                if (sharedPhoto != null && (photoDetailAdapter = this.photoDetailAdapter) != null) {
                    photoDetailAdapter.commentNew();
                }
                break;
            case R.id.image /* 2131363563 */:
            case R.id.touch_area /* 2131365619 */:
                if (sharedPhoto != null) {
                    if (view.getId() == R.id.image && (media = sharedPhoto.media) != null && media.isVideo()) {
                        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, NVFullScreenVideoActivity.intent(sharedPhoto.media, sharedPhoto));
                    } else {
                        if (!this.hideDetailStatusManager.isHideDetail()) {
                            Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), android.R.anim.fade_out);
                            animationLoadAnimation.setDuration(200L);
                            this.detailLayout.setVisibility(8);
                            this.detailLayout.startAnimation(animationLoadAnimation);
                            if (!isEmbedFragment() && !isInFlagMode() && getActivity() != null) {
                                getActivity().getActionBar().hide();
                                getActivity().getWindow().addFlags(1024);
                            }
                        } else {
                            Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(getContext(), android.R.anim.fade_in);
                            animationLoadAnimation2.setDuration(200L);
                            this.detailLayout.setVisibility(0);
                            this.detailLayout.startAnimation(animationLoadAnimation2);
                            if (!isEmbedFragment() && !isInFlagMode() && getActivity() != null) {
                                getActivity().getActionBar().show();
                                getActivity().getWindow().clearFlags(1024);
                            }
                        }
                        HideDetailStatusManager hideDetailStatusManager = this.hideDetailStatusManager;
                        hideDetailStatusManager.setHideDetail(!hideDetailStatusManager.isHideDetail());
                    }
                    break;
                }
                break;
            case R.id.user_layout /* 2131365707 */:
                if (sharedPhoto != null && (user = sharedPhoto.author) != null && (intent = UserProfileFragment.intent(this, user)) != null) {
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, SHARED_FOLDER_MEDIA);
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
                    break;
                }
                break;
            case R.id.vote_btn /* 2131365883 */:
                this.voteIconView = view.findViewById(R.id.vote_icon);
                ensureLogin(new Intent("vote"));
                break;
        }
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle((CharSequence) null);
        this.sharedPhotoColorHelper = new SharedPhotoColorHelper(getContext());
        this.sharedFolderHelper = new SharedFolderHelper(this);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.clear();
        menu.add(0, R.string.share, 1, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsActionFlags(2);
        menu.add(0, R.string.edit_title, 0, R.string.edit_title);
        menu.add(0, R.string.save_image, 0, R.string.save_image);
        menu.add(0, R.string.flag_for_review, 0, R.string.flag_for_review);
        menu.add(0, R.string.advanced, 0, R.string.advanced);
        menu.add(0, R.string.delete, 0, R.string.delete);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.shared_photo_detail_layout, viewGroup, false);
    }

    @Override // com.narvii.sharedfolder.HideDetailStatusManager.OnHideStatusChangedListener
    public void onHideDetail(boolean z6) {
        View view;
        int i10;
        if (!isAdded() || (view = this.detailLayout) == null) {
            return;
        }
        if (z6) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        view.setVisibility(i10);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setVisibility(8);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        Object obj;
        SharedFile sharedPhoto = getSharedPhoto();
        if (sharedPhoto == null) {
            return;
        }
        String str = notification.id;
        if (str != null && (notification.obj instanceof SharedFile) && str.equals(sharedPhoto.id()) && (obj = notification.obj) != null) {
            SharedFile sharedFile = (SharedFile) ((SharedFile) obj).m1622clone();
            PhotoDetailAdapter photoDetailAdapter = this.photoDetailAdapter;
            if (photoDetailAdapter != null) {
                photoDetailAdapter.setObject(sharedFile);
            }
        }
        Object obj2 = notification.obj;
        if ((obj2 instanceof Comment) && Utils.isEqualsNotNull(((Comment) obj2).parentId, id())) {
            if (notification.action.equals("new")) {
                sharedPhoto.commentsCount++;
            } else if (notification.action.equals("delete")) {
                sharedPhoto.commentsCount--;
            }
            updateCommentCountView();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z6 = false;
        switch (menuItem.getItemId()) {
            case R.string.advanced /* 2131886237 */:
                new AdvancedOptionDialog.Builder(this).nvObject(getSharedPhoto()).build().show();
                return true;
            case R.string.delete /* 2131887008 */:
                final SharedFile sharedPhoto = getSharedPhoto();
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(R.string.dialog_delete_confirm);
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.sharedfolder.SharedPhotoDetailFragment.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(sharedPhoto.id());
                        SharedPhotoDetailFragment sharedPhotoDetailFragment = SharedPhotoDetailFragment.this;
                        sharedPhotoDetailFragment.sharedFolderHelper.deletePhotos(sharedPhotoDetailFragment, arrayList, new Callback() { // from class: com.narvii.sharedfolder.SharedPhotoDetailFragment.5.1
                            @Override // com.narvii.util.Callback
                            public void call(Object obj) {
                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                Callback<SharedFile> callback = SharedPhotoDetailFragment.this.onPhotoDeleteCallback;
                                if (callback != null) {
                                    callback.call(sharedPhoto);
                                }
                                if (SharedPhotoDetailFragment.this.getBooleanParam("gallery")) {
                                    return;
                                }
                                SharedPhotoDetailFragment.this.finish();
                            }
                        });
                    }
                }, SupportMenu.CATEGORY_MASK);
                aCMAlertDialog.show();
                return true;
            case R.string.edit_title /* 2131887180 */:
                final InputDialog inputDialog = new InputDialog(getContext()) { // from class: com.narvii.sharedfolder.SharedPhotoDetailFragment.3
                    @Override // com.narvii.widget.InputDialog
                    protected boolean allowEditEmpty() {
                        return true;
                    }
                };
                inputDialog.setTitle(R.string.title);
                inputDialog.edit.setHint(R.string.input_text_here);
                SharedFile sharedPhoto2 = getSharedPhoto();
                if (sharedPhoto2 != null && !TextUtils.isEmpty(sharedPhoto2.title)) {
                    inputDialog.edit.setText(sharedPhoto2.title);
                    inputDialog.edit.setSelection(sharedPhoto2.title.length());
                }
                inputDialog.addButton(R.string.cancel, 0, (View.OnClickListener) null);
                inputDialog.addButton(getString(R.string.done), 4, (View.OnClickListener) null).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.sharedfolder.SharedPhotoDetailFragment.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        SharedPhotoDetailFragment sharedPhotoDetailFragment = SharedPhotoDetailFragment.this;
                        sharedPhotoDetailFragment.sharedFolderHelper.updateSharedPhotoTitle(sharedPhotoDetailFragment.id(), inputDialog.edit.getText().toString(), new Callback() { // from class: com.narvii.sharedfolder.SharedPhotoDetailFragment.4.1
                            @Override // com.narvii.util.Callback
                            public void call(Object obj) {
                                try {
                                    inputDialog.dismiss();
                                } catch (Exception unused) {
                                }
                            }
                        });
                    }
                });
                inputDialog.show();
                break;
            case R.string.flag_for_review /* 2131888001 */:
                new FlagReportOptionDialog.Builder(this).nvObject(getSharedPhoto()).build().show();
                return true;
            case R.string.save_image /* 2131890236 */:
                SharedFile sharedPhoto3 = getSharedPhoto();
                if (sharedPhoto3 == null) {
                    return true;
                }
                SaveImageFragment saveImageFragment = (SaveImageFragment) getFragmentManager().m0("saveImage");
                if (saveImageFragment == null) {
                    saveImageFragment = new SaveImageFragment();
                    getFragmentManager().q().e(saveImageFragment, "saveImage").j();
                    getFragmentManager().i0();
                }
                saveImageFragment.save(sharedPhoto3.media);
                ShareViewHelper shareViewHelper = new ShareViewHelper(this);
                shareViewHelper.source = "Fullscreen Media";
                shareViewHelper.statContent = StatisticHelper.getStatisticSource(this, null, 109);
                shareViewHelper.stat(null, "Save Image");
                return true;
            case R.string.share /* 2131890349 */:
                SharedFile sharedPhoto4 = getSharedPhoto();
                if (sharedPhoto4 != null && sharedPhoto4.media.isVideo()) {
                    z6 = true;
                }
                ShareDialog.getShareDialogFromPhoto(this, sharedPhoto4, !z6).setSource("Fullscreen Media").show();
                return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        boolean z10;
        boolean z11;
        Media media;
        super.onPrepareOptionsMenu(menu);
        SharedFile sharedPhoto = getSharedPhoto();
        boolean z12 = false;
        if (sharedPhoto != null && sharedPhoto.status != 9) {
            z6 = true;
        } else {
            z6 = false;
        }
        User userProfile = ((AccountService) getService("account")).getUserProfile();
        boolean zIsMine = isMine(sharedPhoto, userProfile);
        menu.findItem(R.string.share).setVisible(z6);
        menu.findItem(R.string.edit_title).setVisible(zIsMine);
        MenuItem menuItemFindItem = menu.findItem(R.string.save_image);
        if (sharedPhoto != null && (media = sharedPhoto.media) != null && media.type == 100) {
            z10 = true;
        } else {
            z10 = false;
        }
        menuItemFindItem.setVisible(z10);
        MenuItem menuItemFindItem2 = menu.findItem(R.string.flag_for_review);
        if (z6 && !zIsMine) {
            z11 = true;
        } else {
            z11 = false;
        }
        menuItemFindItem2.setVisible(z11);
        MenuItem menuItemFindItem3 = menu.findItem(R.string.advanced);
        if (sharedPhoto != null && userProfile != null && userProfile.isCurator()) {
            z12 = true;
        }
        menuItemFindItem3.setVisible(z12);
        menu.findItem(R.string.delete).setVisible(zIsMine);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        Bundle bundleOnSaveInstanceState;
        Bundle bundleOnSaveInstanceState2;
        super.onSaveInstanceState(bundle);
        CommentAdapter commentAdapter = this.commentAdapter;
        if (commentAdapter != null && (bundleOnSaveInstanceState2 = commentAdapter.onSaveInstanceState()) != null) {
            bundle.putBundle("commentAdapter", bundleOnSaveInstanceState2);
        }
        AlbumAdapter albumAdapter = this.albumAdapter;
        if (albumAdapter != null && (bundleOnSaveInstanceState = albumAdapter.onSaveInstanceState()) != null) {
            bundle.putBundle("albumAdapter", bundleOnSaveInstanceState);
        }
    }
}
