package com.narvii.logging;

import com.narvii.model.NVObject;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public class ObjectInfo<T extends NVObject> {
    public HashMap<String, Object> extraHashMap;
    public HashMap<String, Object> localHashMap;
    public T object;
    public int screenPos;

    public ObjectInfo(T t5, int i10) {
        this.object = t5;
        this.screenPos = i10;
    }

    public HashMap<String, Object> getExtraInfo() {
        return this.extraHashMap;
    }

    public void setExtraInfo(HashMap<String, Object> map) {
        this.extraHashMap = map;
    }

    public void setLocalHashMap(HashMap<String, Object> map) {
        this.localHashMap = map;
    }

    public ObjectInfo(T t5, int i10, HashMap<String, Object> map) {
        this.object = t5;
        this.screenPos = i10;
        this.extraHashMap = map;
    }

    public ObjectInfo(T t5) {
        this.screenPos = -1;
        this.object = t5;
    }
}
