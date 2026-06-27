package com.narvii.sharedfolder;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
import com.narvii.list.DragSortPageFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.SharedAlbum;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class SharedAlbumSortFragment extends DragSortPageFragment<SharedAlbum> {
    SharedAlbumSortAdapter adapter;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(getString(R.string.reorder));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            ArrayList arrayList = (ArrayList) this.adapter.list();
            if (CollectionUtils.isEmpty(arrayList)) {
                return true;
            }
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayNodeCreateArrayNode.add(((SharedAlbum) it.next()).id());
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.post().path("shared-folder/folders/reorder");
            builder.param("folderIdList", arrayNodeCreateArrayNode);
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.sharedfolder.SharedAlbumSortFragment.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    SharedAlbumSortFragment.this.setResult(-1);
                    SharedAlbumSortFragment.this.finish();
                }
            };
            progressDialog.show();
            ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.DragSortPageFragment
    protected NVPagedAdapter createMainAdapter() {
        SharedAlbumSortAdapter sharedAlbumSortAdapter = this.adapter;
        if (sharedAlbumSortAdapter != null) {
            return sharedAlbumSortAdapter;
        }
        SharedAlbumSortAdapter sharedAlbumSortAdapter2 = new SharedAlbumSortAdapter(this);
        this.adapter = sharedAlbumSortAdapter2;
        return sharedAlbumSortAdapter2;
    }
}
