package com.narvii.chat;

import com.narvii.model.NVObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class SpeakerInviteNotificationWrapper extends NVObject {
    private boolean isInvited;

    @Nullable
    private String userId = "";

    @Nullable
    public final String getUserId() {
        return this.userId;
    }

    @Override // com.narvii.model.NVObject
    @NotNull
    public String id() {
        String str = this.userId;
        return str == null ? "" : str;
    }

    public final boolean isInvited() {
        return this.isInvited;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    @Nullable
    public String parentId() {
        return null;
    }

    public final void setInvited(boolean z6) {
        this.isInvited = z6;
    }

    public final void setUserId(@Nullable String str) {
        this.userId = str;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    @NotNull
    public String uid() {
        String str = this.userId;
        return str == null ? "" : str;
    }
}
