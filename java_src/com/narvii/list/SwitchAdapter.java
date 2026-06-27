package com.narvii.list;

import android.os.Bundle;
import android.widget.ListAdapter;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class SwitchAdapter extends ProxyAdapter {
    private final HashSet<ListAdapter> attaches;
    private int index;
    private boolean isAttached;
    private final ArrayList<ListAdapter> pieces;

    public SwitchAdapter(NVContext nVContext) {
        super(nVContext);
        this.pieces = new ArrayList<>();
        this.attaches = new HashSet<>();
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        String strPiecesHash = piecesHash();
        String string = bundle.getString("piecesHash");
        if (!strPiecesHash.equals(string)) {
            Log.e("switch adapter cannot restore instance state: pieces doesn't match (" + strPiecesHash + " != " + string + ")");
        }
        for (int i = 0; i < this.pieces.size(); i++) {
            ListAdapter listAdapter = this.pieces.get(i);
            if (listAdapter instanceof NVAdapter) {
                Bundle bundle2 = bundle.getBundle("adapter" + i);
                if (bundle2 != null) {
                    ((NVAdapter) listAdapter).onRestoreInstanceState(bundle2);
                }
            }
        }
        setAdapter(bundle.getInt("index"));
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putString("piecesHash", piecesHash());
        bundle.putInt("index", this.index);
        for (int i = 0; i < this.pieces.size(); i++) {
            ListAdapter listAdapter = this.pieces.get(i);
            if (listAdapter instanceof NVAdapter) {
                bundle.putBundle("adapter" + i, ((NVAdapter) listAdapter).onSaveInstanceState());
            }
        }
        return bundle;
    }

    private String piecesHash() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.pieces.size());
        for (int i = 0; i < this.pieces.size(); i++) {
            ListAdapter listAdapter = this.pieces.get(i);
            sb.append(';');
            sb.append(listAdapter.getClass().getName());
        }
        return sb.toString();
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        this.isAttached = true;
        if (this.index < this.pieces.size()) {
            this.attaches.add(this.pieces.get(this.index));
        }
        Iterator<ListAdapter> it = this.attaches.iterator();
        while (it.hasNext()) {
            ListAdapter next = it.next();
            if (next instanceof NVAdapter) {
                ((NVAdapter) next).onAttach();
            }
        }
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public void onDetach() {
        Iterator<ListAdapter> it = this.attaches.iterator();
        while (it.hasNext()) {
            ListAdapter next = it.next();
            if (next instanceof NVAdapter) {
                ((NVAdapter) next).onDetach();
            }
        }
        this.isAttached = false;
    }

    public void addAdapter(ListAdapter listAdapter, boolean z) {
        this.pieces.add(listAdapter);
        if (!z) {
            this.attaches.add(listAdapter);
            if (this.isAttached && (listAdapter instanceof NVAdapter)) {
                ((NVAdapter) listAdapter).onAttach();
            }
        }
        if (this.pieces.size() == 1) {
            setAdapter(0);
        }
    }

    @Override // com.narvii.list.ProxyAdapter
    public void setAdapter(ListAdapter listAdapter) {
        int iIndexOf = this.pieces.indexOf(listAdapter);
        if (iIndexOf < 0) {
            throw new IllegalStateException();
        }
        this.index = iIndexOf;
        if (this.isAttached && !this.attaches.contains(listAdapter)) {
            this.attaches.add(listAdapter);
            if (listAdapter instanceof NVAdapter) {
                ((NVAdapter) listAdapter).onAttach();
            }
        }
        super.setAdapter(listAdapter);
    }

    public void setAdapter(int i) {
        setAdapter(this.pieces.get(i));
    }

    public int getAdapterIndex() {
        return this.index;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        Iterator<ListAdapter> it = this.pieces.iterator();
        int viewTypeCount = 0;
        while (it.hasNext()) {
            viewTypeCount += it.next().getViewTypeCount();
        }
        if (viewTypeCount == 0) {
            return 1;
        }
        return viewTypeCount;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        Iterator<ListAdapter> it = this.pieces.iterator();
        int i2 = 0;
        int viewTypeCount = 0;
        while (it.hasNext()) {
            ListAdapter next = it.next();
            int i3 = i2 + 1;
            if (this.index == i2) {
                int itemViewType = next.getItemViewType(i);
                if (itemViewType < 0) {
                    return -1;
                }
                return itemViewType + viewTypeCount;
            }
            viewTypeCount += next.getViewTypeCount();
            i2 = i3;
        }
        return -1;
    }
}
