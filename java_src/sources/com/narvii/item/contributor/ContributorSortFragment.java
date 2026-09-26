package com.narvii.item.contributor;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.master.R;
import com.narvii.list.DragSortListFragment;
import com.narvii.list.NVArrayAdapter;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class ContributorSortFragment extends DragSortListFragment<Contributor> {
    Adapter adapter;

    private class Adapter extends NVArrayAdapter<Contributor> {
        public Adapter(List<Contributor> list) {
            super(ContributorSortFragment.this, Contributor.class, list);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            String string;
            Contributor item = getItem(i10);
            View viewCreateView = createView(R.layout.user_item_contributor_sort, viewGroup, view);
            ((NVImageView) viewCreateView.findViewById(R.id.avatar)).setImageUrl(item.icon());
            ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setUser(item);
            NicknameView nicknameView = (NicknameView) viewCreateView.findViewById(R.id.nickname);
            if (item.isOriginalAuthor()) {
                string = getContext().getString(R.string.original_author);
            } else {
                string = null;
            }
            nicknameView.setRole2(string, User.ROLE_COLOR_AUTHOR);
            return viewCreateView;
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment
    public NVArrayAdapter<Contributor> createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter(JacksonUtils.readListAs(getStringParam("contributorList"), Contributor.class));
        this.adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(getString(R.string.organize_contributors));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            final ArrayList arrayList = new ArrayList(this.adapter.getList());
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayNodeCreateArrayNode.add(((Contributor) it.next()).uid);
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.post().path("/item/" + getStringParam("itemId") + "/contributors");
            builder.param("contributorUidList", arrayNodeCreateArrayNode);
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.item.contributor.ContributorSortFragment.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    Intent intent = new Intent();
                    intent.putExtra("contributorList", JacksonUtils.writeAsString(arrayList));
                    ContributorSortFragment.this.setResult(-1, intent);
                    ContributorSortFragment.this.finish();
                }
            };
            progressDialog.show();
            ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
