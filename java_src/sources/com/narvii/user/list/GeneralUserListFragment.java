package com.narvii.user.list;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ListAdapter;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.list.NVListFragment;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes9.dex */
public class GeneralUserListFragment extends NVListFragment {
    Adapter adapter;

    private class Adapter extends UserListExAdapter {
        public Adapter() {
            super(GeneralUserListFragment.this);
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder()._url(GeneralUserListFragment.this.getStringParam(ImagesContract.URL)).build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        String stringParam = getStringParam("title");
        if (!TextUtils.isEmpty(stringParam)) {
            setTitle(stringParam);
        }
    }
}
