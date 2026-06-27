package com.narvii.master.setting;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.narvii.model.NVObject;

/* loaded from: classes3.dex */
public class PushSettings extends NVObject {
    public String icon;

    @JsonProperty("ndc_id")
    public int id;
    public String name;
    public boolean pushEnabled;

    @Override // com.narvii.model.NVObject
    public String id() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return Integer.MAX_VALUE;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }
}
