package com.narvii.app;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.firebase.dynamiclinks.PendingDynamicLinkData;
import com.narvii.account.AccountService;
import com.narvii.amino.MainActivity;
import com.narvii.amino.mastes.R;
import com.narvii.app.incubator.IncubatorNavigator;
import com.narvii.chat.rtc.RtcService;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.PreviewWebViewFragment;
import com.narvii.community.VisitorModeService;
import com.narvii.config.ConfigService;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.MasterActivity;
import com.narvii.master.invitation.CommunityInviteResponse;
import com.narvii.master.invitation.PasteBoardService;
import com.narvii.master.invitation.PrivateCommunityCheckHelper;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.page.Page;
import com.narvii.navigator.Navigator;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.share.LinkInfo;
import com.narvii.share.LinkInfoV2;
import com.narvii.share.LinkV2TranslationResponse;
import com.narvii.util.AppsflyerManager;
import com.narvii.util.Callback;
import com.narvii.util.DeepLinkManager;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.io.IOException;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class ForwardActivity extends NVActivity {
    public static final String CLEAR_TASK = "clearTask";
    protected static final int JOIN_COMMUNITY_REQUEST = 2;
    private static final Pattern PTN = Pattern.compile("[\\d\\w]{10}");
    protected static final int START_REQUEST = 1;
    AccountService accountService;
    AffiliationsService affiliationsService;
    boolean fromGlobalChat;
    MyCommunityLaunchHelper launchHelper;
    int layoutId;
    Navigator navigator;
    int waitingForJoinCommunityId;
    Intent waitingForJoinIntent;

    static /* synthetic */ void access$000(ForwardActivity forwardActivity, boolean z, String str, String str2, int i) {
    }

    @Override // com.narvii.app.NVActivity
    public boolean isModel() {
        return false;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        boolean z;
        boolean z2;
        if (bundle == null) {
            boolean booleanExtra = getIntent().getBooleanExtra("__redirectTaskId", false);
            if (booleanExtra) {
                if (getIntent().getBooleanExtra("__redirectReset", false)) {
                    ApplicationSessionHelper.setNewTask(0);
                } else if (getTaskId() != ApplicationSessionHelper.getTaskId()) {
                    ApplicationSessionHelper.setNewTask(getTaskId());
                }
            } else if (!isTaskRoot() && ApplicationSessionHelper.getTaskId() == 0) {
                z2 = booleanExtra;
                z = true;
            }
            z2 = booleanExtra;
            z = false;
        } else {
            z = false;
            z2 = false;
        }
        super.onCreate(bundle);
        this.layoutId = R.layout.forward_placeholder_layout;
        this.navigator = (Navigator) getService("navigator");
        this.accountService = (AccountService) getService("account");
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        this.fromGlobalChat = getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT, false);
        boolean booleanParam = bundle == null ? getBooleanParam(CLEAR_TASK) : false;
        if (z || (bundle == null && !z2 && (booleanParam || (!isTaskRoot() && getTaskId() != ApplicationSessionHelper.getTaskId())))) {
            Intent intent = new Intent(this, (Class<?>) ForwardActivity.class);
            intent.setData(getIntent().getData());
            if (getIntent().getExtras() != null) {
                intent.putExtras(getIntent().getExtras());
            }
            intent.putExtra("__redirectTaskId", true);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            if (z || booleanParam) {
                intent.addFlags(32768);
                intent.putExtra("__redirectReset", true);
                Log.w("ForwardActivity reset for taskId");
            } else {
                Log.w("ForwardActivity redirect for taskId");
            }
            startActivity(intent);
            overridePendingTransition(0, 0);
            finish();
            return;
        }
        Intent intent2 = getIntent();
        if (intent2 == null || intent2.getData() == null || intent2.getBooleanExtra("__forward", false)) {
            return;
        }
        if (bundle != null) {
            int i = bundle.getInt("waitingForJoinCommunityId");
            this.waitingForJoinCommunityId = i;
            if (i != 0) {
                this.waitingForJoinIntent = (Intent) bundle.getParcelable("waitingForJoinIntent");
                return;
            }
        }
        AppsflyerManager.trackDeepLinking(this);
        String dataString = intent2.getDataString();
        Uri uri = dataString == null ? null : Uri.parse(dataString);
        if ((uri == null || uri.getHost() == null || !getString(R.string.firebase_dynamic_link_host).equals(uri.getHost())) ? false : true) {
            this.layoutId = R.layout.forward_loading;
            setContentView(this.layoutId);
            DeepLinkManager.handleDynamicLink(this, false, new Callback() { // from class: com.narvii.app.-$$Lambda$ForwardActivity$mjEy-4sNl7KhraO9jHSsYIkav0E
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f$0.lambda$onCreate$0$ForwardActivity((DeepLinkManager.DynamicLinkResult) obj);
                }
            });
        } else {
            DeepLinkManager.logDeepLinkFromForwardActivity(this, dataString);
            handleForwardLink(dataString);
        }
    }

    public /* synthetic */ void lambda$onCreate$0$ForwardActivity(DeepLinkManager.DynamicLinkResult dynamicLinkResult) {
        if (!TextUtils.isEmpty(dynamicLinkResult.errorMsg)) {
            this.layoutId = R.layout.forward_placeholder_layout;
            setContentView(this.layoutId);
            NVToast.makeText(getContext(), dynamicLinkResult.errorMsg, 0).show();
        } else {
            PendingDynamicLinkData pendingDynamicLinkData = dynamicLinkResult.pendingDynamicLinkData;
            if (pendingDynamicLinkData == null || pendingDynamicLinkData.getLink() == null) {
                return;
            }
            handleForwardLink(dynamicLinkResult.pendingDynamicLinkData.getLink().toString());
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        MyCommunityLaunchHelper myCommunityLaunchHelper = this.launchHelper;
        if (myCommunityLaunchHelper != null) {
            myCommunityLaunchHelper.cancel();
            this.launchHelper = null;
        }
        super.onDestroy();
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("waitingForJoinCommunityId", this.waitingForJoinCommunityId);
        bundle.putParcelable("waitingForJoinIntent", this.waitingForJoinIntent);
    }

    private void handleForwardLink(final String str) {
        final String strTranslateLinkQuery = translateLinkQuery(str);
        Uri uri = Uri.parse(str);
        final boolean zEquals = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(uri.getQueryParameter("from_web"));
        final String queryParameter = uri.getQueryParameter("sharerId");
        if (strTranslateLinkQuery != null) {
            this.layoutId = R.layout.forward_loading;
            ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("/link-resolution").param("q", strTranslateLinkQuery).build(), new ApiResponseListener<LinkV2TranslationResponse>(LinkV2TranslationResponse.class) { // from class: com.narvii.app.ForwardActivity.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, LinkV2TranslationResponse linkV2TranslationResponse) throws Exception {
                    LinkInfoV2 linkInfoV2;
                    LinkInfo innerLinkInfo = (linkV2TranslationResponse == null || (linkInfoV2 = linkV2TranslationResponse.linkInfoV2) == null) ? null : linkInfoV2.getInnerLinkInfo();
                    if (innerLinkInfo != null && innerLinkInfo.targetCode == 10) {
                        ForwardActivity.access$000(ForwardActivity.this, zEquals, queryParameter, innerLinkInfo.objectId, innerLinkInfo.ndcId);
                    }
                    ForwardActivity.this.openLinkTranslation(linkV2TranslationResponse.linkInfoV2);
                    ForwardActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                    Log.w("unable to translate link " + strTranslateLinkQuery);
                    if (apiResponse == null) {
                        NVToast.makeText(ForwardActivity.this.getContext(), str2, 0).show();
                        ForwardActivity forwardActivity = ForwardActivity.this;
                        forwardActivity.layoutId = R.layout.forward_placeholder_layout;
                        forwardActivity.setContentView(forwardActivity.layoutId);
                        return;
                    }
                    ForwardActivity.this.openWebView(0);
                }
            });
            return;
        }
        if (isInviteLink(str) || isCommunityLink(str)) {
            this.layoutId = R.layout.forward_loading;
            final boolean zIsInviteLink = isInviteLink(str);
            ((ApiService) NVApplication.instance().getService("api")).exec(new ApiRequest.Builder().global().path("/community/link-identify").param("q", str).build(), new ApiResponseListener<CommunityInviteResponse>(CommunityInviteResponse.class) { // from class: com.narvii.app.ForwardActivity.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, CommunityInviteResponse communityInviteResponse) throws Exception {
                    ForwardActivity.this.openCommunityInvite(str, communityInviteResponse, zIsInviteLink);
                    ForwardActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                    if (NVApplication.CLIENT_TYPE == 101) {
                        new PrivateCommunityCheckHelper(ForwardActivity.this).sendCommunityUserInfoChanged(communityInviteResponse.isCurrentUserJoined);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                    Log.w("unable to identify link " + str);
                    if (apiResponse == null) {
                        NVToast.makeText(ForwardActivity.this.getContext(), str2, 0).show();
                        ForwardActivity forwardActivity = ForwardActivity.this;
                        forwardActivity.layoutId = R.layout.forward_placeholder_layout;
                        forwardActivity.setContentView(forwardActivity.layoutId);
                        return;
                    }
                    ForwardActivity.this.openWebView(0);
                }
            });
            PasteBoardService pasteBoardService = (PasteBoardService) getService("pasteBoard");
            if (pasteBoardService != null) {
                pasteBoardService.updateUrl(str);
                return;
            }
            return;
        }
        if (isOpenHome(str)) {
            start(MasterActivity.backToMaster((NVContext) getContext(), new Intent(getContext(), (Class<?>) MasterActivity.class)));
            Log.i("forward open home");
        } else {
            if (getIntent() == null) {
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            Bundle extras = getIntent().getExtras();
            if (extras != null) {
                intent.putExtras(extras);
            }
            try {
                start(intent);
                overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                log(intent);
            } catch (Exception unused) {
                Log.w("unable to forward url " + getIntent().getData());
            }
        }
    }

    void openWebView(int i) {
        Intent intent;
        if (i == 0) {
            intent = FragmentWrapperActivity.intent(AminoWebViewFragment.class);
            intent.putExtra("url", getIntent().getDataString());
        } else {
            Intent intent2 = FragmentWrapperActivity.intent(PreviewWebViewFragment.class);
            intent2.putExtra("url", getIntent().getDataString());
            intent2.putExtra("communityId", i);
            intent = intent2;
        }
        mergeIntentExtras(intent, getIntent());
        startForward(intent);
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    protected void openLinkTranslation(LinkInfoV2 linkInfoV2) throws Exception {
        Object service;
        Intent intentRawHttpMapping;
        if (!this.accountService.hasAccount() && linkInfoV2.getInnerLinkInfo().ndcId != 0) {
            openWebView(linkInfoV2.getInnerLinkInfo().ndcId);
            return;
        }
        if (linkInfoV2.getInnerLinkInfo() == null) {
            return;
        }
        LinkInfo innerLinkInfo = linkInfoV2.getInnerLinkInfo();
        Navigator navigator = this.navigator;
        if (navigator instanceof IncubatorNavigator) {
            if (linkInfoV2.path != null) {
                intentRawHttpMapping = this.navigator.intentMapping(new Intent("android.intent.action.VIEW", Uri.parse("ndc://" + linkInfoV2.path)));
                if (intentRawHttpMapping.getComponent() == null) {
                    intentRawHttpMapping = null;
                }
            } else {
                intentRawHttpMapping = ((IncubatorNavigator) navigator).rawHttpMapping(innerLinkInfo.ndcId, NVObject.objectTypeName(innerLinkInfo.objectType), innerLinkInfo.objectId);
            }
            if (intentRawHttpMapping != null) {
                mergeIntentExtras(intentRawHttpMapping, getIntent());
                int communityId = ((ConfigService) getService("config")).getCommunityId();
                int i = innerLinkInfo.ndcId;
                if (communityId != i) {
                    intentRawHttpMapping.putExtra("__forwardCommunityId", i);
                } else if (this.fromGlobalChat && !this.affiliationsService.contains(i)) {
                    openWebView(innerLinkInfo.ndcId);
                    return;
                }
                start(intentRawHttpMapping);
                return;
            }
            openWebView(innerLinkInfo.ndcId);
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", getIntent().getData());
        mergeIntentExtras(intent, getIntent());
        boolean z = NVApplication.CLIENT_TYPE == 101;
        if (z) {
            service = NVApplication.instance().getService("config");
        } else {
            service = getService("config");
        }
        int communityId2 = ((ConfigService) service).getCommunityId();
        int i2 = innerLinkInfo.ndcId;
        if (communityId2 == i2) {
            if (this.fromGlobalChat && !this.affiliationsService.contains(i2)) {
                openWebView(innerLinkInfo.ndcId);
                return;
            }
            intent.setData(Uri.parse("ndc://" + NVObject.objectTypeName(innerLinkInfo.objectType) + "/" + innerLinkInfo.objectId));
            if (z) {
                intent.putExtra("__communityId", innerLinkInfo.ndcId);
            }
            intent.putExtra("__forward", true);
        } else if (z && innerLinkInfo.objectType == 131) {
            intent.setData(Uri.parse("ndc://" + NVObject.objectTypeName(innerLinkInfo.objectType) + "/" + innerLinkInfo.objectId));
            intent.putExtra("__communityId", 0);
            intent.putExtra("__forward", true);
        } else {
            PackageUtils packageUtils = new PackageUtils(this);
            if (packageUtils.isCommunityInstalled(innerLinkInfo.ndcId)) {
                intent.setClassName(packageUtils.getPackageName(innerLinkInfo.ndcId), ForwardActivity.class.getName());
                intent.putExtra(CLEAR_TASK, true);
            } else if (packageUtils.isMasterInstalled()) {
                intent.setClassName(packageUtils.getMasterPackageName(), ForwardActivity.class.getName());
                intent.putExtra(CLEAR_TASK, true);
            } else {
                openWebView(innerLinkInfo.ndcId);
                return;
            }
        }
        try {
            log(intent);
            startForward(intent);
        } catch (Exception unused) {
            openWebView(innerLinkInfo.ndcId);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x017d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void openCommunityInvite(java.lang.String r9, com.narvii.master.invitation.CommunityInviteResponse r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.app.ForwardActivity.openCommunityInvite(java.lang.String, com.narvii.master.invitation.CommunityInviteResponse, boolean):void");
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        int i = this.layoutId;
        if (i != 0) {
            setContentView(i);
        }
    }

    @Override // com.narvii.app.theme.NVThemeActivity, android.app.Activity
    public void setContentView(int i) {
        super.setContentView(i);
        if (i == R.layout.forward_placeholder_layout) {
            TextView textView = (TextView) findViewById(R.id.forward_url);
            Uri data = getIntent().getData();
            if (data == null) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
                textView.setText(data.toString());
            }
        }
    }

    private void start(Intent intent) {
        boolean z;
        Uri data;
        Intent intentIntentMapping = intent;
        if (this.navigator instanceof IncubatorNavigator) {
            int intExtra = intentIntentMapping.getIntExtra("__forwardCommunityId", 0);
            if (intExtra == 0 || intent.getData() == null || (data = intent.getData()) == null) {
                z = false;
            } else {
                String string = data.toString();
                if (string.contains("/chat-thread/")) {
                    intExtra = 0;
                    z = true;
                } else {
                    z = false;
                }
                if (string.contains("/blog/")) {
                    intExtra = 0;
                    z = true;
                }
            }
            if (intExtra == 0) {
                intentIntentMapping.putExtra("__forward", true);
                intentIntentMapping = this.navigator.intentMapping(intentIntentMapping);
                intExtra = intentIntentMapping.getIntExtra("__forwardCommunityId", 0);
            }
            int i = intExtra;
            if (i != 0) {
                this.layoutId = R.layout.forward_loading;
                Intent intent2 = new Intent("android.intent.action.VIEW", intentIntentMapping.getData());
                intent2.putExtras(intentIntentMapping.getExtras());
                if (intent2.getData() != null && !intent2.hasExtra("Source")) {
                    intent2.putExtra("Source", "Link");
                }
                MyCommunityLaunchHelper myCommunityLaunchHelper = this.launchHelper;
                if (myCommunityLaunchHelper != null) {
                    myCommunityLaunchHelper.cancel();
                }
                this.launchHelper = new MyCommunityLaunchHelper(i, z, intent2);
                this.launchHelper.launch(i, null, null, null, null, null, null, true);
                return;
            }
            intentIntentMapping.putExtra("__forward", true);
            if (intentIntentMapping.getData() != null && !intentIntentMapping.hasExtra("Source")) {
                intentIntentMapping.putExtra("Source", "Link");
            }
            startForward(intentIntentMapping);
            return;
        }
        intentIntentMapping.putExtra("__forward", true);
        if (intent.getData() != null && !intentIntentMapping.hasExtra("Source")) {
            intentIntentMapping.putExtra("Source", "Link");
        }
        startForward(intent);
    }

    protected void startForward(Intent intent) {
        intent.putExtra("__forwardInitTaskActivity", this.initTaskActivity);
        startActivityForResult(intent, 1);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1) {
            setResult(i2, intent);
            finish();
        }
        if (i == 2) {
            if (i2 == -1 && this.waitingForJoinIntent != null) {
                this.layoutId = R.layout.forward_loading;
                setContentView(this.layoutId);
                this.launchHelper = new MyCommunityLaunchHelper(this.waitingForJoinCommunityId, false, this.waitingForJoinIntent);
                this.launchHelper.launch(this.waitingForJoinCommunityId, null, null, null, null, null, null, true);
            } else {
                finish();
            }
            this.waitingForJoinCommunityId = 0;
            this.waitingForJoinIntent = null;
        }
        super.onActivityResult(i, i2, intent);
    }

    private void log(Intent intent) {
        Class cls;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("forward url ");
            sb.append(intent.getData());
            sb.append(" to ");
            if (intent.getComponent() != null) {
                String className = intent.getComponent().getClassName();
                if (FragmentWrapperActivity.class.getName().equals(className)) {
                    String stringExtra = intent.getStringExtra("fragment");
                    if (stringExtra == null && (cls = (Class) intent.getSerializableExtra("fragment")) != null) {
                        stringExtra = cls.getName();
                    }
                    sb.append("fragment " + stringExtra);
                } else {
                    sb.append(className);
                }
            } else {
                sb.append(intent);
            }
            Log.i(sb.toString());
        } catch (Exception unused) {
        }
    }

    public static String translateLinkQuery(String str) {
        Uri uri;
        try {
            uri = Uri.parse(str);
        } catch (Exception unused) {
        }
        if ((!"http".equalsIgnoreCase(uri.getScheme()) && !"https".equalsIgnoreCase(uri.getScheme())) || !new PackageUtils(null).isPermalinkHost(uri.getHost())) {
            return null;
        }
        String path = uri.getPath();
        if (path.startsWith("/g/page/")) {
            return str;
        }
        if (path.startsWith("/page/")) {
            return path.substring(6);
        }
        if (path.startsWith("/p/")) {
            return path.substring(3);
        }
        if (path.startsWith("/u/")) {
            return str;
        }
        List<String> pathSegments = uri.getPathSegments();
        if ((pathSegments == null ? 0 : pathSegments.size()) > 3 && "c".equals(pathSegments.get(0)) && ("page".equals(pathSegments.get(2)) || "market".equals(pathSegments.get(2)))) {
            return str;
        }
        return null;
    }

    public static boolean isPermalink(String str) {
        return translateLinkQuery(str) != null;
    }

    public static boolean isCommunityLink(String str) {
        try {
            Uri uri = Uri.parse(str);
            if (("http".equals(uri.getScheme()) || "https".equals(uri.getScheme())) && new PackageUtils(null).isPermalinkHost(uri.getHost())) {
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments.size() > 1) {
                    if (!"c".equalsIgnoreCase(pathSegments.get(0))) {
                        if ("g".equalsIgnoreCase(pathSegments.get(0))) {
                        }
                    }
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean isInviteLink(String str) {
        try {
            Uri uri = Uri.parse(str);
            if (("http".equals(uri.getScheme()) || "https".equals(uri.getScheme())) && new PackageUtils(null).isPermalinkHost(uri.getHost())) {
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments.size() > 1 && "invite".equalsIgnoreCase(pathSegments.get(0))) {
                    if (PTN.matcher(pathSegments.get(1)).matches()) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean isInviteCode(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return PTN.matcher(str).matches();
    }

    public static boolean isOpenHome(String str) {
        try {
            Uri uri = Uri.parse(str);
            if (("http".equalsIgnoreCase(uri.getScheme()) || "https".equalsIgnoreCase(uri.getScheme())) && new PackageUtils(null).isPermalinkHost(uri.getHost())) {
                return Page.HOME.equalsIgnoreCase(uri.getQueryParameter("open"));
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    /* loaded from: classes2.dex */
    private class MyCommunityLaunchHelper extends CommunityLaunchHelper {
        int cid;
        boolean directOpen;
        Intent pendingIntent;

        public MyCommunityLaunchHelper(int i, boolean z, Intent intent) {
            super(ForwardActivity.this);
            this.cid = i;
            this.directOpen = z;
            this.pendingIntent = intent;
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onProgress(int i, float f) {
            if (i == 3) {
                View viewFindViewById = ForwardActivity.this.findViewById(R.id.text);
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(((int) (f * 100.0f)) + "%");
                    viewFindViewById.setVisibility(0);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.community.CommunityLaunchHelper
        public void onFinish() {
            try {
                Intent intent = this.pendingIntent;
                intent.putExtra("__forward", true);
                ForwardActivity.this.startForward(intent);
                ForwardActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                if (intent.getComponent() != null && MainActivity.class.getName().equals(intent.getComponent().getClassName())) {
                    EnterCommunityHelper.SOURCE.set(ForwardActivity.this.getStringParam(CommentListFragment.COMMENT_KEY_SOURCE));
                } else if ("Link".equals(intent.getStringExtra("Source"))) {
                    EnterCommunityHelper.SOURCE.set(intent.getStringExtra("Source"));
                }
            } catch (Exception unused) {
                ForwardActivity forwardActivity = ForwardActivity.this;
                forwardActivity.layoutId = R.layout.forward_placeholder_layout;
                forwardActivity.setContentView(forwardActivity.layoutId);
            }
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected boolean updateCommunityWhenNotJoined() {
            Community community;
            return this.directOpen && (community = this.updatedCommunity) != null && community.joinType == 0;
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onFail(int i, String str) throws IOException {
            if (i == 1) {
                if (this.directOpen && this.updatedCommunity.joinType == 0) {
                    Intent intent = this.pendingIntent;
                    intent.putExtra("__visitorMode", true);
                    intent.putExtra("__forward", true);
                    ForwardActivity.this.startForward(intent);
                    VisitorModeService visitorModeService = (VisitorModeService) ForwardActivity.this.getService("visitorMode");
                    if (visitorModeService != null) {
                        visitorModeService.addVisitor(this.cid);
                        visitorModeService.preloadThemePack(this.updatedCommunity);
                    }
                } else if (this.updatedCommunity.joinType == 0 && ("http".equals(ForwardActivity.this.getIntent().getScheme()) || "https".equals(ForwardActivity.this.getIntent().getScheme()))) {
                    Intent intent2 = FragmentWrapperActivity.intent(PreviewWebViewFragment.class);
                    intent2.putExtra("url", ForwardActivity.this.getIntent().getDataString());
                    intent2.putExtra("communityId", this.updatedCommunity.id);
                    intent2.putExtra("joinType", this.updatedCommunity.joinType);
                    if (ForwardActivity.this.getBooleanParam("_pushIntent")) {
                        intent2.putExtra("_pushIntent", true);
                    }
                    intent2.putExtra("__forwardInitTaskActivity", true);
                    ForwardActivity.this.startActivityForResult(intent2, 2);
                    ForwardActivity forwardActivity = ForwardActivity.this;
                    forwardActivity.waitingForJoinCommunityId = this.updatedCommunity.id;
                    forwardActivity.waitingForJoinIntent = this.pendingIntent;
                } else {
                    Intent intent3 = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                    intent3.putExtra("id", this.updatedCommunity.id);
                    intent3.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(this.updatedCommunity));
                    intent3.putExtra("joinOnly", true);
                    if (ForwardActivity.this.getBooleanParam("_pushIntent")) {
                        intent3.putExtra("_pushIntent", true);
                    }
                    intent3.putExtra("__forwardInitTaskActivity", true);
                    ForwardActivity.this.startActivityForResult(intent3, 2);
                    NVToast.makeText(ForwardActivity.this.getContext(), R.string.not_joined, 1).show();
                    ForwardActivity forwardActivity2 = ForwardActivity.this;
                    forwardActivity2.waitingForJoinCommunityId = this.updatedCommunity.id;
                    forwardActivity2.waitingForJoinIntent = this.pendingIntent;
                }
                ForwardActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                return;
            }
            ForwardActivity forwardActivity3 = ForwardActivity.this;
            forwardActivity3.layoutId = R.layout.forward_placeholder_layout;
            forwardActivity3.setContentView(forwardActivity3.layoutId);
            super.onFail(i, str);
        }
    }

    static void mergeIntentExtras(Intent intent, Intent intent2) {
        Bundle extras = intent2 == null ? null : intent2.getExtras();
        if (extras != null) {
            Bundle bundle = new Bundle();
            bundle.putAll(extras);
            for (String str : extras.keySet()) {
                if (str.startsWith("__")) {
                    bundle.remove(str);
                }
            }
            intent.putExtras(bundle);
        }
    }
}
