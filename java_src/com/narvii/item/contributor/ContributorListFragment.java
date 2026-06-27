package com.narvii.item.contributor;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.User;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import java.util.List;

/* loaded from: classes.dex */
public class ContributorListFragment extends NVListFragment implements FragmentWillFinishListener {
    static final int SORT_REQUEST = 1;
    Adapter adapter;
    List<Contributor> contributorList;
    boolean reorder;

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(R.string.contributors);
        this.contributorList = JacksonUtils.readListAs(getStringParam("contributorList"), Contributor.class);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.reorder, 0, R.string.reorder);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        User userProfile = ((AccountService) getService("account")).getUserProfile();
        MenuItem menuItemFindItem = menu.findItem(R.string.reorder);
        boolean z = false;
        if (getBooleanParam("canReorder", false) && userProfile != null && userProfile.isCurator()) {
            z = true;
        }
        menuItemFindItem.setVisible(z);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.reorder) {
            Intent intent = FragmentWrapperActivity.intent(ContributorSortFragment.class);
            intent.putExtra("itemId", getStringParam("itemId"));
            intent.putExtra("contributorList", JacksonUtils.writeAsString(this.contributorList));
            intent.putExtra("customFinishAnimIn", 0);
            intent.putExtra("customFinishAnimOut", 0);
            startActivityForResult(intent, 1);
            getActivity().overridePendingTransition(0, 0);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1 && intent != null) {
            this.contributorList = JacksonUtils.readListAs(intent.getStringExtra("contributorList"), Contributor.class);
            this.adapter.notifyDataSetChanged();
            this.reorder = true;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        if (this.reorder) {
            Intent intent = new Intent();
            intent.putExtra("contributorList", JacksonUtils.writeAsString(this.contributorList));
            nVActivity.setResult(-1, intent);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    class Adapter extends NVAdapter {
        DateTimeFormatter fmt;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public Adapter() {
            super(ContributorListFragment.this);
            this.fmt = new DateTimeFormatter();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ContributorListFragment.this.contributorList.size();
        }

        @Override // android.widget.Adapter
        public Contributor getItem(int i) {
            return ContributorListFragment.this.contributorList.get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Contributor item = getItem(i);
            View viewCreateView = createView(R.layout.user_item_contributor, viewGroup, view);
            ((NVImageView) viewCreateView.findViewById(R.id.avatar)).setImageUrl(item.icon());
            ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setUser(item);
            ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setRole2(item.isOriginalAuthor() ? getContext().getString(R.string.original_author) : null, User.ROLE_COLOR_AUTHOR);
            ((TextView) viewCreateView.findViewById(R.id.datetime)).setText(this.fmt.format(item.contributedTime));
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof User) {
                startActivity(UserProfileFragment.intent(this, (User) obj));
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
