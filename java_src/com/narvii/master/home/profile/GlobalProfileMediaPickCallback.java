package com.narvii.master.home.profile;

import android.content.DialogInterface;
import com.narvii.account.AccountService;
import com.narvii.app.NVActivity;
import com.narvii.feed.BackgroundPostHelper;
import com.narvii.master.home.profile.EditGlobalAvatarActivity;
import com.narvii.master.home.profile.EditGlobalBackgroundActivity;
import com.narvii.media.MediaPickCallback;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.post.PostHelper;
import com.narvii.post.PostListener;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GlobalProfileMediaPickCallback.kt */
/* loaded from: classes3.dex */
public final class GlobalProfileMediaPickCallback implements MediaPickCallback {
    private final int EDIT_CODE = 2112;

    @Override // com.narvii.media.MediaPickCallback
    public void onPick(HashMap<String, Object> map, NVActivity nVActivity, boolean z) {
        if (nVActivity == null || nVActivity.isDestoryed() || map == null) {
            return;
        }
        ArrayList listAs = JacksonUtils.readListAs((String) map.get("mediaList"), Media.class);
        User user = (User) JacksonUtils.readAs((String) map.get(GlobalProfileFragment.KEY_USER), User.class);
        Integer num = (Integer) map.get("type");
        if (num != null && num.intValue() == 1) {
            if (listAs != null && listAs.size() > 0) {
                user.icon = ((Media) listAs.get(0)).url;
            }
            EditGlobalAvatarActivity.Companion companion = EditGlobalAvatarActivity.Companion;
            Intrinsics.checkExpressionValueIsNotNull(user, "user");
            nVActivity.startActivityForResult(companion.intent(nVActivity, user), this.EDIT_CODE);
            return;
        }
        if (num != null && num.intValue() == 2) {
            if (listAs == null || listAs.size() == 0) {
                Intrinsics.checkExpressionValueIsNotNull(user, "user");
                EditGlobalBackgroundActivity.UserBackgroundPost userBackgroundPost = new EditGlobalBackgroundActivity.UserBackgroundPost(user);
                userBackgroundPost.setBackgroundMediaList(null);
                String strId = user.id();
                Intrinsics.checkExpressionValueIsNotNull(strId, "user.id()");
                doPost(userBackgroundPost, nVActivity, strId);
                return;
            }
            EditGlobalBackgroundActivity.Companion companion2 = EditGlobalBackgroundActivity.Companion;
            Intrinsics.checkExpressionValueIsNotNull(user, "user");
            nVActivity.startActivityForResult(companion2.intent(nVActivity, user, listAs), this.EDIT_CODE);
        }
    }

    public final void doPost(EditGlobalBackgroundActivity.UserBackgroundPost post, final NVActivity activity, String userId) {
        Intrinsics.checkParameterIsNotNull(post, "post");
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(userId, "userId");
        Object service = activity.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "activity.getService(\"account\")");
        final AccountService accountService = (AccountService) service;
        ApiRequest apiRequestBuild = ApiRequest.builder().post().path("/user-profile/" + userId).build();
        final BackgroundPostHelper backgroundPostHelper = new BackgroundPostHelper(activity);
        final ProgressDialog progressDialog = new ProgressDialog(activity);
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.master.home.profile.GlobalProfileMediaPickCallback$doPost$$inlined$apply$lambda$1
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                backgroundPostHelper.cancel();
            }
        });
        backgroundPostHelper.setPostListener(new PostListener() { // from class: com.narvii.master.home.profile.GlobalProfileMediaPickCallback.doPost.1
            @Override // com.narvii.post.PostListener
            public void onPostProgress(PostHelper postHelper, int i, int i2) {
            }

            @Override // com.narvii.post.PostListener
            public void onPostStart(PostHelper postHelper) {
                try {
                    progressDialog.show();
                } catch (Exception unused) {
                }
            }

            @Override // com.narvii.post.PostListener
            public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
                if (apiResponse instanceof UserResponse) {
                    accountService.updateProfile(((UserResponse) apiResponse).object(), apiResponse.timestamp, true);
                }
                if (!activity.isDestoryed() && progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
            }

            @Override // com.narvii.post.PostListener
            public void onPostFail(PostHelper postHelper, int i, String str, Throwable th) {
                if (!activity.isDestoryed() && progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
            }
        });
        backgroundPostHelper.startPost(post, apiRequestBuild, UserResponse.class);
    }
}
