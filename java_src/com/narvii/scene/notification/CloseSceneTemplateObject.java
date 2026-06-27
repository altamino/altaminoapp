package com.narvii.scene.notification;

import com.narvii.model.NVObject;

/* loaded from: classes3.dex */
public class CloseSceneTemplateObject extends NVObject {
    public String id;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
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
    public String id() {
        return this.id;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return this.id;
    }
}
