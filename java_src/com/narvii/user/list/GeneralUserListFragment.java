package com.narvii.user.list;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ListAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes3.dex */
public class GeneralUserListFragment extends NVListFragment {
    Adapter adapter;

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        String stringParam = getStringParam("title");
        if (TextUtils.isEmpty(stringParam)) {
            return;
        }
        setTitle(stringParam);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    private class Adapter extends UserListExAdapter {
        public Adapter() {
            super(GeneralUserListFragment.this);
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder()._url(GeneralUserListFragment.this.getStringParam("url")).build();
        }
    }
}
