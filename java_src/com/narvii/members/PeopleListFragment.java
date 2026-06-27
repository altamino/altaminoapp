package com.narvii.members;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.list.HoverAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.LogEvent;

/* loaded from: classes3.dex */
public class PeopleListFragment extends NVListFragment implements HoverAdapter {
    public PeopleListAdapter mergeAdapter;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "AllMembers";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getString(R.string.members));
        setHasOptionsMenu(true);
        getActivity().getWindow().setSoftInputMode(48);
        setScrollToHideKeyboard(true);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.empty_retry);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.members.PeopleListFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    PeopleListFragment.this.mergeAdapter.retry();
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setHoverAdapter(this);
        setEmptyView(R.layout.empty_view_top);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new PeopleListAdapter(this, true);
        return this.mergeAdapter;
    }

    @Override // com.narvii.list.HoverAdapter
    public boolean isHover(int i) {
        PeopleListAdapter peopleListAdapter = this.mergeAdapter;
        return peopleListAdapter != null && peopleListAdapter.getItem(i) == PeopleListAdapter.SECTION;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.search, 0, R.string.search).setIcon(R.drawable.ic_search).setShowAsAction(2);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        ((LiveLayerService) getService("liveLayer")).reportBrowsing("all-members", z);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.search) {
            LogEvent.clickWildcardBuilder(this, "SearchIcon").send();
            startActivity(FragmentWrapperActivity.intent(MembersSearchFragment.class));
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
