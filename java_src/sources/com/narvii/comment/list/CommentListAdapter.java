package com.narvii.comment.list;

import ai.medialab.medialabads2.banners.MediaLabAdView;
import android.app.AlertDialog;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Rect;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.CommentStickerDetailFragment;
import com.narvii.comment.post.CommentPost;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.CommunityHelper;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.media.MediaGalleryOptionActivity;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
import com.narvii.model.CommunityObjectInGlobal;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.CommentListResponse;
import com.narvii.modulization.Module;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.optionmenu.OptionMenuFragment;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.story.detail.VoteHelper;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.StatisticHelper;
import com.narvii.util.StringUtils;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.statistics.constants.UserPropConstants;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.ws.WsMessage;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.NVListView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CommentListAdapter extends NVPagedAdapter<Comment, CommentListResponse> implements NotificationListener, CommentPostActivity.StatusListener {
    public static final String COMMENT = "comment";
    public static final int STATUS_CODE_OPEN_STICKER_DETAIL = 102;
    static final int SUBCOMMENT_PAGE_SIZE = 25;
    public static final int TYPE_ADS = 24;
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

    private class CommentTagClickListener extends DefaultTagClickListener {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        private CommentTagClickListener() {
        }

        @Override // com.narvii.util.text.DefaultTagClickListener
        protected void startActivity(View view, Intent intent) {
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(CommentListAdapter.this, intent);
        }
    }

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    private void scrollCommentAddAtTop() {
        scrollCommentAddAtTop(-1);
    }

    protected boolean allowViewStickerDetail() {
        return true;
    }

    protected int bottomPadding() {
        return 0;
    }

    protected boolean commentDisableMedia() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<Comment> dataType() {
        return Comment.class;
    }

    public List<? extends Comment> enhanceList(List<Comment> list) {
        return list;
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

    protected int getListEndItemTextColor(boolean z6) {
        return z6 ? -1 : -7829368;
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

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        this.list = null;
        super.notifyDataSetChanged();
    }

    /* JADX WARN: Code duplicated, block: B:159:0x0284  */
    /* JADX WARN: Code duplicated, block: B:167:0x029e  */
    /* JADX WARN: Code duplicated, block: B:169:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:175:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:178:0x02de  */
    /* JADX WARN: Code duplicated, block: B:192:0x031a  */
    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        int i11;
        int i12;
        boolean z6;
        int i13;
        AccountService accountService;
        int i14;
        if (obj instanceof Comment) {
            final Comment comment = (Comment) obj;
            int i15 = 0;
            if (view2 == null) {
                return false;
            }
            if (view2 == view || view2.getId() == R.id.comment_item) {
                boolean z10 = comment.type == 3 && comment.getCommentSticker() == null;
                User user = comment.author;
                StickerCollection stickerCollection = null;
                boolean zIsEqualsNotNull = Utils.isEqualsNotNull(user == null ? null : user.uid, this.account.getUserId());
                boolean z11 = this.account.getUserProfile() != null && this.account.getUserProfile().isCurator();
                boolean zOwnParent = ownParent();
                if (z10 && !zIsEqualsNotNull && !z11 && !zOwnParent) {
                    NVToast.makeText(getContext(), R.string.comment_not_available, 1).show();
                    return true;
                }
                final int[] iArr = new int[7];
                boolean zIsStickerComment = comment.isStickerComment();
                CommentItem commentItem = view instanceof CommentItem ? (CommentItem) view : (CommentItem) view.findViewById(R.id.comment_item);
                boolean zHasVotes = commentItem != null ? commentItem.hasVotes() : false;
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                if (zIsEqualsNotNull) {
                    iArr[0] = R.string.edit;
                    actionSheetDialog.addItem(R.string.edit, false);
                    i11 = 1;
                } else {
                    i11 = 0;
                }
                int i16 = i11 + 1;
                iArr[i11] = R.string.reply;
                actionSheetDialog.addItem(R.string.reply, false);
                if (!zHasVotes && !isAnnouncement()) {
                    if (comment.votedValue == 1) {
                        i14 = i11 + 2;
                        iArr[i16] = R.string.unlike;
                        actionSheetDialog.addItem(R.string.unlike, false);
                    } else {
                        i14 = i11 + 2;
                        iArr[i16] = R.string.like;
                        actionSheetDialog.addItem(R.string.like, false);
                    }
                    i16 = i14;
                }
                try {
                    if (!zHasVotes) {
                        if (comment.votesSum > 0) {
                            i12 = i16 + 1;
                            iArr[i16] = R.string.comment_see_all_likes;
                            actionSheetDialog.addItem(R.string.comment_see_all_likes, false);
                        }
                        if (comment.isStickerComment() || comment.getCommentSticker() == null) {
                            z6 = true;
                        } else {
                            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(comment.extensions, "sticker", "stickerCollectionSummary");
                            if (jsonNodeNodePath != null) {
                                try {
                                    stickerCollection = (StickerCollection) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, StickerCollection.class);
                                } catch (JsonProcessingException e) {
                                    e.printStackTrace();
                                }
                            }
                            if (stickerCollection == null || !stickerCollection.canBeFlagged()) {
                                z6 = false;
                            } else {
                                z6 = true;
                            }
                        }
                        if (!zIsEqualsNotNull && !isAnnouncement() && z6) {
                            iArr[i16] = R.string.flag_for_review;
                            actionSheetDialog.addItem(R.string.flag_for_review, false);
                            i16++;
                        }
                        if (zIsEqualsNotNull || zOwnParent) {
                            iArr[i16] = R.string.delete;
                            actionSheetDialog.addItem(R.string.delete, true);
                            i16++;
                        }
                        if (zIsStickerComment) {
                            if (allowViewStickerDetail() && comment.getCommentSticker() != null) {
                                i13 = i16 + 1;
                                iArr[i16] = R.string.view_detail;
                                actionSheetDialog.addItem(R.string.view_detail, false);
                            }
                            accountService = (AccountService) this.context.getService("account");
                            if (accountService.getUserProfile() != null && accountService.getUserProfile().isCurator() && !isGlobalInteractionScope() && !isAnnouncement()) {
                                iArr[i16] = R.string.advanced;
                                actionSheetDialog.addItem(R.string.advanced, 0, R.layout.dialog_action_moderation);
                            }
                            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.comment.list.CommentListAdapter.4
                                public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                                    if (p1 == null) {
                                        return;
                                    }
                                    p0.startActivityForResult(p1, p5);
                                }

                                public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                                    if (p1 == null) {
                                        return;
                                    }
                                    p0.startActivity(p1);
                                }

                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i17) {
                                    switch (iArr[i17]) {
                                        case R.string.advanced /* 2131886237 */:
                                            new AdvancedOptionDialog.Builder(((NVAdapter) CommentListAdapter.this).context).nvObject(comment).build().show();
                                            break;
                                        case R.string.comment_see_all_likes /* 2131886832 */:
                                        case R.string.comment_see_all_votes /* 2131886833 */:
                                            NVObject parent = CommentListAdapter.this.getParent();
                                            Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                                            intent.putExtra("id", parent.id());
                                            intent.putExtra("type", parent.objectType());
                                            intent.putExtra("commentId", comment.id());
                                            intent.putExtra("feedType", parent instanceof Blog ? ((Blog) parent).type : 0);
                                            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(CommentListAdapter.this, intent);
                                            break;
                                        case R.string.copy /* 2131886920 */:
                                            ((ClipboardManager) CommentListAdapter.this.getContext().getSystemService("clipboard")).setText(comment.content);
                                            break;
                                        case R.string.delete /* 2131887008 */:
                                            CommentListAdapter.this.delete(comment, false);
                                            break;
                                        case R.string.edit /* 2131887160 */:
                                            CommentListAdapter.this.edit(comment);
                                            break;
                                        case R.string.flag_for_review /* 2131888001 */:
                                            CommentListAdapter.this.flagForReview(comment);
                                            break;
                                        case R.string.like /* 2131889036 */:
                                            CommentListAdapter.this.vote(comment, 1, true);
                                            break;
                                        case R.string.reply /* 2131890167 */:
                                            CommentListAdapter.this.reply(comment);
                                            break;
                                        case R.string.unlike /* 2131890702 */:
                                            CommentListAdapter.this.vote(comment, 0, true);
                                            break;
                                        case R.string.view_detail /* 2131890799 */:
                                            Intent intent2 = FragmentWrapperActivity.intent(CommentStickerDetailFragment.class);
                                            intent2.putExtra("sticker", JacksonUtils.writeAsString(comment.getCommentSticker()));
                                            intent2.putExtra(CommentListAdapter.COMMENT, JacksonUtils.writeAsString(comment));
                                            intent2.putExtra("hideCollectionInfo", CommentListAdapter.this.isAnnouncement());
                                            if (!(((NVAdapter) CommentListAdapter.this).context instanceof NVFragment)) {
                                                CommentListAdapter.this.onViewStickerClicked(intent2);
                                            } else {
                                                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1((NVFragment) ((NVAdapter) CommentListAdapter.this).context, intent2, 102);
                                            }
                                            break;
                                    }
                                }
                            });
                            actionSheetDialog.show();
                            if (view.getParent() instanceof NVListView) {
                                ((NVListView) view.getParent()).startBlinkLong(view);
                            }
                            return true;
                        }
                        i13 = i16 + 1;
                        iArr[i16] = R.string.copy;
                        actionSheetDialog.addItem(R.string.copy, false);
                        i16 = i13;
                        accountService = (AccountService) this.context.getService("account");
                        if (accountService.getUserProfile() != null) {
                            iArr[i16] = R.string.advanced;
                            actionSheetDialog.addItem(R.string.advanced, 0, R.layout.dialog_action_moderation);
                        }
                        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.comment.list.CommentListAdapter.4
                            public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                                if (p1 == null) {
                                    return;
                                }
                                p0.startActivityForResult(p1, p5);
                            }

                            public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                                if (p1 == null) {
                                    return;
                                }
                                p0.startActivity(p1);
                            }

                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i17) {
                                switch (iArr[i17]) {
                                    case R.string.advanced /* 2131886237 */:
                                        new AdvancedOptionDialog.Builder(((NVAdapter) CommentListAdapter.this).context).nvObject(comment).build().show();
                                        break;
                                    case R.string.comment_see_all_likes /* 2131886832 */:
                                    case R.string.comment_see_all_votes /* 2131886833 */:
                                        NVObject parent = CommentListAdapter.this.getParent();
                                        Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                                        intent.putExtra("id", parent.id());
                                        intent.putExtra("type", parent.objectType());
                                        intent.putExtra("commentId", comment.id());
                                        intent.putExtra("feedType", parent instanceof Blog ? ((Blog) parent).type : 0);
                                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(CommentListAdapter.this, intent);
                                        break;
                                    case R.string.copy /* 2131886920 */:
                                        ((ClipboardManager) CommentListAdapter.this.getContext().getSystemService("clipboard")).setText(comment.content);
                                        break;
                                    case R.string.delete /* 2131887008 */:
                                        CommentListAdapter.this.delete(comment, false);
                                        break;
                                    case R.string.edit /* 2131887160 */:
                                        CommentListAdapter.this.edit(comment);
                                        break;
                                    case R.string.flag_for_review /* 2131888001 */:
                                        CommentListAdapter.this.flagForReview(comment);
                                        break;
                                    case R.string.like /* 2131889036 */:
                                        CommentListAdapter.this.vote(comment, 1, true);
                                        break;
                                    case R.string.reply /* 2131890167 */:
                                        CommentListAdapter.this.reply(comment);
                                        break;
                                    case R.string.unlike /* 2131890702 */:
                                        CommentListAdapter.this.vote(comment, 0, true);
                                        break;
                                    case R.string.view_detail /* 2131890799 */:
                                        Intent intent2 = FragmentWrapperActivity.intent(CommentStickerDetailFragment.class);
                                        intent2.putExtra("sticker", JacksonUtils.writeAsString(comment.getCommentSticker()));
                                        intent2.putExtra(CommentListAdapter.COMMENT, JacksonUtils.writeAsString(comment));
                                        intent2.putExtra("hideCollectionInfo", CommentListAdapter.this.isAnnouncement());
                                        if (!(((NVAdapter) CommentListAdapter.this).context instanceof NVFragment)) {
                                            CommentListAdapter.this.onViewStickerClicked(intent2);
                                        } else {
                                            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1((NVFragment) ((NVAdapter) CommentListAdapter.this).context, intent2, 102);
                                        }
                                        break;
                                }
                            }
                        });
                        actionSheetDialog.show();
                        if (view.getParent() instanceof NVListView) {
                            ((NVListView) view.getParent()).startBlinkLong(view);
                        }
                        return true;
                    }
                    i12 = i16 + 1;
                    iArr[i16] = R.string.comment_see_all_votes;
                    actionSheetDialog.addItem(R.string.comment_see_all_votes, false);
                    if (zIsStickerComment) {
                        if (allowViewStickerDetail()) {
                            i13 = i16 + 1;
                            iArr[i16] = R.string.view_detail;
                            actionSheetDialog.addItem(R.string.view_detail, false);
                        }
                        accountService = (AccountService) this.context.getService("account");
                        if (accountService.getUserProfile() != null) {
                            iArr[i16] = R.string.advanced;
                            actionSheetDialog.addItem(R.string.advanced, 0, R.layout.dialog_action_moderation);
                        }
                        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.comment.list.CommentListAdapter.4
                            public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                                if (p1 == null) {
                                    return;
                                }
                                p0.startActivityForResult(p1, p5);
                            }

                            public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                                if (p1 == null) {
                                    return;
                                }
                                p0.startActivity(p1);
                            }

                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i17) {
                                switch (iArr[i17]) {
                                    case R.string.advanced /* 2131886237 */:
                                        new AdvancedOptionDialog.Builder(((NVAdapter) CommentListAdapter.this).context).nvObject(comment).build().show();
                                        break;
                                    case R.string.comment_see_all_likes /* 2131886832 */:
                                    case R.string.comment_see_all_votes /* 2131886833 */:
                                        NVObject parent = CommentListAdapter.this.getParent();
                                        Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                                        intent.putExtra("id", parent.id());
                                        intent.putExtra("type", parent.objectType());
                                        intent.putExtra("commentId", comment.id());
                                        intent.putExtra("feedType", parent instanceof Blog ? ((Blog) parent).type : 0);
                                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(CommentListAdapter.this, intent);
                                        break;
                                    case R.string.copy /* 2131886920 */:
                                        ((ClipboardManager) CommentListAdapter.this.getContext().getSystemService("clipboard")).setText(comment.content);
                                        break;
                                    case R.string.delete /* 2131887008 */:
                                        CommentListAdapter.this.delete(comment, false);
                                        break;
                                    case R.string.edit /* 2131887160 */:
                                        CommentListAdapter.this.edit(comment);
                                        break;
                                    case R.string.flag_for_review /* 2131888001 */:
                                        CommentListAdapter.this.flagForReview(comment);
                                        break;
                                    case R.string.like /* 2131889036 */:
                                        CommentListAdapter.this.vote(comment, 1, true);
                                        break;
                                    case R.string.reply /* 2131890167 */:
                                        CommentListAdapter.this.reply(comment);
                                        break;
                                    case R.string.unlike /* 2131890702 */:
                                        CommentListAdapter.this.vote(comment, 0, true);
                                        break;
                                    case R.string.view_detail /* 2131890799 */:
                                        Intent intent2 = FragmentWrapperActivity.intent(CommentStickerDetailFragment.class);
                                        intent2.putExtra("sticker", JacksonUtils.writeAsString(comment.getCommentSticker()));
                                        intent2.putExtra(CommentListAdapter.COMMENT, JacksonUtils.writeAsString(comment));
                                        intent2.putExtra("hideCollectionInfo", CommentListAdapter.this.isAnnouncement());
                                        if (!(((NVAdapter) CommentListAdapter.this).context instanceof NVFragment)) {
                                            CommentListAdapter.this.onViewStickerClicked(intent2);
                                        } else {
                                            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1((NVFragment) ((NVAdapter) CommentListAdapter.this).context, intent2, 102);
                                        }
                                        break;
                                }
                            }
                        });
                        actionSheetDialog.show();
                        if (view.getParent() instanceof NVListView) {
                            ((NVListView) view.getParent()).startBlinkLong(view);
                        }
                        return true;
                    }
                    i13 = i16 + 1;
                    iArr[i16] = R.string.copy;
                    actionSheetDialog.addItem(R.string.copy, false);
                    actionSheetDialog.show();
                } catch (Throwable th) {
                    Log.e(COMMENT, th);
                }
                i16 = i12;
                if (comment.isStickerComment()) {
                    z6 = true;
                } else {
                    z6 = true;
                }
                if (!zIsEqualsNotNull) {
                    iArr[i16] = R.string.flag_for_review;
                    actionSheetDialog.addItem(R.string.flag_for_review, false);
                    i16++;
                }
                if (zIsEqualsNotNull) {
                    iArr[i16] = R.string.delete;
                    actionSheetDialog.addItem(R.string.delete, true);
                    i16++;
                } else {
                    iArr[i16] = R.string.delete;
                    actionSheetDialog.addItem(R.string.delete, true);
                    i16++;
                }
                i16 = i13;
                accountService = (AccountService) this.context.getService("account");
                if (accountService.getUserProfile() != null) {
                    iArr[i16] = R.string.advanced;
                    actionSheetDialog.addItem(R.string.advanced, 0, R.layout.dialog_action_moderation);
                }
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.comment.list.CommentListAdapter.4
                    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivityForResult(p1, p5);
                    }

                    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i17) {
                        switch (iArr[i17]) {
                            case R.string.advanced /* 2131886237 */:
                                new AdvancedOptionDialog.Builder(((NVAdapter) CommentListAdapter.this).context).nvObject(comment).build().show();
                                break;
                            case R.string.comment_see_all_likes /* 2131886832 */:
                            case R.string.comment_see_all_votes /* 2131886833 */:
                                NVObject parent = CommentListAdapter.this.getParent();
                                Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                                intent.putExtra("id", parent.id());
                                intent.putExtra("type", parent.objectType());
                                intent.putExtra("commentId", comment.id());
                                intent.putExtra("feedType", parent instanceof Blog ? ((Blog) parent).type : 0);
                                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(CommentListAdapter.this, intent);
                                break;
                            case R.string.copy /* 2131886920 */:
                                ((ClipboardManager) CommentListAdapter.this.getContext().getSystemService("clipboard")).setText(comment.content);
                                break;
                            case R.string.delete /* 2131887008 */:
                                CommentListAdapter.this.delete(comment, false);
                                break;
                            case R.string.edit /* 2131887160 */:
                                CommentListAdapter.this.edit(comment);
                                break;
                            case R.string.flag_for_review /* 2131888001 */:
                                CommentListAdapter.this.flagForReview(comment);
                                break;
                            case R.string.like /* 2131889036 */:
                                CommentListAdapter.this.vote(comment, 1, true);
                                break;
                            case R.string.reply /* 2131890167 */:
                                CommentListAdapter.this.reply(comment);
                                break;
                            case R.string.unlike /* 2131890702 */:
                                CommentListAdapter.this.vote(comment, 0, true);
                                break;
                            case R.string.view_detail /* 2131890799 */:
                                Intent intent2 = FragmentWrapperActivity.intent(CommentStickerDetailFragment.class);
                                intent2.putExtra("sticker", JacksonUtils.writeAsString(comment.getCommentSticker()));
                                intent2.putExtra(CommentListAdapter.COMMENT, JacksonUtils.writeAsString(comment));
                                intent2.putExtra("hideCollectionInfo", CommentListAdapter.this.isAnnouncement());
                                if (!(((NVAdapter) CommentListAdapter.this).context instanceof NVFragment)) {
                                    CommentListAdapter.this.onViewStickerClicked(intent2);
                                } else {
                                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1((NVFragment) ((NVAdapter) CommentListAdapter.this).context, intent2, 102);
                                }
                                break;
                        }
                    }
                });
                if (view.getParent() instanceof NVListView) {
                    ((NVListView) view.getParent()).startBlinkLong(view);
                }
                return true;
            }
            if (view2.getId() == R.id.expand) {
                if (!this.expands.remove(comment.id())) {
                    this.expands.add(comment.id());
                }
                notifyDataSetChanged();
                return true;
            }
            if (view2.getId() == R.id.avatar || view2.getId() == R.id.nickname) {
                User user2 = comment.author;
                if (user2 != null && user2.isGlobal) {
                    i15 = 1;
                }
                int communityId = ((ConfigService) getService("config")).getCommunityId();
                if (i15 == 0 && communityId != 0 && !this.communityHelper.checkCommunityJoined(communityId)) {
                    return true;
                }
                logClickEvent(comment.author, ActSemantic.checkDetail);
                Intent intent = UserProfileFragment.intent(this, comment.author);
                if (intent == null) {
                    return true;
                }
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.sourceComment);
                NVContext nVContext = this.context;
                if (nVContext instanceof FeedDetailFragment) {
                    ((FeedDetailFragment) nVContext).blockPass.set(Boolean.TRUE);
                }
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                return true;
            }
            if (view2.getId() == R.id.image1 || view2.getId() == R.id.image2 || view2.getId() == R.id.image3 || view2.getId() == R.id.image4 || view2.getId() == R.id.image5) {
                if (view2.getId() == R.id.image2) {
                    i15 = 1;
                } else if (view2.getId() == R.id.image3) {
                    i15 = 2;
                } else if (view2.getId() == R.id.image4) {
                    i15 = 3;
                } else if (view2.getId() == R.id.image5) {
                    i15 = 4;
                }
                Media media = comment.mediaList.get(i15);
                if (media.isVideo()) {
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, NVFullScreenVideoActivity.intent(media, comment, (Class<? extends NVFragment>) OptionMenuFragment.class));
                } else {
                    Intent intent2 = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
                    intent2.putExtra("parent", JacksonUtils.writeAsString(comment));
                    intent2.putExtra("parentClass", Comment.class);
                    intent2.putExtra("list", JacksonUtils.writeAsString(comment.mediaList));
                    intent2.putExtra("position", i15);
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent2);
                }
                return true;
            }
            if (view2.getId() == R.id.vote_up || view2.getId() == R.id.vote_down) {
                if (this.voting.contains(comment.id())) {
                    return true;
                }
                int i17 = view2.getId() == R.id.vote_down ? -1 : 1;
                if (comment.votedValue * i17 > 0) {
                    i17 = 0;
                }
                vote(comment, i17, false);
                return true;
            }
            if (view2.getId() == R.id.vote_heart2) {
                vote(comment, comment.votedValue != 1 ? 1 : 0, true);
            }
        } else if (obj instanceof ReadMore) {
            loadSubComment(((ReadMore) obj).head);
        }
        return super.onItemClick(listAdapter, i10, obj, view, view2);
    }

    protected void onNestedCollapse() {
    }

    @Override // com.narvii.comment.post.CommentPostActivity.StatusListener
    public void onPostDone(CommentPostActivity commentPostActivity, boolean z6) {
        CommentPostActivity.setStatusListener(null);
        this.focusingCommentRect = null;
        this.bottomPadding = bottomPadding();
        notifyDataSetChanged();
        if (z6) {
            this.pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_COMMENT);
        }
    }

    protected void onReply() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<CommentListResponse> responseType() {
        return CommentListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    public boolean showListEnd(int i10) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void delete(final Comment comment, boolean z6) {
        if (z6) {
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.show();
            this.commentHelper.sendDeleteCommentRequest(comment, progressDialog.dismissListener);
        } else {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setMessage(R.string.dialog_delete_confirm);
            builder.setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.narvii.comment.list.CommentListAdapter.8
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    CommentListAdapter.this.delete(comment, true);
                }
            });
            builder.setNegativeButton(android.R.string.no, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
            builder.show();
        }
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
            intent.putExtra("feed", JacksonUtils.writeAsString(getParent()));
        }
        intent.putExtra(EventConstants.CommentPost.STAT_PARENT_TYPE, StatisticHelper.getStatisticSource(this, null, comment.parentType));
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new CommentPost(comment)));
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, isAnnouncement());
        LoggingSource loggingSource = this.loggingSource;
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, loggingSource == null ? null : loggingSource.name());
        LoggingOrigin loggingOrigin = this.loggingOrigin;
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, loggingOrigin != null ? loggingOrigin.name() : null);
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        setFocusingComment(comment);
        CommentPostActivity.setStatusListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flagForReview(Comment comment) {
        new FlagReportOptionDialog.Builder(this.context).nvObject(comment).build().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollCommentAddAtTop(int i10) {
        int i11;
        int actionBarOverlaySize;
        int statusBarOverlaySize;
        ListAdapter adapter = this.listView.getAdapter();
        int count = adapter.getCount();
        int i12 = 0;
        while (true) {
            if (i12 >= count) {
                i12 = -1;
                break;
            } else if (adapter.getItem(i12) == DetailAdapter.COMMENT_ADD) {
                break;
            } else {
                i12++;
            }
        }
        if (i12 != -1) {
            int firstVisiblePosition = this.listView.getFirstVisiblePosition();
            int childCount = this.listView.getChildCount();
            if (i10 == -1) {
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
                    i10 = 0;
                }
                i10 = statusBarOverlaySize + actionBarOverlaySize;
            }
            if (firstVisiblePosition < 0 || (i11 = i12 - firstVisiblePosition) < 0 || i11 >= childCount) {
                if (isNestedScrollMode()) {
                    onNestedCollapse();
                }
                this.listView.setSelectionFromTop(i12, i10);
            } else {
                View childAt = this.listView.getChildAt(i11);
                if (!isNestedScrollMode()) {
                    this.listView.smoothScrollBy(childAt != null ? childAt.getTop() - i10 : 0, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
                } else {
                    onNestedCollapse();
                    this.listView.smoothScrollBy(childAt != null ? childAt.getTop() : 0, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
                }
            }
        }
    }

    private int scrollParentAndReturnUnconsumedDistance(int i10) {
        ListView listView = this.listView;
        if (!(listView instanceof NVListView)) {
            return i10;
        }
        NVListView nVListView = (NVListView) listView;
        int[] iArr = new int[2];
        nVListView.startNestedScroll(2);
        nVListView.dispatchNestedPreScroll(0, i10, iArr, null);
        int i11 = iArr[1];
        int i12 = i10 - i11;
        nVListView.dispatchNestedScroll(0, i12, 0, i11, null);
        nVListView.stopNestedScroll();
        return i12;
    }

    protected List<?> buildList(List<? extends Comment> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        List<? extends Comment> listEnhanceList = enhanceList(list);
        ArrayList arrayList = new ArrayList();
        if (this.dividerAtTop) {
            arrayList.add(DIVIDER);
        }
        for (Comment comment : listEnhanceList) {
            arrayList.add(comment);
            List<Comment> list2 = comment.subcommentsPreview;
            if (list2 != null && list2.size() > 0) {
                if (this.subloading.containsValue(comment.id())) {
                    arrayList.add(SUBLOADING);
                } else if (comment.subcommentsCount <= comment.subcommentsPreview.size() || comment.subcommentIsEnd) {
                    arrayList.add(DIVIDER);
                } else {
                    arrayList.add(new ReadMore(comment));
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

    @Override // com.narvii.list.NVPagedAdapter
    public View createListEndItem(ViewGroup viewGroup, View view, int i10) {
        if (i10 != 0) {
            View viewCreateView = createView(R.layout.list_bottom_placeholder, viewGroup, view, "placeholder");
            viewCreateView.getLayoutParams().height = -2;
            return viewCreateView;
        }
        View viewCreateListEndItem = super.createListEndItem(viewGroup, view, i10);
        String string = isQuestionAndAnswer() ? getContext().getString(R.string.detail_0_answers) : getContext().getString(R.string.detail_0_comments);
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

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public Object getItem(int i10) {
        return (this.bottomPadding <= 0 || i10 != getCount() + (-1)) ? super.getItem(i10) : BOTTOM_PADDING;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        if (obj instanceof Comment) {
            Comment comment = (Comment) obj;
            if (comment.type == 11) {
                return 6;
            }
            return isSubComment(comment) ? 1 : 0;
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

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        if (this.listView == null && (viewGroup instanceof ListView)) {
            this.listView = (ListView) viewGroup;
        }
        boolean z6 = false;
        if (!(obj instanceof Comment)) {
            if (obj instanceof ReadMore) {
                View viewCreateView = createView(R.layout.comment_readmore, viewGroup, view);
                TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) getContext().getString(R.string.comment_readmore));
                spannableStringBuilder.setSpan(new UnderlineSpan(), 0, spannableStringBuilder.length(), 33);
                StringBuilder sb = new StringBuilder();
                sb.append(" (");
                Comment comment = ((ReadMore) obj).head;
                sb.append(comment.subcommentsCount - comment.subcommentsPreview.size());
                sb.append(")");
                spannableStringBuilder.append((CharSequence) sb.toString());
                textView.setText(spannableStringBuilder);
                textView.setTextColor(ContextCompat.getColor(getContext(), this.darkTheme ? R.color.text_clickable_white : R.color.text_clickable));
                return viewCreateView;
            }
            if (obj == DIVIDER) {
                boolean z10 = this.darkTheme;
                return createView(z10 ? R.layout.list_divider_dark : R.layout.list_divider, viewGroup, view, Boolean.valueOf(z10));
            }
            if (obj == SUBDIVIDER) {
                View viewCreateView2 = createView(R.layout.comment_sub_divider, viewGroup, view);
                viewCreateView2.findViewById(R.id.list_divider).setBackgroundColor(ContextCompat.getColor(getContext(), this.darkTheme ? R.color.list_divider_dark : R.color.list_divider));
                return viewCreateView2;
            }
            if (obj == SUBLOADING) {
                return createView(R.layout.comment_sub_loading, viewGroup, view);
            }
            if (obj != BOTTOM_PADDING) {
                return null;
            }
            View viewCreateView3 = createView(R.layout.list_bottom_placeholder, viewGroup, view);
            viewCreateView3.getLayoutParams().height = this.bottomPadding;
            viewCreateView3.requestLayout();
            return viewCreateView3;
        }
        Comment comment2 = (Comment) obj;
        View viewCreateView4 = createView(isSubComment(comment2) ? subCommentLayoutId() : headerCommentLayoutId(), viewGroup, view);
        if (comment2.type == 11 || (viewCreateView4 instanceof MediaLabAdView)) {
            return this.inflater.inflate(R.layout.ad_item, viewGroup, false);
        }
        CommentItem commentItem = viewCreateView4 instanceof CommentItem ? (CommentItem) viewCreateView4 : (CommentItem) viewCreateView4.findViewById(R.id.comment_item);
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
        if (!isSubComment(comment2) && isQuestionAndAnswer()) {
            z6 = true;
        }
        commentItem.setHasVotes(z6);
        if (z6) {
            commentItem.findViewById(R.id.vote_up).setOnClickListener(this.subviewClickListener);
            commentItem.findViewById(R.id.vote_down).setOnClickListener(this.subviewClickListener);
        }
        commentItem.setVoting(this.voting.contains(comment2.id()));
        String userId = this.account.getUserId();
        User user = comment2.author;
        commentItem.setIsMine(Utils.isEqualsNotNull(userId, user == null ? null : user.uid));
        commentItem.setIsOwner(isOwner(comment2));
        commentItem.setDarkTheme(this.darkTheme, this.backgroundColor);
        if (this.tagClickListener == null) {
            this.tagClickListener = new CommentTagClickListener();
        }
        commentItem.setComment(comment2, this.tagClickListener);
        commentItem.setExpand(this.expands.contains(comment2.id()));
        return viewCreateView4;
    }

    protected boolean isSubComment(Comment comment) {
        return comment.headCommentId != null;
    }

    @Override // com.narvii.list.NVPagedAdapter
    public List<?> list() {
        if (this.list == null) {
            this.list = buildList(rawList());
        }
        return this.list;
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

    @Override // com.narvii.comment.post.CommentPostActivity.StatusListener
    public void onHeightFix(final CommentPostActivity commentPostActivity) {
        long j6;
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
        int i10 = this.focusingCommentRect.bottom;
        if (i10 > activeSpaceHeight) {
            int iScrollParentAndReturnUnconsumedDistance = i10 - activeSpaceHeight;
            this.listView.scrollListBy(-1);
            this.focusingCommentRect.offset(0, -iScrollParentAndReturnUnconsumedDistance);
            if (isNestedScrollMode()) {
                iScrollParentAndReturnUnconsumedDistance = scrollParentAndReturnUnconsumedDistance(iScrollParentAndReturnUnconsumedDistance);
            }
            this.listView.smoothScrollBy(iScrollParentAndReturnUnconsumedDistance, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
            j6 = 200;
        } else {
            j6 = 0;
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
        }, j6);
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
                            Comment comment4 = (Comment) ((Comment) notification.obj).m1622clone();
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

    void setFocusingComment(Comment comment) {
        ListView listView = this.listView;
        if (listView == null) {
            return;
        }
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        ListAdapter adapter = this.listView.getAdapter();
        int childCount = this.listView.getChildCount();
        int count = adapter.getCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            int i11 = i10 + firstVisiblePosition;
            if (i11 >= count || firstVisiblePosition < 0) {
                return;
            }
            Object item = adapter.getItem(i11);
            if ((item instanceof Comment) && Utils.isIdEquals((Comment) item, comment)) {
                View childAt = this.listView.getChildAt(i10);
                Rect rect = new Rect();
                this.listView.getGlobalVisibleRect(rect);
                Rect rect2 = new Rect();
                this.focusingCommentRect = rect2;
                rect2.left = rect.left;
                rect2.right = rect.right;
                rect2.top = rect.top + childAt.getTop();
                this.focusingCommentRect.bottom = rect.top + childAt.getBottom();
                return;
            }
        }
    }

    public void setSort(int i10) {
        if (this.sort != i10) {
            this.sort = i10;
            resetList();
        }
    }

    public int sort() {
        int i10 = this.sort;
        if (i10 == 0 || i10 == 1 || i10 == 2) {
            return i10;
        }
        return isQuestionAndAnswer() ? 2 : 0;
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
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                CommentListAdapter.this.subloading.remove(apiRequest);
                CommentListAdapter.this.notifyDataSetChanged();
            }

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
                        List<Comment> list3 = comment.subcommentsPreview;
                        Comment comment2 = list3 == null ? null : list3.get(list3.size() - 1);
                        int i10 = 0;
                        int top = -1;
                        if (CommentListAdapter.this.listView != null && comment2 != null) {
                            ListAdapter adapter = CommentListAdapter.this.listView.getAdapter();
                            int firstVisiblePosition = CommentListAdapter.this.listView.getFirstVisiblePosition();
                            int childCount = CommentListAdapter.this.listView.getChildCount();
                            int count = adapter.getCount();
                            for (int i11 = 0; i11 < childCount; i11++) {
                                int i12 = i11 + firstVisiblePosition;
                                if (i12 >= count || firstVisiblePosition < 0) {
                                    break;
                                }
                                Object item = adapter.getItem(i12);
                                if ((item instanceof Comment) && Utils.isIdEquals((NVObject) item, comment2)) {
                                    top = CommentListAdapter.this.listView.getChildAt(i11).getTop();
                                }
                            }
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
                        if (top < 0) {
                            return;
                        }
                        ListAdapter adapter2 = CommentListAdapter.this.listView.getAdapter();
                        int firstVisiblePosition2 = CommentListAdapter.this.listView.getFirstVisiblePosition();
                        int count2 = adapter2.getCount();
                        while (true) {
                            int i13 = i10 + firstVisiblePosition2;
                            if (i13 >= count2 || firstVisiblePosition2 < 0) {
                                return;
                            }
                            Object item2 = adapter2.getItem(i13);
                            if ((item2 instanceof Comment) && Utils.isIdEquals((NVObject) item2, comment2)) {
                                CommentListAdapter.this.listView.setSelectionFromTop(i13, top);
                            }
                            i10++;
                        }
                    }
                }
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
            public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.community.CommunityHelper
            protected void startActivity(Intent intent) {
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(CommentListAdapter.this, intent);
            }
        };
        this.commentHelper = new CommentHelper(this, isGlobalInteractionScope());
        this.pushNotificationHelper = new PushNotificationHelper(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reply(Comment comment) {
        String strName;
        String strNickname;
        if (Utils.shouldShowLoginPage(getParentContext())) {
            return;
        }
        logClickEvent(comment, ActSemantic.reply);
        Intent intent = new Intent(getContext(), (Class<?>) CommentPostActivity.class);
        intent.putExtra("parentType", comment.parentType);
        intent.putExtra("parentId", comment.parentId);
        intent.putExtra(EventConstants.CommentPost.RESPOND_TO, comment.id());
        intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, isAnnouncement());
        if ((getParent() instanceof Feed) && ((Feed) getParent()).ndcId != -1) {
            intent.putExtra("__communityId", ((Feed) getParent()).ndcId);
        }
        if (getParent() instanceof Blog) {
            intent.putExtra("parentSubType", ((Blog) getParent()).type);
        }
        if (getParent() instanceof Feed) {
            intent.putExtra("feed", JacksonUtils.writeAsString(getParent()));
        }
        String strName2 = null;
        intent.putExtra(EventConstants.CommentPost.STAT_PARENT_TYPE, StatisticHelper.getStatisticSource(this, null, comment.parentType));
        CommentPost commentPost = new CommentPost();
        if (isSubComment(comment)) {
            NVContext nVContext = this.context;
            String[] strArr = new String[1];
            User user = comment.author;
            if (user == null) {
                strNickname = "";
            } else {
                strNickname = user.nickname();
            }
            strArr[0] = strNickname;
            String stringForCommunityLocal = StringUtils.getStringForCommunityLocal(nVContext, R.string.comment_reply_to, strArr);
            commentPost.prefix = stringForCommunityLocal + "\n";
            intent.putExtra("hint", stringForCommunityLocal);
        } else {
            commentPost.prefix = null;
        }
        commentPost.respondTo = comment.id();
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(commentPost));
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        LoggingSource loggingSource = this.loggingSource;
        if (loggingSource == null) {
            strName = null;
        } else {
            strName = loggingSource.name();
        }
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, strName);
        LoggingOrigin loggingOrigin = this.loggingOrigin;
        if (loggingOrigin != null) {
            strName2 = loggingOrigin.name();
        }
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, strName2);
        intent.putExtra(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, getFeedNdcId());
        intent.putExtra(NVActivity.INTERACTION_SCOPE, isGlobalInteractionScope());
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        if (focusComment()) {
            setFocusingComment(comment);
            CommentPostActivity.setStatusListener(this);
        }
        onReply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vote(final Comment comment, int i10, boolean z6) {
        ActSemantic actSemantic;
        if (Utils.shouldShowLoginPage(getParentContext())) {
            return;
        }
        if (i10 == 0) {
            actSemantic = ActSemantic.dislike;
        } else {
            actSemantic = ActSemantic.like;
        }
        logClickEvent(comment, actSemantic);
        this.voting.add(comment.id());
        notifyDataSetChanged();
        if (i10 != 0) {
            FirebaseLogManager.logEvent(this, ((StatisticsService) getService("statistics")).event(EventConstants.LikePost.LIKE_POST).userPropInc(UserPropConstants.PostEvents.LIKES_TOTAL).param(EventConstants.PostType.POST_TYPE, COMMENT).source(this.sourceComment));
        }
        LiveLayerUtils.reportVoting(getParentContext(), comment, i10);
        VoteHelper voteHelper = new VoteHelper(this);
        voteHelper.loggingOrigin = this.loggingOrigin;
        voteHelper.loggingSource = this.loggingSource;
        voteHelper.vote(comment, Integer.valueOf(i10), getParent(), new VoteHelper.OnVoteListenerAdapter() { // from class: com.narvii.comment.list.CommentListAdapter.7
            @Override // com.narvii.story.detail.VoteHelper.OnVoteListenerAdapter, com.narvii.story.detail.VoteHelper.OnVoteListener
            public void onVoteEnd(boolean z10) {
                CommentListAdapter.this.voting.remove(comment.id());
                CommentListAdapter.this.notifyDataSetChanged();
            }
        });
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public View createLoadingItem(ViewGroup viewGroup, View view) {
        int iFirstLoadingHeight;
        View viewCreateLoadingItem = super.createLoadingItem(viewGroup, view);
        if (list().isEmpty()) {
            iFirstLoadingHeight = firstLoadingHeight();
        } else {
            iFirstLoadingHeight = 0;
        }
        ViewGroup.LayoutParams layoutParams = viewCreateLoadingItem.getLayoutParams();
        if (iFirstLoadingHeight <= ViewCompat.E(viewCreateLoadingItem)) {
            iFirstLoadingHeight = -2;
        }
        layoutParams.height = iFirstLoadingHeight;
        viewCreateLoadingItem.requestLayout();
        return viewCreateLoadingItem;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z6) {
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

    protected ApiRequest createSubcommentRequest(Comment comment, int i10, int i11, String str) {
        NVObject parent = getParent();
        if (parent == null) {
            return null;
        }
        ApiRequest.Builder builderPath = ApiRequest.builder().path(CommentHelper.getBaseCommentPath(isGlobalInteractionScope(), parent.apiTypeName(), parent.id(), comment.id()) + "/response");
        builderPath.param("start", Integer.valueOf(i10));
        builderPath.param("size", Integer.valueOf(i11));
        if (!TextUtils.isEmpty(str)) {
            builderPath.param("stoptime", str);
        }
        return builderPath.build();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<Comment> filterResponseList(List<Comment> list, int i10) {
        List<Comment> listFilterResponseList = super.filterResponseList(list, i10);
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

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public int getCount() {
        int i10;
        int count = super.getCount();
        if (this.bottomPadding > 0) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        return count + i10;
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        if (getItem(i10) == BOTTOM_PADDING) {
            return super.getViewTypeCount();
        }
        return super.getItemViewType(i10);
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return super.getViewTypeCount() + 1;
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        Object item = getItem(i10);
        if (item != DIVIDER && item != SUBDIVIDER && item != NVPagedAdapter.LIST_END && item != BOTTOM_PADDING) {
            return super.isEnabled(i10);
        }
        return false;
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
        if (user == null || !Utils.isEqualsNotNull(user.uid, parent.uid()) || communityId != comment.author.ndcId) {
            return false;
        }
        return true;
    }

    protected boolean isQuestionAndAnswer() {
        NVObject parent = getParent();
        if (parent != null && (parent instanceof Blog) && ((Blog) parent).type == 3) {
            return true;
        }
        return false;
    }

    protected void onViewStickerClicked(Intent intent) {
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
    }

    protected boolean ownParent() {
        User userProfile;
        NVObject parent = getParent();
        if (parent == null || (userProfile = ((AccountService) getService("account")).getUserProfile()) == null) {
            return false;
        }
        return Utils.isEqualsNotNull(userProfile.uid, parent.uid());
    }

    protected String sortName() {
        int iSort = sort();
        if (iSort != 1) {
            if (iSort != 2) {
                return "newest";
            }
            return "vote";
        }
        return "oldest";
    }
}
