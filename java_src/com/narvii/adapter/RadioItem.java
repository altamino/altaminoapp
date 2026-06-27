package com.narvii.adapter;

/* loaded from: classes2.dex */
public class RadioItem {
    public String desc;
    public boolean enabled = true;
    public int id;
    public String name;

    public RadioItem(int i, String str) {
        this.id = i;
        this.name = str;
    }

    public RadioItem(int i, String str, String str2) {
        this.id = i;
        this.name = str;
        this.desc = str2;
    }
}
