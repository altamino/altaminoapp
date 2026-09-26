package com.narvii.master;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.text.SpannableStringBuilder;
import android.util.StateSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.community.MyCommunityListService;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.invitation.CommunityInviteResponse;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.Constants;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.webview.WebViewFragment;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public class CommunityHelper {
    boolean autoOpenCommunityDetail;
    NVContext context;
    LoggingOrigin eventOrigin;
    LoggingSource eventSource;
    PackageUtils packageUtils;
    String source;
    String tags;

    public static int getDisableUserNoteType(int i10) {
        switch (i10) {
            case R.string.flag_bullying /* 2131887987 */:
                return 0;
            case R.string.flag_inappropriate_request /* 2131888006 */:
                return 102;
            case R.string.flag_off_topic /* 2131888012 */:
                return 4;
            case R.string.flag_sexually_explicit /* 2131888028 */:
                return 100;
            case R.string.flag_spam /* 2131888032 */:
                return 2;
            case R.string.flag_violent /* 2131888040 */:
                return 101;
            default:
                return 200;
        }
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public CommunityHelper autoOpenCommunityDetail() {
        this.autoOpenCommunityDetail = true;
        return this;
    }

    public CommunityHelper eventOrigin(LoggingOrigin loggingOrigin) {
        this.eventOrigin = loggingOrigin;
        return this;
    }

    public CommunityHelper eventSource(LoggingSource loggingSource) {
        this.eventSource = loggingSource;
        return this;
    }

    public void joinCommunity(int i10, String str, Callback<Boolean> callback) {
        joinCommunity(i10, str, callback, true);
    }

    public CommunityHelper source(String str) {
        this.source = str;
        return this;
    }

    public CommunityHelper tags(String str) {
        this.tags = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tryJoinPrivateCommunity(Context context, int i10, Community community) {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", i10);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        intent.putExtra("joinOnly", true);
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(context, intent);
    }

    public void communityDetail(Community community) {
        if (community == null) {
            return;
        }
        openCommunityDetail(community);
    }

    public Intent communityDetailIntent(Community community) {
        if (community == null) {
            return null;
        }
        this.packageUtils.getCommunityIdFromPackageName();
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", community.id);
        intent.putExtra("icon", community.icon);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        LoggingOrigin loggingOrigin = this.eventOrigin;
        if (loggingOrigin != null) {
            intent.putExtra("eventOrigin", loggingOrigin.name());
        }
        LoggingSource loggingSource = this.eventSource;
        if (loggingSource != null) {
            intent.putExtra("eventSource", loggingSource.name());
        }
        String str = this.tags;
        if (str != null) {
            intent.putExtra("tags", str);
        }
        return intent;
    }

    public Drawable getCommunityDrawable(int i10) {
        int iColorPrimary = ((ConfigService) this.context.getService("config")).getTheme().colorPrimary();
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, new ColorDrawable(iColorPrimary));
        stateListDrawable.addState(StateSet.WILD_CARD, new ColorDrawable(i10));
        return stateListDrawable;
    }

    public Intent getFeedBackIntent() {
        Intent intent = FragmentWrapperActivity.intent(WebViewFragment.class);
        intent.putExtra(ImagesContract.URL, Constants.FEEDBACK_URL_NEW);
        intent.putExtra("addAcceptLanguage", true);
        return intent;
    }

    public String getFirstLetterCap(String str) {
        if (str == null || str.length() < 1) {
            return null;
        }
        return str.substring(0, 1).toUpperCase(Locale.getDefault()) + str.substring(1);
    }

    public void joinCommunity(final int i10, String str, final Callback<Boolean> callback, final boolean z6) {
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        if (z6) {
            progressDialog.show();
        }
        ApiRequest.Builder builderPath = ApiRequest.builder().post().communityId(i10).path("/community/join");
        if (str != null) {
            builderPath.param(CommunityDetailFragment.KEY_INVITATION_ID, str);
        }
        ((ApiService) this.context.getService("api")).exec(builderPath.build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.master.CommunityHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                super.onFinish(apiRequest, userResponse);
                ((AffiliationsService) NVApplication.instance().getService("affiliations")).opAdd(i10);
                Community community = ((CommunityService) CommunityHelper.this.context.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(i10);
                if (community != null) {
                    ((NotificationCenter) NVApplication.instance().getService("notification")).sendNotification(new Notification("new", community));
                } else {
                    MyCommunityListService myCommunityListService = (MyCommunityListService) CommunityHelper.this.context.getService("myCommunityList");
                    if (myCommunityListService != null) {
                        myCommunityListService.refresh(0, null);
                    }
                }
                ((StickerService) CommunityHelper.this.context.getService("sticker")).refreshStickerCollectionInfo(false);
                User user = userResponse.user;
                if (user != null) {
                    user.ndcId = i10;
                    ((AccountService) CommunityHelper.this.context.getService("account")).updateProfile(userResponse.user, userResponse.timestamp, i10, true);
                }
                if (z6) {
                    progressDialog.dismiss();
                }
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i11, list, str2, apiResponse, th);
                CommunityHelper communityHelper = CommunityHelper.this;
                if (communityHelper.autoOpenCommunityDetail && i11 == 802) {
                    CommunityHelper.tryJoinPrivateCommunity(CommunityHelper.this.context.getContext(), i10, ((CommunityService) communityHelper.context.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(i10));
                } else {
                    NVToast.makeText(communityHelper.context.getContext(), str2, 1).setSkipGeneralShowCheck(true).show();
                }
                if (z6) {
                    progressDialog.dismiss();
                }
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.FALSE);
                }
            }
        });
    }

    public void visitCommunity(Community community, @Nullable View view) {
        if (community == null) {
            return;
        }
        if (view == null) {
            Log.e("visitorMode", "cell is null");
            openCommunityDetail(community);
            return;
        }
        View viewFindViewById = view.findViewById(R.id.image);
        View viewFindViewById2 = view.findViewById(R.id.community_icon);
        boolean z6 = NVApplication.CLIENT_TYPE == 100 && ((AccountService) this.context.getService("account")).hasAccount() && community.joinType == 0;
        if ((viewFindViewById instanceof NVImageView) && z6) {
            new VisitorLaunchCommunityHelper(this.context).launchCommunity(community, viewFindViewById, viewFindViewById2);
        } else {
            openCommunityDetail(community);
        }
    }

    public CommunityHelper(NVContext nVContext) {
        this.context = nVContext;
        this.packageUtils = new PackageUtils(nVContext.getContext());
    }

    private void openCommunityDetail(Community community) {
        Intent intentCommunityDetailIntent = communityDetailIntent(community);
        if (intentCommunityDetailIntent != null) {
            intentCommunityDetailIntent.putExtra("pageBackground", String.format("#%06X", Integer.valueOf(community.themeColor())));
            intentCommunityDetailIntent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intentCommunityDetailIntent);
        }
    }

    public void communityDetailWithInviteUrl(final Community community, String str) {
        if (StringUtils.isTrimEmpty(str)) {
            communityDetail(community);
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.show();
        ((ApiService) NVApplication.instance().getService("api")).exec(new ApiRequest.Builder().global().path("/community/link-identify").param("q", str).build(), new ApiResponseListener<CommunityInviteResponse>(CommunityInviteResponse.class) { // from class: com.narvii.master.CommunityHelper.1
            public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityInviteResponse communityInviteResponse) throws Exception {
                super.onFinish(apiRequest, communityInviteResponse);
                progressDialog.dismiss();
                if (communityInviteResponse == null || StringUtils.isTrimEmpty(communityInviteResponse.invitationId)) {
                    CommunityHelper.this.communityDetail(community);
                    return;
                }
                Intent intentCommunityDetailIntent = CommunityHelper.this.communityDetailIntent(community);
                if (intentCommunityDetailIntent != null) {
                    intentCommunityDetailIntent.putExtra("pageBackground", String.format("#%06X", Integer.valueOf(community.themeColor())));
                    intentCommunityDetailIntent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
                    intentCommunityDetailIntent.putExtra(CommunityDetailFragment.KEY_INVITATION_ID, communityInviteResponse.invitationId);
                    safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(CommunityHelper.this.context, intentCommunityDetailIntent);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str2, apiResponse, th);
                progressDialog.dismiss();
                CommunityHelper.this.communityDetail(community);
            }
        });
    }

    public String getFirstLetterCapLanguage(String str) {
        String firstLetterCap = getFirstLetterCap(str);
        if (str == null) {
            firstLetterCap = "En";
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.context.getContext().getString(R.string.explorer_current_language) + " ");
        spannableStringBuilder.append(' ');
        spannableStringBuilder.append((CharSequence) firstLetterCap);
        return spannableStringBuilder.toString();
    }
}
