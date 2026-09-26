package com.narvii.item.detail;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.blog.post.BlogPost;
import com.narvii.blog.post.BlogPostActivity;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.AffiliationsService;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.detail.FeedDetailAdapter;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.FeedContinuousViewer;
import com.narvii.feed.FeedHelper;
import com.narvii.feed.FeedListAdapter;
import com.narvii.feed.vote.VoteAnimationHelper;
import com.narvii.feed.vote.VotePopupDialog;
import com.narvii.feed.vote.VoterListFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.influencer.FansOnlyHintDialog;
import com.narvii.item.ItemHelper;
import com.narvii.item.contributor.Contributor;
import com.narvii.item.contributor.ContributorListFragment;
import com.narvii.item.contributor.ContributorListResponse;
import com.narvii.item.property.ItemPropertyList;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.media.MediaGalleryOptionActivity;
import com.narvii.model.Comment;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.FeedResponse;
import com.narvii.model.api.ItemResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.optionmenu.OptionMenuFragment;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.story.detail.VoteHelper;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.NVToast;
import com.narvii.util.PaletteUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.statistics.constants.UserPropConstants;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.wallet.optinads.OptinAds;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.narvii.widget.KeywordsView;
import com.narvii.widget.NVListView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SlideshowView;
import com.narvii.widget.ThumbGallery;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ItemDetailFragment extends FeedDetailFragment<Item> {
    static final int CONTRIBUTOR_REQUEST = 4;
    static final int COPY_AND_EDIT_REQUEST = 8;
    AdvancedOptionDialog advancedOptionDialog;
    CommentAdapter commentAdapter;
    CommunityConfigHelper communityConfigHelper;
    DividerAdapter divAdapter;
    boolean fromMyCatalog;
    OverlayLayout header;
    private HeaderLayout headerLayout;
    private View headerPlaceHolder;
    Adapter itemAdapter;
    private ItemHelper itemHelper;
    private int keywordsHeight;
    private MergeAdapter mergeAdapter;
    public Callback<Item> onFinishListener;
    boolean optinPaidAds;
    private RelatedBlogHeaderAdapter relatedBlogHeaderAdapter;
    SwipeRefreshLayout swipeRefreshLayout;
    TagRelatedAdapter tagRelatedAdapter;
    View voteIconView;
    static final DetailAdapter.CellType HEADER = new DetailAdapter.CellType("detail.item.header", true);
    static final DetailAdapter.CellType PROPERTY = new DetailAdapter.CellType("detail.property");
    static final DetailAdapter.HeaderTag ABOUT_HEADER = new DetailAdapter.HeaderTag("detail.about.header", R.string.detail_about);
    static final DetailAdapter.HeaderTag GALLERY_HEADER = new DetailAdapter.HeaderTag("detail.gallery.header", R.string.gallery);
    static final DetailAdapter.HeaderTag AUTHOR_HEADER = new DetailAdapter.HeaderTag("detail.user.header", R.string.author);
    static final DetailAdapter.AddTag ADD_DESC = new DetailAdapter.AddTag("detail.add_desc", R.string.detail_add_desc);
    static final DetailAdapter.CellType GALLERY = new DetailAdapter.CellType("detail.gallery");
    static final DetailAdapter.CellType CONTRIBUTORS = new DetailAdapter.CellType("detail.contributors");
    static final DetailAdapter.HeaderTag CONTRIBUTORS_HEADER = new DetailAdapter.HeaderTag("detail.contributors.header", R.string.contributors);
    static final DetailAdapter.CellType USER = new DetailAdapter.CellType("detail.user", true);
    static final DetailAdapter.HeaderTag LIKES_HEADER = new DetailAdapter.HeaderTag("detail.likes", R.string.likes);
    static final List<DetailAdapter.CellType> ADS = Arrays.asList(new DetailAdapter.CellType("adbanner1", false), new DetailAdapter.CellType("adbanner2", false), new DetailAdapter.CellType("adbanner3", false), new DetailAdapter.CellType("adbanner4", false), new DetailAdapter.CellType("adbanner5", false), new DetailAdapter.CellType("adbanner6", false), new DetailAdapter.CellType("adbanner7", false), new DetailAdapter.CellType("adbanner8", false), new DetailAdapter.CellType("adbanner9", false), new DetailAdapter.CellType("adbanner10", false), new DetailAdapter.CellType("adbanner11", false), new DetailAdapter.CellType("adbanner12", false), new DetailAdapter.CellType("adbanner13", false), new DetailAdapter.CellType("adbanner14", false), new DetailAdapter.CellType("adbanner15", false), new DetailAdapter.CellType("adbanner16", false), new DetailAdapter.CellType("adbanner17", false), new DetailAdapter.CellType("adbanner18", false), new DetailAdapter.CellType("adbanner19", false), new DetailAdapter.CellType("adbanner20", false));
    static final DetailAdapter.CellType AD_ABOVECOMMENT = new DetailAdapter.CellType("adbanner_abovecomment", false);
    private final View.OnClickListener headerClickListener = new View.OnClickListener() { // from class: com.narvii.item.detail.ItemDetailFragment.6
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            if (itemDetailFragment.preview) {
                DetailFragment.showPreviewToast(itemDetailFragment.getContext());
            } else if (view.getId() == R.id.vote_btn) {
                ItemDetailFragment.this.voteIconView = view.findViewById(R.id.vote_icon);
                ItemDetailFragment.this.ensureLogin(new Intent("vote"));
            }
        }
    };
    private final View.OnLongClickListener longClickVote = new View.OnLongClickListener() { // from class: com.narvii.item.detail.ItemDetailFragment.7
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (!ItemDetailFragment.this.checkCommunityJoined()) {
                return true;
            }
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            if (itemDetailFragment.preview) {
                DetailFragment.showPreviewToast(itemDetailFragment.getContext());
                return true;
            }
            Item feed = itemDetailFragment.getFeed();
            if (feed == null) {
                return false;
            }
            final View viewFindViewById = view.findViewById(R.id.vote_icon);
            VotePopupDialog votePopupDialog = new VotePopupDialog(ItemDetailFragment.this.getContext());
            votePopupDialog.setFeed(feed);
            votePopupDialog.setPosition(view);
            votePopupDialog.setVoteListener(new Callback<Integer>() { // from class: com.narvii.item.detail.ItemDetailFragment.7.1
                @Override // com.narvii.util.Callback
                public void call(Integer num) {
                    ItemDetailFragment.this.voteIconView = viewFindViewById;
                    Intent intent = new Intent("vote");
                    intent.putExtra("voteValue", num.intValue());
                    ItemDetailFragment.this.ensureLogin(intent);
                }
            });
            votePopupDialog.show();
            return true;
        }
    };
    private final Callback callback = new Callback() { // from class: com.narvii.item.detail.ItemDetailFragment.11
        @Override // com.narvii.util.Callback
        public void call(Object obj) {
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            Adapter adapter = itemDetailFragment.itemAdapter;
            if (adapter != null) {
                itemDetailFragment.fromMyCatalog = true;
                adapter.inMyFavorites = true;
                itemDetailFragment.invalidateOptionsMenu();
            }
        }
    };

    private class Adapter extends FeedDetailAdapter<Item> implements ThumbGallery.OnItemClickListener {
        List<Contributor> contributorList;
        final ApiResponseListener<ContributorListResponse> contributorListener;
        ApiRequest contributorRequest;
        String contributorsErrorMsg;
        DateTimeFormatter fmt;
        boolean inMyFavorites;
        final boolean optinAds;

        public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

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

        @Override // com.narvii.detail.DetailAdapter
        public void commentNew() {
            ItemDetailFragment.this.blockPass.set(Boolean.TRUE);
            super.commentNew();
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends Item> objectType() {
            return Item.class;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Contributor contributor;
            if (!ItemDetailFragment.this.isMeAccessibleToThisPost() && obj != ItemDetailFragment.USER) {
                FansOnlyHintDialog.showFansOnlyHintDialog(this, ItemDetailFragment.this.getFeed(), EventConstants.LikePost.PAGE_DETAILED_VIEW);
                return true;
            }
            if (obj == ItemDetailFragment.HEADER && view2 == null) {
                Item item = (Item) getObject();
                Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryActivity.class);
                intent.putExtra("parent", JacksonUtils.writeAsString(item));
                intent.putExtra("parentClass", Item.class);
                intent.putExtra("list", JacksonUtils.writeAsString(item.mediaList));
                SlideshowView slideshowView = (SlideshowView) ItemDetailFragment.this.header.findViewById(R.id.slideshow);
                if (slideshowView != null) {
                    intent.putExtra("position", slideshowView.getCurrentIndex());
                }
                intent.putExtra("preview", ItemDetailFragment.this.preview);
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                return true;
            }
            if (obj == ItemDetailFragment.USER) {
                Intent intent2 = UserProfileFragment.intent(this, ItemDetailFragment.this.getFeed().author);
                if (intent2 == null) {
                    return true;
                }
                intent2.putExtra(ExternalPostPreviewFragment.SOURCE, EventConstants.LikePost.PAGE_DETAILED_VIEW);
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent2);
                return true;
            }
            if (obj != ItemDetailFragment.CONTRIBUTORS) {
                if (obj == ItemDetailFragment.ADD_DESC) {
                    if (view2 != null && view2.getId() == R.id.add_dec_container) {
                        new FeedHelper(this).refreshAndEdit(ItemDetailFragment.this.getFeed());
                    }
                    return true;
                }
                if (obj != ItemDetailFragment.LIKES_HEADER) {
                    return super.onItemClick(listAdapter, i10, obj, view, view2);
                }
                if (view2 != null) {
                    onUserGridClick(view2, null);
                }
                return true;
            }
            ArrayList arrayList = new ArrayList();
            List<Contributor> list = this.contributorList;
            if (list != null) {
                contributor = null;
                for (Contributor contributor2 : list) {
                    if (contributor2.isOriginalAuthor()) {
                        contributor = contributor2;
                    } else {
                        arrayList.add(contributor2);
                    }
                }
            } else {
                contributor = null;
            }
            if (view2 != null) {
                if (view2.getId() == R.id.contributor_original) {
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, UserProfileFragment.intent(this, contributor));
                } else if (view2.getId() == R.id.contributor1) {
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, UserProfileFragment.intent(this, (User) arrayList.get(0)));
                } else if (view2.getId() == R.id.contributor2) {
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, UserProfileFragment.intent(this, (User) arrayList.get(1)));
                } else if (view2.getId() == R.id.contributor3) {
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, UserProfileFragment.intent(this, (User) arrayList.get(2)));
                } else if (view2.getId() == R.id.contributor4) {
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, UserProfileFragment.intent(this, (User) arrayList.get(3)));
                } else if (view2.getId() == R.id.contributor5) {
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, UserProfileFragment.intent(this, (User) arrayList.get(4)));
                } else if (view2.getId() == R.id.contributor6) {
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, UserProfileFragment.intent(this, (User) arrayList.get(5)));
                } else if (view2.getId() == R.id.retry) {
                    this.contributorsErrorMsg = null;
                    sendContributorRequest();
                    notifyDataSetChanged();
                } else if (view2.getId() == R.id.see_all_contributors) {
                    Intent intent3 = FragmentWrapperActivity.intent(ContributorListFragment.class);
                    intent3.putExtra("itemId", ItemDetailFragment.this.getFeed().itemId);
                    intent3.putExtra("canReorder", ItemDetailFragment.this.getFeed().author.isSystem());
                    intent3.putExtra("contributorList", JacksonUtils.writeAsString(this.contributorList));
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(ItemDetailFragment.this, intent3, 4);
                }
            }
            return true;
        }

        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter
        protected Class<ItemResponse> responseType() {
            return ItemResponse.class;
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0029  */
        public Adapter() {
            boolean z6;
            super(ItemDetailFragment.this);
            this.contributorListener = new ApiResponseListener<ContributorListResponse>(ContributorListResponse.class) { // from class: com.narvii.item.detail.ItemDetailFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    Adapter adapter = Adapter.this;
                    adapter.contributorsErrorMsg = str;
                    adapter.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ContributorListResponse contributorListResponse) throws Exception {
                    Adapter.this.contributorList = new ArrayList();
                    if (contributorListResponse.contributorList != null && ItemDetailFragment.this.getFeed() != null && ItemDetailFragment.this.getFeed().author != null) {
                        for (Contributor contributor : contributorListResponse.contributorList) {
                            if (!contributor.uid().equals(ItemDetailFragment.this.getFeed().author.id())) {
                                Adapter.this.contributorList.add(contributor);
                            }
                        }
                    }
                    Adapter adapter = Adapter.this;
                    adapter.contributorList = new FilterHelper(adapter.getParentContext()).filter(Adapter.this.contributorList);
                    Adapter adapter2 = Adapter.this;
                    if (adapter2.contributorList == null) {
                        adapter2.contributorList = new ArrayList();
                    }
                    Adapter.this.notifyDataSetChanged();
                }
            };
            this.fmt = new DateTimeFormatter();
            if (!preview()) {
                z6 = OptinAds.optin(this, 1) && !ItemDetailFragment.this.disableOptinAds();
            }
            this.optinAds = z6;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void commentRefresh() {
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            itemDetailFragment.commentAdapter.flHeight = itemDetailFragment.commentExtraHeight();
            ItemDetailFragment.this.commentAdapter.resetList();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected int commentSort() {
            return ItemDetailFragment.this.commentAdapter.sort();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            if (ItemDetailFragment.this.newPreview()) {
                return null;
            }
            return ApiRequest.builder().path("/item/" + ItemDetailFragment.this.id()).build();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createUserListRequest(int i10, int i11) {
            if (ItemDetailFragment.this.id() == null) {
                return null;
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            StringBuilder sb = new StringBuilder();
            sb.append("/item/");
            sb.append(ItemDetailFragment.this.id());
            sb.append(isGlobalInteractionScope() ? "/g-vote" : "/vote");
            sb.append("?start=");
            sb.append(i10);
            sb.append("&size=");
            sb.append(i11);
            sb.append("&cv=1.2");
            return builder.path(sb.toString()).build();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            View adView;
            Contributor contributor;
            if (obj == ItemDetailFragment.HEADER) {
                ItemDetailFragment.this.headerPlaceHolder = createView(R.layout.detail_item_header_placeholder, viewGroup, view);
                ItemDetailFragment.this.updateHeaderPlaceHolder();
                return ItemDetailFragment.this.headerPlaceHolder;
            }
            ArrayList arrayList = null;
            if (obj == ItemDetailFragment.GALLERY) {
                View viewCreateView = createView(R.layout.detail_gallery_item, viewGroup, view);
                Item item = (Item) getObject();
                List<Media> list = item.mediaList;
                if (list != null && list.size() > 0) {
                    arrayList = new ArrayList(item.mediaList);
                    arrayList.remove(0);
                }
                ThumbGallery thumbGallery = (ThumbGallery) viewCreateView.findViewById(R.id.pager);
                thumbGallery.setDarkTheme(this.darkTheme);
                thumbGallery.setMediaList(arrayList);
                thumbGallery.setOnItemClickListener(this);
                return viewCreateView;
            }
            if (obj == ItemDetailFragment.USER) {
                View viewCreateView2 = createView(R.layout.detail_item_user_item, viewGroup, view);
                Item item2 = (Item) getObject();
                ((UserAvatarLayout) viewCreateView2.findViewById(R.id.user_avatar_layout)).setUser(item2.author);
                NicknameView nicknameView = (NicknameView) viewCreateView2.findViewById(R.id.nickname);
                nicknameView.setUser(item2.author, true);
                nicknameView.setDarkTheme(this.darkTheme);
                ((TextView) viewCreateView2.findViewById(R.id.datetime)).setText(this.fmt.format(item2.modifiedTime));
                ((TextView) viewCreateView2.findViewById(R.id.datetime)).setTextColor(!ItemDetailFragment.this.isDarkTheme() ? -5592406 : -1);
                return viewCreateView2;
            }
            if (obj != ItemDetailFragment.CONTRIBUTORS) {
                if (obj == ItemDetailFragment.PROPERTY) {
                    View viewCreateView3 = createView(R.layout.detail_item_property_item, viewGroup, view);
                    ((ItemPropertyList) viewCreateView3.findViewById(R.id.item_property_view_list)).setItemProperties(JacksonUtils.nodePath(((Item) getObject()).extensions, "props"), ItemDetailFragment.this.isDarkTheme());
                    return viewCreateView3;
                }
                if ((ItemDetailFragment.ADS.indexOf(obj) >= 0 || obj == ItemDetailFragment.AD_ABOVECOMMENT) && (adView = ItemDetailFragment.this.getAdView(view)) != null) {
                    return adView;
                }
                View cell = super.getCell(obj, view, viewGroup);
                if (obj != DetailAdapter.COMMENT_HEADER) {
                    if (obj == ItemDetailFragment.ABOUT_HEADER) {
                        cell.setPadding(0, 0, 0, 0);
                    }
                    if (obj == ItemDetailFragment.LIKES_HEADER) {
                        cell.setOnClickListener(this.subviewClickListener);
                    }
                    return cell;
                }
                ((TextView) cell.findViewById(R.id.comment_count)).setText(((Item) getObject()).getTotalCommentsCount() == 0 ? "" : "(" + ((Item) getObject()).getTotalCommentsCount() + ")");
                return cell;
            }
            View viewCreateView4 = createView(R.layout.detail_item_contributors_item, viewGroup, view);
            View[] viewArr = {viewCreateView4.findViewById(R.id.contributor1), viewCreateView4.findViewById(R.id.contributor2), viewCreateView4.findViewById(R.id.contributor3), viewCreateView4.findViewById(R.id.contributor4), viewCreateView4.findViewById(R.id.contributor5), viewCreateView4.findViewById(R.id.contributor6)};
            ArrayList arrayList2 = new ArrayList();
            List<Contributor> list2 = this.contributorList;
            if (list2 != null) {
                contributor = null;
                for (Contributor contributor2 : list2) {
                    if (contributor2.isOriginalAuthor()) {
                        contributor = contributor2;
                    } else {
                        arrayList2.add(contributor2);
                    }
                }
            } else {
                contributor = null;
            }
            int i10 = 0;
            while (i10 < 6) {
                View view2 = viewArr[i10];
                Contributor contributor3 = arrayList2.size() > i10 ? (Contributor) arrayList2.get(i10) : null;
                if (contributor3 == null) {
                    view2.setVisibility(8);
                } else if (i10 != 5 || arrayList2.size() <= 6) {
                    view2.setVisibility(0);
                    view2.setOnClickListener(this.subviewClickListener);
                    ((UserAvatarLayout) view2.findViewById(R.id.user_avatar_layout)).setUser(contributor3);
                    NicknameView nicknameView2 = (NicknameView) view2.findViewWithTag(getContext().getString(R.string.nickname));
                    nicknameView2.setUser(contributor3);
                    nicknameView2.setDarkTheme(this.darkTheme);
                } else {
                    view2.setVisibility(8);
                }
                i10++;
            }
            View viewFindViewById = viewCreateView4.findViewById(R.id.contributor_original);
            if (contributor == null) {
                viewFindViewById.setVisibility(8);
            } else {
                viewFindViewById.setVisibility(0);
                viewFindViewById.setOnClickListener(this.subviewClickListener);
                ((UserAvatarLayout) viewFindViewById.findViewById(R.id.user_avatar_layout)).setUser(contributor);
                NicknameView nicknameView3 = (NicknameView) viewFindViewById.findViewById(R.id.nickname_contributor_original);
                nicknameView3.setUser(contributor);
                nicknameView3.setDarkTheme(this.darkTheme);
                nicknameView3.setRole2(ItemDetailFragment.this.getString(R.string.original_author), User.ROLE_COLOR_AUTHOR);
            }
            viewCreateView4.findViewById(R.id.see_all_contributors).setVisibility(arrayList2.size() > 6 ? 0 : 8);
            TextView textView = (TextView) viewCreateView4.findViewById(R.id.see_all_contributors);
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            Object[] objArr = new Object[1];
            List<Contributor> list3 = this.contributorList;
            objArr[0] = Integer.valueOf(list3 == null ? 0 : list3.size());
            textView.setText(itemDetailFragment.getString(R.string.see_all_contributors, objArr));
            setTextColorSelector(viewCreateView4, R.id.see_all_contributors, R.color.text_clickable, R.color.text_clickable_white);
            viewCreateView4.findViewById(R.id.see_all_contributors).setOnClickListener(this.subviewClickListener);
            viewCreateView4.findViewById(R.id.retry).setVisibility((this.contributorList != null || this.contributorsErrorMsg == null) ? 8 : 0);
            viewCreateView4.findViewById(R.id.retry).setOnClickListener(this.subviewClickListener);
            viewCreateView4.findViewById(R.id.progress).setVisibility((this.contributorList == null && this.contributorsErrorMsg == null) ? 0 : 8);
            return viewCreateView4;
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.Adapter
        public int getCount() {
            if (ItemDetailFragment.this.isPageBackgroundEnabled() && getResponse() == null) {
                return 0;
            }
            return super.getCount();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (ItemDetailFragment.this.isPageBackgroundEnabled() && getResponse() == null) {
                return false;
            }
            return super.isEmpty();
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            if (ItemDetailFragment.this.isPageBackgroundEnabled() && getResponse() == null) {
                return true;
            }
            return super.isListShown();
        }

        @Override // com.narvii.detail.FeedDetailAdapter
        protected boolean notJoined() {
            return ((FeedDetailFragment) ItemDetailFragment.this).notJoined;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.detail.DetailAdapter
        public void onObjectResponse(ApiRequest apiRequest, FeedResponse<? extends Item> feedResponse) {
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            if (!itemDetailFragment.preview || !(feedResponse instanceof ItemResponse)) {
                itemDetailFragment.onFeedObjectResponse();
                super.onObjectResponse(apiRequest, feedResponse);
                ItemDetailFragment.this.tryReportActiveStatus();
                ItemDetailFragment.this.sendFeedUpdateGlobalNotification((Feed) getObject());
                return;
            }
            Item item = (Item) getObject();
            if (item != null) {
                Item item2 = ((ItemResponse) feedResponse).item;
                item2.label = item.label;
                item2.keywords = item.keywords;
                item2.content = item.content;
                item2.extensions = item.extensions;
                item2.latitude = item.latitude;
                item2.longitude = item.longitude;
                item2.address = item.address;
                item2.modifiedTime = item.modifiedTime;
                item2.mediaList = item.mediaList;
                super.onObjectResponse(apiRequest, feedResponse);
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        protected boolean onUserGridClick(View view, String str) {
            if (!ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                FansOnlyHintDialog.showFansOnlyHintDialog(this, ItemDetailFragment.this.getFeed(), EventConstants.LikePost.PAGE_DETAILED_VIEW);
                return true;
            }
            if (!super.onUserGridClick(view, str)) {
                Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                intent.putExtra("nvObject", JacksonUtils.writeAsString(ItemDetailFragment.this.getFeed()));
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            }
            return true;
        }

        @Override // com.narvii.detail.FeedDetailAdapter
        protected boolean preview() {
            return ItemDetailFragment.this.preview;
        }

        void sendContributorRequest() {
            Item feed = ItemDetailFragment.this.getFeed();
            if (feed == null || ItemDetailFragment.this.id() == null) {
                return;
            }
            this.contributorRequest = ApiRequest.builder().path("/item/" + feed.itemId + "/contributors").build();
            ((ApiService) getService("api")).exec(this.contributorRequest, this.contributorListener);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void setCommentSort(int i10) {
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            itemDetailFragment.commentAdapter.flHeight = itemDetailFragment.commentExtraHeight();
            ItemDetailFragment.this.commentAdapter.setSort(i10);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(Item item) {
            ItemResponse itemResponse = getResponse() == null ? new ItemResponse() : (ItemResponse) getResponse();
            itemResponse.inMyFavorites = this.inMyFavorites ? 1 : 0;
            itemResponse.item = item;
            setResponse((FeedResponse<? extends Item>) itemResponse);
        }

        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter
        public void setResponse(FeedResponse<? extends Item> feedResponse) {
            Callback<Item> callback;
            ItemResponse itemResponse = (ItemResponse) feedResponse;
            this.inMyFavorites = itemResponse.inMyFavorites > 0;
            super.setResponse((FeedResponse) feedResponse);
            Item item = itemResponse.item;
            if (item != null) {
                ((DetailFragment) ItemDetailFragment.this)._hasBackground = item.hasBackground();
                ((DetailFragment) ItemDetailFragment.this)._isBackgroundDark = item.getBackgroundMedia() != null || PaletteUtils.isDarkColor(item.getBackgroundColor());
                ((NVFragment) ItemDetailFragment.this)._backgroundColor = item.getBackgroundColor();
                ItemDetailFragment.this.updateBackground();
                ItemDetailFragment.this.updateListViewContentBackground();
            }
            this.isBookmarked = feedResponse.isBookmarked;
            if (feedResponse.timestamp != null && (callback = ItemDetailFragment.this.onFinishListener) != null) {
                callback.call((Item) feedResponse.object());
            }
            ItemDetailFragment.this.resetHover();
            ItemDetailFragment.this.setDisabledStatus(item);
        }

        @Override // com.narvii.detail.FeedDetailAdapter
        protected boolean shouldBlockShareMedia() {
            if (ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                return super.shouldBlockShareMedia();
            }
            FansOnlyHintDialog.showFansOnlyHintDialog(this, ItemDetailFragment.this.getFeed(), EventConstants.LikePost.PAGE_DETAILED_VIEW);
            return true;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected boolean showEmojiOnly() {
            AffiliationsService affiliationsService = (AffiliationsService) getService("affiliations");
            return (ItemDetailFragment.this.getFeed().ndcId <= 0 || !affiliationsService.contains(ItemDetailFragment.this.getFeed().ndcId)) && (ItemDetailFragment.this.getIntParam("__communityId") <= 0 || !affiliationsService.contains(ItemDetailFragment.this.getIntParam("__communityId"))) && ((FeedDetailFragment) ItemDetailFragment.this).fromHeadline;
        }

        @Override // com.narvii.detail.FeedDetailAdapter
        public List<Item> taggedObjects() {
            ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
            return itemDetailFragment.preview ? JacksonUtils.readListAs(itemDetailFragment.getStringParam("taggedObjects"), Item.class) : super.taggedObjects();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List<Object> list) {
            boolean z6;
            Item item = (Item) getObject();
            List<Item> listTaggedObjects = taggedObjects();
            User user = item.author;
            int i10 = 0;
            if (user != null && user.isSystem()) {
                z6 = true;
            } else {
                z6 = false;
            }
            list.add(ItemDetailFragment.HEADER);
            list.add(ItemDetailFragment.ABOUT_HEADER);
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(item.extensions, "props");
            if (jsonNodeNodePath != null && jsonNodeNodePath.isArray()) {
                int size = jsonNodeNodePath.size();
                int i11 = 0;
                for (int i12 = 0; i12 < size; i12++) {
                    if (!TextUtils.isEmpty(JacksonUtils.nodeString(jsonNodeNodePath.get(i12), "value"))) {
                        i11++;
                    }
                }
                if (i11 > 0) {
                    list.add(ItemDetailFragment.PROPERTY);
                    list.add(DetailAdapter.DIVIDER_LINE);
                }
            }
            if (TextUtils.isEmpty(item.content) && ItemDetailFragment.this.isMine()) {
                list.add(ItemDetailFragment.ADD_DESC);
            } else {
                List<Media> arrayList = new ArrayList<>();
                ArrayList arrayList2 = new ArrayList();
                splitSegments(item.content, item.mediaList, arrayList2, arrayList);
                if (this.optinAds) {
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj : arrayList2) {
                        if (obj instanceof String) {
                            arrayList3.addAll(OptinAdsUtil.breakParagraph((String) obj));
                        } else {
                            arrayList3.add(obj);
                        }
                    }
                    int i13 = 7;
                    while (i13 < arrayList3.size()) {
                        List<DetailAdapter.CellType> list2 = ItemDetailFragment.ADS;
                        arrayList3.add(i13, list2.get(i10 % list2.size()));
                        i13 += 5;
                        i10++;
                    }
                    arrayList2 = arrayList3;
                }
                list.addAll(arrayList2);
            }
            if (!ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                return;
            }
            addDivider(list);
            List<Media> list3 = item.mediaList;
            if (list3 != null && list3.size() > 1) {
                list.add(ItemDetailFragment.GALLERY_HEADER);
                list.add(ItemDetailFragment.GALLERY);
            }
            if (listTaggedObjects != null && listTaggedObjects.size() > 0) {
                list.add(FeedDetailAdapter.LINKED_HEADER);
                list.add(FeedDetailAdapter.LINKED);
            }
            if (allowTipping()) {
                list.add(DetailAdapter.TIPPING);
            }
            if (this.optinAds) {
                list.add(ItemDetailFragment.AD_ABOVECOMMENT);
            }
            if (!z6) {
                list.add(ItemDetailFragment.AUTHOR_HEADER);
                list.add(ItemDetailFragment.USER);
            }
            List<Contributor> list4 = this.contributorList;
            if (list4 != null && !list4.isEmpty()) {
                list.add(ItemDetailFragment.CONTRIBUTORS_HEADER);
                list.add(ItemDetailFragment.CONTRIBUTORS);
            }
            if (!z6 && item.getTotalVotesCount() > 0 && (!((FeedDetailFragment) ItemDetailFragment.this).fromHeadline || !((FeedDetailFragment) ItemDetailFragment.this).notJoined || item.getVotedValue(isGlobalInteractionScope()) == 0 || item.getTotalVotesCount() != 1)) {
                DetailAdapter.HeaderTag headerTag = ItemDetailFragment.LIKES_HEADER;
                headerTag.setCount(item.getTotalVotesCount());
                list.add(headerTag);
                list.add(DetailAdapter.USER_GRID);
            }
            list.add(DetailAdapter.COMMENT_HEADER);
            list.add(DetailAdapter.COMMENT_ADD);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void commentNew(String str) {
            super.commentNew(str);
            CommentPostActivity.setStatusListener(ItemDetailFragment.this.commentAdapter);
        }

        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(ItemDetailFragment.HEADER);
            list.add(ItemDetailFragment.PROPERTY);
            list.add(ItemDetailFragment.GALLERY);
            list.add(ItemDetailFragment.USER);
            list.add(ItemDetailFragment.CONTRIBUTORS);
            list.addAll(ItemDetailFragment.ADS);
            list.add(ItemDetailFragment.AD_ABOVECOMMENT);
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            ItemDetailFragment.this.updateHeader();
            if (this.contributorRequest == null) {
                sendContributorRequest();
            }
        }

        @Override // com.narvii.detail.FeedDetailAdapter, com.narvii.detail.DetailAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            super.onNotification(notification);
            if (!notification.action.equals("update")) {
                if (notification.obj instanceof Comment) {
                    if (!notification.action.equals("new") && !notification.action.equals("delete")) {
                        return;
                    }
                } else {
                    return;
                }
            }
            Item feed = ItemDetailFragment.this.getFeed();
            if (((FeedDetailFragment) ItemDetailFragment.this).continuousLoader != null && feed != null) {
                Object obj = notification.obj;
                if (obj instanceof Comment) {
                    CommentHelper.updateFeedWithComment(feed, (Comment) obj, notification.action);
                }
                ItemDetailFragment.this.updateteBottomLayout(feed);
            }
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            this.inMyFavorites = bundle.getBoolean("inMyFavorites");
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("inMyFavorites", this.inMyFavorites);
            return bundleOnSaveInstanceState;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void onTipBoxClicked(boolean z6) {
            super.onTipBoxClicked(z6);
            if (!z6) {
                ItemDetailFragment.this.tippingTooltipDone();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.widget.ThumbGallery.OnItemClickListener
        public void onItemClick(Media media) {
            if (!ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                FansOnlyHintDialog.showFansOnlyHintDialog(this, ItemDetailFragment.this.getFeed(), EventConstants.LikePost.PAGE_DETAILED_VIEW);
                return;
            }
            Item item = (Item) getObject();
            if (media.isVideo()) {
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), NVFullScreenVideoActivity.intent(media, item, (Class<? extends NVFragment>) OptionMenuFragment.class));
                return;
            }
            List<Media> list = item.mediaList;
            int iIndexOf = list.indexOf(media);
            Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
            intent.putExtra("parent", JacksonUtils.writeAsString(item));
            intent.putExtra("parentClass", Item.class);
            intent.putExtra("preview", ItemDetailFragment.this.preview);
            intent.putExtra("list", JacksonUtils.writeAsString(list));
            if (iIndexOf >= 0) {
                intent.putExtra("position", iIndexOf);
            }
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        }
    }

    private class CommentAdapter extends CommentListAdapter {
        int flHeight;

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

        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return true;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected int firstLoadingHeight() {
            return this.flHeight;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i10) {
            return i10 <= 0;
        }

        public CommentAdapter() {
            super(ItemDetailFragment.this);
            this.source = EventConstants.LikePost.PAGE_DETAILED_VIEW;
            this.loggingSource = LoggingSource.PostDetailView;
            String stringParam = ItemDetailFragment.this.getStringParam(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN);
            if (stringParam != null) {
                this.loggingOrigin = LoggingOrigin.valueOf(stringParam);
            }
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (!ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                return 0;
            }
            int count = super.getCount();
            int size = rawList() != null ? rawList().size() : 0;
            return (size <= 0 || size >= pageSize()) ? count : count - 1;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected NVObject getParent() {
            return ItemDetailFragment.this.getFeed();
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj != NVPagedAdapter.LOAD_MORE) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, new CommentListFragment.IntentBuilder().feed(JacksonUtils.writeAsString(ItemDetailFragment.this.getFeed())).type(2).id(ItemDetailFragment.this.getStringParam("id")).source(EventConstants.LikePost.PAGE_DETAILED_VIEW).build());
            return true;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onViewStickerClicked(Intent intent) {
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(ItemDetailFragment.this, intent, 111);
        }
    }

    private class RelatedBlogHeaderAdapter extends NVAdapter {
        private boolean isListEmpty;

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        public RelatedBlogHeaderAdapter(NVContext nVContext) {
            super(nVContext);
            this.isListEmpty = true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                return (ItemDetailFragment.this.isMine() || !this.isListEmpty) ? 1 : 0;
            }
            return 0;
        }

        public void setListEmpty(boolean z6) {
            this.isListEmpty = z6;
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            int i12;
            View viewCreateView = createView(R.layout.detail_header_item_top_margin, viewGroup, view);
            View viewFindViewById = viewCreateView.findViewById(R.id.header_layout);
            if (viewFindViewById != null) {
                Context context = getContext();
                if (this.darkTheme) {
                    i12 = R.color.header_bg_dark;
                } else {
                    i12 = R.color.header_color_light;
                }
                viewFindViewById.setBackgroundColor(ContextCompat.getColor(context, i12));
            }
            TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
            if (textView != null) {
                textView.setText(R.string.detail_related_pages);
                if (this.darkTheme) {
                    i11 = -1;
                } else {
                    i11 = -7829368;
                }
                textView.setTextColor(i11);
            }
            return viewCreateView;
        }
    }

    private class TagRelatedAdapter extends FeedListAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        protected Class<? extends ListResponse<? extends Feed>> responseType() {
            return TagRelatedListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i10) {
            return false;
        }

        public TagRelatedAdapter() {
            super(ItemDetailFragment.this);
            this.source = "Favorite Related Pages";
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (ItemDetailFragment.this.isMeAccessibleToThisPost()) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj == NVPagedAdapter.LIST_END) {
                return true;
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected void onPageResponse(ApiRequest apiRequest, ListResponse<? extends Feed> listResponse, int i10) {
            if (this._start == 0 && ItemDetailFragment.this.relatedBlogHeaderAdapter != null) {
                ItemDetailFragment.this.relatedBlogHeaderAdapter.setListEmpty(listResponse.list() == null || listResponse.list().isEmpty());
            }
            super.onPageResponse(apiRequest, listResponse, i10);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("/item/" + ItemDetailFragment.this.id() + "/tag-related").build();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter
        public void onLoginResult(boolean z6, Intent intent) {
            super.onLoginResult(z6, intent);
        }
    }

    private class WriteRelatedBlogAdapter extends NVAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return i10 == 0;
        }

        public WriteRelatedBlogAdapter() {
            super(ItemDetailFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (ItemDetailFragment.this.isMeAccessibleToThisPost() && ItemDetailFragment.this.isMine()) ? 2 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (i10 != 0) {
                int i11 = !ItemDetailFragment.this.isDarkTheme() ? R.layout.list_divider : R.layout.list_divider_dark;
                return createView(i11, viewGroup, view, String.valueOf(i11));
            }
            View viewCreateView = createView(R.layout.detail_write_related_blog_item, viewGroup, view);
            ((ImageView) viewCreateView.findViewById(R.id.create_plus)).setImageResource(!ItemDetailFragment.this.isDarkTheme() ? R.drawable.ic_create_plus_green : R.drawable.ic_create_plus_white);
            ItemDetailFragment.this.setTextColor(viewCreateView, R.id.write_new_blog, -7829368);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Intent intent = new Intent(ItemDetailFragment.this.getActivity(), (Class<?>) BlogPostActivity.class);
            BlogPost blogPost = new BlogPost();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ItemDetailFragment.this.getFeed());
            blogPost.itemList = arrayList;
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost));
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Write a Blog About This Favorite");
            intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, LoggingSource.PostDetailView.name());
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return Integer.valueOf(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return hashCode() + i10;
        }
    }

    protected boolean disableOptinAds() {
        return false;
    }

    @Override // com.narvii.detail.FeedDetailFragment
    public FeedDetailAdapter<Item> getFeedDetailAdapter() {
        return this.itemAdapter;
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected String getLiveLayerTopic() {
        return "users-browsing-item-at";
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "wiki_entry_detail";
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean hoverBelowOverlayPlaceHolder() {
        return true;
    }

    @Override // com.narvii.detail.DetailFragment
    protected int objectType() {
        return 2;
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean setListContentBgWhenHasPageBackground() {
        return !this._hasBackground;
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void unVote() {
        vote(null, null, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void updateHeader() {
        Item item = (Item) this.itemAdapter.getObject();
        boolean z6 = item != null && new FilterHelper(this).keepForLeaderAndCurator().isAccessible(item);
        if (item == null || !z6) {
            this.header.setVisibility(8);
            return;
        }
        this.header.setVisibility(0);
        int overlayHeaderHeight = getOverlayHeaderHeight();
        updateHeaderPlaceHolder();
        this.header.setLayout(R.layout.detail_item_header, overlayHeaderHeight);
        HeaderLayout headerLayout = (HeaderLayout) this.header.findViewById(R.id.item_header);
        this.headerLayout = headerLayout;
        if (this.fromHeadline) {
            headerLayout.removeActionBar2();
        }
        this.headerLayout.setPreview(this.preview);
        this.headerLayout.setIsHiddenPost(true ^ isMeAccessibleToThisPost());
        this.headerLayout.setItem(item);
        this.headerLayout.setHeight1(overlayHeaderHeight);
        this.headerLayout.setHeaderClickListener(this.headerClickListener);
        this.headerLayout.setLongClickVoteListener(this.longClickVote);
        ViewGroup.LayoutParams layoutParams = this.headerLayout.gradient.getLayoutParams();
        layoutParams.height = (getResources().getDisplayMetrics().widthPixels / 4) + getHeaderVoteLayoutHeight() + this.keywordsHeight;
        this.headerLayout.gradient.setLayoutParams(layoutParams);
        this.headerLayout.keywordsView.setOnSizeChangedListener(new KeywordsView.OnSizeChangedListener() { // from class: com.narvii.item.detail.ItemDetailFragment.5
            @Override // com.narvii.widget.KeywordsView.OnSizeChangedListener
            public void onSizeChanged(int i10, int i11) {
                ItemDetailFragment.this.keywordsHeight = i11;
                ItemDetailFragment.this.updateHeader();
            }
        });
        updateteBottomLayout(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeaderPlaceHolder() {
        View view = this.headerPlaceHolder;
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = getOverlayHeaderHeight();
        this.headerPlaceHolder.setLayoutParams(layoutParams);
    }

    void addToCategory(List<ItemCategory> list) {
        this.itemHelper.addToCategory(list, getFeed().id(), this.callback);
    }

    void addToMyFavorites() {
        this.itemHelper.addToMyFavorites(getFeed().id(), this.callback);
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void bottomComment() {
        if (this.itemAdapter != null) {
            this.blockPass.set(Boolean.TRUE);
            this.itemAdapter.commentNew();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.itemAdapter = new Adapter();
        this.commentAdapter = new CommentAdapter();
        this.tagRelatedAdapter = new TagRelatedAdapter();
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.item.detail.ItemDetailFragment.4
            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                if (ItemDetailFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                if (ItemDetailFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                return super.onLongClick(listAdapter, i10, obj, view, view2);
            }
        };
        this.mergeAdapter = mergeAdapter;
        mergeAdapter.setFlags(1);
        this.mergeAdapter.addAdapter(this.itemAdapter);
        this.relatedBlogHeaderAdapter = new RelatedBlogHeaderAdapter(this);
        WriteRelatedBlogAdapter writeRelatedBlogAdapter = new WriteRelatedBlogAdapter();
        DividerAdapter dividerAdapter = new DividerAdapter(this);
        this.divAdapter = dividerAdapter;
        dividerAdapter.setAdapter(this.tagRelatedAdapter, 0);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addLayouts(R.layout.list_bottom_placeholder);
        if (!newPreview()) {
            this.mergeAdapter.addAdapter(this.commentAdapter);
            this.mergeAdapter.addAdapter(new FeedDetailFragment.CommentFooterAdapter(this));
        }
        this.mergeAdapter.addAdapter(this.relatedBlogHeaderAdapter);
        this.mergeAdapter.addAdapter(writeRelatedBlogAdapter);
        if (!newPreview()) {
            this.mergeAdapter.addAdapter(this.divAdapter);
        }
        this.mergeAdapter.addAdapter(staticViewAdapter);
        return this.mergeAdapter;
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.semicontext.SemiStateTransfer
    public Intent getTransferIntent(Intent intent) {
        Bundle bundle = new Bundle();
        onSaveInstanceState(bundle);
        intent.putExtra("__savedInstanceState", bundle);
        return super.getTransferIntent(intent);
    }

    @Override // com.narvii.list.HoverAdapter
    public boolean isHover(int i10) {
        MergeAdapter mergeAdapter = this.mergeAdapter;
        return (mergeAdapter == null || this.disabled || mergeAdapter.getItem(i10) != DetailAdapter.COMMENT_ADD) ? false : true;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 100 && i11 == -1 && intent != null) {
            addToCategory(JacksonUtils.readListAs(intent.getStringExtra("categoryList"), ItemCategory.class));
        }
        if (i10 == 4 && i11 == -1 && intent != null) {
            this.itemAdapter.contributorList = JacksonUtils.readListAs(intent.getStringExtra("contributorList"), Contributor.class);
            this.itemAdapter.notifyDataSetChanged();
        }
        if (i10 == 111 && i11 == -1) {
            this.itemAdapter.commentNew(intent.getStringExtra("collectionId"));
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        if (bundle == null && getActivity() != null && getActivity().getIntent().hasExtra("__savedInstanceState")) {
            bundle = getActivity().getIntent().getBundleExtra("__savedInstanceState");
        }
        super.onCreate(bundle);
        this.itemHelper = new ItemHelper(this);
        setTitle("");
        if (bundle == null) {
            this.fromMyCatalog = getBooleanParam("fromMyCatalog");
        } else {
            this.fromMyCatalog = bundle.getBoolean("fromMyCatalog");
        }
        if (bundle == null) {
            StatisticsService statisticsService = (StatisticsService) getService("statistics");
            String stringParam = getStringParam(ExternalPostPreviewFragment.SOURCE);
            String str = getBooleanParam("fromOfficialCatalog") ? "official catalog" : EventConstants.PostType.WIKI;
            StatisticsEventBuilder statisticsEventBuilderUserPropInc = statisticsService.event("Detailed Page Opened").userPropInc("Detailed Page Opened Total");
            statisticsEventBuilderUserPropInc.param("type", str).source(stringParam);
            if (getBooleanParam("moreFeaturedPost")) {
                statisticsEventBuilderUserPropInc.param("More Featured Post", true);
            }
            if (getBooleanParam(EventConstants.LikePost.SBB)) {
                statisticsEventBuilderUserPropInc.param(EventConstants.LikePost.SBB, true);
            }
            if (getBooleanParam("pinned")) {
                statisticsEventBuilderUserPropInc.param("Pinned", true);
                statisticsEventBuilderUserPropInc.userPropInc("Pinned Open Total");
            }
            statisticsEventBuilderUserPropInc.param(EventConstants.CreatePost.GATED, !isMeAccessibleToThisPost());
            statisticsEventBuilderUserPropInc.userPropInc("Detailed " + str + " Page Opened");
        }
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.actions.add(LiveLayerService.ACTION_BROWSING);
        this.optinPaidAds = (this.preview || !OptinAds.optin(this, 4) || disableOptinAds()) ? false : true;
        if (getBooleanParam("justCreated", false)) {
            new PushNotificationHelper(this).showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_CREATE_POST);
        }
        hideBottomAdsView();
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z6, Intent intent) {
        if (!z6 || (!"vote".equals(intent.getAction()) && !"voteFromBottom".equals(intent.getAction()))) {
            super.onLoginResult(z6, intent);
        } else if (this.tagRelatedAdapter == null || !Utils.isEquals(intent.getStringExtra("__adapterClass"), TagRelatedAdapter.class.getName())) {
            vote(intent.hasExtra("voteValue") ? Integer.valueOf(intent.getIntExtra("voteValue", 4)) : null, null, "voteFromBottom".equals(intent.getAction()));
        } else {
            this.tagRelatedAdapter.onLoginResult(z6, intent);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        AdvancedOptionDialog advancedOptionDialog = this.advancedOptionDialog;
        if (advancedOptionDialog != null && advancedOptionDialog.isShowing()) {
            this.advancedOptionDialog.dismiss();
        }
        super.onPause();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        Callback<Integer> callback = new Callback<Integer>() { // from class: com.narvii.item.detail.ItemDetailFragment.8
            int n;

            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                int i10 = this.n + 1;
                this.n = i10;
                if (i10 == 3) {
                    ItemDetailFragment.this.swipeRefreshLayout.setRefreshing(false);
                }
            }
        };
        this.itemAdapter.refresh(1, callback);
        this.commentAdapter.refresh(1, callback);
        this.tagRelatedAdapter.refresh(1, callback);
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment
    protected boolean shouldBlockClick(Object obj) {
        if (this.notJoined && (obj == LIKES_HEADER || obj == DetailAdapter.USER_GRID || obj == DetailAdapter.COMMENT_HEADER)) {
            return false;
        }
        return super.shouldBlockClick(obj);
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void showModerationDialog() {
        AdvancedOptionDialog advancedOptionDialogBuild = new AdvancedOptionDialog.Builder(this).nvObject(getFeed()).build();
        this.advancedOptionDialog = advancedOptionDialogBuild;
        advancedOptionDialogBuild.show();
    }

    void submitOfficialCatalog() {
        this.itemHelper.submitOfficialCatalog(getFeed());
        this.itemHelper.source = "Profile";
    }

    private int getHeaderVoteLayoutHeight() {
        return (int) Utils.dpToPx(getContext(), 60.0f);
    }

    private int getOverlayHeaderHeight() {
        return getResources().getDisplayMetrics().widthPixels + getHeaderVoteLayoutHeight() + this.keywordsHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void updateBackground() {
        Adapter adapter;
        Item item;
        int backgroundColor;
        View view = getView();
        if (this.backgroundView == null || (adapter = this.itemAdapter) == null || (item = (Item) adapter.getObject()) == null) {
            return;
        }
        boolean z6 = true;
        int i10 = 0;
        this.backgroundView.setBackgroundSource(item);
        setDarkTheme(isBackgroundColorDark());
        if (item.getBackgroundMedia() == null) {
            backgroundColor = item.getBackgroundColor();
        } else {
            backgroundColor = 0;
        }
        updateSBB(backgroundColor);
        this.divAdapter.setDarkTheme(isBackgroundColorDark());
        if (this.headerLayout != null) {
            if (item.getBackgroundColor() == 0) {
                z6 = false;
            }
            this.headerLayout.setDarkTheme(isBackgroundColorDark(), z6);
        }
        if (view != null) {
            int backgroundColor2 = item.getBackgroundColor();
            View viewFindViewById = view.findViewById(R.id.gradient);
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RectShape());
            if (!hasBackground()) {
                backgroundColor2 = -1;
            } else if (backgroundColor2 == 0) {
                backgroundColor2 = Utils.getColor(ViewCompat.MEASURED_STATE_MASK, 0.2f);
            }
            int i11 = backgroundColor2;
            shapeDrawable.getPaint().setShader(new LinearGradient(0.0f, 0.0f, 0.0f, getContext().getResources().getDisplayMetrics().widthPixels / 4, i11 & ViewCompat.MEASURED_SIZE_MASK, i11, Shader.TileMode.CLAMP));
            if (viewFindViewById != null) {
                viewFindViewById.setBackgroundDrawable(shapeDrawable);
            }
        }
        setTextColor(view, R.id.label, -13619152);
        TextView textView = ViewUtils.getTextView(view, R.id.label);
        if (textView != null) {
            if (isDarkTheme()) {
                i10 = -872415232;
            }
            textView.setShadowLayer(3.0f, 0.0f, 2.0f, i10);
        }
        CommentAdapter commentAdapter = this.commentAdapter;
        if (commentAdapter != null) {
            commentAdapter.setDarkTheme(isBackgroundColorDark());
        }
        TagRelatedAdapter tagRelatedAdapter = this.tagRelatedAdapter;
        if (tagRelatedAdapter != null) {
            tagRelatedAdapter.setDarkTheme(isBackgroundColorDark());
        }
        Adapter adapter2 = this.itemAdapter;
        if (adapter2 != null) {
            adapter2.setDarkTheme(isBackgroundColorDark());
        }
        RelatedBlogHeaderAdapter relatedBlogHeaderAdapter = this.relatedBlogHeaderAdapter;
        if (relatedBlogHeaderAdapter != null) {
            relatedBlogHeaderAdapter.setDarkTheme(isBackgroundColorDark());
        }
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void bookmark(String str) {
        super.bookmark(str);
        new FeedHelper(this).source(str).bookmark(getFeed(), new Callback<ApiResponse>() { // from class: com.narvii.item.detail.ItemDetailFragment.12
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                if (!ItemDetailFragment.this.isAdded() || ItemDetailFragment.this.getActivity() == null) {
                    return;
                }
                NVToast.makeText(ItemDetailFragment.this.getContext(), ItemDetailFragment.this.getString(R.string.bookmark_successful), 0).show();
                Adapter adapter = ItemDetailFragment.this.itemAdapter;
                if (adapter != null) {
                    adapter.isBookmarked = true;
                    adapter.notifyDataSetChanged();
                }
            }
        });
    }

    @Override // com.narvii.app.NVFragment
    protected void completePageViewEvent(LogEvent.Builder builder, boolean z6) {
        super.completePageViewEvent(builder, z6);
        FeedDetailAdapter<Item> feedDetailAdapter = getFeedDetailAdapter();
        if (feedDetailAdapter != null && feedDetailAdapter.getObject() != null) {
            builder.object(feedDetailAdapter.getObject());
        } else {
            builder.objectId(id()).objectType(ObjectType.item);
        }
    }

    @Override // com.narvii.detail.FeedDetailFragment, androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        final MenuItem menuItemAdd = menu.add(0, R.string.copy_to_my_favorites, 0, R.string.copy_to_my_favorites);
        menuItemAdd.setShowAsAction(2);
        if (isEmbedFragment()) {
            menuItemAdd.setActionView(R.layout.item_menu_pin_to_favorite);
            menuItemAdd.getActionView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.item.detail.ItemDetailFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ItemDetailFragment.this.onOptionsItemSelected(menuItemAdd);
                }
            });
            menuItemAdd.getActionView().setTag(R.id.embed_menu_background, 0);
            menuItemAdd.getActionView().setTag(R.id.embed_menu_scale, 1);
        } else {
            menuItemAdd.setIcon(R.drawable.ic_pin_menu);
        }
        menu.add(0, R.string.bookmark, 7, R.string.bookmark).setShowAsAction(0);
        menu.add(0, R.string.un_save, 7, R.string.un_save).setShowAsAction(0);
        menu.add(0, R.string.catalog_submit_to_official, 8, R.string.catalog_submit_to_official);
        menu.add(0, R.string.catalog_add_to_my_favorites, 8, R.string.catalog_add_to_my_favorites);
        menu.add(0, R.string.more, 8, R.string.more);
        menu.add(0, R.string.advanced, 10, R.string.advanced).setShowAsAction(0);
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.list_overlay_item_detail, viewGroup, false);
    }

    @Override // com.narvii.detail.FeedDetailFragment, androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        String str;
        if (menuItem.getItemId() == R.string.more) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.create_my_own_version, 0);
            actionSheetDialog.addItem(R.string.remove_from_my_favorites, 1);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.item.detail.ItemDetailFragment.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    if (i10 == 0) {
                        new FeedHelper(ItemDetailFragment.this) { // from class: com.narvii.item.detail.ItemDetailFragment.2.1
                            public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                                if (p1 == null) {
                                    return;
                                }
                                p0.startActivityForResult(p1, p5);
                            }

                            @Override // com.narvii.feed.FeedHelper
                            public void startActivity(Intent intent) {
                                intent.putExtra("disableOpenCallback", true);
                                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(ItemDetailFragment.this, intent, 8);
                            }
                        }.copyAndEdit(ItemDetailFragment.this.getFeed());
                    }
                    if (i10 == 1) {
                        new FeedHelper(ItemDetailFragment.this).delete(ItemDetailFragment.this.getFeed(), true);
                    }
                }
            });
            actionSheetDialog.show();
            return true;
        }
        if (menuItem.getItemId() == R.string.catalog_submit_to_official) {
            submitOfficialCatalog();
            return true;
        }
        if (menuItem.getItemId() != R.string.catalog_add_to_my_favorites && menuItem.getItemId() != R.string.copy_to_my_favorites) {
            int itemId = menuItem.getItemId();
            if (itemId != R.string.advanced) {
                if (itemId != R.string.bookmark) {
                    if (itemId != R.string.un_save) {
                        return super.onOptionsItemSelected(menuItem);
                    }
                    new FeedHelper(this).unBookmark(getFeed(), new Callback<ApiResponse>() { // from class: com.narvii.item.detail.ItemDetailFragment.3
                        @Override // com.narvii.util.Callback
                        public void call(ApiResponse apiResponse) {
                            Adapter adapter = ItemDetailFragment.this.itemAdapter;
                            if (adapter != null) {
                                adapter.isBookmarked = false;
                            }
                        }
                    });
                    return true;
                }
                bookmark("Post Detail Menu");
                return true;
            }
            showModerationDialog();
            return true;
        }
        if (menuItem.getItemId() == R.string.copy_to_my_favorites) {
            str = "titlebar";
        } else {
            str = "moremenu";
        }
        this.itemHelper.source = str;
        addToMyFavorites();
        return true;
    }

    @Override // com.narvii.detail.FeedDetailFragment, androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        int i10;
        boolean z13;
        boolean z14;
        boolean z15;
        User user;
        User user2;
        User user3;
        super.onPrepareOptionsMenu(menu);
        boolean zIsMine = isMine();
        Item feed = getFeed();
        boolean z16 = true;
        if (feed != null && feed.status() != 9) {
            z6 = true;
        } else {
            z6 = false;
        }
        Adapter adapter = this.itemAdapter;
        if (adapter != null && adapter.inMyFavorites) {
            z10 = true;
        } else {
            z10 = false;
        }
        AccountService accountService = (AccountService) getService("account");
        User userProfile = accountService.getUserProfile();
        MenuItem menuItemFindItem = menu.findItem(R.string.more);
        if (z10 && z6 && userProfile != null && !zIsMine && (user3 = feed.author) != null && user3.role == 254) {
            z11 = true;
        } else {
            z11 = false;
        }
        menuItemFindItem.setVisible(z11);
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this);
        MenuItem menuItemFindItem2 = menu.findItem(R.string.catalog_submit_to_official);
        if (z6 && zIsMine && communityConfigHelper.isCatalogEnable() && communityConfigHelper.isCatalogCutaionEnable()) {
            z12 = true;
        } else {
            z12 = false;
        }
        menuItemFindItem2.setVisible(z12);
        MenuItem menuItemFindItem3 = menu.findItem(R.string.share);
        if (!z10 && z6 && userProfile != null && !zIsMine && (user2 = feed.author) != null && user2.role == 254) {
            i10 = 0;
        } else {
            i10 = 2;
        }
        menuItemFindItem3.setShowAsAction(i10);
        if (accountService.hasAccount() && !z10 && z6 && userProfile != null && !zIsMine && (user = feed.author) != null && user.role == 254) {
            z13 = true;
        } else {
            z13 = false;
        }
        menu.findItem(R.string.copy_to_my_favorites).setVisible(z13);
        menu.findItem(R.string.catalog_add_to_my_favorites).setVisible(z13);
        User userProfile2 = accountService.getUserProfile();
        if (getFeed() != null && userProfile2 != null && userProfile2.isCurator() && !isGlobalInteractionScope()) {
            z14 = true;
        } else {
            z14 = false;
        }
        menu.findItem(R.string.advanced).setVisible(z14);
        Adapter adapter2 = this.itemAdapter;
        if (adapter2 != null && adapter2.getResponse() != null && !isGlobalInteractionScope()) {
            MenuItem menuItemFindItem4 = menu.findItem(R.string.un_save);
            Adapter adapter3 = this.itemAdapter;
            if (adapter3.isBookmarked && adapter3.getObject() != 0) {
                z15 = true;
            } else {
                z15 = false;
            }
            menuItemFindItem4.setVisible(z15);
            MenuItem menuItemFindItem5 = menu.findItem(R.string.bookmark);
            Adapter adapter4 = this.itemAdapter;
            if (adapter4.isBookmarked || adapter4.getObject() == 0) {
                z16 = false;
            }
            menuItemFindItem5.setVisible(z16);
            return;
        }
        menu.findItem(R.string.un_save).setVisible(false);
        menu.findItem(R.string.bookmark).setVisible(false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("fromMyCatalog", this.fromMyCatalog);
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        this.header = (OverlayLayout) view.findViewById(R.id.overlay);
        super.onViewCreated(view, bundle);
        this.header.attach((NVListView) getListView());
        updateHeader();
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh);
        this.swipeRefreshLayout = swipeRefreshLayout;
        if (!this.preview) {
            swipeRefreshLayout.setEnabled(false);
            this.swipeRefreshLayout.setVisibility(0);
            this.swipeRefreshLayout.setTarget((NVListView) getListView());
            this.swipeRefreshLayout.setOnRefreshListener(this);
        }
        if (getActivity() instanceof NVActivity) {
            this.header.setHeight1(getActionBarOverlaySize() + getStatusBarOverlaySize());
        }
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected void vote(Integer num, final ApiService apiService, final boolean z6) {
        LoggingSource loggingSource;
        StatisticsEventBuilder statisticsEventBuilderSource;
        FeedContinuousViewer.ContinuousLoaderListener continuousLoaderListener;
        int i10;
        final Item feed = getFeed();
        final int targetVotedValue = VoteHelper.getTargetVotedValue(num, feed, isGlobalInteractionScope());
        if (num == null && targetVotedValue == 0) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.unlike, true);
            actionSheetDialog.addItem(R.string.comment_all_likes, false);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.item.detail.ItemDetailFragment.9
                public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i11) {
                    if (i11 == 0) {
                        ItemDetailFragment.this.vote(0, apiService, z6);
                    } else if (i11 == 1) {
                        Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                        intent.putExtra("nvObject", JacksonUtils.writeAsString(feed));
                        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ItemDetailFragment.this, intent);
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        if (z6 && (continuousLoaderListener = this.continuousLoaderListener) != null) {
            if (feed.getVotedValue(isGlobalInteractionScope()) == 0) {
                i10 = 1;
            } else {
                i10 = 2;
            }
            continuousLoaderListener.onStart(R.id.bottom_vote, Integer.valueOf(i10));
        }
        if (z6) {
            loggingSource = LoggingSource.SBB;
        } else {
            loggingSource = LoggingSource.PostDetailView;
        }
        if (targetVotedValue != 0) {
            StatisticsService statisticsService = (StatisticsService) getService("statistics");
            if (feed.author.isSystem()) {
                statisticsEventBuilderSource = statisticsService.event(EventConstants.LikePost.LIKE_POST).userPropInc(UserPropConstants.PostEvents.LIKES_TOTAL).param(EventConstants.PostType.POST_TYPE, "official favorite").source(EventConstants.LikePost.PAGE_DETAILED_VIEW);
            } else {
                statisticsEventBuilderSource = statisticsService.event(EventConstants.LikePost.LIKE_POST).userPropInc(UserPropConstants.PostEvents.LIKES_TOTAL).param(EventConstants.PostType.POST_TYPE, EventConstants.PostType.WIKI).source(EventConstants.LikePost.PAGE_DETAILED_VIEW);
            }
            FirebaseLogManager.logEvent(this, statisticsEventBuilderSource);
        }
        LiveLayerUtils.reportVoting(getParentContext(), feed, targetVotedValue);
        VoteHelper voteHelper = new VoteHelper(this);
        voteHelper.loggingSource = loggingSource;
        voteHelper.loggingOriginName = getStringParam(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN);
        voteHelper.vote(feed, Integer.valueOf(targetVotedValue), apiService, new VoteHelper.OnVoteListenerAdapter() { // from class: com.narvii.item.detail.ItemDetailFragment.10
            @Override // com.narvii.story.detail.VoteHelper.OnVoteListenerAdapter, com.narvii.story.detail.VoteHelper.OnVoteListener
            public void onVoteEnd(boolean z10) {
                if (ItemDetailFragment.this.headerLayout != null) {
                    ItemDetailFragment.this.headerLayout.setVoting(false);
                }
                Adapter adapter = ItemDetailFragment.this.itemAdapter;
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
                if (!z10) {
                    if (z6) {
                        if (((FeedDetailFragment) ItemDetailFragment.this).continuousLoaderListener != null) {
                            ((FeedDetailFragment) ItemDetailFragment.this).continuousLoaderListener.onFinish(R.id.bottom_vote, 0);
                            return;
                        }
                        return;
                    } else {
                        if (((FeedDetailFragment) ItemDetailFragment.this).continuousLoader != null) {
                            ((FeedDetailFragment) ItemDetailFragment.this).continuousLoader.updateVoteIcon(ItemDetailFragment.this.getFeed().getVotedValue(ItemDetailFragment.this.isGlobalInteractionScope()), false, ItemDetailFragment.this.getFeed().getTotalVotesCount());
                            return;
                        }
                        return;
                    }
                }
                if (z6 && ((FeedDetailFragment) ItemDetailFragment.this).continuousLoaderListener != null) {
                    ((FeedDetailFragment) ItemDetailFragment.this).continuousLoaderListener.onFinish(R.id.bottom_vote, Integer.valueOf(feed.getVotedValue(ItemDetailFragment.this.isGlobalInteractionScope()) == 0 ? 1 : 2));
                }
                if (targetVotedValue != 0) {
                    ItemDetailFragment itemDetailFragment = ItemDetailFragment.this;
                    if (itemDetailFragment.voteIconView != null) {
                        new VoteAnimationHelper(itemDetailFragment.getContext()).startAnimation(ItemDetailFragment.this.voteIconView, targetVotedValue, null);
                    }
                }
            }
        });
        HeaderLayout headerLayout = this.headerLayout;
        if (headerLayout != null) {
            headerLayout.setVoting(true);
        }
        Adapter adapter = this.itemAdapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }
}
