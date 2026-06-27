package com.narvii.services.incubator;

import android.app.Application;
import android.content.Intent;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVContext;
import com.narvii.master.invitation.PasteBoardService;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.Log;
import com.narvii.util.Utils;

/* loaded from: classes.dex */
public class PasteBoardServiceProvider implements AutostartServiceProvider<PasteBoardService> {
    final Runnable check = new Runnable() { // from class: com.narvii.services.incubator.PasteBoardServiceProvider.1
        @Override // java.lang.Runnable
        public void run() {
            PasteBoardServiceProvider pasteBoardServiceProvider = PasteBoardServiceProvider.this;
            PasteBoardService pasteBoardService = pasteBoardServiceProvider.service;
            if (pasteBoardService != null) {
                if (pasteBoardServiceProvider.ignoreSessionUrl != null) {
                    String pasteBoardLink = pasteBoardService.getPasteBoardLink();
                    if (Utils.isEquals(pasteBoardLink, PasteBoardServiceProvider.this.ignoreSessionUrl)) {
                        Log.i("ignore paste board url " + pasteBoardLink);
                        return;
                    }
                }
                PasteBoardServiceProvider.this.service.checkClipboard();
            }
        }
    };
    String ignoreSessionUrl;
    PasteBoardService service;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, PasteBoardService pasteBoardService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, PasteBoardService pasteBoardService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, PasteBoardService pasteBoardService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public PasteBoardService create(NVContext nVContext) {
        Intent intent;
        if (this.service == null) {
            this.service = new PasteBoardService(nVContext);
        }
        if ((nVContext instanceof ForwardActivity) && (intent = ((ForwardActivity) nVContext).getIntent()) != null && intent.getData() != null) {
            this.ignoreSessionUrl = this.service.getPasteBoardLink();
            Utils.handler.removeCallbacks(this.check);
        }
        return this.service;
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, PasteBoardService pasteBoardService) {
        if (nVContext instanceof Application) {
            Utils.handler.removeCallbacks(this.check);
            Utils.postDelayed(this.check, 400L);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, PasteBoardService pasteBoardService) {
        if (nVContext instanceof Application) {
            String pasteBoardLink = pasteBoardService.getPasteBoardLink();
            if (!Utils.isEquals(pasteBoardLink, this.ignoreSessionUrl) && (ForwardActivity.isInviteLink(pasteBoardLink) || ForwardActivity.isCommunityLink(pasteBoardLink))) {
                pasteBoardService.updateUrl(pasteBoardLink);
            }
            this.ignoreSessionUrl = null;
        }
    }
}
