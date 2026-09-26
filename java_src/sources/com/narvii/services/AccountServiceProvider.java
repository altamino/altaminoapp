package com.narvii.services;

import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;

/* JADX INFO: loaded from: classes5.dex */
public class AccountServiceProvider implements ServiceProvider<AccountService> {
    private AccountService accountService;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, AccountService accountService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, AccountService accountService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, AccountService accountService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, AccountService accountService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public AccountService create(NVContext nVContext) {
        if (this.accountService == null) {
            this.accountService = new AccountService(NVApplication.instance(), 4, ((ConfigService) nVContext.getService("config")).getCommunityId());
        }
        return this.accountService;
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, AccountService accountService) {
        this.accountService.crossAppsCheckInBackground();
    }
}
