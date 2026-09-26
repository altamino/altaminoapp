package com.narvii.app;

import android.content.Intent;
import android.net.Uri;
import com.narvii.config.ConfigService;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes10.dex */
public class AminoNavigator extends BaseNavigator {
    private static final Pattern PATH_X = Pattern.compile("x(\\d+)");
    private int myCommunityId;

    @Override // com.narvii.app.BaseNavigator
    protected Intent rawHttpMapping(int i10, String str, String str2) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://" + str + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + str2));
        if (((ConfigService) this.context.getService("config")).getCommunityId() == i10) {
            Intent intentPathMapping = pathMapping(intent, str, str2, null, null);
            if (intentPathMapping.getComponent() != null) {
                return intentPathMapping;
            }
            return null;
        }
        PackageUtils packageUtils = new PackageUtils(this.context.getContext());
        if (!packageUtils.isCommunityInstalled(i10)) {
            return null;
        }
        intent.setClassName(packageUtils.getPackageName(i10), ForwardActivity.class.getName());
        return intent;
    }

    public AminoNavigator(NVContext nVContext, String str, int i10) {
        super(nVContext, str);
        this.myCommunityId = i10;
    }

    /* JADX WARN: Code duplicated, block: B:63:0x0120  */
    @Override // com.narvii.app.BaseNavigator
    protected Intent pathMapping(Intent intent) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        Integer numValueOf;
        String str8;
        String str9;
        String str10;
        Intent intentPathMapping;
        List<String> pathSegments = intent.getData().getPathSegments();
        String host = intent.getData().getHost();
        Integer num = null;
        str = null;
        String str11 = null;
        if ("g".equalsIgnoreCase(host)) {
            numValueOf = 0;
            if (pathSegments.size() > 0) {
                str8 = pathSegments.get(0);
            } else {
                str8 = null;
            }
            if (pathSegments.size() > 1) {
                str9 = pathSegments.get(1);
            } else {
                str9 = null;
            }
            if (pathSegments.size() > 2) {
                str10 = pathSegments.get(2);
            } else {
                str10 = null;
            }
            if (pathSegments.size() > 3) {
                str11 = pathSegments.get(3);
            }
        } else {
            if (host != null) {
                Matcher matcher = PATH_X.matcher(host);
                if (matcher.matches()) {
                    int i10 = Integer.parseInt(matcher.group(1));
                    ConfigService configService = (ConfigService) this.context.getService("config");
                    if (i10 != configService.getCommunityId() && i10 != this.myCommunityId) {
                        Log.w("ignore redirect to other community url " + intent.getData());
                        return intent;
                    }
                    if (i10 != configService.getCommunityId()) {
                        numValueOf = Integer.valueOf(this.myCommunityId);
                    } else {
                        numValueOf = null;
                    }
                    if (pathSegments.size() > 0) {
                        str8 = pathSegments.get(0);
                    } else {
                        str8 = null;
                    }
                    if (pathSegments.size() > 1) {
                        str9 = pathSegments.get(1);
                    } else {
                        str9 = null;
                    }
                    if (pathSegments.size() > 2) {
                        str10 = pathSegments.get(2);
                    } else {
                        str10 = null;
                    }
                    if (pathSegments.size() > 3) {
                        str11 = pathSegments.get(3);
                    }
                }
                intentPathMapping = pathMapping(intent, str5, str7, str6, str4);
                if (num != null) {
                    intentPathMapping.putExtra("__communityId", num.intValue());
                }
                return intentPathMapping;
            }
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
                str3 = pathSegments.get(2);
            } else {
                str3 = null;
            }
            str4 = str3;
            str5 = host;
            str6 = str2;
            str7 = str;
            intentPathMapping = pathMapping(intent, str5, str7, str6, str4);
            if (num != null) {
                intentPathMapping.putExtra("__communityId", num.intValue());
            }
            return intentPathMapping;
        }
        str5 = str8;
        str7 = str9;
        str6 = str10;
        str4 = str11;
        num = numValueOf;
        intentPathMapping = pathMapping(intent, str5, str7, str6, str4);
        if (num != null) {
            intentPathMapping.putExtra("__communityId", num.intValue());
        }
        return intentPathMapping;
    }
}
