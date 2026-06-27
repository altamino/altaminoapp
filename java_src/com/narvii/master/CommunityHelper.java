package com.narvii.master;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.text.SpannableStringBuilder;
import android.util.StateSet;
import android.view.View;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.ForwardActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.community.MyCommunityListService;
import com.narvii.config.ConfigService;
import com.narvii.master.invitation.CommunityInviteResponse;
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
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class CommunityHelper {
    boolean autoOpenCommunityDetail;
    NVContext context;
    LoggingOrigin eventOrigin;
    LoggingSource eventSource;
    PackageUtils packageUtils;
    String source;
    String tags;

    public static int getDisableUserNoteType(int i) {
        switch (i) {
            case R.string.flag_bullying /* 2131691207 */:
                return 0;
            case R.string.flag_inappropriate_request /* 2131691226 */:
                return 102;
            case R.string.flag_off_topic /* 2131691235 */:
                return 4;
            case R.string.flag_sexually_explicit /* 2131691251 */:
                return 100;
            case R.string.flag_spam /* 2131691255 */:
                return 2;
            case R.string.flag_violent /* 2131691263 */:
                return 101;
            default:
                return 200;
        }
    }

    public CommunityHelper(NVContext nVContext) {
        this.context = nVContext;
        this.packageUtils = new PackageUtils(nVContext.getContext());
    }

    public CommunityHelper source(String str) {
        this.source = str;
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

    public CommunityHelper tags(String str) {
        this.tags = str;
        return this;
    }

    public CommunityHelper autoOpenCommunityDetail() {
        this.autoOpenCommunityDetail = true;
        return this;
    }

    public void communityDetail(Community community) {
        if (community == null) {
            return;
        }
        openCommunityDetail(community);
    }

    public void visitCommunity(Community community, View view) {
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
        boolean z = NVApplication.CLIENT_TYPE == 100 && ((AccountService) this.context.getService("account")).hasAccount() && community.joinType == 0;
        if ((viewFindViewById instanceof NVImageView) && z) {
            new VisitorLaunchCommunityHelper(this.context).launchCommunity(community, viewFindViewById, viewFindViewById2);
        } else {
            openCommunityDetail(community);
        }
    }

    private void openCommunityDetail(Community community) {
        Intent intentCommunityDetailIntent = communityDetailIntent(community);
        if (intentCommunityDetailIntent != null) {
            intentCommunityDetailIntent.putExtra("pageBackground", String.format("#%06X", Integer.valueOf(community.themeColor())));
            intentCommunityDetailIntent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
            this.context.startActivity(intentCommunityDetailIntent);
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
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityInviteResponse communityInviteResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) communityInviteResponse);
                progressDialog.dismiss();
                if (communityInviteResponse != null && !StringUtils.isTrimEmpty(communityInviteResponse.invitationId)) {
                    Intent intentCommunityDetailIntent = CommunityHelper.this.communityDetailIntent(community);
                    if (intentCommunityDetailIntent != null) {
                        intentCommunityDetailIntent.putExtra("pageBackground", String.format("#%06X", Integer.valueOf(community.themeColor())));
                        intentCommunityDetailIntent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
                        intentCommunityDetailIntent.putExtra(CommunityDetailFragment.KEY_INVITATION_ID, communityInviteResponse.invitationId);
                        CommunityHelper.this.context.startActivity(intentCommunityDetailIntent);
                        return;
                    }
                    return;
                }
                CommunityHelper.this.communityDetail(community);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
                progressDialog.dismiss();
                CommunityHelper.this.communityDetail(community);
            }
        });
    }

    public Intent communityDetailIntent(Community community) {
        if (community == null) {
            return null;
        }
        int communityIdFromPackageName = this.packageUtils.getCommunityIdFromPackageName();
        if (NVApplication.CLIENT_TYPE == 101) {
            PackageUtils packageUtils = this.packageUtils;
            if (packageUtils.isPackageInstalled(packageUtils.getMasterPackageName()) && communityIdFromPackageName != community.id) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.packageUtils.getMasterScheme() + "://x" + community.id() + "/description"));
                    intent.setPackage(this.packageUtils.getMasterPackageName());
                    intent.putExtra("standalone", true);
                    intent.putExtra("Source", this.source);
                    intent.putExtra(ForwardActivity.CLEAR_TASK, true);
                    intent.putExtra("__forwardInitTaskActivity", false);
                    return intent;
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        Intent intent2 = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent2.putExtra("id", community.id);
        intent2.putExtra("icon", community.icon);
        intent2.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        intent2.putExtra("Source", this.source);
        LoggingOrigin loggingOrigin = this.eventOrigin;
        if (loggingOrigin != null) {
            intent2.putExtra("eventOrigin", loggingOrigin.name());
        }
        LoggingSource loggingSource = this.eventSource;
        if (loggingSource != null) {
            intent2.putExtra("eventSource", loggingSource.name());
        }
        String str = this.tags;
        if (str != null) {
            intent2.putExtra("tags", str);
        }
        return intent2;
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

    public String getFirstLetterCap(String str) {
        if (str == null || str.length() < 1) {
            return null;
        }
        return str.substring(0, 1).toUpperCase(Locale.getDefault()) + str.substring(1);
    }

    public Drawable getCommunityDrawable(int i) {
        int iColorPrimary = ((ConfigService) this.context.getService("config")).getTheme().colorPrimary();
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, new ColorDrawable(iColorPrimary));
        stateListDrawable.addState(StateSet.WILD_CARD, new ColorDrawable(i));
        return stateListDrawable;
    }

    public Intent getFeedBackIntent() {
        Intent intent = FragmentWrapperActivity.intent(WebViewFragment.class);
        intent.putExtra("url", Constants.FEEDBACK_URL_NEW);
        intent.putExtra("addAcceptLanguage", true);
        return intent;
    }

    public void joinCommunity(int i, String str, Callback<Boolean> callback) {
        joinCommunity(i, str, callback, true);
    }

    public void joinCommunity(final int i, String str, final Callback<Boolean> callback, final boolean z) {
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        if (z) {
            progressDialog.show();
        }
        ApiRequest.Builder builderPath = ApiRequest.builder().post().communityId(i).path("/community/join");
        if (str != null) {
            builderPath.param(CommunityDetailFragment.KEY_INVITATION_ID, str);
        }
        ((ApiService) this.context.getService("api")).exec(builderPath.build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.master.CommunityHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) userResponse);
                ((AffiliationsService) NVApplication.instance().getService("affiliations")).opAdd(i);
                Community community = ((CommunityService) CommunityHelper.this.context.getService("community")).getCommunity(i);
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
                    user.ndcId = i;
                    ((AccountService) CommunityHelper.this.context.getService("account")).updateProfile(userResponse.user, userResponse.timestamp, i, true);
                }
                if (z) {
                    progressDialog.dismiss();
                }
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i2, list, str2, apiResponse, th);
                CommunityHelper communityHelper = CommunityHelper.this;
                if (communityHelper.autoOpenCommunityDetail && i2 == 802) {
                    CommunityHelper.tryJoinPrivateCommunity(CommunityHelper.this.context.getContext(), i, ((CommunityService) communityHelper.context.getService("community")).getCommunity(i));
                } else {
                    NVToast.makeText(CommunityHelper.this.context.getContext(), str2, 1).setSkipGeneralShowCheck(true).show();
                }
                if (z) {
                    progressDialog.dismiss();
                }
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.FALSE);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tryJoinPrivateCommunity(Context context, int i, Community community) {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", i);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        intent.putExtra("joinOnly", true);
        context.startActivity(intent);
    }
}
