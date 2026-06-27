package com.narvii.chat;

import com.narvii.model.NVObject;

/* compiled from: SpeakerInviteNotificationWrapper.kt */
/* loaded from: classes2.dex */
public final class SpeakerInviteNotificationWrapper extends NVObject {
    private boolean isInvited;
    private String userId = "";

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

    public final String getUserId() {
        return this.userId;
    }

    public final void setUserId(String str) {
        this.userId = str;
    }

    public final boolean isInvited() {
        return this.isInvited;
    }

    public final void setInvited(boolean z) {
        this.isInvited = z;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        String str = this.userId;
        return str != null ? str : "";
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        String str = this.userId;
        return str != null ? str : "";
    }
}
