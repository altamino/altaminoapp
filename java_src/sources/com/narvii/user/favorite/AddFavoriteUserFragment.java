package com.narvii.user.favorite;

import android.os.Bundle;
import com.narvii.amino.master.R;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.user.picker.SingleUserPickerFragment;
import com.narvii.util.Callback;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.statistics.StatisticsService;

/* JADX INFO: loaded from: classes6.dex */
public class AddFavoriteUserFragment extends SingleUserPickerFragment {
    @Override // com.narvii.user.picker.SingleUserPickerFragment
    public String target() {
        return "joined";
    }

    @Override // com.narvii.user.picker.SingleUserPickerFragment
    protected void onPickUser(final User user) {
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.user.favorite.AddFavoriteUserFragment.1
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                AddFavoriteUserFragment.this.sendNotification(new Notification(FavoriteUserListFragment.ACTION_ADD_FAVORITE_USER, user));
                AddFavoriteUserFragment.this.finish();
                ((StatisticsService) AddFavoriteUserFragment.this.getService("statistics")).event("Favorite Members Added").source(AddFavoriteUserFragment.this.getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Favorite Members Total");
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/user-group/quick-access/" + user.uid).build(), progressDialog.dismissListener);
    }

    @Override // com.narvii.user.picker.SingleUserPickerFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.user_following);
    }
}
