package com.narvii.master.home.profile;

import android.content.DialogInterface;
import android.content.Intent;
import com.narvii.account.AccountService;
import com.narvii.app.NVActivity;
import com.narvii.feed.BackgroundPostHelper;
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
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class GlobalProfileMediaPickCallback implements MediaPickCallback {
    private final int EDIT_CODE = 2112;

    public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void doPost$lambda$1$lambda$0(BackgroundPostHelper ph, DialogInterface dialogInterface) {
        kotlin.jvm.internal.t.j(ph, "$ph");
        ph.cancel();
    }

    public final void doPost(@NotNull EditGlobalBackgroundActivity.UserBackgroundPost post, @NotNull final NVActivity activity, @NotNull String userId) {
        kotlin.jvm.internal.t.j(post, "post");
        kotlin.jvm.internal.t.j(activity, "activity");
        kotlin.jvm.internal.t.j(userId, "userId");
        Object service = activity.getService("account");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        final AccountService accountService = (AccountService) service;
        ApiRequest apiRequestBuild = ApiRequest.builder().post().path("/user-profile/" + userId).build();
        final BackgroundPostHelper backgroundPostHelper = new BackgroundPostHelper(activity);
        final ProgressDialog progressDialog = new ProgressDialog(activity);
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.master.home.profile.b0
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                GlobalProfileMediaPickCallback.doPost$lambda$1$lambda$0(backgroundPostHelper, dialogInterface);
            }
        });
        backgroundPostHelper.setPostListener(new PostListener() { // from class: com.narvii.master.home.profile.GlobalProfileMediaPickCallback.doPost.1
            @Override // com.narvii.post.PostListener
            public void onPostProgress(@Nullable PostHelper postHelper, int i10, int i11) {
            }

            @Override // com.narvii.post.PostListener
            public void onPostFail(@Nullable PostHelper postHelper, int i10, @Nullable String str, @Nullable Throwable th) {
                if (!activity.isDestoryed() && progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
            }

            @Override // com.narvii.post.PostListener
            public void onPostFinished(@Nullable PostHelper postHelper, @Nullable ApiResponse apiResponse) {
                if (apiResponse instanceof UserResponse) {
                    UserResponse userResponse = (UserResponse) apiResponse;
                    accountService.updateProfile(userResponse.object(), userResponse.timestamp, true);
                }
                if (!activity.isDestoryed() && progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
            }

            @Override // com.narvii.post.PostListener
            public void onPostStart(@Nullable PostHelper postHelper) {
                try {
                    progressDialog.show();
                } catch (Exception unused) {
                }
            }
        });
        backgroundPostHelper.startPost(post, apiRequestBuild, UserResponse.class);
    }

    @Override // com.narvii.media.MediaPickCallback
    public void onPick(@Nullable HashMap<String, Object> map, @Nullable NVActivity nVActivity, boolean z6) {
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
            kotlin.jvm.internal.t.g(user);
            safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(nVActivity, companion.intent(nVActivity, user), this.EDIT_CODE);
            return;
        }
        if (num != null && num.intValue() == 2) {
            if (listAs != null && listAs.size() != 0) {
                EditGlobalBackgroundActivity.Companion companion2 = EditGlobalBackgroundActivity.Companion;
                kotlin.jvm.internal.t.g(user);
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(nVActivity, companion2.intent(nVActivity, user, listAs), this.EDIT_CODE);
            } else {
                kotlin.jvm.internal.t.g(user);
                EditGlobalBackgroundActivity.UserBackgroundPost userBackgroundPost = new EditGlobalBackgroundActivity.UserBackgroundPost(user);
                userBackgroundPost.setBackgroundMediaList(null);
                String strId = user.id();
                kotlin.jvm.internal.t.i(strId, "id(...)");
                doPost(userBackgroundPost, nVActivity, strId);
            }
        }
    }
}
