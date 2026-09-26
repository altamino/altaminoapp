package com.narvii.list;

import android.os.Bundle;
import com.narvii.app.NVContext;
import com.narvii.util.JacksonUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public abstract class NVArrayAdapter<T> extends NVAdapter {
    private Class<T> clazz;
    private ArrayList<T> list;

    public NVArrayAdapter(NVContext nVContext, Class<T> cls) {
        this(nVContext, cls, null);
    }

    public void add(T t5) {
        this.list.add(t5);
        notifyDataSetChanged();
    }

    public void addAll(Collection<? extends T> collection) {
        this.list.addAll(collection);
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // com.narvii.list.NVAdapter
    public boolean isListShown() {
        return true;
    }

    public void remove(T t5) {
        this.list.remove(t5);
        notifyDataSetChanged();
    }

    public NVArrayAdapter(NVContext nVContext, Class<T> cls, List<T> list) {
        super(nVContext);
        this.list = list == null ? new ArrayList<>() : new ArrayList<>(list);
        this.clazz = cls;
    }

    public void clear() {
        this.list.clear();
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.list.size();
    }

    @Override // android.widget.Adapter
    public T getItem(int i10) {
        return this.list.get(i10);
    }

    public List<T> getList() {
        return Collections.unmodifiableList(this.list);
    }

    public int getPosition(T t5) {
        return this.list.indexOf(t5);
    }

    public void insert(T t5, int i10) {
        this.list.add(i10, t5);
        notifyDataSetChanged();
    }

    public void setList(ArrayList<T> arrayList) {
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        this.list = arrayList;
        notifyDataSetChanged();
    }

    public void sort(Comparator<? super T> comparator) {
        Collections.sort(this.list, comparator);
        notifyDataSetChanged();
    }

    public void add(int i10, T t5) {
        this.list.add(i10, t5);
        notifyDataSetChanged();
    }

    public void addAll(T... tArr) {
        Collections.addAll(this.list, tArr);
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

    public void remove(int i10) {
        if (i10 <= -1 || i10 >= this.list.size()) {
            return;
        }
        this.list.remove(i10);
        notifyDataSetChanged();
    }
}
