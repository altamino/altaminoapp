package com.narvii.drawer;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.GridLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.DrawerActivity;
import com.narvii.app.ForwardActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.CommunityRecycleAdapter;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.community.MyCommunityListService;
import com.narvii.community.RecentCommunityHelper;
import com.narvii.community.ReminderCheck;
import com.narvii.community.search.MasterThemeHelper;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.SwitchAdapter;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.master.CommunityHelper;
import com.narvii.master.CommunityListResponse;
import com.narvii.master.MasterHelper;
import com.narvii.master.home.discover.DiscoverTabFragment;
import com.narvii.master.search.GlobalSearchBaseFragment;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Callback;
import com.narvii.util.LanguageHelper;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.SplashUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.LinearLayoutManagerWithSmoothScroller;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.ProxyView;
import com.narvii.widget.ProxyViewHost;
import com.narvii.widget.SmoothProgressBar;
import com.safedk.android.utils.Logger;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public class DrawerRightHost extends ProxyViewHost implements View.OnClickListener, SwipeRefreshLayout.OnRefreshListener, MyCommunityListService.MyCommunityListObserver {
    static final long LAUNCH_TITLE_SHOW_DELAY = 700;
    static final int MODE_CLOSE_DRAWER_AND_START = 1;
    static final int MODE_START_AND_CLOSE_DRAWER = 2;
    static final long REFRESH_COMMUNITY_LIST_DURATION;
    static final long REFRESH_SUGGEST_LIST_DURATION;
    static final long REMINDER_CHECK_DURATION;
    static final long RESET_SCROLL_TIME;
    AccountService account;
    Activity activity;
    Adapter adapter;
    DrawerRealtimeBlurView blurView;
    LocalBroadcastManager broadcastManager;
    private final ChatService.ChatMessageReceptor chatCheckListener;
    ChatService chatService;
    int cid;
    NVContext context;
    ListAdapter currentAdapter;
    ListAdapter finalAdapter;
    boolean isMaster;
    MyLaunchHelper launchHelper;
    final View.OnClickListener launchRecentListener;
    NVListView listView;
    boolean listenerReged;
    MyCommunityListService myCommunityListService;
    SharedPreferences prefs;
    private final AccountService.ProfileListener profileListener;
    RecentAdapter recentAdapter;
    RecentCommunityHelper recentCommunityHelper;
    private Runnable removeLaunchSplashAndCloseDrawer;
    Runnable resetDelayed;
    SuggestedCommunityAdapter suggestAdapter;
    boolean suggestOnBottom;
    SwitchAdapter suggestSwitchBottom;
    SwitchAdapter suggestSwitchTop;
    SwipeRefreshLayout swipeRefreshLayout;
    private final BroadcastReceiver themeDownLoadReceiver;

    class Adapter extends NVAdapter {
        boolean hasAccount;

        public static void safedk_DrawerRightHost_startActivity_60465904c27c59f1410e9f7c185f6a6e(DrawerRightHost p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerRightHost;->startActivity(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1, p5);
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        public Adapter() {
            super(DrawerRightHost.this.context);
            setDarkTheme(true);
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            if (this.hasAccount) {
                return DrawerRightHost.this.myCommunityListService.errorMessage();
            }
            return null;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (!this.hasAccount) {
                return 1;
            }
            int size = list().size();
            if (size == 0) {
                return 0;
            }
            return size + 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            if (!this.hasAccount) {
                return NVPagedAdapter.LIST_END;
            }
            List<Community> list = list();
            if (i10 < list.size()) {
                return list.get(i10);
            }
            if (isEnd()) {
                return NVPagedAdapter.LIST_END;
            }
            return errorMessage() == null ? NVPagedAdapter.LOADING : NVPagedAdapter.ERROR;
        }

        public boolean isEnd() {
            if (this.hasAccount) {
                return DrawerRightHost.this.myCommunityListService.isEnd();
            }
            return true;
        }

        public List<Community> list() {
            return this.hasAccount ? DrawerRightHost.this.myCommunityListService.list() : Collections.emptyList();
        }

        @Override // com.narvii.list.NVAdapter
        public void onErrorRetry() {
            if (this.hasAccount) {
                DrawerRightHost.this.myCommunityListService.retryRetry();
            }
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj instanceof Community) {
                ComponentCallbacks2 componentCallbacks2 = DrawerRightHost.this.activity;
                if (componentCallbacks2 instanceof NVContext) {
                    Community community = (Community) obj;
                    if (((ConfigService) ((NVContext) componentCallbacks2).getService("config")).getCommunityId() == community.id) {
                        NVToast.makeText(DrawerRightHost.this.activity, R.string.already_in_community, 1).show();
                        DrawerRightHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
                    } else if (DrawerRightHost.this.isMaster) {
                        SmoothProgressBar smoothProgressBar = (SmoothProgressBar) view.findViewById(R.id.progress);
                        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.image);
                        DrawerRightHost drawerRightHost = DrawerRightHost.this;
                        drawerRightHost.launchHelper = drawerRightHost.new MyLaunchHelper((NVContext) drawerRightHost.activity);
                        DrawerRightHost.this.launchHelper.launchCommunity(community, nVImageView, smoothProgressBar);
                    } else {
                        PackageUtils packageUtils = new PackageUtils(DrawerRightHost.this.activity);
                        if (packageUtils.isPackageInstalled(packageUtils.getMasterPackageName())) {
                            try {
                                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(packageUtils.getMasterScheme() + "://x" + community.id + "/description"));
                                intent.putExtra(ForwardActivity.CLEAR_TASK, true);
                                safedk_DrawerRightHost_startActivity_60465904c27c59f1410e9f7c185f6a6e(DrawerRightHost.this, intent, 1);
                            } catch (Exception unused) {
                            }
                        } else {
                            ComponentCallbacks2 componentCallbacks3 = DrawerRightHost.this.activity;
                            if (componentCallbacks3 instanceof NVContext) {
                                new MasterHelper((NVContext) componentCallbacks3).showDownloadMaterDialog("ndc://x" + community.id + "/description");
                            }
                        }
                    }
                    return true;
                }
            }
            if (obj == NVPagedAdapter.LIST_END) {
                DrawerRightHost.this.explore();
                return true;
            }
            if (obj != NVPagedAdapter.ERROR) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            DrawerRightHost.this.myCommunityListService.loadNextPage(false);
            return true;
        }

        public void prepare() {
            boolean zHasAccount = DrawerRightHost.this.account.hasAccount();
            this.hasAccount = zHasAccount;
            if (!zHasAccount || isListShown()) {
                return;
            }
            DrawerRightHost.this.myCommunityListService.loadNextPage(true);
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            if (this.hasAccount) {
                DrawerRightHost.this.myCommunityListService.refresh(i10, callback);
            } else {
                super.refresh(i10, callback);
            }
        }

        public void resumed() {
            if (this.hasAccount && isListShown() && DrawerRightHost.this.myCommunityListService.getCommunityRequestTime() < SystemClock.elapsedRealtime() - DrawerRightHost.REFRESH_COMMUNITY_LIST_DURATION) {
                DrawerRightHost.this.myCommunityListService.refresh(256, null);
            }
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            Object item = getItem(i10);
            if (item instanceof Community) {
                return 0;
            }
            if (item == NVPagedAdapter.LIST_END) {
                return 1;
            }
            if (item == NVPagedAdapter.LOADING) {
                return 2;
            }
            if (item == NVPagedAdapter.ERROR) {
                return 3;
            }
            return -1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            boolean z6;
            int i11;
            Object item = getItem(i10);
            if (item instanceof Community) {
                Community community = (Community) item;
                View viewCreateView = createView(R.layout.incubator_my_community_item, viewGroup, view);
                PromotionalImageView promotionalImageView = (PromotionalImageView) viewCreateView.findViewById(R.id.image);
                promotionalImageView.showLaunchPage = true;
                promotionalImageView.preloadCachedImage = true;
                promotionalImageView.setCommunity(community);
                NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.icon);
                nVImageView.setImageUrl(community.icon);
                nVImageView.setStrokeColor(community.themeColor());
                TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
                textView.setText(community.name);
                ViewUtils.setMontserratExtraBoldTypeface(textView);
                User userProfile = DrawerRightHost.this.myCommunityListService.getUserProfile(community.id);
                if (community.probationStatus == 1 && userProfile != null && userProfile.isLeader()) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                View viewFindViewById = viewCreateView.findViewById(R.id.probation);
                if (z6) {
                    i11 = 0;
                } else {
                    i11 = 8;
                }
                viewFindViewById.setVisibility(i11);
                View viewFindViewById2 = viewCreateView.findViewById(R.id.progress);
                MyLaunchHelper myLaunchHelper = DrawerRightHost.this.launchHelper;
                if (myLaunchHelper != null && myLaunchHelper.progressBar == viewFindViewById2) {
                    Community community2 = myLaunchHelper.community;
                    if (community2 != null && community2.id != community.id) {
                        viewFindViewById2.setVisibility(4);
                        DrawerRightHost.this.cancelLaunch();
                    } else {
                        viewFindViewById2.setVisibility(0);
                    }
                } else {
                    viewFindViewById2.setVisibility(4);
                }
                DrawerRightHost.this.updateRemindersInCell(viewCreateView, community, true);
                viewCreateView.setTag(community);
                return viewCreateView;
            }
            if (item == NVPagedAdapter.LIST_END) {
                View viewCreateView2 = createView(R.layout.incubator_my_community_join_item, viewGroup, view);
                ((TextView) viewCreateView2.findViewById(R.id.hint)).setTextSize(1, 14.0f);
                return viewCreateView2;
            }
            if (item == NVPagedAdapter.LOADING) {
                View viewCreateView3 = createView(R.layout.incubator_my_community_loading_item, viewGroup, view);
                DrawerRightHost.this.myCommunityListService.loadNextPage(true);
                return viewCreateView3;
            }
            return createErrorItem(viewGroup, view, errorMessage());
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return list().isEmpty();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            if (getItem(i10) == NVPagedAdapter.LOADING) {
                return false;
            }
            return super.isEnabled(i10);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            if (!isEnd() && list().size() <= 0) {
                return false;
            }
            return true;
        }
    }

    class Header extends NVAdapter {
        ListAdapter showWith;
        String text;

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        public Header(String str) {
            super(DrawerRightHost.this.context);
            this.text = str;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            ListAdapter listAdapter = this.showWith;
            return (listAdapter == null || listAdapter.getCount() != 0) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.drawer_right_section_header, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(this.text);
            return viewCreateView;
        }
    }

    class LoadingErrorAdapter extends NVAdapter {
        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }

        public LoadingErrorAdapter() {
            super(DrawerRightHost.this.context);
            setDarkTheme(true);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return DrawerRightHost.this.adapter.getCount() == 0 ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return DrawerRightHost.this.myCommunityListService.errorMessage() == null ? NVPagedAdapter.LOADING : NVPagedAdapter.ERROR;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj != NVPagedAdapter.ERROR) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            DrawerRightHost.this.myCommunityListService.loadNextPage(true);
            return true;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            if (getItem(i10) == NVPagedAdapter.LOADING) {
                return 0;
            }
            return 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (getItem(i10) == NVPagedAdapter.LOADING) {
                return createView(R.layout.drawer_right_loading_item, viewGroup, view);
            }
            return createView(R.layout.drawer_right_error_item, viewGroup, view);
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            if (getItem(i10) == NVPagedAdapter.ERROR) {
                return true;
            }
            return false;
        }
    }

    class MyLaunchHelper extends CommunityLaunchHelper {
        Community community;
        NVImageView imageView;
        Activity launchActivity;
        SmoothProgressBar progressBar;
        boolean recent;

        public MyLaunchHelper(NVContext nVContext) {
            super(nVContext, "Right Side Panel");
        }

        private void launchCid(int i10, Drawable drawable) {
            User user;
            String str;
            List<Community> list = DrawerRightHost.this.myCommunityListService.list();
            Community community = null;
            if (list != null) {
                for (Community community2 : list) {
                    if (community2.id == i10) {
                        User userProfile = DrawerRightHost.this.myCommunityListService.getUserProfile(i10);
                        String userInfoTimestamp = DrawerRightHost.this.myCommunityListService.getUserInfoTimestamp(i10);
                        if (userInfoTimestamp == null || userProfile == null) {
                            str = userInfoTimestamp;
                            user = null;
                        } else {
                            community = community2;
                            str = userInfoTimestamp;
                            user = userProfile;
                        }
                    }
                }
                user = null;
                str = null;
            } else {
                user = null;
                str = null;
            }
            launch(i10, community, str, user, str, DrawerRightHost.this.myCommunityListService.getReminder(i10), DrawerRightHost.this.myCommunityListService.getReminderTimestamp(i10), false, 2, drawable);
        }

        public void launchCommunity(Community community, NVImageView nVImageView, SmoothProgressBar smoothProgressBar) {
            this.community = community;
            this.imageView = nVImageView;
            this.progressBar = smoothProgressBar;
            smoothProgressBar.setVisibility(0);
            smoothProgressBar.setMax(100);
            smoothProgressBar.setProgress(0);
            this.recent = false;
            launchCid(community.id, nVImageView.getDrawable());
        }

        public void launchRecent(Community community, NVImageView nVImageView) {
            this.community = community;
            this.imageView = nVImageView;
            this.progressBar = null;
            this.recent = true;
            launchCid(community.id, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.community.CommunityLaunchHelper
        public void onFinish() {
            Activity activity;
            Drawable drawable;
            if (this.community == null || (activity = DrawerRightHost.this.activity) == null) {
                return;
            }
            NVImageView nVImageView = this.imageView;
            if (nVImageView == null || (drawable = this.launchImageDrawable) == null) {
                super.onFinish();
                DrawerRightHost.this.removeLaunchSplashAndCloseDrawer();
            } else {
                this.launchActivity = activity;
                SplashUtils.splash(activity, nVImageView, drawable, new Callback<Boolean>() { // from class: com.narvii.drawer.DrawerRightHost.MyLaunchHelper.1
                    @Override // com.narvii.util.Callback
                    public void call(Boolean bool) {
                        if (bool.booleanValue()) {
                            EnterCommunityHelper.SOURCE.set(MyLaunchHelper.this.source);
                            MyLaunchHelper.super.onFinish();
                            DrawerRightHost.this.removeLaunchSplashAndCloseDrawer();
                        }
                    }
                });
            }
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onProgress(int i10, float f) {
            SmoothProgressBar smoothProgressBar = this.progressBar;
            if (smoothProgressBar != null) {
                smoothProgressBar.setProgress((int) (f * 100.0f));
            }
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void cancel() {
            super.cancel();
            this.community = null;
            this.imageView = null;
            SmoothProgressBar smoothProgressBar = this.progressBar;
            if (smoothProgressBar != null) {
                smoothProgressBar.setProgress(0);
                this.progressBar.setVisibility(4);
            }
            this.progressBar = null;
            Activity activity = this.launchActivity;
            if (activity != null) {
                SplashUtils.cancelSplash(activity);
            }
            this.launchActivity = null;
        }
    }

    class RecentAdapter extends NVAdapter {
        View cell;
        List<Community> list;

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        void reset() {
            this.cell = null;
        }

        public RecentAdapter() {
            super(DrawerRightHost.this.context);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<Community> list = this.list;
            return (list == null || list.size() == 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = this.cell;
            if (viewCreateView == null) {
                viewCreateView = createView(R.layout.drawer_right_recent, viewGroup, null);
            }
            updateCell(viewCreateView, this.list);
            return viewCreateView;
        }

        public void refreshReminders(boolean z6) {
            if (DrawerRightHost.this.account.hasAccount()) {
                for (Community community : this.list) {
                    if (z6 || DrawerRightHost.this.myCommunityListService.getReminder(community.id) == null || DrawerRightHost.this.myCommunityListService.getReminderRequestTime(community.id) < SystemClock.elapsedRealtime() - DrawerRightHost.REMINDER_CHECK_DURATION) {
                        DrawerRightHost.this.myCommunityListService.addReminderRequestQueue(community.id);
                    }
                    DrawerRightHost.this.chatService.addThreadCheckQueue(community.id);
                }
            }
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return hashCode();
        }

        void update() {
            int communityId;
            int count = getCount();
            Activity activity = DrawerRightHost.this.activity;
            if (activity != null) {
                communityId = ((ConfigService) Utils.getNVContext(activity).getService("config")).getCommunityId();
            } else {
                communityId = 0;
            }
            this.list = DrawerRightHost.this.recentCommunityHelper.getRecentList(communityId, 8);
            int count2 = getCount();
            View view = this.cell;
            if (view != null && count == count2) {
                updateCell(view, this.list);
            } else {
                notifyDataSetChanged();
            }
        }

        void updateCell(View view, List<Community> list) {
            Community community;
            ReminderCheck reminder;
            int unreadChatCountInCurCommunity;
            int i10;
            String str;
            int i11;
            String strValueOf;
            int i12;
            GridLayout gridLayout = (GridLayout) view.findViewById(R.id.grid);
            int dimensionPixelSize = ((view.getResources().getDimensionPixelSize(R.dimen.drawer_right_width) - gridLayout.getPaddingLeft()) - gridLayout.getPaddingRight()) / gridLayout.getColumnCount();
            ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.drawer_right_recent_icon).getParent();
            int childCount = viewGroup.getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = viewGroup.getChildAt(i13);
                childAt.getLayoutParams().width = dimensionPixelSize;
                String str2 = null;
                if (i13 < list.size()) {
                    community = list.get(i13);
                } else {
                    community = null;
                }
                if (community == null) {
                    reminder = null;
                } else {
                    reminder = DrawerRightHost.this.myCommunityListService.getReminder(community.id);
                }
                if (community == null) {
                    unreadChatCountInCurCommunity = 0;
                } else {
                    unreadChatCountInCurCommunity = DrawerRightHost.this.chatService.getUnreadChatCountInCurCommunity(community.id);
                }
                if (reminder == null) {
                    i10 = 0;
                } else {
                    i10 = reminder.notificationsCount + unreadChatCountInCurCommunity + reminder.noticesCount;
                }
                NVImageView nVImageView = (NVImageView) childAt.findViewById(R.id.icon);
                if (community == null) {
                    str = null;
                } else {
                    str = community.icon;
                }
                nVImageView.setImageUrl(str);
                View viewFindViewById = childAt.findViewById(R.id.badge);
                if (i10 > 0) {
                    i11 = 0;
                } else {
                    i11 = 4;
                }
                viewFindViewById.setVisibility(i11);
                TextView textView = (TextView) childAt.findViewById(R.id.badge);
                if (i10 > 9) {
                    strValueOf = "9+";
                } else {
                    strValueOf = String.valueOf(i10);
                }
                textView.setText(strValueOf);
                TextView textView2 = (TextView) childAt.findViewById(R.id.title);
                if (community != null) {
                    str2 = community.name;
                }
                textView2.setText(str2);
                if (community == null) {
                    i12 = 8;
                } else {
                    i12 = 0;
                }
                childAt.setVisibility(i12);
                childAt.setTag(community);
                childAt.setOnClickListener(DrawerRightHost.this.launchRecentListener);
            }
        }
    }

    static class ResetDelayed implements Runnable {
        final WeakReference<DrawerRightHost> r;

        @Override // java.lang.Runnable
        public void run() {
            DrawerRightHost drawerRightHost = this.r.get();
            if (drawerRightHost == null || drawerRightHost.resetDelayed != this) {
                return;
            }
            drawerRightHost.reset();
            drawerRightHost.resetDelayed = null;
        }

        ResetDelayed(DrawerRightHost drawerRightHost) {
            this.r = new WeakReference<>(drawerRightHost);
        }
    }

    class SuggestedCommunityAdapter extends NVAdapter {
        View cell;
        SuggestedCommunityRecyclerAdapter recyclerAdapter;
        RecyclerView recyclerView;
        long shuffleSeed;

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        void reset() {
            this.cell = null;
            RecyclerView recyclerView = this.recyclerView;
            if (recyclerView != null) {
                try {
                    recyclerView.scrollToPosition(0);
                } catch (Exception unused) {
                }
            }
            this.recyclerView = null;
            this.shuffleSeed++;
        }

        public SuggestedCommunityAdapter() {
            super(DrawerRightHost.this.context);
            this.shuffleSeed = System.currentTimeMillis();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (DrawerRightHost.this.myCommunityListService.suggestList() == null || DrawerRightHost.this.myCommunityListService.suggestList().size() <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (this.cell == null) {
                View viewCreateView = createView(R.layout.drawer_right_horizontal_recycle_view, viewGroup, view);
                this.cell = viewCreateView;
                this.recyclerView = (RecyclerView) viewCreateView.findViewById(R.id.recycle_list);
                if (this.recyclerAdapter == null) {
                    this.recyclerAdapter = DrawerRightHost.this.new SuggestedCommunityRecyclerAdapter();
                }
                RecyclerView recyclerView = this.recyclerView;
                if (recyclerView != null) {
                    recyclerView.setLayoutManager(new LinearLayoutManagerWithSmoothScroller(getContext(), 0, false));
                    this.recyclerView.setAdapter(this.recyclerAdapter);
                }
            }
            updateCell(this.cell, this.recyclerView);
            return this.cell;
        }

        void prepare() {
            if (DrawerRightHost.this.myCommunityListService.suggestList() == null) {
                DrawerRightHost.this.myCommunityListService.refreshSuggestCommunityRequest();
            }
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            DrawerRightHost.this.myCommunityListService.refreshSuggestCommunityRequest();
        }

        void resumed() {
            if (DrawerRightHost.this.myCommunityListService.suggestList() == null || DrawerRightHost.this.myCommunityListService.suggestList().size() <= 0 || DrawerRightHost.this.myCommunityListService.getSuggestRequestTime() >= SystemClock.elapsedRealtime() - DrawerRightHost.REFRESH_SUGGEST_LIST_DURATION) {
                return;
            }
            DrawerRightHost.this.myCommunityListService.refreshSuggestCommunityRequest();
        }

        void update() {
            View view = this.cell;
            if (view == null) {
                notifyDataSetChanged();
            } else {
                updateCell(view, this.recyclerView);
            }
        }

        void updateCell(View view, RecyclerView recyclerView) {
            ArrayList arrayList = new ArrayList();
            if (DrawerRightHost.this.myCommunityListService.suggestList() != null) {
                arrayList.addAll(DrawerRightHost.this.myCommunityListService.suggestList());
                Collections.shuffle(arrayList, new Random(this.shuffleSeed));
            }
            if (recyclerView == null) {
                return;
            }
            String strSuggestErrorMessage = DrawerRightHost.this.myCommunityListService.suggestErrorMessage();
            recyclerView.setVisibility(0);
            view.findViewById(R.id.progress).setVisibility(4);
            view.findViewById(R.id.error).setVisibility(4);
            ((TextView) view.findViewById(R.id.error)).setText(strSuggestErrorMessage);
            this.recyclerAdapter.setCommunityListData(arrayList);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return hashCode();
        }
    }

    class SuggestedCommunityRecyclerAdapter extends CommunityRecycleAdapter {
        @Override // com.narvii.community.CommunityRecycleAdapter
        protected int itemLayoutId() {
            return R.layout.right_drawer_communit_item;
        }

        @Override // com.narvii.community.CommunityRecycleAdapter
        protected String statisticsSource() {
            return "Right Side Panel";
        }

        public SuggestedCommunityRecyclerAdapter() {
            super(DrawerRightHost.this.context, null);
            setHasStableIds(true);
        }

        @Override // com.narvii.community.CommunityRecycleAdapter
        protected void onItemClick(Community community) {
            ComponentCallbacks2 componentCallbacks2 = DrawerRightHost.this.activity;
            if (componentCallbacks2 instanceof NVContext) {
                new CommunityHelper((NVContext) componentCallbacks2).source(statisticsSource()).communityDetail(community);
                DrawerRightHost.this.removeLaunchSplashAndCloseDrawer(5000L);
            }
        }

        @Override // com.narvii.community.CommunityRecycleAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
            super.onBindViewHolder(viewHolder, i10);
            if (viewHolder instanceof CommunityRecycleAdapter.GalleryViewHolder) {
                View viewFindViewById = ((CommunityRecycleAdapter.GalleryViewHolder) viewHolder).itemView.findViewById(R.id.text);
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setTextSize(11.0f);
                }
            }
        }
    }

    public static void safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Activity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_DrawerRightHost_startActivity_60465904c27c59f1410e9f7c185f6a6e(DrawerRightHost p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerRightHost;->startActivity(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1, p5);
    }

    public void bind(Activity activity) {
        this.activity = activity;
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(MyCommunityListService myCommunityListService) {
        updateRemindersOnScreen(false);
        this.recentAdapter.update();
    }

    void removeLaunchSplashAndCloseDrawer() {
        removeLaunchSplashAndCloseDrawer(1000L);
    }

    public void startActivity(final Intent intent, int i10) {
        if (i10 == 1) {
            sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.drawer.DrawerRightHost.3
                public static void safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Activity p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // java.lang.Runnable
                public void run() {
                    Activity activity = DrawerRightHost.this.activity;
                    if (activity != null) {
                        safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(activity, intent);
                    }
                }
            }, 350L);
            return;
        }
        Activity activity = this.activity;
        if (activity != null) {
            safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(activity, intent);
        }
        if (i10 == 2) {
            removeLaunchSplashAndCloseDrawer();
        }
    }

    public void unbind() {
        setListenerReged(false);
        this.activity = null;
    }

    static {
        boolean z6 = NVApplication.DEBUG;
        REMINDER_CHECK_DURATION = z6 ? 60000L : 300000L;
        REFRESH_COMMUNITY_LIST_DURATION = z6 ? 60000L : 300000L;
        REFRESH_SUGGEST_LIST_DURATION = z6 ? 60000L : 300000L;
        RESET_SCROLL_TIME = z6 ? 15000L : 60000L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateThemeUI() {
        ComponentCallbacks2 componentCallbacks2 = this.activity;
        if (componentCallbacks2 == null) {
            return;
        }
        int iColorPrimary = ((ConfigService) ((NVContext) componentCallbacks2).getService("config")).getTheme().colorPrimary();
        this.blurView.setOverlayColor(Color.argb(56, Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary)));
    }

    void cancelLaunch() {
        MyLaunchHelper myLaunchHelper = this.launchHelper;
        if (myLaunchHelper != null) {
            myLaunchHelper.cancel();
        }
        this.launchHelper = null;
    }

    void explore() {
        if (this.activity instanceof NVContext) {
            new MasterThemeHelper((NVContext) this.activity).saveDynamicThemeBg(this.activity);
            Intent intent = FragmentWrapperActivity.intent(DiscoverTabFragment.class);
            intent.putExtra("__communityId", 0);
            safedk_DrawerRightHost_startActivity_60465904c27c59f1410e9f7c185f6a6e(this, intent, 2);
            ((StatisticsService) ((NVContext) this.activity).getService("statistics")).event("Explore Communities Tab Opened").userPropInc("Explore Communities Tab Opened Total").source("Right Side Panel");
        }
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num) {
        this.adapter.notifyDataSetChanged();
        updateSuggestPosition(myCommunityListService);
    }

    @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        Callback<Integer> callback = new Callback<Integer>() { // from class: com.narvii.drawer.DrawerRightHost.6
            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                DrawerRightHost.this.swipeRefreshLayout.setRefreshing(false);
            }
        };
        this.recentAdapter.update();
        this.recentAdapter.refreshReminders(true);
        this.suggestAdapter.refresh(1, null);
        this.adapter.refresh(1, callback);
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse) {
        this.suggestAdapter.update();
    }

    void removeLaunchSplashAndCloseDrawer(long j6) {
        Runnable runnable = this.removeLaunchSplashAndCloseDrawer;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        this.removeLaunchSplashAndCloseDrawer = null;
        final MyLaunchHelper myLaunchHelper = this.launchHelper;
        Activity activity = this.activity;
        final DrawerActivity drawerActivity = activity instanceof DrawerActivity ? (DrawerActivity) activity : null;
        if (drawerActivity == null && myLaunchHelper == null) {
            return;
        }
        Runnable runnable2 = new Runnable() { // from class: com.narvii.drawer.DrawerRightHost.2
            @Override // java.lang.Runnable
            public void run() {
                MyLaunchHelper myLaunchHelper2 = myLaunchHelper;
                if (myLaunchHelper2 != null) {
                    myLaunchHelper2.cancel();
                }
                DrawerActivity drawerActivity2 = drawerActivity;
                if (drawerActivity2 != null) {
                    drawerActivity2.closeDrawersDirectly();
                }
            }
        };
        this.removeLaunchSplashAndCloseDrawer = runnable2;
        Utils.postDelayed(runnable2, j6);
    }

    public void reset() {
        NVListView nVListView = this.listView;
        this.currentAdapter = null;
        nVListView.setAdapter((ListAdapter) null);
        RecentAdapter recentAdapter = this.recentAdapter;
        if (recentAdapter != null) {
            recentAdapter.reset();
        }
        this.suggestAdapter.reset();
    }

    void scheduleReset(long j6) {
        Runnable runnable = this.resetDelayed;
        if (runnable == null) {
            this.resetDelayed = new ResetDelayed(this);
        } else {
            Utils.handler.removeCallbacks(runnable);
        }
        Utils.postDelayed(this.resetDelayed, j6);
    }

    void setListenerReged(boolean z6) {
        if (z6 != this.listenerReged) {
            if (z6) {
                this.account.addProfileListener(this.profileListener);
                this.myCommunityListService.addObserver(this);
                this.chatService.addCommunityLevelReceptor(this.cid, this.chatCheckListener);
            } else {
                this.myCommunityListService.removeObserver(this);
                this.account.removeProfileListener(this.profileListener);
                this.chatService.removeCommunityLevelReceptor(this.cid, this.chatCheckListener);
            }
            this.listenerReged = z6;
        }
    }

    public void start() {
        this.broadcastManager.c(this.themeDownLoadReceiver, new IntentFilter(ThemePackService.ACTION_THEME_DOWNLOAD_FINISH));
    }

    public void stop() {
        this.broadcastManager.f(this.themeDownLoadReceiver);
    }

    void unscheduleReset() {
        Runnable runnable = this.resetDelayed;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            this.resetDelayed = null;
        }
    }

    void updateRemindersInCell(View view, Community community, boolean z6) {
        ReminderCheck reminder = community == null ? null : this.myCommunityListService.getReminder(community.id);
        boolean z10 = reminder != null && reminder.hasCheckInToday == Boolean.FALSE;
        int unreadChatCountInCurCommunity = reminder == null ? 0 : reminder.notificationsCount + (community == null ? 0 : this.chatService.getUnreadChatCountInCurCommunity(community.id)) + reminder.noticesCount;
        boolean zIsEquals = Utils.isEquals(view.getTag(), community);
        View viewFindViewById = view.findViewById(R.id.checkin);
        if (!zIsEquals) {
            viewFindViewById.clearAnimation();
        }
        if (z10) {
            if (zIsEquals && viewFindViewById.getVisibility() != 0) {
                viewFindViewById.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            }
            viewFindViewById.setVisibility(0);
        } else {
            if (zIsEquals && viewFindViewById.getVisibility() == 0) {
                viewFindViewById.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out_fast));
            }
            viewFindViewById.setVisibility(8);
        }
        View viewFindViewById2 = view.findViewById(R.id.notification_count);
        ((TextView) viewFindViewById2).setText(unreadChatCountInCurCommunity > 9 ? "9+" : String.valueOf(unreadChatCountInCurCommunity));
        if (!zIsEquals) {
            viewFindViewById2.clearAnimation();
        }
        if (unreadChatCountInCurCommunity > 0) {
            if (zIsEquals && viewFindViewById2.getVisibility() != 0) {
                viewFindViewById2.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            }
            viewFindViewById2.setVisibility(0);
        } else {
            if (zIsEquals && viewFindViewById2.getVisibility() == 0) {
                viewFindViewById2.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out_fast));
            }
            viewFindViewById2.setVisibility(8);
        }
        if (z6 && community != null && (reminder == null || this.myCommunityListService.getReminderRequestTime(community.id) < SystemClock.elapsedRealtime() - REMINDER_CHECK_DURATION)) {
            this.myCommunityListService.addReminderRequestQueue(community.id);
        }
        if (community == null || !this.account.hasAccount()) {
            return;
        }
        this.chatService.addThreadCheckQueue(community.id);
    }

    void updateRemindersOnScreen(boolean z6) {
        NVListView nVListView = this.listView;
        int childCount = nVListView.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            for (View view : DivideColumnAdapter.getDividedCells(nVListView.getChildAt(i10))) {
                if (view.getTag() instanceof Community) {
                    updateRemindersInCell(view, (Community) view.getTag(), z6);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DrawerRightHost(Context context, AttributeSet attributeSet) {
        boolean z6;
        super(context, attributeSet);
        this.chatCheckListener = new ChatService.ChatMessageReceptor() { // from class: com.narvii.drawer.DrawerRightHost.1
            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto) {
            }

            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onResetChatMessageList() {
            }

            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onUnreadThreadCountChanged(int i10) {
                if (DrawerRightHost.this.getAttachView() != null) {
                    DrawerRightHost.this.onReminderChanged(null);
                }
            }
        };
        this.profileListener = new AccountService.ProfileListener() { // from class: com.narvii.drawer.DrawerRightHost.4
            @Override // com.narvii.account.AccountService.ProfileListener
            public void onProfileChanged(int i10, User user) {
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onCheckInChanged(boolean z10, int i10) {
                DrawerRightHost.this.updateRemindersOnScreen(false);
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onNoticeCountChanged(int i10) {
                DrawerRightHost.this.updateRemindersOnScreen(false);
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onNotificationCountChanged(int i10) {
                DrawerRightHost.this.updateRemindersOnScreen(false);
            }
        };
        this.launchRecentListener = new View.OnClickListener() { // from class: com.narvii.drawer.DrawerRightHost.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if ((view.getTag() instanceof Community) && (DrawerRightHost.this.activity instanceof NVContext)) {
                    Community community = (Community) view.getTag();
                    DrawerRightHost drawerRightHost = DrawerRightHost.this;
                    drawerRightHost.launchHelper = drawerRightHost.new MyLaunchHelper((NVContext) drawerRightHost.activity);
                    MyLaunchHelper myLaunchHelper = DrawerRightHost.this.launchHelper;
                    myLaunchHelper.visitorModeCompatible = true;
                    myLaunchHelper.themePackDownloadAsync = true;
                    myLaunchHelper.launchRecent(community, (NVImageView) view.findViewById(R.id.icon));
                }
            }
        };
        this.themeDownLoadReceiver = new BroadcastReceiver() { // from class: com.narvii.drawer.DrawerRightHost.7
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                ConfigService configService = (ConfigService) DrawerRightHost.this.context.getService("config");
                if (ThemePackService.ACTION_THEME_DOWNLOAD_FINISH.equals(intent.getAction()) && configService.getCommunityId() == intent.getIntExtra(CmcdConfiguration.KEY_CONTENT_ID, -1)) {
                    DrawerRightHost.this.updateThemeUI();
                }
            }
        };
        if (NVApplication.CLIENT_TYPE == 100) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.isMaster = z6;
        NVContext nVContext = (NVContext) context;
        this.context = nVContext;
        this.myCommunityListService = (MyCommunityListService) nVContext.getService("myCommunityList");
        this.chatService = (ChatService) this.context.getService("chat");
        AccountService accountService = (AccountService) this.context.getService("account");
        this.account = accountService;
        this.prefs = accountService.getPrefs();
        this.cid = ((ConfigService) this.context.getService("config")).getCommunityId();
        this.broadcastManager = LocalBroadcastManager.b(getContext());
        this.recentCommunityHelper = (RecentCommunityHelper) this.context.getService("recentCommunities");
    }

    @Override // com.narvii.widget.ProxyViewHost
    protected void onAttach(ProxyView proxyView) {
        ComponentCallbacks2 componentCallbacks2;
        super.onAttach(proxyView);
        this.recentAdapter.update();
        this.suggestAdapter.prepare();
        this.adapter.prepare();
        updateSuggestPosition(this.myCommunityListService);
        updateRemindersOnScreen(true);
        if (this.currentAdapter != null) {
            this.adapter.notifyDataSetChanged();
        }
        this.blurView.setProxyView(getAttachView());
        if (this.blurView != null && (componentCallbacks2 = this.activity) != null) {
            int iColorPrimary = ((ConfigService) ((NVContext) componentCallbacks2).getService("config")).getTheme().colorPrimary();
            this.blurView.setOverlayColor(Color.argb(56, Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary)));
        }
        unscheduleReset();
        cancelLaunch();
        Runnable runnable = this.removeLaunchSplashAndCloseDrawer;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        setListenerReged(true);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.search) {
            if (this.activity instanceof NVContext) {
                new MasterThemeHelper((NVContext) this.activity).saveDynamicThemeBg(this.activity);
            }
            Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
            intent.putExtra("section_type", 1);
            intent.putExtra("language", LanguageHelper.getUserSelectedLanguageCode(this.context));
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Right Side Panel");
            safedk_DrawerRightHost_startActivity_60465904c27c59f1410e9f7c185f6a6e(this, intent, 2);
        }
        if (view.getId() == R.id.join) {
            explore();
        }
    }

    @Override // com.narvii.widget.ProxyViewHost
    protected void onDetach(ProxyView proxyView) {
        super.onDetach(proxyView);
        this.blurView.setProxyView(null);
        setListenerReged(false);
        scheduleReset(RESET_SCROLL_TIME);
    }

    @Override // com.narvii.widget.ProxyViewHost
    public boolean onEvent(int i10, Object obj) {
        boolean z6;
        if (i10 != 16449537 && i10 != 16449538) {
            z6 = false;
        } else {
            ListAdapter listAdapter = this.currentAdapter;
            ListAdapter listAdapter2 = this.finalAdapter;
            if (listAdapter != listAdapter2) {
                NVListView nVListView = this.listView;
                this.currentAdapter = listAdapter2;
                nVListView.setAdapter(listAdapter2);
            }
            if (i10 == 16449537 && ((Float) obj).floatValue() == 0.0f) {
                scheduleReset(RESET_SCROLL_TIME);
            } else {
                unscheduleReset();
            }
            z6 = true;
        }
        if (i10 == 16449539) {
            scheduleReset(RESET_SCROLL_TIME);
            cancelLaunch();
            z6 = true;
        }
        if (i10 == 16449538) {
            ((StatisticsService) this.context.getService("statistics")).event("Right Side Panel").userPropInc("Right Side Panel Total");
            this.suggestAdapter.resumed();
            this.adapter.resumed();
            this.recentAdapter.refreshReminders(false);
        } else if (!z6) {
            return super.onEvent(i10, obj);
        }
        return true;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.view.View
    protected void onFinishInflate() {
        boolean z6;
        super.onFinishInflate();
        setClickable(true);
        findViewById(R.id.search).setOnClickListener(this);
        this.blurView = (DrawerRealtimeBlurView) findViewById(R.id.blur_bg);
        this.swipeRefreshLayout = (SwipeRefreshLayout) findViewById(R.id.swipe_refresh);
        NVListView nVListView = (NVListView) findViewById(android.R.id.list);
        this.listView = nVListView;
        this.swipeRefreshLayout.setTarget(nVListView);
        this.swipeRefreshLayout.setOnRefreshListener(this);
        Header header = new Header(getContext().getString(R.string.recent_communities));
        RecentAdapter recentAdapter = new RecentAdapter();
        this.recentAdapter = recentAdapter;
        header.showWith = recentAdapter;
        if (this.myCommunityListService.list().size() >= 6) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.suggestOnBottom = z6;
        this.suggestAdapter = new SuggestedCommunityAdapter();
        SwitchAdapter switchAdapter = new SwitchAdapter(this.context);
        this.suggestSwitchTop = switchAdapter;
        switchAdapter.addAdapter(this.suggestAdapter, false);
        this.suggestSwitchTop.addAdapter(new StaticViewAdapter(), false);
        this.suggestSwitchTop.setAdapter(this.suggestOnBottom ? 1 : 0);
        SwitchAdapter switchAdapter2 = new SwitchAdapter(this.context);
        this.suggestSwitchBottom = switchAdapter2;
        switchAdapter2.addAdapter(this.suggestAdapter, false);
        this.suggestSwitchBottom.addAdapter(new StaticViewAdapter(), false);
        this.suggestSwitchBottom.setAdapter(!this.suggestOnBottom ? 1 : 0);
        Header header2 = new Header(getContext().getString(R.string.suggested_communities));
        header2.showWith = this.suggestSwitchTop;
        Header header3 = new Header(getContext().getString(R.string.suggested_communities));
        header3.showWith = this.suggestSwitchBottom;
        Header header4 = new Header(getContext().getString(R.string.my_communities));
        this.adapter = new Adapter();
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this.context, (int) Utils.dpToPx(getContext(), 5.0f), (int) Utils.dpToPx(getContext(), 3.0f));
        divideColumnAdapter.setAdapter(this.adapter, 3);
        MergeAdapter mergeAdapter = new MergeAdapter(this.context);
        mergeAdapter.addAdapter(header);
        mergeAdapter.addAdapter(this.recentAdapter);
        mergeAdapter.addAdapter(header2);
        mergeAdapter.addAdapter(this.suggestSwitchTop);
        mergeAdapter.addAdapter(header4);
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        mergeAdapter.addAdapter(header3);
        mergeAdapter.addAdapter(this.suggestSwitchBottom);
        mergeAdapter.addAdapter(new LoadingErrorAdapter());
        this.finalAdapter = mergeAdapter;
        this.listView.setOnItemClickListener(mergeAdapter);
        this.listView.setDivider(null);
        this.listView.setDividerHeight(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void updateSuggestPosition(MyCommunityListService myCommunityListService) {
        ?? r5;
        if (myCommunityListService.list().size() >= 6) {
            r5 = 1;
        } else {
            r5 = 0;
        }
        if (this.suggestOnBottom != r5) {
            this.suggestOnBottom = r5;
            this.suggestSwitchTop.setAdapter((int) r5);
            this.suggestSwitchBottom.setAdapter(r5 ^ 1);
        }
    }
}
