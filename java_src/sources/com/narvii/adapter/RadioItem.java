package com.narvii.adapter;

/* JADX INFO: loaded from: classes5.dex */
public class RadioItem {
    public String desc;
    public boolean enabled = true;
    public int id;
    public String name;

    public RadioItem(int i10, String str) {
        this.id = i10;
        this.name = str;
    }

    public RadioItem(int i10, String str, String str2) {
        this.id = i10;
        this.name = str;
        this.desc = str2;
    }
}
