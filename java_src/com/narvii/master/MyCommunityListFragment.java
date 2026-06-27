package com.narvii.master;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.view.ViewCompat;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.BaseNavigator;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.CommunityService;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.community.MyCommunityListService;
import com.narvii.community.ReminderCheck;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.SplashUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.text.NVText;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.SmoothProgressBar;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class MyCommunityListFragment extends NVListFragment implements View.OnClickListener, MasterAppearanceChangedListener, MyCommunityListService.MyCommunityListObserver, ChatService.ChatMessageReceptor {
    public static final long LAUNCH_TITLE_SHOW_DELAY = 700;
    static final long REFRESH_COMMUNITY_LIST_DURATION;
    static final long REFRESH_SUGGEST_LIST_DURATION;
    static final long REMINDER_CHECK_DURATION;
    public static final String _SINGLE = "__single";
    private AccountService accountService;
    Adapter adapter;
    ChatService chatService;
    Community launchCommunity;
    MyLaunchHelper launchHelper;
    NVImageView launchImageView;
    SmoothProgressBar launchProgress;
    private MasterHelper masterHelper;
    MyCommunityListService myCommunityListService;
    private SuggestCommunityAdapter suggestCommunityAdapter;
    ThemePackService themePackService;
    final boolean DEBUG = NVApplication.DEBUG;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.master.MyCommunityListFragment.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Adapter adapter;
            if (ThemePackService.ACTION_STATUS_CHANGED.equals(intent.getAction())) {
                MyCommunityListFragment myCommunityListFragment = MyCommunityListFragment.this;
                if (myCommunityListFragment.DEBUG && (adapter = myCommunityListFragment.adapter) != null) {
                    adapter.notifyDataSetChanged();
                }
            }
            if (ThemePackService.ACTION_PROGRESS_CHANGED.equals(intent.getAction())) {
                MyCommunityListFragment myCommunityListFragment2 = MyCommunityListFragment.this;
                if (myCommunityListFragment2.DEBUG && myCommunityListFragment2.adapter != null) {
                    ListView listView = myCommunityListFragment2.getListView();
                    int childCount = listView.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        for (View view : DivideColumnAdapter.getDividedCells(listView.getChildAt(i))) {
                            if (view.getTag() instanceof Community) {
                                MyCommunityListFragment.this.updateThemeProgressInCell(view, (Community) view.getTag());
                            }
                        }
                    }
                }
            }
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                MyCommunityListFragment.this.updateEmptyViewForList();
            }
        }
    };

    @Override // com.narvii.app.NVFragment
    protected void ensureLoginToast() {
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return null;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "MyAminos";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i, ChatMessageDto chatMessageDto) {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.app.NVFragment
    protected boolean sendPageViewEventToThirdParty() {
        return true;
    }

    static {
        boolean z = NVApplication.DEBUG;
        long j = DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS;
        REMINDER_CHECK_DURATION = z ? 60000L : 300000L;
        REFRESH_COMMUNITY_LIST_DURATION = NVApplication.DEBUG ? 60000L : 300000L;
        if (!NVApplication.DEBUG) {
            j = 300000;
        }
        REFRESH_SUGGEST_LIST_DURATION = j;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.masterHelper = new MasterHelper(this);
        this.myCommunityListService = (MyCommunityListService) getService("myCommunityList");
        this.myCommunityListService.addObserver(this);
        this.chatService = (ChatService) getService("chat");
        this.chatService.addGlobalChatMessageReceptor(this);
        this.themePackService = (ThemePackService) getService("themePack");
        this.launchHelper = new MyLaunchHelper(this);
        this.accountService = (AccountService) getService("account");
        if (this.DEBUG) {
            registerLocalReceiver(this.receiver, new IntentFilter(ThemePackService.ACTION_STATUS_CHANGED));
            registerLocalReceiver(this.receiver, new IntentFilter(ThemePackService.ACTION_PROGRESS_CHANGED));
        }
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        updateEmptyViewForList();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (getParentFragment() instanceof MasterTabFragment) {
            ((MasterTabFragment) getParentFragment()).addMasterThemeChangedListener(this);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected int externalOffset() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height) * (-1);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.onResume();
        }
        updateRemindersOnScreen(true);
        SuggestCommunityAdapter suggestCommunityAdapter = this.suggestCommunityAdapter;
        if (suggestCommunityAdapter != null) {
            suggestCommunityAdapter.setFragmentResume(true);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        cancelLaunch();
        SuggestCommunityAdapter suggestCommunityAdapter = this.suggestCommunityAdapter;
        if (suggestCommunityAdapter != null) {
            suggestCommunityAdapter.setFragmentResume(false);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onStop() {
        if (getParentFragment() instanceof MasterTabFragment) {
            ((MasterTabFragment) getParentFragment()).removeMasterThemeChangeListener(this);
        }
        super.onStop();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        this.myCommunityListService.removeObserver(this);
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
        this.chatService.removeGlobalChatMessageReceptor(this);
    }

    @Override // com.narvii.master.MasterAppearanceChangedListener
    public void onMasterAppearanceChanged(int i) {
        if (getListView() == null || getActivity() == null || getActivity().isFinishing()) {
            return;
        }
        updateEmptyViewForList();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i) {
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    private boolean isSingleFragment() {
        return getBooleanParam("__single");
    }

    class MyLaunchHelper extends CommunityLaunchHelper {
        boolean launching;

        public MyLaunchHelper(NVContext nVContext) {
            super(nVContext, "My Community List");
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onProgress(int i, float f) {
            SmoothProgressBar smoothProgressBar = MyCommunityListFragment.this.launchProgress;
            if (smoothProgressBar != null) {
                smoothProgressBar.setProgress((int) (f * 100.0f));
            }
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void launch(int i, Community community, String str, User user, String str2, ReminderCheck reminderCheck, String str3, boolean z, int i2, Drawable drawable) {
            this.launching = true;
            super.launch(i, community, str, user, str2, reminderCheck, str3, z, i2, drawable);
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void cancel() {
            super.cancel();
            this.launching = false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.community.CommunityLaunchHelper
        public void onFinish() {
            if (!this.launching || MyCommunityListFragment.this.getActivity() == null) {
                return;
            }
            MyCommunityListFragment myCommunityListFragment = MyCommunityListFragment.this;
            if (myCommunityListFragment.launchImageView == null || myCommunityListFragment.launchCommunity == null) {
                return;
            }
            if (this.launchImageDrawable == null) {
                super.onFinish();
            } else {
                SplashUtils.splash(myCommunityListFragment.getActivity(), MyCommunityListFragment.this.launchImageView, this.launchImageDrawable, new Callback<Boolean>() { // from class: com.narvii.master.MyCommunityListFragment.MyLaunchHelper.1
                    @Override // com.narvii.util.Callback
                    public void call(Boolean bool) {
                        if (bool.booleanValue()) {
                            MyLaunchHelper myLaunchHelper = MyLaunchHelper.this;
                            if (myLaunchHelper.launching) {
                                EnterCommunityHelper.SOURCE.set(myLaunchHelper.source);
                                MyLaunchHelper.super.onFinish();
                                return;
                            }
                        }
                        MyCommunityListFragment.this.cancelLaunch();
                    }
                });
            }
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = new Adapter();
        this.suggestCommunityAdapter = new SuggestCommunityAdapter();
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 5.0f), 0, 0);
        divideColumnAdapter.setSupportLongClick(true);
        divideColumnAdapter.setAdapter(this.adapter, 3);
        MarginAdapter marginAdapter = new MarginAdapter(this, getResources().getDimensionPixelSize(R.dimen.my_amino_top_fit));
        DivideColumnAdapter divideColumnAdapter2 = new DivideColumnAdapter(this, (int) Utils.dpToPx(getContext(), 5.0f), (int) Utils.dpToPx(getContext(), 5.0f), 0, 0);
        divideColumnAdapter2.setAdapter(this.suggestCommunityAdapter, 3);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        if (!isSingleFragment()) {
            mergeAdapter.addAdapter(new CommunityTabTitleAdapter());
        }
        mergeAdapter.addAdapter(marginAdapter);
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        mergeAdapter.addAdapter(new LoginHintAdapter());
        mergeAdapter.addAdapter(new NoAminosJoinedHintAdapter());
        mergeAdapter.addAdapter(new CreateAminoAdapter());
        mergeAdapter.addAdapter(new SuggestedCommunityHeader());
        mergeAdapter.addAdapter(divideColumnAdapter2);
        mergeAdapter.addAdapter(new BottomAdapter());
        getListView().setOnItemLongClickListener(mergeAdapter);
        return mergeAdapter;
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse) {
        this.suggestCommunityAdapter.notifyDataChange();
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num) {
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(MyCommunityListService myCommunityListService) {
        if (isResumed()) {
            updateRemindersOnScreen(false);
        }
    }

    @Override // com.narvii.list.NVListFragment
    public void onRefresh(final Callback<Integer> callback) {
        super.onRefresh(callback);
        this.myCommunityListService.refreshSuggestCommunityRequest(new Callback() { // from class: com.narvii.master.MyCommunityListFragment.1
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                Callback callback2;
                if (MyCommunityListFragment.this.accountService.hasAccount() || (callback2 = callback) == null) {
                    return;
                }
                callback2.call(null);
            }
        });
        if (this.myCommunityListService.getNdcIds().isEmpty() || !this.accountService.hasAccount()) {
            return;
        }
        this.chatService.queryThreadCheckInfo((Set<Integer>) this.myCommunityListService.getNdcIds(), true);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onErrorRetry() {
        super.onErrorRetry();
        this.myCommunityListService.refreshSuggestCommunityRequest();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        int id = view.getId();
        if (id == R.id.create_amino) {
            this.masterHelper.createAmino(null);
            return;
        }
        if (id == R.id.explorer_amino) {
            gotoExplorerPage("Zero State Button");
        } else {
            if (id != R.id.login) {
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://login"));
            intent.putExtra("promptType", LoginActivity.PromptType.Button.name());
            startActivity(intent);
        }
    }

    void updateEmptyViewForList() {
        if (!isAdded() || getActivity() == null) {
            return;
        }
        View emptyView = setEmptyView(((AccountService) getService("account")).hasAccount() ? R.layout.incubator_empty_view : R.layout.incubator_empty_view_unlogged);
        View viewFindViewById = emptyView.findViewById(R.id.create_amino);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this);
        }
        View viewFindViewById2 = emptyView.findViewById(R.id.explorer_amino);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(this);
        }
        View viewFindViewById3 = emptyView.findViewById(R.id.login);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(this);
        }
    }

    void updateRemindersInCell(View view, Community community, boolean z) {
        ReminderCheck reminder = community == null ? null : this.myCommunityListService.getReminder(community.id);
        int unreadChatCountInCurCommunity = community == null ? 0 : this.chatService.getUnreadChatCountInCurCommunity(community.id);
        boolean z2 = reminder != null && reminder.hasCheckInToday == Boolean.FALSE;
        int i = reminder == null ? 0 : unreadChatCountInCurCommunity + reminder.notificationsCount + reminder.noticesCount;
        boolean zIsEquals = Utils.isEquals(view.getTag(), community);
        View viewFindViewById = view.findViewById(R.id.checkin);
        if (!zIsEquals) {
            viewFindViewById.clearAnimation();
        }
        if (z2) {
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
        ((TextView) viewFindViewById2).setText(i > 9 ? "9+" : String.valueOf(i));
        if (!zIsEquals) {
            viewFindViewById2.clearAnimation();
        }
        if (i > 0) {
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
        if (z && community != null && (reminder == null || this.myCommunityListService.getReminderRequestTime(community.id) < SystemClock.elapsedRealtime() - REMINDER_CHECK_DURATION)) {
            this.myCommunityListService.addReminderRequestQueue(community.id);
        }
        if (community != null) {
            this.chatService.addThreadCheckQueue(community.id);
        }
    }

    void updateRemindersOnScreen(boolean z) {
        ListView listView = getListView();
        int childCount = listView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            for (View view : DivideColumnAdapter.getDividedCells(listView.getChildAt(i))) {
                if (view.getTag() instanceof Community) {
                    updateRemindersInCell(view, (Community) view.getTag(), z);
                }
            }
        }
    }

    void updateThemeProgressInCell(View view, Community community) {
        String str;
        if (this.DEBUG) {
            TextView textView = (TextView) view.findViewById(R.id.debuginfo);
            textView.setVisibility(0);
            int status = this.themePackService.getStatus(community.id);
            if (status == -1) {
                str = "E";
            } else if (status == 0) {
                str = "?";
            } else if (status != 1) {
                str = status != 5 ? "!" : "R";
            } else {
                str = ((int) (this.themePackService.getProgress(community.id) * 100.0f)) + "%";
            }
            textView.setText(str);
        }
    }

    private class CommunityTabTitleAdapter extends AdriftAdapter {
        public CommunityTabTitleAdapter() {
            super(MyCommunityListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return createView(R.layout.incubator_my_community_title, viewGroup, view);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            Adapter adapter = MyCommunityListFragment.this.adapter;
            return (adapter == null || adapter.getCount() == 0) ? 0 : 1;
        }
    }

    class LoginHintAdapter extends AdriftAdapter {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "LoginArea";
        }

        public LoginHintAdapter() {
            super(MyCommunityListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_login_hint_my_aminos, viewGroup, view);
            View viewFindViewById = viewCreateView.findViewById(R.id.login_hint);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(this.subviewClickListener);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return !MyCommunityListFragment.this.accountService.hasAccount() ? 1 : 0;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.login_hint) {
                logClickEvent(ActSemantic.pageEnter);
                startActivity(new Intent(getContext(), (Class<?>) LoginActivity.class));
            }
            return true;
        }
    }

    class NoAminosJoinedHintAdapter extends AdriftAdapter {
        public NoAminosJoinedHintAdapter() {
            super(MyCommunityListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return createView(R.layout.item_no_amino_hint_my_aminos, viewGroup, view);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (MyCommunityListFragment.this.accountService.hasAccount() && MyCommunityListFragment.this.myCommunityListService.rawList().isEmpty()) ? 1 : 0;
        }
    }

    class SuggestedCommunityHeader extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public SuggestedCommunityHeader() {
            super(MyCommunityListFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (MyCommunityListFragment.this.suggestCommunityAdapter == null || MyCommunityListFragment.this.suggestCommunityAdapter.getCount() <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return createView(R.layout.master_suggest_community_header, viewGroup, view);
        }
    }

    class SuggestCommunityAdapter extends NVArrayAdapter<Community> {
        private static final int SUGGEST_COMMUNITY_COUNT = 6;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "AminoRecommendList";
        }

        public SuggestCommunityAdapter() {
            super(MyCommunityListFragment.this, Community.class);
            updateSuggestedList();
            addImpressionCollector(new DivideColumnImpressionCollector(Community.class));
        }

        public void setFragmentResume(boolean z) {
            if (z) {
                if (MyCommunityListFragment.this.myCommunityListService.suggestList() == null) {
                    MyCommunityListFragment.this.myCommunityListService.refreshSuggestCommunityRequest();
                } else if (MyCommunityListFragment.this.myCommunityListService.getSuggestRequestTime() < SystemClock.elapsedRealtime() - MyCommunityListFragment.REFRESH_SUGGEST_LIST_DURATION) {
                    MyCommunityListFragment.this.myCommunityListService.refreshSuggestCommunityRequest();
                }
            }
        }

        private void updateSuggestedList() {
            ArrayList arrayList = new ArrayList();
            List<Community> listSuggestList = MyCommunityListFragment.this.myCommunityListService.suggestList();
            if (listSuggestList != null) {
                if (listSuggestList.size() > 6) {
                    arrayList.addAll(listSuggestList.subList(0, 6));
                } else {
                    arrayList.addAll(MyCommunityListFragment.this.myCommunityListService.suggestList());
                }
            }
            setList(arrayList);
        }

        public void notifyDataChange() {
            if (MyCommunityListFragment.this.isAdded()) {
                updateSuggestedList();
                notifyDataSetChanged();
            }
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Community community = (Community) getItem(i);
            View viewCreateView = createView(R.layout.item_community_simple_card, viewGroup, view);
            PromotionalImageView promotionalImageView = (PromotionalImageView) viewCreateView.findViewById(R.id.image);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.community_name);
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.community_icon);
            if ((nVImageView instanceof CommunityIconView) && community != null) {
                nVImageView.setStrokeColor(community.themeColor());
            }
            promotionalImageView.setCommunity(community);
            textView.setText(community.name);
            nVImageView.setImageUrl(community.icon);
            tagCellForLog(viewCreateView, community);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof Community) {
                logClickEvent(obj, ActSemantic.checkDetail, true);
                new CommunityHelper(this.context).communityDetail((Community) obj);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    class Adapter extends NVAdapter {
        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "MyAminos";
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return false;
        }

        public Adapter() {
            super(MyCommunityListFragment.this);
            addImpressionCollector(new DivideColumnImpressionCollector(Community.class));
        }

        void onResume() {
            if (!isListShown()) {
                MyCommunityListFragment.this.myCommunityListService.loadNextPage(true);
            } else if (MyCommunityListFragment.this.myCommunityListService.getCommunityRequestTime() < SystemClock.elapsedRealtime() - MyCommunityListFragment.REFRESH_COMMUNITY_LIST_DURATION) {
                MyCommunityListFragment.this.myCommunityListService.refresh(256, null);
            }
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            MyCommunityListFragment.this.myCommunityListService.refresh(i, callback);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<Community> listRawList = MyCommunityListFragment.this.myCommunityListService.rawList();
            if (!MyCommunityListFragment.this.accountService.hasAccount() || listRawList.size() <= 0) {
                return 0;
            }
            return listRawList.size() + 1;
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return MyCommunityListFragment.this.myCommunityListService.errorMessage();
        }

        @Override // com.narvii.list.NVAdapter
        public void onErrorRetry() {
            MyCommunityListFragment.this.myCommunityListService.retryRetry();
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return MyCommunityListFragment.this.myCommunityListService.isEnd() || MyCommunityListFragment.this.myCommunityListService.rawList().size() > 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            List<Community> listRawList = MyCommunityListFragment.this.myCommunityListService.rawList();
            if (i < listRawList.size()) {
                return listRawList.get(i);
            }
            if (MyCommunityListFragment.this.myCommunityListService.isEnd()) {
                return NVPagedAdapter.LIST_END;
            }
            if (MyCommunityListFragment.this.myCommunityListService.errorMessage() == null) {
                return NVPagedAdapter.LOADING;
            }
            return NVPagedAdapter.ERROR;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            if (getItem(i) == NVPagedAdapter.LOADING) {
                return false;
            }
            return super.isEnabled(i);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            Object item = getItem(i);
            if (item instanceof Community) {
                return 0;
            }
            if (item == NVPagedAdapter.LIST_END) {
                return 1;
            }
            if (item == NVPagedAdapter.LOADING) {
                return 2;
            }
            return item == NVPagedAdapter.ERROR ? 3 : -1;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Object item = getItem(i);
            if (item instanceof Community) {
                Community community = (Community) item;
                View viewCreateView = createView(R.layout.incubator_my_community_item, viewGroup, view);
                PromotionalImageView promotionalImageView = (PromotionalImageView) viewCreateView.findViewById(R.id.image);
                promotionalImageView.showLaunchPage = true;
                promotionalImageView.preloadCachedImage = true;
                promotionalImageView.setCommunity(community);
                CommunityIconView communityIconView = (CommunityIconView) viewCreateView.findViewById(R.id.icon);
                communityIconView.setImageUrl(community.icon);
                communityIconView.setStrokeColor(community.themeColor());
                TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
                textView.setText(community.name);
                ViewUtils.setMontserratExtraBoldTypeface(textView);
                User userProfile = MyCommunityListFragment.this.myCommunityListService.getUserProfile(community.id);
                boolean z = community.status == 9;
                viewCreateView.findViewById(R.id.probation).setVisibility((z || !(community.probationStatus == 1 && userProfile != null && userProfile.isLeader())) ? 8 : 0);
                viewCreateView.findViewById(R.id.disabled).setVisibility(z ? 0 : 8);
                View viewFindViewById = viewCreateView.findViewById(R.id.progress);
                MyCommunityListFragment myCommunityListFragment = MyCommunityListFragment.this;
                if (viewFindViewById == myCommunityListFragment.launchProgress) {
                    Community community2 = myCommunityListFragment.launchCommunity;
                    if (community2 != null && community2.id != community.id) {
                        viewFindViewById.setVisibility(4);
                        MyCommunityListFragment.this.cancelLaunch();
                    } else {
                        viewFindViewById.setVisibility(0);
                    }
                } else {
                    viewFindViewById.setVisibility(4);
                }
                MyCommunityListFragment.this.updateRemindersInCell(viewCreateView, community, true);
                MyCommunityListFragment.this.updateThemeProgressInCell(viewCreateView, community);
                viewCreateView.setTag(community);
                tagCellForLog(viewCreateView, community);
                return viewCreateView;
            }
            if (item == NVPagedAdapter.LIST_END) {
                return createView(R.layout.incubator_my_community_join_item, viewGroup, view);
            }
            if (item == NVPagedAdapter.LOADING) {
                View viewCreateView2 = createView(R.layout.incubator_my_community_loading_item, viewGroup, view);
                MyCommunityListFragment.this.myCommunityListService.loadNextPage(true);
                return viewCreateView2;
            }
            return createErrorItem(viewGroup, view, MyCommunityListFragment.this.myCommunityListService.errorMessage());
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) throws Resources.NotFoundException {
            ObjectNode objectNode;
            if (obj instanceof Community) {
                final Community community = (Community) obj;
                MyCommunityListFragment myCommunityListFragment = MyCommunityListFragment.this;
                Community community2 = myCommunityListFragment.launchCommunity;
                if (community2 != null) {
                    if (community2.id == community.id) {
                        return true;
                    }
                    myCommunityListFragment.cancelLaunch();
                }
                if (community.status == 9) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                    aCMAlertDialog.setMessage(R.string.delete_disabled_community_hint);
                    aCMAlertDialog.addButton(R.string.cancel, null);
                    aCMAlertDialog.addButton(R.string.leave, new View.OnClickListener() { // from class: com.narvii.master.MyCommunityListFragment.Adapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view3) {
                            MyCommunityListFragment.this.leaveCommunity(community);
                        }
                    });
                    aCMAlertDialog.show();
                    return true;
                }
                MyCommunityListFragment.this.launchProgress = (SmoothProgressBar) view.findViewById(R.id.progress);
                MyCommunityListFragment.this.launchProgress.setVisibility(0);
                MyCommunityListFragment.this.launchProgress.setMax(100);
                MyCommunityListFragment.this.launchProgress.setProgress(0);
                logClickEvent(obj, ActSemantic.aminoEnter);
                MyCommunityListFragment.this.launchImageView = (NVImageView) view.findViewById(R.id.image);
                MyCommunityListFragment myCommunityListFragment2 = MyCommunityListFragment.this;
                myCommunityListFragment2.launchCommunity = community;
                String communityTimestamp = myCommunityListFragment2.myCommunityListService.getCommunityTimestamp(community.id);
                User userProfile = MyCommunityListFragment.this.myCommunityListService.getUserProfile(community.id);
                String userInfoTimestamp = MyCommunityListFragment.this.myCommunityListService.getUserInfoTimestamp(community.id);
                ReminderCheck reminder = MyCommunityListFragment.this.myCommunityListService.getReminder(community.id);
                String reminderTimestamp = MyCommunityListFragment.this.myCommunityListService.getReminderTimestamp(community.id);
                Community community3 = ((CommunityService) getService("community")).getCommunity(community.id);
                boolean z = community3 == null || (objectNode = community3.configuration) == null || objectNode.size() == 0;
                MyCommunityListFragment myCommunityListFragment3 = MyCommunityListFragment.this;
                myCommunityListFragment3.launchHelper.launch(community.id, community, communityTimestamp, userProfile, userInfoTimestamp, reminder, reminderTimestamp, z, 1, myCommunityListFragment3.launchImageView.getDrawable());
                return true;
            }
            if (obj == NVPagedAdapter.LIST_END) {
                logClickEvent(ActSemantic.listViewEnter, true);
                MyCommunityListFragment.this.gotoExplorerPage("Join an Amino");
                return true;
            }
            if (obj == NVPagedAdapter.ERROR) {
                MyCommunityListFragment.this.myCommunityListService.loadNextPage(false);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            int i2;
            if (obj instanceof Community) {
                final Community community = (Community) obj;
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                final int[] iArr = new int[5];
                ArrayList arrayList = new ArrayList();
                arrayList.add(MyCommunityListFragment.this.getText(R.string.community_detail));
                iArr[0] = R.string.community_detail;
                if (MyCommunityListFragment.this.myCommunityListService.rawList().size() > 1) {
                    arrayList.add(MyCommunityListFragment.this.getText(R.string.reorder));
                    i2 = 2;
                    iArr[1] = R.string.reorder;
                } else {
                    i2 = 1;
                }
                if (NVApplication.CLIENT_TYPE == 100 && community.icon != null) {
                    arrayList.add(MyCommunityListFragment.this.getText(R.string.community_create_shortcut));
                    iArr[i2] = R.string.community_create_shortcut;
                    i2++;
                }
                NVText nVText = new NVText(MyCommunityListFragment.this.getText(R.string.prefs_leave));
                nVText.setSpan(new ForegroundColorSpan(-4259826), 0, nVText.length(), 34);
                arrayList.add(nVText);
                iArr[i2] = R.string.prefs_leave;
                builder.setItems((CharSequence[]) arrayList.toArray(new CharSequence[0]), new DialogInterface.OnClickListener() { // from class: com.narvii.master.MyCommunityListFragment.Adapter.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                        int i4 = iArr[i3];
                        if (i4 == R.string.community_detail) {
                            Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                            intent.putExtra("id", community.id);
                            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
                            intent.putExtra(CommunityDetailFragment.KEY_CURRENT_USER_JOINED, true);
                            Adapter.this.startActivity(intent);
                            return;
                        }
                        if (i4 == R.string.reorder) {
                            MyCommunityListFragment.this.reorder();
                        } else if (i4 == R.string.community_create_shortcut) {
                            MyCommunityListFragment.this.createShortcut(community);
                        } else if (i4 == R.string.prefs_leave) {
                            MyCommunityListFragment.this.leaveCommunity(community);
                        }
                    }
                });
                builder.show();
                return true;
            }
            return super.onLongClick(listAdapter, i, obj, view, view2);
        }
    }

    private class MoreCommunitiesAdapter extends AdriftAdapter {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "EngagementArea";
        }

        public MoreCommunitiesAdapter() {
            super(MyCommunityListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_more_aimno_my_aminos, viewGroup, view);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.more_aminos);
            if (textView != null) {
                textView.setOnClickListener(this.subviewClickListener);
                ViewUtils.setMontserratExtraBoldTypeface(textView);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) throws Resources.NotFoundException {
            if (view2 != null && view2.getId() == R.id.more_aminos) {
                logClickEvent(ActSemantic.listViewEnter, true);
                MyCommunityListFragment.this.gotoExplorerPage(null);
            }
            return true;
        }
    }

    private class CreateAminoAdapter extends AdriftAdapter {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "EngagementArea";
        }

        public CreateAminoAdapter() {
            super(MyCommunityListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.incubator_item_create_amino, viewGroup, view);
            viewCreateView.findViewById(R.id.create_amino).setOnClickListener(this.subviewClickListener);
            ViewUtils.setMontserratExtraBoldTypeface((TextView) viewCreateView.findViewById(R.id.hint));
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean onSubviewClick(View view, boolean z) {
            if (view != null && view.getId() == R.id.create_amino) {
                logClickEvent(ActSemantic.createAmino);
                MyCommunityListFragment.this.masterHelper.createAmino(null);
            }
            return super.onSubviewClick(view, z);
        }
    }

    private class BottomAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public BottomAdapter() {
            super(MyCommunityListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return createView(R.layout.community_page_fit_bottom, viewGroup, view);
        }
    }

    void cancelLaunch() {
        this.launchHelper.cancel();
        SmoothProgressBar smoothProgressBar = this.launchProgress;
        if (smoothProgressBar != null) {
            smoothProgressBar.setProgress(0);
            this.launchProgress.setVisibility(4);
            this.launchProgress = null;
        }
        this.launchCommunity = null;
        this.launchImageView = null;
    }

    void reorder() {
        startActivity(FragmentWrapperActivity.intent(SortCommunityFragment.class));
    }

    void createShortcut(final Community community) {
        if (community == null || community.icon == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((NVImageLoader) getService("imageLoader")).get(community.icon, new ImageLoader.ImageListener() { // from class: com.narvii.master.MyCommunityListFragment.3
            @Override // com.android.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                Bitmap bitmap = imageContainer.getBitmap();
                if (bitmap != null) {
                    progressDialog.dismiss();
                    MyCommunityListFragment.this.createShortcut(community, bitmap);
                }
            }

            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                progressDialog.dismiss();
                NVToast.makeText(MyCommunityListFragment.this.getContext(), R.string.community_create_shortcut_fail, 0).show();
                MyCommunityListFragment.this.createShortcut(community, null);
            }
        });
    }

    void createShortcut(Community community, Bitmap bitmap) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(((BaseNavigator) getService("navigator")).getMyScheme() + "://x" + community.id + "/default?source=Shortcut"));
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.addFlags(67108864);
        if (bitmap != null) {
            try {
                int iMin = Math.min(IjkMediaMeta.FF_PROFILE_H264_HIGH_444, Math.min(bitmap.getWidth(), bitmap.getHeight()));
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                Path path = new Path();
                float f = iMin;
                RectF rectF = new RectF(0.0f, 0.0f, f, f);
                float f2 = f * 0.2f;
                path.addRoundRect(rectF, f2, f2, Path.Direction.CCW);
                canvas.clipPath(path);
                Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                paint.setColor(ViewCompat.MEASURED_STATE_MASK);
                canvas.drawBitmap(bitmap, rect, rectF, paint);
                bitmap = bitmapCreateBitmap;
            } catch (Exception unused) {
                bitmap = null;
            }
        }
        if (Build.VERSION.SDK_INT >= 25) {
            String str = "x" + community.id;
            ShortcutManager shortcutManager = (ShortcutManager) getContext().getSystemService(ShortcutManager.class);
            LinkedList linkedList = new LinkedList(shortcutManager.getDynamicShortcuts());
            Collections.sort(linkedList, new Comparator<ShortcutInfo>() { // from class: com.narvii.master.MyCommunityListFragment.4
                @Override // java.util.Comparator
                public int compare(ShortcutInfo shortcutInfo, ShortcutInfo shortcutInfo2) {
                    return shortcutInfo.getRank() - shortcutInfo2.getRank();
                }
            });
            Iterator it = linkedList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (str.equals(((ShortcutInfo) it.next()).getId())) {
                    shortcutManager.removeDynamicShortcuts(Arrays.asList(str));
                    it.remove();
                    break;
                }
            }
            while (linkedList.size() >= 4) {
                shortcutManager.removeDynamicShortcuts(Arrays.asList(((ShortcutInfo) linkedList.removeFirst()).getId()));
            }
            Iterator it2 = linkedList.iterator();
            int iMax = 0;
            while (it2.hasNext()) {
                iMax = Math.max(iMax, ((ShortcutInfo) it2.next()).getRank());
            }
            ShortcutInfo.Builder longLabel = new ShortcutInfo.Builder(getContext(), str).setShortLabel(community.name).setRank(iMax + 1).setLongLabel(community.name);
            if (bitmap != null) {
                longLabel.setIcon(Icon.createWithBitmap(bitmap));
            }
            longLabel.setIntent(intent);
            shortcutManager.addDynamicShortcuts(Arrays.asList(longLabel.build()));
        }
        if (Build.VERSION.SDK_INT < 26) {
            Intent intent2 = new Intent();
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
            intent2.putExtra("android.intent.extra.shortcut.NAME", community.name);
            if (bitmap == null) {
                intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(getContext(), getContext().getApplicationInfo().icon));
            } else {
                intent2.putExtra("android.intent.extra.shortcut.ICON", bitmap);
            }
            intent2.putExtra("duplicate", false);
            intent2.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
            getContext().sendBroadcast(intent2);
            return;
        }
        String str2 = "c" + community.id;
        ShortcutManager shortcutManager2 = (ShortcutManager) getContext().getSystemService(ShortcutManager.class);
        ShortcutInfo.Builder longLabel2 = new ShortcutInfo.Builder(getContext(), str2).setShortLabel(community.name).setLongLabel(community.name);
        if (bitmap != null) {
            longLabel2.setIcon(Icon.createWithBitmap(bitmap));
        }
        longLabel2.setIntent(intent);
        shortcutManager2.requestPinShortcut(longLabel2.build(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void leaveCommunity(Community community) {
        new MasterLeaveCommunityHelper(this).leaveCommunity(community, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoExplorerPage(String str) throws Resources.NotFoundException {
        this.masterHelper.exploreCommunities(str);
    }
}
