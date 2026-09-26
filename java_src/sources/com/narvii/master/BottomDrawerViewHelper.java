package com.narvii.master;

import android.app.Activity;
import android.content.Intent;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityRecycleAdapter;
import com.narvii.community.search.MasterThemeHelper;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.ActType;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.Impression.ImpressionUtils;
import com.narvii.logging.Impression.StandaloneRecyclerImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.home.discover.DiscoverTabFragment;
import com.narvii.master.search.GlobalSearchBaseFragment;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.notice.NoticeListFragment;
import com.narvii.util.Log;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.Utils;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.widget.BottomDrawerContainer;
import com.safedk.android.utils.Logger;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes10.dex */
public class BottomDrawerViewHelper implements BottomDrawerContainer.DismissListener {
    BottomDismissListener bottomDismissListener;
    BottomDrawerContainer drawerContainer;
    private long lastShowTime;
    MasterThemeHelper masterThemeHelper;
    AccountService.ProfileListener noticeProfileListener = new AccountService.ProfileListener() { // from class: com.narvii.master.BottomDrawerViewHelper.1
        @Override // com.narvii.account.AccountService.ProfileListener
        public void onProfileChanged(int i10, User user) {
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onNoticeCountChanged(int i10) {
            BottomDrawerContainer bottomDrawerContainer;
            super.onNoticeCountChanged(i10);
            if (i10 == 0 && (bottomDrawerContainer = BottomDrawerViewHelper.this.drawerContainer) != null) {
                bottomDrawerContainer.dismissView();
            }
        }
    };
    NVContext nvContext;
    private String pvId;
    private RecyclerView recyclerView;
    PreferencesHelper sharedPreferencesHelper;
    ImpressionCollector<Community> suggestedIPC;
    private boolean suggestedShowing;

    public interface BottomDismissListener {
        void onDismiss();
    }

    class SuggestedCommunityAdapter extends CommunityRecycleAdapter {
        @Override // com.narvii.community.CommunityRecycleAdapter
        protected int itemLayoutId() {
            return R.layout.suggest_community_item;
        }

        @Override // com.narvii.community.CommunityRecycleAdapter
        protected boolean showEnd() {
            return true;
        }

        SuggestedCommunityAdapter(List<Community> list) {
            super(BottomDrawerViewHelper.this.nvContext, list);
        }

        @Override // com.narvii.community.CommunityRecycleAdapter
        protected void onItemClick(Community community) {
            CommunityHelper communityHelperEventOrigin = new CommunityHelper(BottomDrawerViewHelper.this.nvContext).source("toast").eventOrigin(LoggingOrigin.SuggestPopup);
            ImpressionCollector<Community> impressionCollector = BottomDrawerViewHelper.this.suggestedIPC;
            ObjectInfo impressionObjectInfo = impressionCollector != null ? impressionCollector.getImpressionObjectInfo(community) : null;
            LogEvent.Builder builderActSemantic = LogEvent.builder(BottomDrawerViewHelper.this.nvContext).objectInfo(impressionObjectInfo).actClick().actSemantic(ActSemantic.checkDetail);
            ImpressionCollector<Community> impressionCollector2 = BottomDrawerViewHelper.this.suggestedIPC;
            if (impressionCollector2 != null) {
                impressionCollector2.completeImpressionLogBuilder(builderActSemantic, impressionObjectInfo);
            }
            builderActSemantic.send();
            Intent intentCommunityDetailIntent = communityHelperEventOrigin.communityDetailIntent(community);
            if (intentCommunityDetailIntent != null) {
                BottomDrawerViewHelper.safedk_BottomDrawerViewHelper_startActivity_92a7575b9066f87924165e05b4fd6fca(BottomDrawerViewHelper.this, intentCommunityDetailIntent);
            }
        }

        @Override // com.narvii.community.CommunityRecycleAdapter
        protected void onEndItemClicked(View view) {
            super.onEndItemClicked(view);
            if (BottomDrawerViewHelper.this.getActivity() == null) {
                return;
            }
            BottomDrawerViewHelper bottomDrawerViewHelper = BottomDrawerViewHelper.this;
            bottomDrawerViewHelper.masterThemeHelper.saveDynamicThemeBg(bottomDrawerViewHelper.getActivity());
            Intent intent = FragmentWrapperActivity.intent(DiscoverTabFragment.class);
            intent.putExtra("__communityId", 0);
            BottomDrawerViewHelper.safedk_BottomDrawerViewHelper_startActivity_92a7575b9066f87924165e05b4fd6fca(BottomDrawerViewHelper.this, intent);
            if (BottomDrawerViewHelper.this.getActivity() != null) {
                BottomDrawerViewHelper.this.getActivity().overridePendingTransition(R.anim.activity_push_left_in, R.anim.activity_push_right_out);
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

    public static void safedk_BottomDrawerViewHelper_startActivity_92a7575b9066f87924165e05b4fd6fca(BottomDrawerViewHelper p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/master/BottomDrawerViewHelper;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public View getBottomContainer() {
        return this.drawerContainer;
    }

    protected Class noticeEntryClass() {
        return NoticeListFragment.class;
    }

    protected void preProcessNoticeEntryIntent(Intent intent) {
    }

    public void setBottomDismissListener(BottomDismissListener bottomDismissListener) {
        this.bottomDismissListener = bottomDismissListener;
    }

    public Activity getActivity() {
        if (!(this.nvContext.getContext() instanceof NVActivity)) {
            return null;
        }
        NVActivity nVActivity = (NVActivity) this.nvContext.getContext();
        if (nVActivity.isDestoryed()) {
            return null;
        }
        return nVActivity;
    }

    public void hideBottomLayout() {
        BottomDrawerContainer bottomDrawerContainer = this.drawerContainer;
        if (bottomDrawerContainer != null) {
            bottomDrawerContainer.setVisibility(4);
            BottomDismissListener bottomDismissListener = this.bottomDismissListener;
            if (bottomDismissListener != null) {
                bottomDismissListener.onDismiss();
            }
        }
    }

    public void hideBottomLayoutWithAnimation(Animation.AnimationListener animationListener) {
        if (this.drawerContainer != null) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.nvContext.getContext(), R.anim.slide_out_bottom);
            animationLoadAnimation.setAnimationListener(animationListener);
            this.drawerContainer.setAnimation(animationLoadAnimation);
            this.drawerContainer.setVisibility(4);
            BottomDismissListener bottomDismissListener = this.bottomDismissListener;
            if (bottomDismissListener != null) {
                bottomDismissListener.onDismiss();
            }
        }
    }

    public void logSuggestLaunch() {
        LogEvent.builder(this.nvContext).pageViewEvent().actType(ActType.pageView).actSemantic(ActSemantic.pageViewLaunch).page("AminoSuggestPopup").pvId(this.pvId).send();
        ImpressionCollector<Community> impressionCollector = this.suggestedIPC;
        if (impressionCollector != null) {
            ImpressionUtils.logStandaloneRecyclerImpression(this.recyclerView, impressionCollector, this.nvContext);
        }
    }

    public void logSuggestQuit() {
        LogEvent.builder(this.nvContext).pageViewEvent().actType(ActType.pageView).actSemantic(ActSemantic.pageViewQuit).page("AminoSuggestPopup").pvId(this.pvId).extraParam(TypedValues.TransitionType.S_DURATION, Long.valueOf(SystemClock.elapsedRealtime() - this.lastShowTime)).send();
    }

    public void onActiveChanged(boolean z6) {
        if (this.suggestedShowing) {
            if (z6) {
                logSuggestLaunch();
            } else {
                logSuggestQuit();
            }
        }
    }

    public void setDismissTThreshold(int i10) {
        BottomDrawerContainer bottomDrawerContainer = this.drawerContainer;
        if (bottomDrawerContainer != null) {
            bottomDrawerContainer.setDismissThreshold(i10);
        }
    }

    public void showBottomLayout(Animation.AnimationListener animationListener) {
        BottomDrawerContainer bottomDrawerContainer = this.drawerContainer;
        if (bottomDrawerContainer != null) {
            bottomDrawerContainer.setVisibility(0);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.nvContext.getContext(), R.anim.slide_in_bottom);
            animationLoadAnimation.setAnimationListener(animationListener);
            this.drawerContainer.setAnimation(animationLoadAnimation);
        }
    }

    public BottomDrawerViewHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.sharedPreferencesHelper = new PreferencesHelper(nVContext);
        this.masterThemeHelper = new MasterThemeHelper(nVContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSearchCommunityList() {
        if (getActivity() == null) {
            return;
        }
        this.masterThemeHelper.saveDynamicThemeBg(getActivity());
        Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
        intent.putExtra("section_type", 1);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Toast");
        intent.putExtra("overlayBackground", String.format("#%06X", -586410198));
        intent.putExtra("showMyCommunity", false);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "toast");
        safedk_BottomDrawerViewHelper_startActivity_92a7575b9066f87924165e05b4fd6fca(this, intent);
        if (getActivity() != null) {
            getActivity().overridePendingTransition(R.anim.slide_in_bottom, R.anim.slide_out_bottom);
        }
    }

    private void startActivity(Intent intent) {
        try {
            Activity activity = getActivity();
            if (activity != null) {
                safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(activity, intent);
            }
        } catch (Exception unused) {
        }
    }

    public View addBottomView(int i10) {
        ViewGroup viewGroup;
        Activity activity = getActivity();
        if (activity == null || getActivity().getWindow() == null || (viewGroup = (ViewGroup) activity.getWindow().getDecorView()) == null) {
            return null;
        }
        this.drawerContainer = (BottomDrawerContainer) viewGroup.findViewById(R.id.drawer_bottom_container);
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.layout_above_post_entry);
        if (viewGroup2 == null) {
            viewGroup2 = (ViewGroup) viewGroup.findViewById(android.R.id.content);
        }
        if (viewGroup2 == null) {
            Log.e("bottom drawer", "cannot find view attached to");
            return null;
        }
        if (this.drawerContainer == null) {
            LayoutInflater.from(this.nvContext.getContext()).inflate(R.layout.bottom_container_layout, viewGroup2);
            this.drawerContainer = (BottomDrawerContainer) viewGroup.findViewById(R.id.drawer_bottom_container);
        }
        BottomDrawerContainer bottomDrawerContainer = this.drawerContainer;
        if (bottomDrawerContainer == null) {
            return null;
        }
        bottomDrawerContainer.setDismissListener(this);
        this.drawerContainer.removeAllViews();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        layoutParams.bottomMargin = (int) this.nvContext.getContext().getResources().getDimension(R.dimen.bottom_drawer_scroll_offset_neg);
        View viewInflate = LayoutInflater.from(this.nvContext.getContext()).inflate(i10, (ViewGroup) this.drawerContainer, false);
        this.drawerContainer.addView(viewInflate, -1, layoutParams);
        return viewInflate;
    }

    @Override // com.narvii.widget.BottomDrawerContainer.DismissListener
    public void onDismiss() {
        if (getActivity() != null) {
            ((AccountService) this.nvContext.getService("account")).removeProfileListener(this.noticeProfileListener);
        }
        BottomDismissListener bottomDismissListener = this.bottomDismissListener;
        if (bottomDismissListener != null) {
            bottomDismissListener.onDismiss();
        }
        if (this.suggestedShowing) {
            logSuggestQuit();
        }
        this.suggestedShowing = false;
        this.lastShowTime = 0L;
    }

    public void showImportNotice() {
        View viewAddBottomView = addBottomView(R.layout.account_important_notice);
        if (viewAddBottomView == null) {
            return;
        }
        if (getActivity() != null) {
            ((AccountService) this.nvContext.getService("account")).addProfileListener(this.noticeProfileListener);
        }
        setDismissTThreshold((int) (this.nvContext.getContext().getResources().getDimensionPixelSize(R.dimen.bottom_drawer_notice_height) / 4.0f));
        viewAddBottomView.findViewById(R.id.hide_button).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.BottomDrawerViewHelper.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BottomDrawerViewHelper.this.hideBottomLayoutWithAnimation(null);
            }
        });
        showBottomLayout(new Animation.AnimationListener() { // from class: com.narvii.master.BottomDrawerViewHelper.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        viewAddBottomView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.BottomDrawerViewHelper.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BottomDrawerViewHelper.this.hideBottomLayout();
                Intent intent = FragmentWrapperActivity.intent(BottomDrawerViewHelper.this.noticeEntryClass());
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Toast");
                BottomDrawerViewHelper.this.preProcessNoticeEntryIntent(intent);
                BottomDrawerViewHelper.safedk_BottomDrawerViewHelper_startActivity_92a7575b9066f87924165e05b4fd6fca(BottomDrawerViewHelper.this, intent);
            }
        });
    }

    public void showSuggestCommunity(List<Community> list) {
        View viewAddBottomView = addBottomView(R.layout.bottom_suggest_community);
        if (viewAddBottomView == null) {
            return;
        }
        this.recyclerView = (RecyclerView) viewAddBottomView.findViewById(R.id.suggest_communities_list_layout);
        this.recyclerView.setLayoutManager(new LinearLayoutManager(this.nvContext.getContext(), 0, false));
        StandaloneRecyclerImpressionCollector<Community> standaloneRecyclerImpressionCollector = new StandaloneRecyclerImpressionCollector<Community>(Community.class) { // from class: com.narvii.master.BottomDrawerViewHelper.5
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo objectInfo) {
                super.completeImpressionLogBuilder(builder, objectInfo);
                builder.page("AminoSuggestPopup");
                builder.pvId(BottomDrawerViewHelper.this.pvId);
                builder.area("RecommendArea");
            }
        };
        this.suggestedIPC = standaloneRecyclerImpressionCollector;
        standaloneRecyclerImpressionCollector.setListView(this.recyclerView);
        this.lastShowTime = SystemClock.elapsedRealtime();
        this.pvId = UUID.randomUUID().toString();
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.master.BottomDrawerViewHelper.6
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
                super.onScrollStateChanged(recyclerView, i10);
                BottomDrawerViewHelper bottomDrawerViewHelper = BottomDrawerViewHelper.this;
                ImpressionUtils.logStandaloneRecyclerImpression(recyclerView, bottomDrawerViewHelper.suggestedIPC, bottomDrawerViewHelper.nvContext);
            }
        });
        SuggestedCommunityAdapter suggestedCommunityAdapter = new SuggestedCommunityAdapter(list);
        Utils.post(new Runnable() { // from class: com.narvii.master.BottomDrawerViewHelper.7
            @Override // java.lang.Runnable
            public void run() {
                RecyclerView recyclerView = BottomDrawerViewHelper.this.recyclerView;
                BottomDrawerViewHelper bottomDrawerViewHelper = BottomDrawerViewHelper.this;
                ImpressionUtils.logStandaloneRecyclerImpression(recyclerView, bottomDrawerViewHelper.suggestedIPC, bottomDrawerViewHelper.nvContext);
            }
        });
        this.recyclerView.setAdapter(suggestedCommunityAdapter);
        View viewFindViewById = viewAddBottomView.findViewById(R.id.search_btn_layout);
        View viewFindViewById2 = viewAddBottomView.findViewById(R.id.hide_button);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.BottomDrawerViewHelper.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BottomDrawerViewHelper.this.showSearchCommunityList();
            }
        });
        viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.BottomDrawerViewHelper.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BottomDrawerViewHelper.this.hideBottomLayoutWithAnimation(null);
            }
        });
        showBottomLayout(new Animation.AnimationListener() { // from class: com.narvii.master.BottomDrawerViewHelper.10
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                BottomDrawerViewHelper.this.sharedPreferencesHelper.saveLastSuggestCommunityShowTime(new Date().getTime());
                BottomDrawerViewHelper.this.sharedPreferencesHelper.saveBottomDrawerGlobalShownTime(new Date().getTime());
            }
        });
        this.suggestedShowing = true;
        logSuggestLaunch();
    }
}
