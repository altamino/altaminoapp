package com.narvii.master.setting;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class PushSettingResponse extends ListResponse<PushSettings> {

    @JsonDeserialize(contentAs = PushSettings.class)
    public List<PushSettings> pushSettings;

    @Override // com.narvii.model.api.ListResponse
    public List<PushSettings> list() {
        return this.pushSettings;
    }
}
