package com.narvii.item;

import com.narvii.model.NVObject;

/* JADX INFO: loaded from: classes10.dex */
public class ItemPinObject extends NVObject {
    public String id;
    public int inMyFavorites;

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.id;
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

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    public ItemPinObject(String str, int i10) {
        this.id = str;
        this.inMyFavorites = i10;
    }
}
