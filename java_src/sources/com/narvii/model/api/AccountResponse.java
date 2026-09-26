package com.narvii.model.api;

import com.narvii.model.User;

/* JADX INFO: loaded from: classes9.dex */
public class AccountResponse extends ObjectResponse<User> {
    public User account;
    public String auid;
    public boolean newAccount;
    public String secret;
    public String sid;
    public User userProfile;

    @Override // com.narvii.model.api.ObjectResponse
    public User object() {
        return this.account;
    }
}
