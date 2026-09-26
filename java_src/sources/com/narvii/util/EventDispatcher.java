package com.narvii.util;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class EventDispatcher<T> {
    private final ArrayList<WeakReference<T>> list = new ArrayList<>();
    private ArrayList<WeakReference<T>> reuse;

    public ArrayList<WeakReference<T>> getList() {
        return this.list;
    }

    private int getListenerSize() {
        Iterator<WeakReference<T>> it = this.list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (it.next().get() != null) {
                i10++;
            }
        }
        return i10;
    }

    public void clear() {
        this.list.clear();
    }

    boolean contains(T t5) {
        Iterator<WeakReference<T>> it = this.list.iterator();
        boolean z6 = false;
        while (it.hasNext()) {
            T t10 = it.next().get();
            if (t10 == null) {
                it.remove();
            } else if (t10 == t5) {
                z6 = true;
            }
        }
        return z6;
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
                T t5 = it.next().get();
                if (t5 == null) {
                    it.remove();
                } else {
                    callback.call(t5);
                }
            }
        } finally {
            arrayList.clear();
            this.reuse = arrayList;
        }
    }

    public void removeListener(T t5) {
        Iterator<WeakReference<T>> it = this.list.iterator();
        while (it.hasNext()) {
            T t10 = it.next().get();
            if (t10 == null) {
                it.remove();
            } else if (t10 == t5) {
                it.remove();
            }
        }
    }

    public void safeDispatch(final Callback<T> callback) {
        dispatch(new Callback<T>() { // from class: com.narvii.util.EventDispatcher.1
            @Override // com.narvii.util.Callback
            public void call(T t5) {
                try {
                    callback.call(t5);
                } catch (Exception e) {
                    Log.e("error when dispatch event", e);
                }
            }
        });
    }

    public void addListener(T t5) {
        if (!contains(t5)) {
            this.list.add(new WeakReference<>(t5));
        }
    }

    public boolean isEmpty() {
        if (getListenerSize() == 0) {
            return true;
        }
        return false;
    }
}
