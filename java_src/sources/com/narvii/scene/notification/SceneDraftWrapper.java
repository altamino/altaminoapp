package com.narvii.scene.notification;

import com.narvii.model.NVObject;
import com.narvii.model.Scene;
import com.narvii.scene.model.SceneDraft;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class SceneDraftWrapper extends NVObject {
    public String draftId;
    public boolean isTemporary;
    public SceneDraft sceneDraft;
    public List<Scene> sceneList;

    public SceneDraftWrapper() {
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.draftId;
    }

    public boolean isEdit() {
        return this.sceneList != null;
    }

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

    public SceneDraftWrapper(SceneDraft sceneDraft, boolean z6) {
        this.sceneDraft = sceneDraft;
        this.isTemporary = z6;
        this.draftId = sceneDraft == null ? "" : sceneDraft.draftId;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return id();
    }

    public SceneDraftWrapper(List<Scene> list, String str, boolean z6) {
        this.sceneList = list;
        this.isTemporary = z6;
        this.draftId = str;
    }
}
