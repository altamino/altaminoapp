package com.narvii.logging;

import com.narvii.model.NVObject;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class ObjectInfo<T extends NVObject> {
    public HashMap<String, Object> extraHashMap;
    public HashMap<String, Object> localHashMap;
    public T object;
    public int screenPos;

    public ObjectInfo(T t, int i) {
        this.screenPos = -1;
        this.object = t;
        this.screenPos = i;
    }

    public ObjectInfo(T t, int i, HashMap<String, Object> map) {
        this.screenPos = -1;
        this.object = t;
        this.screenPos = i;
        this.extraHashMap = map;
    }

    public ObjectInfo(T t) {
        this.screenPos = -1;
        this.object = t;
    }

    public void setExtraInfo(HashMap<String, Object> map) {
        this.extraHashMap = map;
    }

    public void setLocalHashMap(HashMap<String, Object> map) {
        this.localHashMap = map;
    }

    public HashMap<String, Object> getExtraInfo() {
        return this.extraHashMap;
    }
}
