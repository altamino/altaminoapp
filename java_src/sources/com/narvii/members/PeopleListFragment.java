package com.narvii.members;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.HoverAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.LogEvent;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class PeopleListFragment extends NVListFragment implements HoverAdapter {
    public PeopleListAdapter mergeAdapter;

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "all_members_list";
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
        this.mergeAdapter.retry();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        PeopleListAdapter peopleListAdapter = new PeopleListAdapter(this, true);
        this.mergeAdapter = peopleListAdapter;
        return peopleListAdapter;
    }

    @Override // com.narvii.list.HoverAdapter
    public boolean isHover(int i10) {
        PeopleListAdapter peopleListAdapter = this.mergeAdapter;
        return peopleListAdapter != null && peopleListAdapter.getItem(i10) == PeopleListAdapter.SECTION;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        ((LiveLayerService) getService("liveLayer")).reportBrowsing("all-members", z6);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getString(R.string.members));
        setHasOptionsMenu(true);
        getActivity().getWindow().setSoftInputMode(48);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Members Page Opened").userPropInc("Members Page Opened Total").source(getStringParam(ExternalPostPreviewFragment.SOURCE));
        }
        setScrollToHideKeyboard(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.search, 0, R.string.search).setIcon(R.drawable.ic_search).setShowAsAction(2);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setHoverAdapter(this);
        setEmptyView(R.layout.empty_view_top);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.search) {
            LogEvent.clickWildcardBuilder(this, "SearchIcon").send();
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, FragmentWrapperActivity.intent(MembersSearchFragment.class));
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.empty_retry);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.members.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f2485a.lambda$onViewCreated$0(view2);
                }
            });
        }
    }
}
