package com.narvii.scene.notification;

import com.narvii.model.NVObject;
import com.narvii.scene.model.SceneInfo;

/* loaded from: classes3.dex */
public class SceneInfoObject extends NVObject {
    public SceneInfo sceneInfo;

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
        SceneInfo sceneInfo = this.sceneInfo;
        return sceneInfo == null ? "" : sceneInfo.id;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return id();
    }
}
