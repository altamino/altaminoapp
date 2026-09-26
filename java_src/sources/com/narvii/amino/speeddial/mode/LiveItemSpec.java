package com.narvii.amino.speeddial.mode;

/* JADX INFO: loaded from: classes4.dex */
public class LiveItemSpec {
    public int backgroundColor;
    public String backgroundUrl;
    public int iconId;
    public int titleId;

    public LiveItemSpec(int i10, int i11, int i12) {
        this(i10, i11, i12, null);
    }

    public LiveItemSpec(int i10, int i11, int i12, String str) {
        this.iconId = i10;
        this.titleId = i11;
        this.backgroundColor = i12;
        this.backgroundUrl = str;
    }
}
