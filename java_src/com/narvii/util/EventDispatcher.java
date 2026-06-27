package com.narvii.util;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class EventDispatcher<T> {
    private final ArrayList<WeakReference<T>> list = new ArrayList<>();
    private ArrayList<WeakReference<T>> reuse;

    boolean contains(T t) {
        Iterator<WeakReference<T>> it = this.list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            T t2 = it.next().get();
            if (t2 == null) {
                it.remove();
            } else if (t2 == t) {
                z = true;
            }
        }
        return z;
    }

    public boolean isEmpty() {
        return getListenerSize() == 0;
    }

    private int getListenerSize() {
        Iterator<WeakReference<T>> it = this.list.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().get() != null) {
                i++;
            }
        }
        return i;
    }

    public void addListener(T t) {
        if (contains(t)) {
            return;
        }
        this.list.add(new WeakReference<>(t));
    }

    public void removeListener(T t) {
        Iterator<WeakReference<T>> it = this.list.iterator();
        while (it.hasNext()) {
            T t2 = it.next().get();
            if (t2 == null) {
                it.remove();
            } else if (t2 == t) {
                it.remove();
            }
        }
    }

    public void clear() {
        this.list.clear();
    }

    public void dispatch(Callback<T> callback) {
        if (this.list.isEmpty()) {
            return;
        }
        ArrayList<WeakReference<T>> arrayList = this.reuse;
        this.reuse = null;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        } else {
            arrayList.clear();
        }
        arrayList.addAll(this.list);
        try {
            Iterator<WeakReference<T>> it = arrayList.iterator();
            while (it.hasNext()) {
                T t = it.next().get();
                if (t == null) {
                    it.remove();
                } else {
                    callback.call(t);
                }
            }
        } finally {
            arrayList.clear();
            this.reuse = arrayList;
        }
    }

    public void safeDispatch(final Callback<T> callback) {
        dispatch(new Callback<T>() { // from class: com.narvii.util.EventDispatcher.1
            @Override // com.narvii.util.Callback
            public void call(T t) {
                try {
                    callback.call(t);
                } catch (Exception e) {
                    Log.e("error when dispatch event", e);
                }
            }
        });
    }

    public ArrayList<WeakReference<T>> getList() {
        return this.list;
    }
}
