package com.narvii.logging.Impression;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.lib.R;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.Area;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.model.NVObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class ImpressionCollector<T extends NVObject> {
    protected Area adapter;
    protected Class<T> clazz;
    protected int index;
    HashMap<String, Integer> lastImpressionObjectPosMap = new HashMap<>();
    protected ViewGroup listView;

    protected boolean checkCellAdapterWhenAdd() {
        return true;
    }

    public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<T> objectInfo) {
    }

    protected abstract void findImpressionObject(View view, List list);

    public Area getAdapter() {
        return this.adapter;
    }

    public void setAdapter(Area area) {
        this.adapter = area;
    }

    public ImpressionCollector(Class<T> cls) {
        this.clazz = cls;
    }

    public ImpressionCollector(NVPagedAdapter nVPagedAdapter) {
        this.adapter = nVPagedAdapter;
        this.clazz = nVPagedAdapter.getDataClass();
    }

    public void setListView(ViewGroup viewGroup) {
        this.listView = viewGroup;
    }

    public ObjectInfo getImpressionObjectInfo(Object obj) {
        if (obj == null) {
            return null;
        }
        for (ObjectInfo<T> objectInfo : getCurrentImpressionList()) {
            if (objectInfo.object == obj) {
                return objectInfo;
            }
        }
        return null;
    }

    public List<ObjectInfo<T>> getNewImpressionList() {
        List<ObjectInfo<T>> currentImpressionList = getCurrentImpressionList();
        HashMap<String, Integer> map = new HashMap<>();
        Iterator<ObjectInfo<T>> it = currentImpressionList.iterator();
        while (it.hasNext()) {
            ObjectInfo<T> next = it.next();
            Integer num = this.lastImpressionObjectPosMap.get(getObjectKey(next));
            if (num != null && num.intValue() == next.screenPos) {
                it.remove();
            }
            map.put(getObjectKey(next), Integer.valueOf(next.screenPos));
        }
        this.lastImpressionObjectPosMap = map;
        return currentImpressionList;
    }

    protected String getObjectKey(ObjectInfo<T> objectInfo) {
        return objectInfo.object.id();
    }

    private List<ObjectInfo<T>> getCurrentImpressionList() {
        ArrayList arrayList = new ArrayList();
        this.index = -1;
        if (this.listView != null && isListViewVisible()) {
            for (int i = 0; i < this.listView.getChildCount(); i++) {
                findImpressionObject(this.listView.getChildAt(i), arrayList);
            }
        }
        this.index = -1;
        return arrayList;
    }

    protected boolean isListViewVisible() {
        ViewGroup viewGroup = this.listView;
        return viewGroup != null && viewGroup.isShown();
    }

    public void clearImpressionList() {
        this.lastImpressionObjectPosMap.clear();
    }

    protected boolean addImpressionCell(View view, List<ObjectInfo<T>> list) {
        if (view != null && view.getVisibility() == 0) {
            if (!checkCellAdapterWhenAdd() || (this.adapter != null && LogUtils.getShownInAdapter(view) == this.adapter)) {
                Object attachedObject = LogUtils.getAttachedObject(view);
                if (this.clazz.isInstance(attachedObject)) {
                    this.index++;
                    ObjectInfo<T> objectInfo = new ObjectInfo<>((NVObject) attachedObject, this.index);
                    setExtraMap(view, objectInfo);
                    setLocalMap(view, objectInfo);
                    list.add(objectInfo);
                    return true;
                }
            }
        }
        return false;
    }

    protected void setExtraMap(View view, ObjectInfo objectInfo) {
        Object tag = view.getTag(R.id._extra_map);
        if (tag instanceof HashMap) {
            objectInfo.setExtraInfo((HashMap) tag);
        }
    }

    protected void setLocalMap(View view, ObjectInfo objectInfo) {
        Object tag = view.getTag(R.id._local_map);
        if (tag instanceof HashMap) {
            objectInfo.setLocalHashMap((HashMap) tag);
        }
    }
}
