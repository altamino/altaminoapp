package com.narvii.model.api;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.narvii.model.User;

@JsonIgnoreProperties(ignoreUnknown = true)
/* loaded from: classes.dex */
public class UserResponse extends ObjectResponse<User> {

    @JsonProperty("userProfile")
    public User user;

    @Override // com.narvii.model.api.ObjectResponse
    public User object() {
        return this.user;
    }
}
