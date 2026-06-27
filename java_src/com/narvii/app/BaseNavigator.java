package com.narvii.app;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.achievements.AchievementsFragment;
import com.narvii.achievements.AllRanksFragment;
import com.narvii.amino.MainActivity;
import com.narvii.amino.mastes.R;
import com.narvii.blog.detail.BlogDetailFragment;
import com.narvii.catalog.CatalogFragment;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.ChatMessageItemDetailFragment;
import com.narvii.chat.detail.ThreadDetailFragment;
import com.narvii.chat.global.chat.AggregationChatFragment;
import com.narvii.chat.hangout.HangoutListFragment;
import com.narvii.chat.thread.MyChatsListFragment;
import com.narvii.comment.CommentDetailFragment;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.feed.BlogAllListFragment;
import com.narvii.feed.BlogCategoryListFragment;
import com.narvii.feed.BlogFollowingListFragment;
import com.narvii.feed.BlogInCategoryListFragment;
import com.narvii.feed.BlogRecommendedListFragment;
import com.narvii.feed.ExternalPostListFragment;
import com.narvii.feed.FrontFeedListFragment;
import com.narvii.feed.SubTypeFeedListFragment;
import com.narvii.feed.quizzes.BestQuizzesListFragment;
import com.narvii.feed.quizzes.PlaygroundQuizzesListFragment;
import com.narvii.feed.quizzes.QuizzesListFragment;
import com.narvii.feed.quizzes.QuizzesResultRankingListFragment;
import com.narvii.feed.quizzes.TrendingQuizListFragment;
import com.narvii.guideline.GuidelineFragment;
import com.narvii.influencer.FansListFragment;
import com.narvii.influencer.MySubscriptionListFragment;
import com.narvii.item.detail.ItemDetailFragment;
import com.narvii.leaderboard.LeaderBoardTabFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.master.search.GlobalHashTagFragment;
import com.narvii.master.search.GlobalSearchTabFragment;
import com.narvii.members.PeopleListFragment;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.modulization.page.Page;
import com.narvii.monetization.avatarframe.MonetizationStoreAvatarFrameFragment;
import com.narvii.monetization.bubble.detail.BubbleDetailFragment;
import com.narvii.monetization.coupons.CouponListFragment;
import com.narvii.monetization.sticker.collection.StickerCollectionDispatchFragment;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.monetization.store.data.StoreSection;
import com.narvii.navigator.Navigator;
import com.narvii.notice.AggregationNoticeFragment;
import com.narvii.notice.NoticeListFragment;
import com.narvii.onlinestatus.OnlineMembersFragment;
import com.narvii.prefs.AccountSettingFragment;
import com.narvii.prefs.SettingsFragment;
import com.narvii.search.SearchKeywordTabFragment;
import com.narvii.search.SearchPagesFragment;
import com.narvii.sharedfolder.AllSharedPhotosFragment;
import com.narvii.sharedfolder.SharedAlbumDetailFragment;
import com.narvii.sharedfolder.SharedAlbumFragment;
import com.narvii.sharedfolder.SharedFolderFragment;
import com.narvii.sharedfolder.SharedPhotoCollectionFragment;
import com.narvii.sharedfolder.SharedPhotoDetailFragment;
import com.narvii.story.StoryFeedListFragment;
import com.narvii.story.StoryListFragment;
import com.narvii.topic.TopicTabFragment;
import com.narvii.topic.TopicTabFragmentKt;
import com.narvii.topic.model.TopicTabHelper;
import com.narvii.user.profile.BioDetailFragment;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.AppUpgradeFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import com.narvii.util.StringUtils;
import com.narvii.wallet.MembershipMainRecyclerFragment;
import com.narvii.wallet.PaidOutDetailFragment;
import com.narvii.wallet.WalletRecyclerFragment;
import com.narvii.webview.WebViewFragment;
import com.narvii.widget.NVImageView;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class BaseNavigator implements Navigator {
    protected NVContext context;
    protected final String myScheme;
    protected static final Pattern RAW_HTTP_PATTERN = Pattern.compile("/web/x(\\d+)+/([\\d\\w]+)/([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})", 2);
    private static final Pattern UUID_REGEX = Pattern.compile("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 2);
    private static final HashMap<String, String> TYPE_MAP = new HashMap<>();
    private static final HashMap<String, String> TYPE_ID_MAP = new HashMap<>();

    protected abstract Intent pathMapping(Intent intent);

    protected abstract Intent rawHttpMapping(int i, String str, String str2);

    public BaseNavigator(NVContext nVContext, String str) {
        this.context = nVContext;
        this.myScheme = str == null ? "ndc" : str;
        Log.i("navigator inited with schemes " + this.myScheme + "://");
    }

    public String getMyScheme() {
        return this.myScheme;
    }

    protected boolean isMyScheme(String str) {
        return this.myScheme.equals(str) || "ndc".equals(str);
    }

    protected boolean isHttpScheme(String str) {
        return "http".equals(str) || "https".equals(str);
    }

    protected boolean noMapping(Intent intent) {
        if (!intent.getBooleanExtra("_noMapping", false) && intent.getComponent() == null) {
            return !(intent.getPackage() == null || this.context.getContext().getPackageName().equals(intent.getPackage())) || intent.getData() == null || intent.getData().getScheme() == null;
        }
        return true;
    }

    @Override // com.narvii.navigator.Navigator
    public Intent intentMapping(Intent intent) {
        if (noMapping(intent)) {
            return intent;
        }
        String lowerCase = intent.getData().getScheme().toLowerCase(Locale.US);
        if (isMyScheme(lowerCase)) {
            try {
                return pathMapping(intent);
            } catch (Exception e) {
                Log.e("path mapping error: ", e);
                return intent;
            }
        }
        if (!isHttpScheme(lowerCase)) {
            return intent;
        }
        try {
            return httpMapping(intent);
        } catch (Exception e2) {
            Log.e("http mapping error: ", e2);
            return intent;
        }
    }

    static {
        TYPE_MAP.put("0", GlobalProfileFragment.KEY_USER);
        TYPE_MAP.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, "blog");
        TYPE_MAP.put("2", "item");
        TYPE_MAP.put("131", "announcement");
        TYPE_MAP.put("109", "photo");
        for (Map.Entry<String, String> entry : TYPE_MAP.entrySet()) {
            TYPE_ID_MAP.put(entry.getValue(), entry.getKey());
        }
    }

    protected Intent httpMapping(Intent intent) {
        try {
            Uri data = intent.getData();
            if (("http".equalsIgnoreCase(data.getScheme()) || "https".equalsIgnoreCase(data.getScheme())) && new PackageUtils(this.context.getContext()).isPermalinkHost(data.getHost())) {
                Matcher matcher = RAW_HTTP_PATTERN.matcher(data.getPath());
                if (matcher.matches()) {
                    Intent intentRawHttpMapping = rawHttpMapping(Integer.parseInt(matcher.group(1)), matcher.group(2), matcher.group(3));
                    if (intentRawHttpMapping != null) {
                        return intentRawHttpMapping;
                    }
                }
            }
        } catch (Exception unused) {
        }
        boolean booleanExtra = intent.getBooleanExtra("__forward", false);
        if (!booleanExtra && ForwardActivity.translateLinkQuery(intent.getDataString()) != null) {
            setClass(intent, ForwardActivity.class);
        } else if (!booleanExtra && (ForwardActivity.isInviteLink(intent.getDataString()) || ForwardActivity.isCommunityLink(intent.getDataString()))) {
            setClass(intent, ForwardActivity.class);
        } else {
            setClass(intent, AminoWebViewFragment.class);
        }
        return intent;
    }

    protected Intent pathMapping(Intent intent, String str, String str2, String str3, String str4) {
        return pathMapping(intent, false, str, str2, str3, str4);
    }

    protected Intent pathMapping(Intent intent, boolean z, String str, String str2, String str3, String str4) {
        User userProfile;
        intent.putExtra(NVActivity.INTERACTION_SCOPE, z);
        if ("fragment".equals(str) && "ndc".equals(intent.getScheme())) {
            if (str2 != null) {
                intent.putExtra("fragment", str2);
            }
            setClass(intent, FragmentWrapperActivity.class);
        }
        if (Page.HOME.equals(str) || "news-feed".equals(str) || "default".equals(str) || "relogin".equals(str)) {
            if (NVApplication.CLIENT_TYPE == 101) {
                intent.addFlags(268468224);
            }
            setClass(intent, MainActivity.class);
        }
        if ("app-upgrade".equals(str)) {
            setClass(intent, AppUpgradeFragment.class);
        }
        if ("comment-list".equals(str) || "g-comment-list".equals(str)) {
            if (isObjectType(str2) && isUUID(str3)) {
                intent.putExtra(CommentListFragment.COMMENT_KEY_PARENT_TYPE, getObjectTypeId(str2));
                intent.putExtra(CommentListFragment.COMMENT_KEY_PARENT_ID, str3);
            }
            intent.putExtra(NVActivity.INTERACTION_SCOPE, "g-comment-list".equals(str) || z);
            setClass(intent, CommentListFragment.class);
        }
        if (("comment".equals(str) || "g-comment".equals(str)) && isUUID(str2)) {
            intent.putExtra("comment-id", str2);
            intent.putExtra(NVActivity.INTERACTION_SCOPE, "g-comment".equals(str) || z);
            if (isObjectType(str3) && isUUID(str4)) {
                intent.putExtra(CommentListFragment.COMMENT_KEY_PARENT_TYPE, getObjectTypeId(str3));
                intent.putExtra(CommentListFragment.COMMENT_KEY_PARENT_ID, str4);
            }
            setClass(intent, CommentDetailFragment.class);
        }
        if ("user-profile".equals(str) && isUUID(str2)) {
            intent.putExtra("id", str2);
            if ("fan-club".equals(str3)) {
                setClass(intent, FansListFragment.class);
            } else if ("bio".equals(str3)) {
                setClass(intent, BioDetailFragment.class);
            } else if (z) {
                if ("comment".equals(str3)) {
                    intent.putExtra("tab", "comment");
                }
                setClass(intent, GlobalProfileFragment.class);
            } else {
                if ("comment".equals(str3)) {
                    intent.putExtra("tab", "comment");
                }
                setClass(intent, UserProfileFragment.class);
            }
        }
        if ("shared-folder".equals(str)) {
            if ("albums".equals(str2)) {
                setClass(intent, SharedAlbumFragment.class);
            } else if ("photos".equals(str2)) {
                setClass(intent, AllSharedPhotosFragment.class);
            } else if (isUUID(str2)) {
                intent.putExtra("id", str2);
                setClass(intent, SharedAlbumDetailFragment.class);
            } else if (isUUID(intent.getData().getQueryParameter("notification-id"))) {
                intent.putExtra("id", intent.getData().getQueryParameter("notification-id"));
                setClass(intent, SharedPhotoCollectionFragment.class);
            } else {
                setClass(intent, SharedFolderFragment.class);
            }
        }
        if ("shared-folder".equals(str) && isUUID(str2)) {
            intent.putExtra("id", str2);
            setClass(intent, SharedAlbumDetailFragment.class);
        }
        if ("shared-file".equals(str) && isUUID(str2)) {
            intent.putExtra("id", str2);
            setClass(intent, SharedPhotoDetailFragment.class);
        }
        if ("item".equals(str) && isUUID(str2)) {
            intent.putExtra("id", str2);
            setClass(intent, ItemDetailFragment.class);
        }
        if ("blog".equals(str) && isUUID(str2)) {
            intent.putExtra("id", str2);
            if (intent.getData() != null && "fullscreenplay".equalsIgnoreCase(intent.getData().getQueryParameter("displayMode"))) {
                setClass(intent, StoryListFragment.class);
            } else {
                setClass(intent, BlogDetailFragment.class);
            }
        }
        if ("announcement".equals(str) && isUUID(str2)) {
            intent.putExtra("id", str2);
            intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, true);
            setClass(intent, BlogDetailFragment.class);
        }
        if ("chat-thread".equals(str) && isUUID(str2)) {
            if ("description".equals(str3)) {
                intent.putExtra("id", str2);
                setClass(intent, ThreadDetailFragment.class);
            } else {
                intent.putExtra("id", str2);
                setClass(intent, ChatFragment.class);
            }
        }
        if (NVImageView.TYPE_CHAT_MESSAGE.equals(str) && isUUID(str2)) {
            String queryParameter = intent.getData().getQueryParameter("threadId");
            if (isUUID(queryParameter)) {
                intent.putExtra("threadId", queryParameter);
                intent.putExtra(ChatMessageItemDetailFragment.KEY_MESSAGE_ID, str2);
                setClass(intent, ChatMessageItemDetailFragment.class);
            } else if (isUUID(str4)) {
                intent.putExtra("threadId", str4);
                intent.putExtra(ChatMessageItemDetailFragment.KEY_MESSAGE_ID, str2);
                setClass(intent, ChatMessageItemDetailFragment.class);
            }
        }
        if ("description".equals(str)) {
            setClass(intent, CommunityDetailFragment.class);
            intent.putExtra(CommunityDetailFragment.KEY_INVITATION_CODE, intent.getData().getQueryParameter(CommunityDetailFragment.KEY_INVITATION_CODE));
            return intent;
        }
        if ("chat-thread-settings".equals(str) && isUUID(str2)) {
            intent.putExtra("id", str2);
            setClass(intent, ThreadDetailFragment.class);
        }
        if ("item-category".equals(str) && isUUID(str2)) {
            setClass(intent, CatalogFragment.class);
            intent.putExtra("categoryId", str2);
        }
        if ("blog-category".equals(str) && isUUID(str2)) {
            setClass(intent, BlogInCategoryListFragment.class);
            intent.putExtra("id", str2);
        }
        if ("achievement".equals(str) && isUUID(str2)) {
            setClass(intent, AchievementsFragment.class);
            intent.putExtra("id", str2);
        }
        if ("my-chats".equals(str)) {
            if (z) {
                setClass(intent, AggregationChatFragment.class);
            } else {
                setClass(intent, MyChatsListFragment.class);
            }
        }
        if ("all-ranks".equals(str)) {
            setClass(intent, AllRanksFragment.class);
        }
        if ("online-members".equals(str)) {
            setClass(intent, OnlineMembersFragment.class);
        }
        if ("all-members".equals(str)) {
            setClass(intent, PeopleListFragment.class);
        }
        if ("search".equals(str)) {
            if (TextUtils.isEmpty(str2)) {
                if (z) {
                    setClass(intent, GlobalSearchTabFragment.class);
                } else {
                    setClass(intent, SearchKeywordTabFragment.class);
                }
            } else if (z) {
                intent.putExtra("hashTag", str2);
                intent.putExtra("title", "#" + str2);
                setClass(intent, GlobalHashTagFragment.class);
            } else {
                intent.putExtra("q", str2);
                intent.putExtra("title", "#" + str2);
                setClass(intent, SearchPagesFragment.class);
            }
        }
        if ("store".equals(str)) {
            String queryParameter2 = intent.getData().getQueryParameter("sectionGroupId");
            if ("items".equals(str2) && !TextUtils.isEmpty(queryParameter2)) {
                intent.putExtra("sectionGroupId", queryParameter2);
                setClass(intent, StoreSection.getSectionFragment(queryParameter2));
            } else {
                setClass(intent, MonetizationStoreMainFragment.class);
            }
        }
        if ("sticker-collection".equals(str) && isUUID(str2)) {
            intent.putExtra("id", str2);
            setClass(intent, StickerCollectionDispatchFragment.class);
        }
        if (StoreSection.GROUP_TYPE_CHAT_BUBBLE.equals(str) && isUUID(str2)) {
            intent.putExtra("id", str2);
            setClass(intent, BubbleDetailFragment.class);
        }
        if (StoreSection.GROUP_TYPE_AVATAR_FRAME.equals(str) && isUUID(str2)) {
            intent.putExtra("id", str2);
            setClass(intent, MonetizationStoreAvatarFrameFragment.class);
        }
        if ("user-me".equals(str) && (userProfile = ((AccountService) this.context.getService("account")).getUserProfile()) != null) {
            intent.putExtra("id", userProfile.uid);
            intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(userProfile));
            setClass(intent, UserProfileFragment.class);
        }
        if (Module.MODULE_CATALOG.equals(str)) {
            intent.putExtra("isAllEntry", !new CommunityConfigHelper(this.context).isCatalogCutaionEnable());
            setClass(intent, CatalogFragment.class);
        }
        if ("leaderboards".equals(str)) {
            setClass(intent, LeaderBoardTabFragment.class);
        }
        if ("notifications".equals(str)) {
            if (z) {
                setClass(intent, AggregationNoticeFragment.class);
                intent.putExtra("targetCidTab", 0);
            } else {
                setClass(intent, NoticeListFragment.class);
            }
        }
        if ("login".equals(str)) {
            setClass(intent, LoginActivity.class);
        }
        if ("activation".equals(str) || "update-email".equals(str) || "reset-password".equals(str)) {
            setClass(intent, AccountSettingFragment.class);
        }
        if ("community".equals(str) && StringUtils.parseInt(str2, 0) > 0) {
            intent.putExtra("id", StringUtils.parseInt(str2, 0));
            setClass(intent, CommunityDetailFragment.class);
        }
        if ("topic".equals(str)) {
            setClass(intent, TopicTabFragment.class);
            try {
                intent.putExtra(TopicTabFragmentKt.KEY_TOPIC_ID, Integer.parseInt(str2));
            } catch (Exception unused) {
            }
            if (str3 != null) {
                if ("discover".equals(str3)) {
                    intent.putExtra(TopicTabFragmentKt.KEY_TOPIC_DEFAULT_TAB, TopicTabHelper.TYPE_DISCOVER);
                } else if ("stories".equals(str3)) {
                    intent.putExtra(TopicTabFragmentKt.KEY_TOPIC_DEFAULT_TAB, "STORY");
                } else if ("communities".equals(str3)) {
                    intent.putExtra(TopicTabFragmentKt.KEY_TOPIC_DEFAULT_TAB, TopicTabHelper.TYPE_COMMUNITY);
                } else if ("chats".equals(str3)) {
                    intent.putExtra(TopicTabFragmentKt.KEY_TOPIC_DEFAULT_TAB, TopicTabHelper.TYPE_CHAT);
                }
            }
        }
        if ("tos".equals(str)) {
            intent.putExtra("url", this.context.getContext().getString(R.string.tos_url));
            setClass(intent, AminoWebViewFragment.class);
        }
        if ("privacy".equals(str)) {
            intent.putExtra("url", this.context.getContext().getString(R.string.privacy_policy_url));
            setClass(intent, AminoWebViewFragment.class);
        }
        if ("guidelines".equals(str) || "guideline".equals(str)) {
            setClass(intent, GuidelineFragment.class);
        }
        if ("help-center".equals(str)) {
            intent.putExtra("url", this.context.getContext().getString(R.string.help_center_url));
            setClass(intent, WebViewFragment.class);
        }
        if ("settings".equals(str)) {
            if ("account".equals(str2)) {
                setClass(intent, AccountSettingFragment.class);
            } else {
                setClass(intent, SettingsFragment.class);
            }
        }
        if ("public-chats".equals(str)) {
            setClass(intent, HangoutListFragment.class);
        }
        if (QuizzesResultRankingListFragment.KEY_CURRENT_QUIZ.equals(str)) {
            if ("best".equals(str2)) {
                intent.putExtra("title", this.context.getContext().getString(R.string.page_best_quizzes));
                setClass(intent, BestQuizzesListFragment.class);
            } else if ("trending".equals(str2)) {
                intent.putExtra("title", this.context.getContext().getString(R.string.page_trending_quizzes));
                setClass(intent, TrendingQuizListFragment.class);
            } else if ("latest".equals(str2)) {
                intent.putExtra("title", this.context.getContext().getString(R.string.page_latest_quizzes));
                setClass(intent, PlaygroundQuizzesListFragment.class);
            } else {
                intent.putExtra("title", this.context.getContext().getString(R.string.page_quizzes));
                setClass(intent, QuizzesListFragment.class);
            }
        }
        if ("following-feed".equals(str)) {
            setClass(intent, BlogFollowingListFragment.class);
        }
        if ("latest-posts".equals(str)) {
            setClass(intent, BlogAllListFragment.class);
        }
        if ("recommended-posts".equals(str)) {
            setClass(intent, BlogRecommendedListFragment.class);
        }
        if ("link-posts".equals(str)) {
            intent.putExtra("type", SubTypeFeedListFragment.TYPE_LINK_RECENT);
            intent.putExtra("title", this.context.getContext().getString(R.string.page_link_post));
            setClass(intent, SubTypeFeedListFragment.class);
        }
        if ("blogs".equals(str)) {
            intent.putExtra("type", SubTypeFeedListFragment.TYPE_BLOGS_RECENT);
            intent.putExtra("title", this.context.getContext().getString(R.string.page_blog));
            setClass(intent, SubTypeFeedListFragment.class);
        }
        if ("polls".equals(str)) {
            intent.putExtra("type", SubTypeFeedListFragment.TYPE_POLLS_RECENT);
            intent.putExtra("title", this.context.getContext().getString(R.string.page_poll));
            setClass(intent, SubTypeFeedListFragment.class);
        }
        if (Module.MODULE_FEATURED.equals(str)) {
            setClass(intent, FrontFeedListFragment.class);
        }
        if ("questions".equals(str)) {
            intent.putExtra("type", SubTypeFeedListFragment.TYPE_QUESTIONS_RECENT);
            intent.putExtra("title", this.context.getContext().getString(R.string.page_question));
            setClass(intent, SubTypeFeedListFragment.class);
        }
        if ("stories".equals(str)) {
            intent.putExtra("type", SubTypeFeedListFragment.TYPE_STORIES_RECENT);
            intent.putExtra("title", this.context.getContext().getString(R.string.page_story));
            setClass(intent, StoryFeedListFragment.class);
        }
        if ("image-posts".equals(str)) {
            intent.putExtra("type", SubTypeFeedListFragment.TYPE_IMAGES_RECENT);
            intent.putExtra("title", this.context.getContext().getString(R.string.page_image_post));
            setClass(intent, SubTypeFeedListFragment.class);
        }
        if ("external-posts".equals(str)) {
            if (isUUID(str2)) {
                intent.putExtra(ExternalPostListFragment.KEY_SOURCE_ORIGIN_ID, str2);
                setClass(intent, ExternalPostListFragment.class);
            } else {
                intent.putExtra("type", SubTypeFeedListFragment.TYPE_EXTERNAL_POST);
                intent.putExtra("title", this.context.getContext().getString(R.string.page_external_post));
                setClass(intent, SubTypeFeedListFragment.class);
            }
        }
        if ("paid-out-log".equals(str) && isUUID(str2)) {
            intent.putExtra("paidOutId", str2);
            setClass(intent, PaidOutDetailFragment.class);
        }
        if ("membership".equals(str)) {
            setClass(intent, MembershipMainRecyclerFragment.class);
        }
        if ("wallet".equals(str)) {
            setClass(intent, WalletRecyclerFragment.class);
        }
        if ("subscription".equals(str)) {
            setClass(intent, MySubscriptionListFragment.class);
        }
        if ("blog-categories".equals(str)) {
            setClass(intent, BlogCategoryListFragment.class);
        }
        if ("coupon".equals(str)) {
            setClass(intent, CouponListFragment.class);
        }
        return intent;
    }

    protected void setClass(Intent intent, Class<?> cls) {
        if (Fragment.class.isAssignableFrom(cls)) {
            String name = null;
            try {
                name = (String) cls.getField("WRAPPER_ACTIVITY").get(null);
            } catch (Exception unused) {
            }
            String packageName = this.context.getContext().getPackageName();
            if (name == null) {
                name = FragmentWrapperActivity.class.getName();
            }
            intent.setClassName(packageName, name);
            intent.putExtra("fragment", cls.getName());
            return;
        }
        intent.setClassName(this.context.getContext().getPackageName(), cls.getName());
    }

    protected boolean isUUID(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return UUID_REGEX.matcher(str).matches();
    }

    protected boolean isObjectType(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        return TYPE_MAP.containsKey(lowerCase) || TYPE_ID_MAP.containsKey(lowerCase);
    }

    protected int getObjectTypeId(String str) {
        String lowerCase = str.toLowerCase(Locale.US);
        if (TYPE_MAP.get(lowerCase) != null) {
            return Integer.parseInt(lowerCase);
        }
        String str2 = TYPE_ID_MAP.get(lowerCase);
        if (str2 != null) {
            return Integer.parseInt(str2);
        }
        return -1;
    }
}
