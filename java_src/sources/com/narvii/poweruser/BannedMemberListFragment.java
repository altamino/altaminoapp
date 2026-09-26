package com.narvii.poweruser;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.User;
import com.narvii.user.list.UserListAdapter;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.http.ApiRequest;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class BannedMemberListFragment extends NVListFragment {

    class BanedMemberAdapter extends UserListAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected List<User> filterResponseList(List<User> list, int i10) {
            return list;
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.user.list.UserListItemHost
        public boolean showDisableView() {
            return true;
        }

        public BanedMemberAdapter() {
            super(BannedMemberListFragment.this);
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof User)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, UserProfileFragment.intent(BannedMemberListFragment.this, (User) obj));
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", "banned");
            return builderPath.build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new BanedMemberAdapter();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.baned_user);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((TextView) this.emptyView.findViewById(R.id.empty_text)).setText(getString(R.string.banned_member_empty));
    }
}
