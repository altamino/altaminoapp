package com.narvii.master;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;
import com.narvii.account.AccountService;
import com.narvii.amino.MainActivity;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.community.CommunityUserInfo;
import com.narvii.community.FullCommunityResponse;
import com.narvii.community.RecentCommunityHelper;
import com.narvii.community.VisitorModeService;
import com.narvii.logging.LogUtils;
import com.narvii.logging.PageRefererInfo;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.SplashUtils;
import com.narvii.util.Utils;
import com.narvii.util.drawables.gif.WrapGifDrawable;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.InnerIconDrawable;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public class VisitorLaunchCommunityHelper {
    private CommunityService communityService;
    NVContext context;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10, types: [android.graphics.drawable.ColorDrawable, com.narvii.widget.InnerIconDrawable] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r5v9, types: [android.graphics.drawable.ColorDrawable] */
    @NotNull
    private Drawable getLaunchDrawable(Community community, NVImageView nVImageView, View view) {
        ?? colorDrawable;
        Drawable drawable;
        Bitmap bitmap = null;
        if (nVImageView == null || nVImageView.getStatus() != 4) {
            colorDrawable = 0;
        } else {
            drawable = nVImageView.getDrawable();
        }
        if (colorDrawable == 0 && (view instanceof NVImageView)) {
            NVImageView nVImageView2 = (NVImageView) view;
            if (nVImageView2.getStatus() == 4) {
                Drawable drawable2 = nVImageView2.getDrawable();
                if (drawable2 instanceof BitmapDrawable) {
                    colorDrawable = drawable;
                    bitmap = ((BitmapDrawable) drawable2).getBitmap();
                }
                if (bitmap != null) {
                    colorDrawable = new InnerIconDrawable();
                    colorDrawable.setColor(community.themeColor());
                    colorDrawable.setIconSize(Utils.dpToPxInt(this.context.getContext(), 100.0f));
                    colorDrawable.setIconBitmap(bitmap);
                    colorDrawable.setIconRadius(Utils.dpToPxInt(this.context.getContext(), 15.0f));
                }
            }
        }
        if (colorDrawable == 0) {
            colorDrawable = new ColorDrawable(community.themeColor());
        }
        return colorDrawable instanceof WrapGifDrawable ? new WrapGifDrawable(((WrapGifDrawable) colorDrawable).getWrappedDrawable()) : colorDrawable;
    }

    private void requestCommunityFullInfo(final int i10) {
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().scopeCommunityId(i10).path("/community/info").param("withInfluencerList", 1).param("withTopicList", Boolean.TRUE).build(), new ApiResponseListener<FullCommunityResponse>(FullCommunityResponse.class) { // from class: com.narvii.master.VisitorLaunchCommunityHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, FullCommunityResponse fullCommunityResponse) throws Exception {
                CommunityUserInfo communityUserInfo;
                AccountService accountService;
                super.onFinish(apiRequest, fullCommunityResponse);
                if (fullCommunityResponse.community == null) {
                    return;
                }
                VisitorModeService visitorModeService = (VisitorModeService) VisitorLaunchCommunityHelper.this.context.getService("visitorMode");
                if (visitorModeService != null) {
                    visitorModeService.preloadThemePack(fullCommunityResponse.community);
                }
                AffiliationsService affiliationsService = (AffiliationsService) VisitorLaunchCommunityHelper.this.context.getService("affiliations");
                if (fullCommunityResponse.isCurrentUserJoined && !affiliationsService.contains(i10)) {
                    affiliationsService.opAdd(i10);
                    affiliationsService.refresh(true);
                }
                VisitorLaunchCommunityHelper.this.communityService.updateCommunity(fullCommunityResponse.community, true, DateTimeFormatter.parseISO8601(fullCommunityResponse.timestamp).getTime(), true, true);
                if (!fullCommunityResponse.isCurrentUserJoined || (communityUserInfo = fullCommunityResponse.currentUserInfo) == null || communityUserInfo.userProfile == null || (accountService = (AccountService) NVApplication.instance().getService(i10, "account")) == null) {
                    return;
                }
                accountService.updateProfile(fullCommunityResponse.currentUserInfo.userProfile, fullCommunityResponse.timestamp, true);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, String str, @Nullable ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i11, list, str, apiResponse, th);
            }
        });
    }

    public void launchCommunity(final Community community, View view, View view2) {
        final int i10 = community.id;
        if (this.communityService.getCommunity(i10) == null) {
            this.communityService.updateCommunity(community, false, 0L);
        }
        VisitorModeService visitorModeService = (VisitorModeService) this.context.getService("visitorMode");
        if (visitorModeService != null) {
            visitorModeService.addVisitor(i10);
            visitorModeService.preloadThemePack(community);
        }
        requestCommunityFullInfo(i10);
        if (this.context.getContext() instanceof Activity) {
            Drawable launchDrawable = getLaunchDrawable(community, (NVImageView) view, view2);
            SoftKeyboard.hideSoftKeyboard(this.context.getContext());
            final PageRefererInfo pageRefererInfo = LogUtils.nextPageRefererInfo;
            final String str = LogUtils.nextPageStrategyInfo;
            SplashUtils.splash((Activity) this.context.getContext(), view, launchDrawable, new Callback<Boolean>() { // from class: com.narvii.master.VisitorLaunchCommunityHelper.1
                public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    if (bool == null || !bool.booleanValue()) {
                        return;
                    }
                    LogUtils.nextPageRefererInfo = pageRefererInfo;
                    LogUtils.nextPageStrategyInfo = str;
                    Intent intent = new Intent(VisitorLaunchCommunityHelper.this.context.getContext(), (Class<?>) MainActivity.class);
                    intent.putExtra("__communityId", i10);
                    intent.putExtra(NVActivity.INTERACTION_SCOPE, false);
                    intent.putExtra("__visitorMode", true);
                    intent.putExtra("customFinishAnimIn", R.anim.exit_community_in);
                    intent.putExtra("customFinishAnimOut", R.anim.exit_community_out);
                    intent.putExtra(RtcService.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
                    safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(VisitorLaunchCommunityHelper.this.context, intent);
                    ((RecentCommunityHelper) VisitorLaunchCommunityHelper.this.context.getService("recentCommunities")).addRecent(community);
                }
            });
        }
    }

    public VisitorLaunchCommunityHelper(NVContext nVContext) {
        this.context = nVContext;
        this.communityService = (CommunityService) nVContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
    }
}
