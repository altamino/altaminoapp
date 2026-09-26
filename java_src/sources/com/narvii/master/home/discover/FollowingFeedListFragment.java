package com.narvii.master.home.discover;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.master.R;
import com.narvii.master.MasterTabFragment;
import com.narvii.master.MasterTopBarAvailable;
import com.narvii.master.home.story.CommentSheetDisplayHost;
import com.narvii.master.widget.MasterBottomOffsetAdapter;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.state.PageStatusView;
import com.narvii.widget.recycleview.NVRecyclerView;
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class FollowingFeedListFragment extends NVRecyclerViewFragment implements MasterTopBarAvailable, CommentSheetDisplayHost {
    public AccountService accountService;

    @Nullable
    private FrameLayout bottomSheetLayout;

    @Nullable
    private View loginLayout;
    private boolean showMasterTopBar = true;

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Nullable
    public final View getLoginLayout() {
        return this.loginLayout;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "following";
    }

    public final boolean getShowMasterTopBar() {
        return this.showMasterTopBar;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.master.MasterTopBarAvailable
    public boolean isTopBarAvailable() {
        return this.showMasterTopBar;
    }

    public final void setAccountService(@NotNull AccountService accountService) {
        t.j(accountService, "<set-?>");
        this.accountService = accountService;
    }

    @Override // com.narvii.master.home.story.CommentSheetDisplayHost
    public void setBottomSheetLayout(@Nullable FrameLayout frameLayout) {
        this.bottomSheetLayout = frameLayout;
    }

    public final void setLoginLayout(@Nullable View view) {
        this.loginLayout = view;
    }

    public final void setShowMasterTopBar(boolean z6) {
        this.showMasterTopBar = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(FollowingFeedListFragment this$0, View view) {
        t.j(this$0, "this$0");
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, new Intent(this$0.getContext(), (Class<?>) LoginActivity.class));
    }

    private final void updateMasterTopBar(boolean z6) {
        this.showMasterTopBar = z6;
        if (getParentFragment() instanceof DiscoverTabFragment) {
            Fragment parentFragment = getParentFragment();
            t.h(parentFragment, "null cannot be cast to non-null type com.narvii.master.home.discover.DiscoverTabFragment");
            if (((DiscoverTabFragment) parentFragment).getParentFragment() instanceof MasterTabFragment) {
                Fragment parentFragment2 = getParentFragment();
                t.h(parentFragment2, "null cannot be cast to non-null type com.narvii.master.home.discover.DiscoverTabFragment");
                Fragment parentFragment3 = ((DiscoverTabFragment) parentFragment2).getParentFragment();
                t.h(parentFragment3, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
                ((MasterTabFragment) parentFragment3).updateTopbar();
            }
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = new RecyclerViewMergeAdapter(this);
        recyclerViewMergeAdapter.addAdapter(new MasterBottomOffsetAdapter(this));
        return recyclerViewMergeAdapter;
    }

    @NotNull
    public final AccountService getAccountService() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return accountService;
        }
        t.B("accountService");
        return null;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_following_feed, viewGroup, false);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putBoolean("showMasterTopBar", this.showMasterTopBar);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        this.pageStatusView.setEmptyView(R.layout.empty_view_following_feed);
        this.pageStatusView.setEmptyMessage(R.string.following_feed_empty);
        TextView tvEmpty = this.pageStatusView.getTvEmpty();
        if (tvEmpty != null) {
            tvEmpty.setAlpha(0.5f);
        }
        View btnEmptyRetry = this.pageStatusView.getBtnEmptyRetry();
        if (btnEmptyRetry != null) {
            btnEmptyRetry.setAlpha(0.5f);
        }
        this.loginLayout = view.findViewById(R.id.login_layout);
        View viewFindViewById = view.findViewById(R.id.login);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    FollowingFeedListFragment.onViewCreated$lambda$0(this.f2343a, view2);
                }
            });
        }
        updateViews();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("account");
        t.i(service, "getService(...)");
        setAccountService((AccountService) service);
        if (bundle != null) {
            this.showMasterTopBar = bundle.getBoolean("showMasterTopBar");
        }
        setTitle(R.string.main_featured_title_following);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    public void updateViews() {
        int visibility;
        int visibility2;
        super.updateViews();
        PageStatusView pageStatusView = this.pageStatusView;
        int i10 = 8;
        if (getAccountService().hasAccount()) {
            visibility = this.pageStatusView.getVisibility();
        } else {
            visibility = 8;
        }
        pageStatusView.setVisibility(visibility);
        NVRecyclerView nVRecyclerView = this.recyclerView;
        if (getAccountService().hasAccount()) {
            visibility2 = this.recyclerView.getVisibility();
        } else {
            visibility2 = 8;
        }
        nVRecyclerView.setVisibility(visibility2);
        View view = this.loginLayout;
        if (view != null) {
            if (!getAccountService().hasAccount()) {
                i10 = 0;
            }
            view.setVisibility(i10);
        }
    }
}
