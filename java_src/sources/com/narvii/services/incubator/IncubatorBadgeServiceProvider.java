package com.narvii.services.incubator;

import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.notice.ReminderFullCheckResponse;
import com.narvii.util.badge.BadgeService;
import com.narvii.util.badge.BaseBadgeServiceProvider;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;

/* JADX INFO: loaded from: classes2.dex */
public class IncubatorBadgeServiceProvider extends BaseBadgeServiceProvider {
    long lastFullCheckTime;

    @Override // com.narvii.util.badge.BaseBadgeServiceProvider, com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, final BadgeService badgeService) {
        super.pause(nVContext, badgeService);
        if (badgeService.isBadgeAvailable()) {
            if (!((AccountService) nVContext.getService("account")).hasAccount()) {
                badgeService.setBadge(0);
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis > this.lastFullCheckTime + 15000) {
                ((ApiService) nVContext.getService("api")).exec(ApiRequest.builder().global().path("/reminder/full-check").build(), new ApiResponseListener<ReminderFullCheckResponse>(ReminderFullCheckResponse.class) { // from class: com.narvii.services.incubator.IncubatorBadgeServiceProvider.1
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, ReminderFullCheckResponse reminderFullCheckResponse) throws Exception {
                        badgeService.setBadge(reminderFullCheckResponse.reminderFullCheckResult.hasReminder ? 1 : 0);
                    }
                });
                this.lastFullCheckTime = jCurrentTimeMillis;
            }
        }
    }
}
