package com.narvii.app;

import android.content.Intent;
import android.net.Uri;
import com.narvii.config.ConfigService;
import com.narvii.util.PackageUtils;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class AminoNavigator extends BaseNavigator {
    private static final Pattern PATH_X = Pattern.compile("x(\\d+)");
    private int myCommunityId;

    public AminoNavigator(NVContext nVContext, String str, int i) {
        super(nVContext, str);
        this.myCommunityId = i;
    }

    @Override // com.narvii.app.BaseNavigator
    protected Intent rawHttpMapping(int i, String str, String str2) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://" + str + "/" + str2));
        if (((ConfigService) this.context.getService("config")).getCommunityId() == i) {
            Intent intentPathMapping = pathMapping(intent, str, str2, null, null);
            if (intentPathMapping.getComponent() != null) {
                return intentPathMapping;
            }
            return null;
        }
        PackageUtils packageUtils = new PackageUtils(this.context.getContext());
        if (!packageUtils.isCommunityInstalled(i)) {
            return null;
        }
        intent.setClassName(packageUtils.getPackageName(i), ForwardActivity.class.getName());
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0120  */
    @Override // com.narvii.app.BaseNavigator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected android.content.Intent pathMapping(android.content.Intent r15) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.app.AminoNavigator.pathMapping(android.content.Intent):android.content.Intent");
    }
}
