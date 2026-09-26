package com.narvii.app.incubator;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.firebase.sessions.settings.c;
import com.narvii.account.AccountService;
import com.narvii.app.BaseNavigator;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVContext;
import com.narvii.guideline.GuidelineFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.MasterActivity;
import com.narvii.modulization.page.Page;
import com.narvii.notice.AggregationNoticeFragment;
import com.narvii.util.statistics.constants.EventConstants;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes8.dex */
public class IncubatorNavigator extends BaseNavigator {
    private static final Pattern AMINOAPP_X = Pattern.compile("aminoapp(\\d+)");
    private static final Pattern PABKITAPP_X = Pattern.compile("pabkitapp(\\d+)");
    private static final Pattern PATH_X = Pattern.compile("x(\\d+)");
    private int communityId;

    @Override // com.narvii.app.BaseNavigator, com.narvii.navigator.Navigator
    public Intent intentMapping(Intent intent) {
        int intExtra;
        if (intent.getBooleanExtra("ana_url", false)) {
            return intent;
        }
        boolean zNoMapping = noMapping(intent);
        Intent intentIntentMapping = super.intentMapping(intent);
        if (!zNoMapping && intentIntentMapping.getComponent() != null && (intExtra = intentIntentMapping.getIntExtra("__communityId", 0)) != 0 && intExtra != this.communityId) {
            intentIntentMapping.putExtra("__forwardCommunityId", intExtra);
            if (!intent.getBooleanExtra("__forward", false)) {
                intentIntentMapping.setClass(this.context.getContext(), ForwardActivity.class);
            }
        }
        return intentIntentMapping;
    }

    @Override // com.narvii.app.BaseNavigator
    public Intent rawHttpMapping(int i10, String str, String str2) {
        Intent intentPathMapping = pathMapping(new Intent("android.intent.action.VIEW", Uri.parse("ndc://" + str + c.FORWARD_SLASH_STRING + str2)), str, str2, null, null);
        if (intentPathMapping.getComponent() == null) {
            return null;
        }
        intentPathMapping.putExtra("__communityId", i10);
        return intentPathMapping;
    }

    public IncubatorNavigator(NVContext nVContext, String str, int i10) {
        super(nVContext, str);
        this.communityId = i10;
    }

    @Override // com.narvii.app.BaseNavigator
    protected boolean isMyScheme(String str) {
        if (super.isMyScheme(str) || AMINOAPP_X.matcher(str).matches() || PABKITAPP_X.matcher(str).matches()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002b  */
    /* JADX WARN: Code duplicated, block: B:11:0x0034  */
    /* JADX WARN: Code duplicated, block: B:50:0x00de  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:53:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:60:0x0100  */
    /* JADX WARN: Code duplicated, block: B:7:0x001d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:8:0x001f  */
    @Override // com.narvii.app.BaseNavigator
    protected Intent pathMapping(Intent intent) {
        int i10;
        Matcher matcher;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        int i11;
        boolean z6;
        String str9;
        String scheme = intent.getScheme();
        boolean z10 = true;
        if (scheme != null) {
            Matcher matcher2 = AMINOAPP_X.matcher(scheme);
            if (matcher2.matches()) {
                i10 = Integer.parseInt(matcher2.group(1));
            } else if (scheme != null) {
                matcher = PABKITAPP_X.matcher(scheme);
                if (matcher.matches()) {
                    i10 = Integer.parseInt(matcher.group(1));
                } else {
                    i10 = -1;
                }
            } else {
                i10 = -1;
            }
        } else if (scheme != null) {
            matcher = PABKITAPP_X.matcher(scheme);
            if (matcher.matches()) {
                i10 = Integer.parseInt(matcher.group(1));
            } else {
                i10 = -1;
            }
        } else {
            i10 = -1;
        }
        List<String> pathSegments = intent.getData().getPathSegments();
        String host = intent.getData().getHost();
        String str10 = null;
        if ("g".equalsIgnoreCase(host)) {
            if (pathSegments.size() > 0) {
                str9 = pathSegments.get(0);
            } else {
                str9 = null;
            }
            if (pathSegments.size() > 1) {
                str4 = pathSegments.get(1);
            } else {
                str4 = null;
            }
            if (pathSegments.size() > 2) {
                str5 = pathSegments.get(2);
            } else {
                str5 = null;
            }
            if (pathSegments.size() > 3) {
                str10 = pathSegments.get(3);
            }
            str3 = str9;
            i10 = 0;
        } else if (host != null) {
            Matcher matcher3 = PATH_X.matcher(host);
            if (matcher3.matches()) {
                i10 = Integer.parseInt(matcher3.group(1));
                if (pathSegments.size() > 0) {
                    str6 = pathSegments.get(0);
                } else {
                    str6 = null;
                }
                if (pathSegments.size() > 1) {
                    str7 = pathSegments.get(1);
                } else {
                    str7 = null;
                }
                if (pathSegments.size() > 2) {
                    str8 = pathSegments.get(2);
                } else {
                    str8 = null;
                }
                if (pathSegments.size() > 3) {
                    str10 = pathSegments.get(3);
                }
                str3 = str6;
                str4 = str7;
                str5 = str8;
            } else {
                if (pathSegments.size() > 0) {
                    str = pathSegments.get(0);
                } else {
                    str = null;
                }
                if (pathSegments.size() > 1) {
                    str2 = pathSegments.get(1);
                } else {
                    str2 = null;
                }
                if (pathSegments.size() > 2) {
                    str10 = pathSegments.get(2);
                }
                str3 = host;
                str4 = str;
                str5 = str2;
            }
        } else {
            if (pathSegments.size() > 0) {
                str = pathSegments.get(0);
            } else {
                str = null;
            }
            if (pathSegments.size() > 1) {
                str2 = pathSegments.get(1);
            } else {
                str2 = null;
            }
            if (pathSegments.size() > 2) {
                str10 = pathSegments.get(2);
            }
            str3 = host;
            str4 = str;
            str5 = str2;
        }
        String str11 = str10;
        if (i10 <= 0 && ("default".equals(str3) || Page.HOME.equals(str3) || "relogin".equals(str3))) {
            intent.addFlags(268468224);
            setClass(intent, MasterActivity.class);
            if (Page.HOME.equals(str3) && ("headlines".equals(str4) || "my".equals(str4) || "explore".equals(str4) || "chat".equals(str4))) {
                intent.putExtra("tab", str4);
            }
            intent.putExtra("__communityId", 0);
            return intent;
        }
        if (i10 == 0 && EventConstants.GlobalNavigation.NOTIFICATIONS.equals(str3)) {
            setClass(intent, AggregationNoticeFragment.class);
            intent.putExtra("targetCidTab", 0);
            return intent;
        }
        if (i10 > 0 && "description".equals(str3)) {
            setClass(intent, CommunityDetailFragment.class);
            intent.putExtra(CommunityDetailFragment.KEY_INVITATION_CODE, intent.getData().getQueryParameter(CommunityDetailFragment.KEY_INVITATION_CODE));
            intent.putExtra("id", i10);
            AccountService accountService = (AccountService) this.context.getService("account");
            if (accountService != null && accountService.hasAccount()) {
                z6 = true;
            } else {
                z6 = false;
            }
            boolean z11 = !TextUtils.isEmpty(intent.getData().getQueryParameter(CommunityDetailFragment.KEY_INVITATION_CODE));
            if (z6 || !z11) {
                z10 = false;
            }
            intent.putExtra("autoJoin", z10);
            return intent;
        }
        if (i10 > 0 && "guideline".equals(str3)) {
            setClass(intent, GuidelineFragment.class);
            intent.putExtra("id", i10);
            return intent;
        }
        if (i10 == -1 && "topic".equals(str3)) {
            i11 = 0;
        } else {
            i11 = i10;
        }
        if ((i11 != -1 || this.communityId != 0) && i11 != 0) {
            z10 = false;
        }
        Intent intentPathMapping = pathMapping(intent, z10, str3, str4, str5, str11);
        if (i11 != -1) {
            intentPathMapping.putExtra("__communityId", i11);
        }
        return intentPathMapping;
    }
}
