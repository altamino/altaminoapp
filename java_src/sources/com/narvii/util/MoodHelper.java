package com.narvii.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.onlinestatus.ChooseMoodFragment;
import com.narvii.prefs.AccountSettingFragment;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class MoodHelper {
    static final int ACTIVATION_REQUEST = 5;

    public static Sticker getMood(User user, NVContext nVContext) {
        if (user != null && isOnline(user, Utils.isEqualsNotNull(((AccountService) nVContext.getService("account")).getUserId(), user.id()), nVContext)) {
            return user.getMoodSticker();
        }
        return null;
    }

    public static boolean isOnline(User user, boolean z6, NVContext nVContext) {
        if (user == null) {
            return false;
        }
        int onlineStatus = user.onlineStatus;
        if (z6) {
            onlineStatus = ((AccountService) nVContext.getService("account")).getOnlineStatus();
        }
        return (onlineStatus == 0 || onlineStatus == 2) ? false : true;
    }

    public static void safedk_Activity_startActivityForResult_206f42f0b65887e835d87ee52d14d221(Activity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void activateAccount(Activity activity) {
        Intent intent = FragmentWrapperActivity.intent(AccountSettingFragment.class);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "My User Profile");
        safedk_Activity_startActivityForResult_206f42f0b65887e835d87ee52d14d221(activity, intent, 5);
    }

    public static int getMoodVisibility(User user, NVContext nVContext, Sticker sticker) {
        AccountService accountService = (AccountService) nVContext.getService("account");
        return (!Utils.isEqualsNotNull(accountService.getUserId(), user.id()) ? !Sticker.isEmpty(sticker) : accountService.hasActivation()) ? 4 : 0;
    }

    public static void popupOnlineStatusMenu(final NVContext nVContext, final User user, final Callback<Integer> callback) {
        Sticker mood;
        int i10;
        int i11;
        final Context context = nVContext.getContext();
        final ActionSheetDialog actionSheetDialog = new ActionSheetDialog(context);
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(((AccountService) nVContext.getService("account")).getUserId(), user.id());
        actionSheetDialog.setCustomView(R.layout.mood_picker_dialog_custom);
        boolean zIsOnline = isOnline(user, zIsEqualsNotNull, nVContext);
        if (zIsOnline) {
            mood = getMood(user, nVContext);
        } else {
            mood = null;
        }
        TextView textView = (TextView) actionSheetDialog.findCustomViewById(R.id.mood_pick).findViewById(R.id.mood_text);
        if (Sticker.isEmpty(mood)) {
            i10 = R.string.mood_choose;
        } else {
            i10 = R.string.mood_change;
        }
        textView.setText(i10);
        actionSheetDialog.findCustomViewById(R.id.mood_pick).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.util.MoodHelper.1
            public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                actionSheetDialog.dismiss();
                if (((AccountService) nVContext.getService("account")).hasActivation()) {
                    Intent intent = FragmentWrapperActivity.intent(ChooseMoodFragment.class);
                    intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(user));
                    intent.putExtra("moodSticker", JacksonUtils.writeAsString(MoodHelper.getMood(user, nVContext)));
                    safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, intent);
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setMessage(R.string.mood_activation_required);
                builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.narvii.util.MoodHelper.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i12) {
                        Context context2 = context;
                        if (context2 instanceof Activity) {
                            MoodHelper.activateAccount((Activity) context2);
                        }
                    }
                });
                builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                builder.show();
            }
        });
        TextView textView2 = (TextView) actionSheetDialog.findCustomViewById(R.id.online_status_online).findViewById(R.id.text);
        if (zIsOnline) {
            i11 = R.string.online_status_online;
        } else {
            i11 = R.string.online_status_go_online;
        }
        textView2.setText(i11);
        if (zIsOnline) {
            actionSheetDialog.findCustomViewById(R.id.online_status_online).findViewById(R.id.online_check).setVisibility(0);
            actionSheetDialog.findCustomViewById(R.id.online_status_offline).findViewById(R.id.offline_check).setVisibility(4);
        } else {
            actionSheetDialog.findCustomViewById(R.id.online_status_online).findViewById(R.id.online_check).setVisibility(4);
            actionSheetDialog.findCustomViewById(R.id.online_status_offline).findViewById(R.id.offline_check).setVisibility(0);
            actionSheetDialog.findCustomViewById(R.id.online_status_offline).setVisibility(8);
            actionSheetDialog.findCustomViewById(R.id.online_status_offline_divider).setVisibility(8);
        }
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.util.MoodHelper.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                actionSheetDialog.dismiss();
                final int i12 = view.getId() == R.id.online_status_online ? 1 : 2;
                ProgressDialog progressDialog = new ProgressDialog(context);
                progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.util.MoodHelper.2.1
                    @Override // com.narvii.util.Callback
                    public void call(ApiResponse apiResponse) {
                        ((AccountService) nVContext.getService("account")).updateOnlineStatus(i12, apiResponse.timestamp, true);
                        LiveLayerService liveLayerService = (LiveLayerService) nVContext.getService("liveLayer");
                        if (liveLayerService != null) {
                            liveLayerService.refreshOnlineMembers();
                        }
                        Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.call(Integer.valueOf(i12));
                        }
                    }
                };
                progressDialog.show();
                ApiRequest.Builder builderParam = ApiRequest.builder().post().path("user-profile/" + user.id() + "/online-status").param("onlineStatus", Integer.valueOf(i12));
                if (i12 == 2) {
                    builderParam.param(TypedValues.TransitionType.S_DURATION, Integer.valueOf(InviteMembersFragment.SECOND_DAY));
                }
                ((ApiService) nVContext.getService("api")).exec(builderParam.build(), progressDialog.dismissListener);
            }
        };
        actionSheetDialog.findCustomViewById(R.id.online_status_online).setOnClickListener(onClickListener);
        actionSheetDialog.findCustomViewById(R.id.online_status_offline).setOnClickListener(onClickListener);
        actionSheetDialog.show();
    }
}
