package com.narvii.scene.notification;

import com.narvii.model.NVObject;

/* loaded from: classes3.dex */
public class StoryCheckEligible extends NVObject {
    public static final int ACTION_CHECK_ACTIVATION = 1;
    public static final int ACTION_ELIGIBLE_FAIL = 2;
    public static final int ACTION_FINISH = 3;
    public int action;
    public String message;
    public String sceneDraftId;

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

    public StoryCheckEligible() {
    }

    public StoryCheckEligible(String str, int i, String str2) {
        this.sceneDraftId = str;
        this.action = i;
        this.message = str2;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.sceneDraftId;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return id();
    }
}
