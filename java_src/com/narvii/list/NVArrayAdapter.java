package com.narvii.list;

import android.os.Bundle;
import com.narvii.app.NVContext;
import com.narvii.util.JacksonUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class NVArrayAdapter<T> extends NVAdapter {
    private Class<T> clazz;
    private ArrayList<T> list;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // com.narvii.list.NVAdapter
    public boolean isListShown() {
        return true;
    }

    public NVArrayAdapter(NVContext nVContext, Class<T> cls) {
        this(nVContext, cls, null);
    }

    public NVArrayAdapter(NVContext nVContext, Class<T> cls, List<T> list) {
        super(nVContext);
        this.list = list == null ? new ArrayList<>() : new ArrayList<>(list);
        this.clazz = cls;
    }

    public void setList(ArrayList<T> arrayList) {
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        this.list = arrayList;
        notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        ArrayList<T> listAs = JacksonUtils.readListAs(bundle.getString("list"), this.clazz);
        if (listAs != null) {
            this.list = listAs;
        }
    }

    @Override // com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putString("list", JacksonUtils.safeWriteAsString(this.list));
        return bundleOnSaveInstanceState;
    }

    public void add(T t) {
        this.list.add(t);
        notifyDataSetChanged();
    }

    public void add(int i, T t) {
        this.list.add(i, t);
        notifyDataSetChanged();
    }

    public void addAll(Collection<? extends T> collection) {
        this.list.addAll(collection);
        notifyDataSetChanged();
    }

    public void addAll(T... tArr) {
        Collections.addAll(this.list, tArr);
        notifyDataSetChanged();
    }

    public void insert(T t, int i) {
        this.list.add(i, t);
        notifyDataSetChanged();
    }

    public void remove(T t) {
        this.list.remove(t);
        notifyDataSetChanged();
    }

    public void remove(int i) {
        if (i <= -1 || i >= this.list.size()) {
            return;
        }
        this.list.remove(i);
        notifyDataSetChanged();
    }

    public void clear() {
        this.list.clear();
        notifyDataSetChanged();
    }

    public void sort(Comparator<? super T> comparator) {
        Collections.sort(this.list, comparator);
        notifyDataSetChanged();
    }

    public List<T> getList() {
        return Collections.unmodifiableList(this.list);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.list.size();
    }

    @Override // android.widget.Adapter
    public T getItem(int i) {
        return this.list.get(i);
    }

    public int getPosition(T t) {
        return this.list.indexOf(t);
    }
}
