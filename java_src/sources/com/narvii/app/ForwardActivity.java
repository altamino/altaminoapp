package com.narvii.app;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.MainActivity;
import com.narvii.amino.master.R;
import com.narvii.app.incubator.IncubatorNavigator;
import com.narvii.chat.rtc.RtcService;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.PreviewWebViewFragment;
import com.narvii.community.VisitorModeService;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.MasterActivity;
import com.narvii.master.invitation.CommunityInviteResponse;
import com.narvii.master.invitation.InvitationWelcomeActivity;
import com.narvii.master.invitation.PasteBoardService;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.page.Page;
import com.narvii.navigator.Navigator;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.share.LinkInfo;
import com.narvii.share.LinkInfoV2;
import com.narvii.share.LinkV2TranslationResponse;
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
import com.narvii.util.statistics.StatisticsService;
import com.safedk.android.utils.Logger;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
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

    private class MyCommunityLaunchHelper extends CommunityLaunchHelper {
        int cid;
        boolean directOpen;
        Intent pendingIntent;

        public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onFail(int i10, String str) {
            if (i10 != 1) {
                ForwardActivity forwardActivity = ForwardActivity.this;
                forwardActivity.layoutId = R.layout.forward_placeholder_layout;
                forwardActivity.setContentView(R.layout.forward_placeholder_layout);
                super.onFail(i10, str);
                return;
            }
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
            } else if (this.updatedCommunity.joinType == 0 && (ProxyConfig.MATCH_HTTP.equals(ForwardActivity.this.getIntent().getScheme()) || ProxyConfig.MATCH_HTTPS.equals(ForwardActivity.this.getIntent().getScheme()))) {
                Intent intent2 = FragmentWrapperActivity.intent(PreviewWebViewFragment.class);
                intent2.putExtra(ImagesContract.URL, ForwardActivity.this.getIntent().getDataString());
                intent2.putExtra("communityId", this.updatedCommunity.id);
                intent2.putExtra("joinType", this.updatedCommunity.joinType);
                if (ForwardActivity.this.getBooleanParam("_pushIntent")) {
                    intent2.putExtra("_pushIntent", true);
                }
                intent2.putExtra("__forwardInitTaskActivity", true);
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(ForwardActivity.this, intent2, 2);
                ForwardActivity forwardActivity2 = ForwardActivity.this;
                forwardActivity2.waitingForJoinCommunityId = this.updatedCommunity.id;
                forwardActivity2.waitingForJoinIntent = this.pendingIntent;
            } else {
                Intent intent3 = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent3.putExtra("id", this.updatedCommunity.id);
                intent3.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(this.updatedCommunity));
                intent3.putExtra("joinOnly", true);
                if (ForwardActivity.this.getBooleanParam("_pushIntent")) {
                    intent3.putExtra("_pushIntent", true);
                }
                intent3.putExtra("__forwardInitTaskActivity", true);
                safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(ForwardActivity.this, intent3, 2);
                NVToast.makeText(ForwardActivity.this.getContext(), R.string.not_joined, 1).show();
                ForwardActivity forwardActivity3 = ForwardActivity.this;
                forwardActivity3.waitingForJoinCommunityId = this.updatedCommunity.id;
                forwardActivity3.waitingForJoinIntent = this.pendingIntent;
            }
            ForwardActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onProgress(int i10, float f) {
            if (i10 == 3) {
                View viewFindViewById = ForwardActivity.this.findViewById(R.id.text);
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(((int) (f * 100.0f)) + "%");
                    viewFindViewById.setVisibility(0);
                }
            }
        }

        public MyCommunityLaunchHelper(int i10, boolean z6, Intent intent) {
            super(ForwardActivity.this);
            this.cid = i10;
            this.directOpen = z6;
            this.pendingIntent = intent;
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onFinish() {
            try {
                Intent intent = this.pendingIntent;
                intent.putExtra("__forward", true);
                ForwardActivity.this.startForward(intent);
                ForwardActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                if (intent.getComponent() != null && MainActivity.class.getName().equals(intent.getComponent().getClassName())) {
                    EnterCommunityHelper.SOURCE.set(ForwardActivity.this.getStringParam("source"));
                } else if ("Link".equals(intent.getStringExtra(ExternalPostPreviewFragment.SOURCE))) {
                    EnterCommunityHelper.SOURCE.set(intent.getStringExtra(ExternalPostPreviewFragment.SOURCE));
                }
            } catch (Exception unused) {
                ForwardActivity forwardActivity = ForwardActivity.this;
                forwardActivity.layoutId = R.layout.forward_placeholder_layout;
                forwardActivity.setContentView(R.layout.forward_placeholder_layout);
            }
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected boolean updateCommunityWhenNotJoined() {
            Community community;
            return this.directOpen && (community = this.updatedCommunity) != null && community.joinType == 0;
        }
    }

    public static boolean isCommunityLink(String str) {
        try {
            Uri uri = Uri.parse(str);
            if ((ProxyConfig.MATCH_HTTP.equals(uri.getScheme()) || ProxyConfig.MATCH_HTTPS.equals(uri.getScheme())) && new PackageUtils(null).isPermalinkHost(uri.getHost())) {
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments.size() > 1 && ("c".equalsIgnoreCase(pathSegments.get(0)) || "g".equalsIgnoreCase(pathSegments.get(0)))) {
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
            if ((ProxyConfig.MATCH_HTTP.equals(uri.getScheme()) || ProxyConfig.MATCH_HTTPS.equals(uri.getScheme())) && new PackageUtils(null).isPermalinkHost(uri.getHost())) {
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments.size() > 1 && "invite".equalsIgnoreCase(pathSegments.get(0)) && PTN.matcher(pathSegments.get(1)).matches()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean isOpenHome(String str) {
        try {
            Uri uri = Uri.parse(str);
            if ((ProxyConfig.MATCH_HTTP.equalsIgnoreCase(uri.getScheme()) || ProxyConfig.MATCH_HTTPS.equalsIgnoreCase(uri.getScheme())) && new PackageUtils(null).isPermalinkHost(uri.getHost())) {
                return Page.HOME.equalsIgnoreCase(uri.getQueryParameter("open"));
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static String translateLinkQuery(String str) {
        try {
            Uri uri = Uri.parse(str);
            if ((!ProxyConfig.MATCH_HTTP.equalsIgnoreCase(uri.getScheme()) && !ProxyConfig.MATCH_HTTPS.equalsIgnoreCase(uri.getScheme())) || !new PackageUtils(null).isPermalinkHost(uri.getHost())) {
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
            if (pathSegments != null && pathSegments.size() > 3 && "c".equals(pathSegments.get(0)) && ("page".equals(pathSegments.get(2)) || "market".equals(pathSegments.get(2)))) {
                return str;
            }
            return null;
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.app.NVActivity
    public boolean isModel() {
        return false;
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 1) {
            setResult(i11, intent);
            finish();
        }
        if (i10 == 2) {
            if (i11 != -1 || this.waitingForJoinIntent == null) {
                finish();
            } else {
                this.layoutId = R.layout.forward_loading;
                setContentView(R.layout.forward_loading);
                MyCommunityLaunchHelper myCommunityLaunchHelper = new MyCommunityLaunchHelper(this.waitingForJoinCommunityId, false, this.waitingForJoinIntent);
                this.launchHelper = myCommunityLaunchHelper;
                myCommunityLaunchHelper.launch(this.waitingForJoinCommunityId, null, null, null, null, null, null, true);
            }
            this.waitingForJoinCommunityId = 0;
            this.waitingForJoinIntent = null;
        }
        super.onActivityResult(i10, i11, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(DeepLinkManager.DynamicLinkResult dynamicLinkResult) {
        if (!TextUtils.isEmpty(dynamicLinkResult.errorMsg)) {
            this.layoutId = R.layout.forward_placeholder_layout;
            setContentView(R.layout.forward_placeholder_layout);
            NVToast.makeText(getContext(), dynamicLinkResult.errorMsg, 0).show();
        } else {
            h4.b bVar = dynamicLinkResult.pendingDynamicLinkData;
            if (bVar == null || bVar.c() == null) {
                return;
            }
            handleForwardLink(dynamicLinkResult.pendingDynamicLinkData.c().toString());
        }
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

    private void start(Intent intent) {
        boolean zContains;
        Uri data;
        Intent intentIntentMapping = intent;
        if (!(this.navigator instanceof IncubatorNavigator)) {
            intentIntentMapping.putExtra("__forward", true);
            if (intent.getData() != null && !intentIntentMapping.hasExtra(ExternalPostPreviewFragment.SOURCE)) {
                intentIntentMapping.putExtra(ExternalPostPreviewFragment.SOURCE, "Link");
            }
            startForward(intent);
            return;
        }
        int intExtra = intentIntentMapping.getIntExtra("__forwardCommunityId", 0);
        if (intExtra == 0 || intent.getData() == null || (data = intent.getData()) == null) {
            zContains = false;
        } else {
            String string = data.toString();
            zContains = string.contains("/chat-thread/");
            if (zContains) {
                intExtra = 0;
            }
            if (string.contains("/blog/")) {
                zContains = true;
                intExtra = 0;
            }
        }
        if (intExtra == 0) {
            intentIntentMapping.putExtra("__forward", true);
            intentIntentMapping = this.navigator.intentMapping(intentIntentMapping);
            intExtra = intentIntentMapping.getIntExtra("__forwardCommunityId", 0);
        }
        int i10 = intExtra;
        if (i10 == 0) {
            intentIntentMapping.putExtra("__forward", true);
            if (intentIntentMapping.getData() != null && !intentIntentMapping.hasExtra(ExternalPostPreviewFragment.SOURCE)) {
                intentIntentMapping.putExtra(ExternalPostPreviewFragment.SOURCE, "Link");
            }
            startForward(intentIntentMapping);
            return;
        }
        this.layoutId = R.layout.forward_loading;
        Intent intent2 = new Intent("android.intent.action.VIEW", intentIntentMapping.getData());
        intent2.putExtras(intentIntentMapping.getExtras());
        if (intent2.getData() != null && !intent2.hasExtra(ExternalPostPreviewFragment.SOURCE)) {
            intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "Link");
        }
        MyCommunityLaunchHelper myCommunityLaunchHelper = this.launchHelper;
        if (myCommunityLaunchHelper != null) {
            myCommunityLaunchHelper.cancel();
        }
        MyCommunityLaunchHelper myCommunityLaunchHelper2 = new MyCommunityLaunchHelper(i10, zContains, intent2);
        this.launchHelper = myCommunityLaunchHelper2;
        myCommunityLaunchHelper2.launch(i10, null, null, null, null, null, null, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void staticsForFanClub(boolean z6, String str, String str2, int i10) {
        ((StatisticsService) getService("statistics")).event("Tracking Link").param("Target", "Fan Club").param("From Web", z6 ? 1 : 0).param("Share ID", str).param("User ID", str2).param("Community ID", i10);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        boolean booleanExtra;
        boolean z6;
        if (bundle == null) {
            booleanExtra = getIntent().getBooleanExtra("__redirectTaskId", false);
            if (booleanExtra) {
                if (getIntent().getBooleanExtra("__redirectReset", false)) {
                    ApplicationSessionHelper.setNewTask(0);
                } else if (getTaskId() != ApplicationSessionHelper.getTaskId()) {
                    ApplicationSessionHelper.setNewTask(getTaskId());
                }
            } else if (!isTaskRoot() && ApplicationSessionHelper.getTaskId() == 0) {
                z6 = true;
            }
            z6 = false;
        } else {
            booleanExtra = false;
            z6 = false;
        }
        super.onCreate(bundle);
        this.layoutId = R.layout.forward_placeholder_layout;
        this.navigator = (Navigator) getService("navigator");
        this.accountService = (AccountService) getService("account");
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        this.fromGlobalChat = getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT, false);
        boolean booleanParam = bundle == null ? getBooleanParam(CLEAR_TASK) : false;
        if (z6 || (bundle == null && !booleanExtra && (booleanParam || !(isTaskRoot() || getTaskId() == ApplicationSessionHelper.getTaskId())))) {
            Intent intent = new Intent(this, getClass());
            intent.setData(getIntent().getData());
            if (getIntent().getExtras() != null) {
                intent.putExtras(getIntent().getExtras());
            }
            intent.putExtra("__redirectTaskId", true);
            intent.setFlags(268435456);
            if (z6 || booleanParam) {
                intent.addFlags(32768);
                intent.putExtra("__redirectReset", true);
                Log.w("ForwardActivity reset for taskId");
            } else {
                Log.w("ForwardActivity redirect for taskId");
            }
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
            overridePendingTransition(0, 0);
            finish();
            return;
        }
        Intent intent2 = getIntent();
        if (intent2 == null || intent2.getData() == null || intent2.getBooleanExtra("__forward", false)) {
            return;
        }
        if (bundle != null) {
            int i10 = bundle.getInt("waitingForJoinCommunityId");
            this.waitingForJoinCommunityId = i10;
            if (i10 != 0) {
                this.waitingForJoinIntent = (Intent) bundle.getParcelable("waitingForJoinIntent");
                return;
            }
        }
        String dataString = intent2.getDataString();
        Uri uri = dataString == null ? null : Uri.parse(dataString);
        if (uri == null || uri.getHost() == null || !getString(R.string.firebase_dynamic_link_host).equals(uri.getHost())) {
            DeepLinkManager.logDeepLinkFromForwardActivity(this, dataString);
            handleForwardLink(dataString);
        } else {
            this.layoutId = R.layout.forward_loading;
            setContentView(R.layout.forward_loading);
            DeepLinkManager.handleDynamicLink(this, false, new Callback() { // from class: com.narvii.app.c
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f1825a.lambda$onCreate$0((DeepLinkManager.DynamicLinkResult) obj);
                }
            });
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        MyCommunityLaunchHelper myCommunityLaunchHelper = this.launchHelper;
        if (myCommunityLaunchHelper != null) {
            myCommunityLaunchHelper.cancel();
            this.launchHelper = null;
        }
        super.onDestroy();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00ce  */
    protected void openCommunityInvite(String str, CommunityInviteResponse communityInviteResponse, boolean z6) {
        Intent intentIntentMapping;
        new PackageUtils(getContext());
        if (communityInviteResponse.isCurrentUserJoined) {
            if (TextUtils.isEmpty(communityInviteResponse.path)) {
                try {
                    String path = Uri.parse(str).getPath();
                    int iIndexOf = path.indexOf(47);
                    int iIndexOf2 = path.indexOf(47, iIndexOf + 1);
                    int iIndexOf3 = path.indexOf(47, iIndexOf2 + 1);
                    if (iIndexOf != 0 || iIndexOf2 <= iIndexOf || iIndexOf3 <= iIndexOf2) {
                        intentIntentMapping = null;
                    } else {
                        intentIntentMapping = this.navigator.intentMapping(new Intent("android.intent.action.VIEW", Uri.parse("ndc://x" + communityInviteResponse.community.id + path.substring(iIndexOf3))));
                        if (intentIntentMapping.getComponent() == null) {
                            intentIntentMapping = null;
                        }
                    }
                } catch (Exception unused) {
                }
            } else {
                intentIntentMapping = this.navigator.intentMapping(new Intent("android.intent.action.VIEW", Uri.parse("ndc://" + communityInviteResponse.path)));
                if (intentIntentMapping.getComponent() == null) {
                    intentIntentMapping = null;
                }
            }
        } else if (TextUtils.isEmpty(communityInviteResponse.path) || communityInviteResponse.community != null) {
            intentIntentMapping = null;
        } else {
            intentIntentMapping = this.navigator.intentMapping(new Intent("android.intent.action.VIEW", Uri.parse("ndc://" + communityInviteResponse.path)));
            if (intentIntentMapping.getComponent() == null) {
                intentIntentMapping = null;
            }
        }
        if (intentIntentMapping == null) {
            intentIntentMapping = InvitationWelcomeActivity.launchCommunity(communityInviteResponse);
        }
        intentIntentMapping.putExtra(ExternalPostPreviewFragment.SOURCE, "Invite Code");
        mergeIntentExtras(intentIntentMapping, getIntent());
        PasteBoardService.SKIP.set(Boolean.TRUE, 15000L);
        WeakReference<LoginActivity> weakReference = LoginActivity.instance;
        LoginActivity loginActivity = weakReference != null ? weakReference.get() : null;
        if (loginActivity == null) {
            startForward(intentIntentMapping);
            return;
        }
        loginActivity.finish();
        safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(loginActivity, intentIntentMapping);
        loginActivity.overridePendingTransition(0, 0);
        finish();
    }

    protected void openLinkTranslation(LinkInfoV2 linkInfoV2) throws Exception {
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
            if (intentRawHttpMapping == null) {
                openWebView(innerLinkInfo.ndcId);
                return;
            }
            mergeIntentExtras(intentRawHttpMapping, getIntent());
            int communityId = ((ConfigService) getService("config")).getCommunityId();
            int i10 = innerLinkInfo.ndcId;
            if (communityId != i10) {
                intentRawHttpMapping.putExtra("__forwardCommunityId", i10);
            } else if (this.fromGlobalChat && !this.affiliationsService.contains(i10)) {
                openWebView(innerLinkInfo.ndcId);
                return;
            }
            start(intentRawHttpMapping);
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", getIntent().getData());
        mergeIntentExtras(intent, getIntent());
        int communityId2 = ((ConfigService) getService("config")).getCommunityId();
        int i11 = innerLinkInfo.ndcId;
        if (communityId2 != i11) {
            PackageUtils packageUtils = new PackageUtils(this);
            if (packageUtils.isCommunityInstalled(innerLinkInfo.ndcId)) {
                intent.setClassName(packageUtils.getPackageName(innerLinkInfo.ndcId), getClass().getName());
                intent.putExtra(CLEAR_TASK, true);
            } else if (!packageUtils.isMasterInstalled()) {
                openWebView(innerLinkInfo.ndcId);
                return;
            } else {
                intent.setClassName(packageUtils.getMasterPackageName(), getClass().getName());
                intent.putExtra(CLEAR_TASK, true);
            }
        } else {
            if (this.fromGlobalChat && !this.affiliationsService.contains(i11)) {
                openWebView(innerLinkInfo.ndcId);
                return;
            }
            intent.setData(Uri.parse("ndc://" + NVObject.objectTypeName(innerLinkInfo.objectType) + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + innerLinkInfo.objectId));
            intent.putExtra("__forward", true);
        }
        try {
            log(intent);
            startForward(intent);
        } catch (Exception unused) {
            openWebView(innerLinkInfo.ndcId);
        }
    }

    void openWebView(int i10) {
        Intent intent;
        if (i10 == 0) {
            intent = FragmentWrapperActivity.intent(AminoWebViewFragment.class);
            intent.putExtra(ImagesContract.URL, getIntent().getDataString());
        } else {
            Intent intent2 = FragmentWrapperActivity.intent(PreviewWebViewFragment.class);
            intent2.putExtra(ImagesContract.URL, getIntent().getDataString());
            intent2.putExtra("communityId", i10);
            intent = intent2;
        }
        mergeIntentExtras(intent, getIntent());
        startForward(intent);
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    protected void startForward(Intent intent) {
        intent.putExtra("__forwardInitTaskActivity", this.initTaskActivity);
        safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent, 1);
    }

    private void handleForwardLink(final String str) {
        String myScheme;
        final String strTranslateLinkQuery = translateLinkQuery(str);
        Uri uri = Uri.parse(str);
        final boolean zEquals = "1".equals(uri.getQueryParameter("from_web"));
        final String queryParameter = uri.getQueryParameter("sharerId");
        if (strTranslateLinkQuery != null) {
            this.layoutId = R.layout.forward_loading;
            ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("/link-resolution").param("q", strTranslateLinkQuery).build(), new ApiResponseListener<LinkV2TranslationResponse>(LinkV2TranslationResponse.class) { // from class: com.narvii.app.ForwardActivity.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                    Log.w("unable to translate link " + strTranslateLinkQuery);
                    if (apiResponse != null) {
                        ForwardActivity.this.openWebView(0);
                        return;
                    }
                    NVToast.makeText(ForwardActivity.this.getContext(), str2, 0).show();
                    ForwardActivity forwardActivity = ForwardActivity.this;
                    forwardActivity.layoutId = R.layout.forward_placeholder_layout;
                    forwardActivity.setContentView(R.layout.forward_placeholder_layout);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, LinkV2TranslationResponse linkV2TranslationResponse) throws Exception {
                    LinkInfoV2 linkInfoV2;
                    LinkInfo innerLinkInfo = (linkV2TranslationResponse == null || (linkInfoV2 = linkV2TranslationResponse.linkInfoV2) == null) ? null : linkInfoV2.getInnerLinkInfo();
                    if (innerLinkInfo != null && innerLinkInfo.targetCode == 10) {
                        ForwardActivity.this.staticsForFanClub(zEquals, queryParameter, innerLinkInfo.objectId, innerLinkInfo.ndcId);
                    }
                    ForwardActivity.this.openLinkTranslation(linkV2TranslationResponse.linkInfoV2);
                    ForwardActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                }
            });
            return;
        }
        if (!isInviteLink(str) && !isCommunityLink(str)) {
            if (isOpenHome(str)) {
                start(MasterActivity.backToMaster((NVContext) getContext(), new Intent(getContext(), (Class<?>) MasterActivity.class)));
                Log.i("forward open home");
                return;
            }
            Navigator navigator = this.navigator;
            if (navigator instanceof BaseNavigator) {
                myScheme = ((BaseNavigator) navigator).getMyScheme();
            } else {
                myScheme = "aminoapp";
            }
            Matcher matcher = Pattern.compile(myScheme + "(\\d*)://x(\\d+)/user-profile/([^/]+)/fan-club").matcher(str);
            if (matcher.find()) {
                staticsForFanClub(zEquals, queryParameter, matcher.group(3), Integer.parseInt(matcher.group(2)));
            }
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
                return;
            } catch (Exception unused) {
                Log.w("unable to forward url " + getIntent().getData());
                return;
            }
        }
        this.layoutId = R.layout.forward_loading;
        final boolean zIsInviteLink = isInviteLink(str);
        ((ApiService) NVApplication.instance().getService("api")).exec(new ApiRequest.Builder().global().path("/community/link-identify").param("q", str).build(), new ApiResponseListener<CommunityInviteResponse>(CommunityInviteResponse.class) { // from class: com.narvii.app.ForwardActivity.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                Log.w("unable to identify link " + str);
                if (apiResponse != null) {
                    ForwardActivity.this.openWebView(0);
                    return;
                }
                NVToast.makeText(ForwardActivity.this.getContext(), str2, 0).show();
                ForwardActivity forwardActivity = ForwardActivity.this;
                forwardActivity.layoutId = R.layout.forward_placeholder_layout;
                forwardActivity.setContentView(R.layout.forward_placeholder_layout);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityInviteResponse communityInviteResponse) throws Exception {
                ForwardActivity.this.openCommunityInvite(str, communityInviteResponse, zIsInviteLink);
                ForwardActivity.this.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
            }
        });
        PasteBoardService pasteBoardService = (PasteBoardService) getService("pasteBoard");
        if (pasteBoardService != null) {
            pasteBoardService.updateUrl(str);
        }
    }

    public static boolean isInviteCode(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return PTN.matcher(str).matches();
    }

    public static boolean isPermalink(String str) {
        if (translateLinkQuery(str) != null) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        int i10 = this.layoutId;
        if (i10 != 0) {
            setContentView(i10);
        }
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("waitingForJoinCommunityId", this.waitingForJoinCommunityId);
        bundle.putParcelable("waitingForJoinIntent", this.waitingForJoinIntent);
    }

    @Override // com.narvii.app.theme.NVThemeActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i10) {
        super.setContentView(i10);
        if (i10 == R.layout.forward_placeholder_layout) {
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
}
