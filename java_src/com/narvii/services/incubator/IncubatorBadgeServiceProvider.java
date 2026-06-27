package com.narvii.services.incubator;

import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.notice.ReminderFullCheckResponse;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.badge.BadgeService;
import com.narvii.util.badge.BaseBadgeServiceProvider;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;

/* loaded from: classes.dex */
public class IncubatorBadgeServiceProvider extends BaseBadgeServiceProvider {
    long lastFullCheckTime;

    @Override // com.narvii.util.badge.BaseBadgeServiceProvider, com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, final BadgeService badgeService) {
        super.pause(nVContext, badgeService);
        if (badgeService.isBadgeAvailable()) {
            if (((AccountService) nVContext.getService("account")).hasAccount()) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis > this.lastFullCheckTime + ScenePollPlayView.POLL_COUNT_DOWN_MS) {
                    ((ApiService) nVContext.getService("api")).exec(ApiRequest.builder().global().path("/reminder/full-check").build(), new ApiResponseListener<ReminderFullCheckResponse>(ReminderFullCheckResponse.class) { // from class: com.narvii.services.incubator.IncubatorBadgeServiceProvider.1
                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFinish(ApiRequest apiRequest, ReminderFullCheckResponse reminderFullCheckResponse) throws Exception {
                            badgeService.setBadge(reminderFullCheckResponse.reminderFullCheckResult.hasReminder ? 1 : 0);
                        }
                    });
                    this.lastFullCheckTime = jCurrentTimeMillis;
                    return;
                }
                return;
            }
            badgeService.setBadge(0);
        }
    }
}
