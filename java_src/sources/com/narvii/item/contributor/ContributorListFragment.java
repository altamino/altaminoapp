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
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ContributorListFragment extends NVListFragment implements FragmentWillFinishListener {
    static final int SORT_REQUEST = 1;
    Adapter adapter;
    List<Contributor> contributorList;
    boolean reorder;

    class Adapter extends NVAdapter {
        DateTimeFormatter fmt;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
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
        public Contributor getItem(int i10) {
            return ContributorListFragment.this.contributorList.get(i10);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof User)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, UserProfileFragment.intent(this, (User) obj));
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            String string;
            Contributor item = getItem(i10);
            View viewCreateView = createView(R.layout.user_item_contributor, viewGroup, view);
            ((NVImageView) viewCreateView.findViewById(R.id.avatar)).setImageUrl(item.icon());
            ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setUser(item);
            NicknameView nicknameView = (NicknameView) viewCreateView.findViewById(R.id.nickname);
            if (item.isOriginalAuthor()) {
                string = getContext().getString(R.string.original_author);
            } else {
                string = null;
            }
            nicknameView.setRole2(string, User.ROLE_COLOR_AUTHOR);
            ((TextView) viewCreateView.findViewById(R.id.datetime)).setText(this.fmt.format(item.contributedTime));
            return viewCreateView;
        }
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 1 && i11 == -1 && intent != null) {
            this.contributorList = JacksonUtils.readListAs(intent.getStringExtra("contributorList"), Contributor.class);
            this.adapter.notifyDataSetChanged();
            this.reorder = true;
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        if (this.reorder) {
            Intent intent = new Intent();
            intent.putExtra("contributorList", JacksonUtils.writeAsString(this.contributorList));
            nVActivity.setResult(-1, intent);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(R.string.contributors);
        this.contributorList = JacksonUtils.readListAs(getStringParam("contributorList"), Contributor.class);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.reorder, 0, R.string.reorder);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.reorder) {
            Intent intent = FragmentWrapperActivity.intent(ContributorSortFragment.class);
            intent.putExtra("itemId", getStringParam("itemId"));
            intent.putExtra("contributorList", JacksonUtils.writeAsString(this.contributorList));
            intent.putExtra("customFinishAnimIn", 0);
            intent.putExtra("customFinishAnimOut", 0);
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 1);
            getActivity().overridePendingTransition(0, 0);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        User userProfile = ((AccountService) getService("account")).getUserProfile();
        MenuItem menuItemFindItem = menu.findItem(R.string.reorder);
        boolean z6 = false;
        if (getBooleanParam("canReorder", false) && userProfile != null && userProfile.isCurator()) {
            z6 = true;
        }
        menuItemFindItem.setVisible(z6);
    }
}
