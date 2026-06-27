package com.narvii.scene.notification;

import com.narvii.model.NVObject;
import com.narvii.model.Scene;
import com.narvii.scene.model.SceneDraft;
import java.util.List;

/* loaded from: classes3.dex */
public class SceneDraftWrapper extends NVObject {
    public String draftId;
    public boolean isTemporary;
    public SceneDraft sceneDraft;
    public List<Scene> sceneList;

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

    public SceneDraftWrapper() {
    }

    public SceneDraftWrapper(SceneDraft sceneDraft, boolean z) {
        this.sceneDraft = sceneDraft;
        this.isTemporary = z;
        this.draftId = sceneDraft == null ? "" : sceneDraft.draftId;
    }

    public SceneDraftWrapper(List<Scene> list, String str, boolean z) {
        this.sceneList = list;
        this.isTemporary = z;
        this.draftId = str;
    }

    public boolean isEdit() {
        return this.sceneList != null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.draftId;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return id();
    }
}
