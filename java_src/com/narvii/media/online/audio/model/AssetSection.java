package com.narvii.media.online.audio.model;

/* loaded from: classes3.dex */
public class AssetSection {
    public String name;
    public String title;

    public String getDisplayName() {
        String str = this.title;
        return str == null ? this.name : str;
    }
}
