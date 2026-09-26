package com.narvii.community;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.account.AccountService;
import com.narvii.amino.MainActivity;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import com.narvii.logging.LogUtils;
import com.narvii.logging.PageRefererInfo;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.CheckInHistory;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.theme.ThemeInfo;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.dialog.ProgressHorizontalDialog;
import com.narvii.util.drawables.DrawableLoaderListener;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.util.drawables.gif.WrapGifDrawable;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.InnerIconDrawable;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CommunityLaunchHelper {
    public static final int FAIL_JOIN_COMMUNITY = 3;
    public static final int FAIL_NOT_JOINED = 1;
    public static final int FAIL_THEME_DOWNLOAD = 2;
    public static final int LAUNCH_IMAGE_ICON = 2;
    public static final int LAUNCH_IMAGE_NONE = 0;
    public static final int LAUNCH_IMAGE_NORMAL = 1;
    public static final int STEP_DONE = 5;
    public static final int STEP_DOWNLOAD_LAUNCH_IMAGE = 4;
    public static final int STEP_DOWNLOAD_THEME = 3;
    public static final int STEP_JOIN = 1;
    public static final int STEP_NONE = 0;
    public static final int STEP_UPDATING = 2;
    private AccountService account;
    private boolean allowJoinCommunity;
    private int cid;
    private CommunityService community;
    private com.narvii.master.CommunityHelper communityHelper;
    private NVContext context;
    private ProgressHorizontalDialog dlg;
    protected String error;
    protected int errorType;
    public boolean failAtThemeDownload;
    private Drawable fallbackLaunchImage;
    protected boolean fullInfoCalled;
    private final DrawableLoaderListener gifListener;
    private GifLoader gifLoader;
    private final ImageLoader.ImageListener imageListener;
    private ImageLoader imageLoader;
    Intent intentAfterLaunchCommunity;
    protected boolean isFinished;
    private int launchImage;
    private ImageLoader.ImageContainer launchImageContainer;
    protected Drawable launchImageDrawable;
    protected Object launchImageError;
    public long launchImageTimeout;
    private final Runnable launchImageTimeoutRunnable;
    private String launchImageUrl;
    private LocalBroadcastManager lbm;
    public boolean needUpdateCommunity;
    private Community origCommunity;
    protected Drawable paddingLaunchImageDrawable;
    PageRefererInfo pageRefererInfo;
    private boolean preVerify;
    private BroadcastReceiver receiver;
    public String source;
    private long startTime;
    private int step;
    String strategyInfo;
    private ThemePackService themePack;
    public boolean themePackDownloadAsync;
    private final ApiResponseListener<FullCommunityResponse> updateListener;
    private final ApiResponseListener<FullCommunityResponse> updateOnlyListener;
    private ApiRequest updateRequest;
    protected Community updatedCommunity;
    public boolean useThemeColorFallback;
    public boolean visitorModeCompatible;

    public CommunityLaunchHelper(NVContext nVContext, String str) {
        this.launchImageTimeout = 3000L;
        this.useThemeColorFallback = true;
        this.needUpdateCommunity = true;
        Class<FullCommunityResponse> cls = FullCommunityResponse.class;
        this.updateListener = new ApiResponseListener<FullCommunityResponse>(cls) { // from class: com.narvii.community.CommunityLaunchHelper.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                CommunityLaunchHelper.this.fail(0, str2);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, FullCommunityResponse fullCommunityResponse) throws Exception {
                CommunityLaunchHelper communityLaunchHelper = CommunityLaunchHelper.this;
                communityLaunchHelper.updatedCommunity = fullCommunityResponse.community;
                if (communityLaunchHelper.visitorModeCompatible || (fullCommunityResponse.isCurrentUserJoined && fullCommunityResponse.currentUserInfo != null)) {
                    communityLaunchHelper.community.updateCommunity(fullCommunityResponse.community, true, DateTimeFormatter.parseISO8601(fullCommunityResponse.timestamp).getTime(), true, true);
                    CommunityUserInfo communityUserInfo = fullCommunityResponse.currentUserInfo;
                    if (communityUserInfo != null && communityUserInfo.userProfile != null) {
                        CommunityLaunchHelper.this.account.updateProfile(fullCommunityResponse.currentUserInfo.userProfile, fullCommunityResponse.timestamp, true);
                    }
                    CommunityLaunchHelper.this.step();
                } else {
                    if (communityLaunchHelper.updateCommunityWhenNotJoined() && fullCommunityResponse.community != null) {
                        CommunityLaunchHelper.this.community.updateCommunity(fullCommunityResponse.community, true, DateTimeFormatter.parseISO8601(fullCommunityResponse.timestamp).getTime(), true, true);
                    }
                    CommunityLaunchHelper communityLaunchHelper2 = CommunityLaunchHelper.this;
                    communityLaunchHelper2.fail(1, communityLaunchHelper2.context.getContext().getString(R.string.not_joined));
                }
                AffiliationsService affiliationsService = (AffiliationsService) CommunityLaunchHelper.this.context.getService("affiliations");
                if (!fullCommunityResponse.isCurrentUserJoined || affiliationsService == null || affiliationsService.contains(CommunityLaunchHelper.this.cid)) {
                    return;
                }
                affiliationsService.opAdd(CommunityLaunchHelper.this.cid);
                affiliationsService.refresh(true);
            }
        };
        this.updateOnlyListener = new ApiResponseListener<FullCommunityResponse>(cls) { // from class: com.narvii.community.CommunityLaunchHelper.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, FullCommunityResponse fullCommunityResponse) throws Exception {
                CommunityLaunchHelper communityLaunchHelper = CommunityLaunchHelper.this;
                communityLaunchHelper.updatedCommunity = fullCommunityResponse.community;
                if (fullCommunityResponse.isCurrentUserJoined && fullCommunityResponse.currentUserInfo != null) {
                    communityLaunchHelper.community.updateCommunity(fullCommunityResponse.community, true, DateTimeFormatter.parseISO8601(fullCommunityResponse.timestamp).getTime(), true, true);
                    ((AccountService) apiRequest.tag()).updateProfile(fullCommunityResponse.currentUserInfo.userProfile, fullCommunityResponse.timestamp, true);
                }
                AffiliationsService affiliationsService = (AffiliationsService) CommunityLaunchHelper.this.context.getService("affiliations");
                if (!fullCommunityResponse.isCurrentUserJoined || affiliationsService == null || affiliationsService.contains(CommunityLaunchHelper.this.cid)) {
                    return;
                }
                affiliationsService.opAdd(CommunityLaunchHelper.this.cid);
                affiliationsService.refresh(true);
            }
        };
        this.launchImageTimeoutRunnable = new Runnable() { // from class: com.narvii.community.CommunityLaunchHelper.5
            @Override // java.lang.Runnable
            public void run() {
                Log.w("launch image timeout " + CommunityLaunchHelper.this.launchImageUrl);
                CommunityLaunchHelper.this.launchImageDone();
            }
        };
        this.imageListener = new ImageLoader.ImageListener() { // from class: com.narvii.community.CommunityLaunchHelper.6
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                Log.w("launch image fail " + CommunityLaunchHelper.this.launchImageUrl, volleyError);
                CommunityLaunchHelper communityLaunchHelper = CommunityLaunchHelper.this;
                communityLaunchHelper.launchImageError = volleyError;
                communityLaunchHelper.launchImageDone();
            }

            @Override // com.android.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z6) {
                if (imageContainer.getBitmap() != null) {
                    CommunityLaunchHelper communityLaunchHelper = CommunityLaunchHelper.this;
                    Drawable drawable = communityLaunchHelper.paddingLaunchImageDrawable;
                    if (drawable instanceof InnerIconDrawable) {
                        ((InnerIconDrawable) drawable).setIconSize(Utils.dpToPxInt(communityLaunchHelper.context.getContext(), 100.0f));
                        ((InnerIconDrawable) CommunityLaunchHelper.this.paddingLaunchImageDrawable).setIconBitmap(imageContainer.getBitmap());
                        CommunityLaunchHelper communityLaunchHelper2 = CommunityLaunchHelper.this;
                        ((InnerIconDrawable) communityLaunchHelper2.paddingLaunchImageDrawable).setIconRadius(Utils.dpToPxInt(communityLaunchHelper2.context.getContext(), 15.0f));
                        CommunityLaunchHelper communityLaunchHelper3 = CommunityLaunchHelper.this;
                        communityLaunchHelper3.launchImageDrawable = communityLaunchHelper3.paddingLaunchImageDrawable;
                        communityLaunchHelper3.paddingLaunchImageDrawable = null;
                    } else {
                        communityLaunchHelper.launchImageDrawable = new BitmapDrawable(imageContainer.getBitmap());
                    }
                    CommunityLaunchHelper.this.launchImageDone();
                }
            }
        };
        this.gifListener = new DrawableLoaderListener() { // from class: com.narvii.community.CommunityLaunchHelper.7
            @Override // com.narvii.util.drawables.DrawableLoaderListener
            public void onFailed(String str2) {
                Log.w("launch image fail " + CommunityLaunchHelper.this.launchImageUrl);
                CommunityLaunchHelper communityLaunchHelper = CommunityLaunchHelper.this;
                communityLaunchHelper.launchImageError = str2;
                communityLaunchHelper.launchImageDone();
            }

            @Override // com.narvii.util.drawables.DrawableLoaderListener
            public void onFinished(String str2, Drawable drawable, boolean z6) {
                CommunityLaunchHelper communityLaunchHelper = CommunityLaunchHelper.this;
                communityLaunchHelper.launchImageDrawable = drawable;
                communityLaunchHelper.launchImageDone();
            }
        };
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.community.CommunityLaunchHelper.8
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (CommunityLaunchHelper.this.cid == 0 || intent.getIntExtra(CmcdConfiguration.KEY_CONTENT_ID, 0) != CommunityLaunchHelper.this.cid) {
                    return;
                }
                int status = CommunityLaunchHelper.this.themePack.getStatus(CommunityLaunchHelper.this.cid);
                if (status == 1) {
                    CommunityLaunchHelper.this.progress();
                    return;
                }
                if (status != -1) {
                    CommunityLaunchHelper.this.step();
                    return;
                }
                CommunityLaunchHelper communityLaunchHelper = CommunityLaunchHelper.this;
                if (communityLaunchHelper.failAtThemeDownload) {
                    communityLaunchHelper.fail(2, context.getString(R.string.fail_download_theme_pack));
                } else {
                    NVToast.makeText(context, R.string.fail_download_theme_pack, 0).show();
                    CommunityLaunchHelper.this.step();
                }
            }
        };
        this.context = nVContext;
        this.source = str;
        this.community = (CommunityService) nVContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        this.themePack = (ThemePackService) nVContext.getService("themePack");
        this.communityHelper = new com.narvii.master.CommunityHelper(nVContext);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void clear() {
        this.cid = 0;
        this.origCommunity = null;
        this.preVerify = false;
        this.launchImage = 0;
        this.startTime = 0L;
        this.errorType = 0;
        this.error = null;
        this.updatedCommunity = null;
        this.step = 0;
        this.fullInfoCalled = false;
        this.account = null;
        this.intentAfterLaunchCommunity = null;
        if (this.updateRequest != null) {
            ((ApiService) this.context.getService("api")).abort(this.updateRequest);
        }
        String str = this.launchImageUrl;
        if (str != null) {
            GifLoader gifLoader = this.gifLoader;
            if (gifLoader != null) {
                gifLoader.abort(str, this.gifListener);
            }
            this.launchImageUrl = null;
        }
        ImageLoader.ImageContainer imageContainer = this.launchImageContainer;
        if (imageContainer != null) {
            imageContainer.cancelRequest();
            this.launchImageContainer = null;
        }
        this.launchImageDrawable = null;
        this.launchImageError = null;
        Utils.handler.removeCallbacks(this.launchImageTimeoutRunnable);
        LocalBroadcastManager localBroadcastManager = this.lbm;
        if (localBroadcastManager != null) {
            localBroadcastManager.f(this.receiver);
            this.lbm = null;
        }
        ProgressHorizontalDialog progressHorizontalDialog = this.dlg;
        if (progressHorizontalDialog != null) {
            progressHorizontalDialog.dismiss();
            this.dlg = null;
        }
    }

    public void launch(int i10, Community community) {
        launch(i10, community, null, null, null, null, null, this.preVerify, 0, null, null);
    }

    protected boolean readyForFinish() {
        return true;
    }

    public void setAllowJoinCommuntiy(boolean z6) {
        this.allowJoinCommunity = z6;
    }

    protected boolean updateCommunityWhenNotJoined() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fail(int i10, String str) {
        this.errorType = i10;
        this.error = str;
        onFail(i10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchImageDone() {
        if (this.step == 4) {
            step();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void step() {
        String hQYoutubeImage;
        if (this.cid == 0) {
            return;
        }
        boolean zIsUserProfileReady = this.account.isUserProfileReady();
        Community community = this.community.getCommunity(this.cid);
        if (this.allowJoinCommunity && this.step < 1) {
            this.step = 1;
            tryJoinCommunity();
            progress();
            return;
        }
        if (this.step < 2) {
            this.step = 2;
            if (this.launchImage != 0) {
                DisplayMetrics displayMetrics = this.context.getContext().getResources().getDisplayMetrics();
                Community community2 = this.origCommunity;
                if (community2 == null) {
                    community2 = community;
                }
                String strFitSize = null;
                if (community2 != null) {
                    Community.LaunchPage launchPage = community2.launchPage;
                    if (launchPage == null || launchPage.image() == null) {
                        List<Media> list = community2.promotionalMediaList;
                        if (list == null || list.size() <= 0) {
                            String str = community2.icon;
                            if (str != null) {
                                strFitSize = NVImageView.fitSize(str, NVImageView.TYPE_COMMUNITY_ICON, displayMetrics.widthPixels, displayMetrics.heightPixels);
                                InnerIconDrawable innerIconDrawable = new InnerIconDrawable();
                                innerIconDrawable.setColor(community2.themeColor());
                                this.paddingLaunchImageDrawable = innerIconDrawable;
                            }
                        } else {
                            Media media = community2.promotionalMediaList.get(0);
                            String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(media.url);
                            hQYoutubeImage = youtubeVideoIdFromUrl != null ? YoutubeUtils.getHQYoutubeImage(youtubeVideoIdFromUrl) : NVImageView.fitSize(media.url, NVImageView.TYPE_COMMUNITY_LAUNCH_IMAGE, displayMetrics.widthPixels, displayMetrics.heightPixels);
                        }
                    } else {
                        Media mediaImage = community2.launchPage.image();
                        String youtubeVideoIdFromUrl2 = YoutubeUtils.getYoutubeVideoIdFromUrl(mediaImage.url);
                        hQYoutubeImage = youtubeVideoIdFromUrl2 != null ? YoutubeUtils.getHQYoutubeImage(youtubeVideoIdFromUrl2) : NVImageView.fitSize(mediaImage.url, null, displayMetrics.widthPixels, displayMetrics.heightPixels);
                    }
                    strFitSize = hQYoutubeImage;
                }
                this.launchImageUrl = strFitSize;
                if (strFitSize == null) {
                    this.launchImageError = "No Launch Image";
                } else if (Utils.isGif(strFitSize)) {
                    this.launchImageError = "Ignore Gif";
                } else {
                    if (this.imageLoader == null) {
                        this.imageLoader = (ImageLoader) this.context.getService("imageLoader");
                    }
                    this.launchImageContainer = this.imageLoader.get(strFitSize, this.imageListener);
                    Utils.postDelayed(this.launchImageTimeoutRunnable, this.launchImageTimeout);
                }
            }
            if (this.preVerify || !zIsUserProfileReady || community == null) {
                updateCommunity(false);
                this.fullInfoCalled = true;
                progress();
                return;
            }
        }
        ThemeInfo themeInfo = this.themePack.getThemeInfo(this.cid);
        if (this.step < 3) {
            this.step = 3;
            if (themeInfo == null || themeInfo.revision != community.themePackRevision()) {
                this.themePack.require(this.cid, community.themePackRevision(), community.themePackUrl());
                if (this.themePackDownloadAsync) {
                    step();
                    return;
                }
                if (this.themePack.getStatus(this.cid) != 1) {
                    step();
                    return;
                }
                if (this.lbm == null) {
                    LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(this.context.getContext());
                    this.lbm = localBroadcastManagerB;
                    localBroadcastManagerB.c(this.receiver, new IntentFilter(ThemePackService.ACTION_STATUS_CHANGED));
                    this.lbm.c(this.receiver, new IntentFilter(ThemePackService.ACTION_PROGRESS_CHANGED));
                }
                progress();
                return;
            }
        }
        if (this.step == 3 && themeInfo == null && !this.themePackDownloadAsync) {
            String error = this.themePack.getError(this.cid);
            this.themePack.cancel(this.cid);
            if (error == null) {
                error = this.context.getContext().getString(R.string.fail_download_theme_pack);
            }
            if (this.failAtThemeDownload) {
                fail(2, error);
            } else {
                NVToast.makeText(this.context.getContext(), error, 0).show();
            }
            if (!this.fullInfoCalled) {
                updateCommunity(true);
                this.fullInfoCalled = true;
            }
            if (this.failAtThemeDownload) {
                return;
            }
        }
        if (this.launchImageUrl != null && this.step <= 4) {
            this.step = 4;
            if (SystemClock.uptimeMillis() < this.startTime + this.launchImageTimeout && this.launchImageDrawable == null && this.launchImageError == null) {
                return;
            }
            if (this.launchImageDrawable == null) {
                Drawable drawable = this.fallbackLaunchImage;
                if (drawable == null) {
                    if (community != null && this.useThemeColorFallback) {
                        this.launchImageDrawable = new ColorDrawable(community.themeColor());
                    }
                } else if (drawable instanceof WrapGifDrawable) {
                    this.launchImageDrawable = new WrapGifDrawable(((WrapGifDrawable) this.fallbackLaunchImage).getWrappedDrawable());
                } else {
                    this.launchImageDrawable = drawable;
                }
            }
        }
        if (this.step < 5) {
            this.step = 5;
            if (readyForFinish()) {
                beginFinishWork();
            } else {
                this.isFinished = true;
                progress();
            }
        }
    }

    private void tryJoinCommunity() {
        this.communityHelper.joinCommunity(this.cid, null, new Callback<Boolean>() { // from class: com.narvii.community.CommunityLaunchHelper.2
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (!bool.booleanValue()) {
                    CommunityLaunchHelper.this.fail(3, null);
                    return;
                }
                if (CommunityLaunchHelper.this.origCommunity != null) {
                    NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) CommunityLaunchHelper.this.context.getService("notification"), new Notification("new", CommunityLaunchHelper.this.origCommunity));
                }
                CommunityLaunchHelper.this.step();
            }
        }, false);
    }

    public void launch(int i10, Community community, String str, User user, String str2, ReminderCheck reminderCheck, String str3, boolean z6) {
        launch(i10, community, str, user, str2, reminderCheck, str3, z6, 0, null, null);
    }

    protected void onFail(int i10, String str) {
        ProgressHorizontalDialog progressHorizontalDialog = this.dlg;
        if (progressHorizontalDialog != null) {
            progressHorizontalDialog.dismiss();
            this.dlg = null;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        NVToast.makeText(this.context.getContext(), str, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onFinish() {
        ProgressHorizontalDialog progressHorizontalDialog = this.dlg;
        if (progressHorizontalDialog != null) {
            progressHorizontalDialog.dismiss();
            this.dlg = null;
        }
        String str = this.source;
        if (str != null) {
            EnterCommunityHelper.SOURCE.set(str);
        }
        PageRefererInfo pageRefererInfo = this.pageRefererInfo;
        if (pageRefererInfo != null) {
            LogUtils.nextPageRefererInfo = pageRefererInfo;
            this.pageRefererInfo = null;
        }
        String str2 = this.strategyInfo;
        if (str2 != null) {
            LogUtils.nextPageStrategyInfo = str2;
            this.strategyInfo = null;
        }
        Context context = this.context.getContext();
        Intent intent = new Intent(context, (Class<?>) MainActivity.class);
        intent.putExtra("__communityId", this.cid);
        intent.putExtra(NVActivity.INTERACTION_SCOPE, false);
        intent.putExtra("customFinishAnimIn", R.anim.exit_community_in);
        intent.putExtra("customFinishAnimOut", R.anim.exit_community_out);
        intent.putExtra(RtcService.KEY_FROM_GLOBAL_CHAT, false);
        intent.putExtra(RtcService.KEY_HIDE_DRAWER, false);
        if (this.visitorModeCompatible) {
            VisitorModeService visitorModeService = (VisitorModeService) this.context.getService("visitorMode");
            if (visitorModeService != null) {
                visitorModeService.addVisitor(this.cid);
            }
            intent.putExtra("__visitorMode", !((AffiliationsService) this.context.getService("affiliations")).contains(this.cid));
        } else {
            intent.putExtra("__visitorMode", false);
        }
        NVContext nVContext = this.context;
        if (!(nVContext instanceof Activity) && !(nVContext instanceof Fragment)) {
            intent.addFlags(268435456);
        }
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
        if (context instanceof Activity) {
            ((Activity) context).overridePendingTransition(R.anim.fade_in, R.anim.enter_community_out);
        }
        Intent intent2 = this.intentAfterLaunchCommunity;
        if (intent2 != null) {
            try {
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent2);
            } catch (Exception unused) {
            }
        }
        Community community = this.community.getCommunity(this.cid);
        if (community != null) {
            ((RecentCommunityHelper) this.context.getService("recentCommunities")).addRecent(community);
        }
    }

    protected void onProgress(int i10, float f) {
        if (i10 > 0 && i10 < 5 && this.dlg == null) {
            ProgressHorizontalDialog progressHorizontalDialog = new ProgressHorizontalDialog(this.context.getContext());
            this.dlg = progressHorizontalDialog;
            progressHorizontalDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.community.CommunityLaunchHelper.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    CommunityLaunchHelper.this.cancel();
                }
            });
            try {
                this.dlg.show();
            } catch (Exception unused) {
            }
        }
        ProgressHorizontalDialog progressHorizontalDialog2 = this.dlg;
        if (progressHorizontalDialog2 != null) {
            progressHorizontalDialog2.setProgress((int) (f * 100.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void progress() {
        int i10 = this.cid;
        if (i10 == 0) {
            return;
        }
        int i11 = this.step;
        float progress = 0.3f;
        if (i11 != 2) {
            if (i11 == 3) {
                progress = 0.3f + (this.themePack.getProgress(i10) * 0.7f);
            } else if (i11 == 4) {
                progress = 0.9f;
            } else {
                progress = i11 == 5 ? 1.0f : 0.0f;
            }
        }
        onProgress(this.step, progress);
    }

    private void updateCommunity(boolean z6) {
        AccountService accountService;
        ApiResponseListener<FullCommunityResponse> apiResponseListener;
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/community/info");
        if (z6) {
            accountService = this.account;
        } else {
            accountService = null;
        }
        ApiRequest apiRequestBuild = builderPath.tag(accountService).param("withInfluencerList", 1).param("withTopicList", Boolean.TRUE).scopeCommunityId(this.cid).build();
        ApiService apiService = (ApiService) this.context.getService("api");
        if (z6) {
            apiResponseListener = this.updateOnlyListener;
        } else {
            apiResponseListener = this.updateListener;
        }
        apiService.exec(apiRequestBuild, apiResponseListener);
        if (!z6) {
            this.updateRequest = apiRequestBuild;
        }
    }

    protected void beginFinishWork() {
        onFinish();
        if (!this.fullInfoCalled) {
            updateCommunity(true);
        }
    }

    public void cancel() {
        clear();
    }

    public void launch(int i10, Community community, String str, User user, String str2, ReminderCheck reminderCheck, String str3, boolean z6, int i11, Drawable drawable) {
        launch(i10, community, str, user, str2, reminderCheck, str3, z6, i11, drawable, null);
    }

    public void launch(int i10, Community community, String str, User user, String str2, ReminderCheck reminderCheck, String str3, boolean z6, int i11, Drawable drawable, Intent intent) {
        clear();
        this.cid = i10;
        this.origCommunity = community;
        this.preVerify = z6;
        this.launchImage = i11;
        this.fallbackLaunchImage = drawable;
        this.intentAfterLaunchCommunity = intent;
        this.account = (AccountService) NVApplication.instance().getService(i10, "account");
        this.pageRefererInfo = LogUtils.nextPageRefererInfo;
        this.strategyInfo = LogUtils.nextPageStrategyInfo;
        if (community != null && this.needUpdateCommunity) {
            this.community.updateCommunity(community, false, str);
        }
        if (user != null) {
            this.account.updateProfile(user, str2, false);
        }
        if (reminderCheck != null) {
            this.account.updateNotificationCount(reminderCheck.notificationsCount, str3, false);
            this.account.updateNoticeCount(reminderCheck.noticesCount, str3, false);
            Boolean bool = reminderCheck.hasCheckInToday;
            if (bool != null && reminderCheck.consecutiveCheckInDays != null) {
                this.account.updateCheckInInfo(bool.booleanValue(), reminderCheck.consecutiveCheckInDays.intValue(), str3, false);
            }
            CheckInHistory checkInHistory = reminderCheck.checkInHistory;
            if (checkInHistory != null) {
                this.account.updateCheckInHistoryInfo(checkInHistory, str3, false);
            }
        }
        this.startTime = SystemClock.uptimeMillis();
        step();
    }

    public CommunityLaunchHelper(NVContext nVContext) {
        this(nVContext, null);
    }
}
