package com.narvii.model.api;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.narvii.model.User;

/* JADX INFO: loaded from: classes10.dex */
@JsonIgnoreProperties(ignoreUnknown = true)
public class UserResponse extends ObjectResponse<User> {
    public Boolean showStoreBadge;

    @JsonProperty("userProfile")
    public User user;

    @Override // com.narvii.model.api.ObjectResponse
    public User object() {
        return this.user;
    }
}
