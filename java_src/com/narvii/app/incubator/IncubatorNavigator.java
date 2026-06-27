package com.narvii.app.incubator;

import android.content.Intent;
import android.net.Uri;
import com.narvii.app.BaseNavigator;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVContext;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class IncubatorNavigator extends BaseNavigator {
    private int communityId;
    private static final Pattern NARVIIAPP_X = Pattern.compile("narviiapp(\\d+)");
    private static final Pattern PEBKITAPP_X = Pattern.compile("pebkitapp(\\d+)");
    private static final Pattern PATH_X = Pattern.compile("x(\\d+)");

    public IncubatorNavigator(NVContext nVContext, String str, int i) {
        super(nVContext, str);
        this.communityId = i;
    }

    @Override // com.narvii.app.BaseNavigator
    protected boolean isMyScheme(String str) {
        return super.isMyScheme(str) || NARVIIAPP_X.matcher(str).matches() || PEBKITAPP_X.matcher(str).matches();
    }

    @Override // com.narvii.app.BaseNavigator, com.narvii.navigator.Navigator
    public Intent intentMapping(Intent intent) {
        int intExtra;
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
    public Intent rawHttpMapping(int i, String str, String str2) {
        Intent intentPathMapping = pathMapping(new Intent("android.intent.action.VIEW", Uri.parse("ndc://" + str + "/" + str2)), str, str2, null, null);
        if (intentPathMapping.getComponent() == null) {
            return null;
        }
        intentPathMapping.putExtra("__communityId", i);
        return intentPathMapping;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001d  */
    @Override // com.narvii.app.BaseNavigator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected android.content.Intent pathMapping(android.content.Intent r14) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 643
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.app.incubator.IncubatorNavigator.pathMapping(android.content.Intent):android.content.Intent");
    }
}
