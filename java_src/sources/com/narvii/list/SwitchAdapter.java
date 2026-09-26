package com.narvii.list;

import android.os.Bundle;
import android.widget.ListAdapter;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes8.dex */
public class SwitchAdapter extends ProxyAdapter {
    private final HashSet<ListAdapter> attaches;
    private int index;
    private boolean isAttached;
    private final ArrayList<ListAdapter> pieces;

    public int getAdapterIndex() {
        return this.index;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        this.isAttached = true;
        if (this.index < this.pieces.size()) {
            this.attaches.add(this.pieces.get(this.index));
        }
        for (ListAdapter listAdapter : this.attaches) {
            if (listAdapter instanceof NVAdapter) {
                ((NVAdapter) listAdapter).onAttach();
            }
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

    private String piecesHash() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.pieces.size());
        for (int i10 = 0; i10 < this.pieces.size(); i10++) {
            ListAdapter listAdapter = this.pieces.get(i10);
            sb.append(';');
            sb.append(listAdapter.getClass().getName());
        }
        return sb.toString();
    }

    public void addAdapter(ListAdapter listAdapter, boolean z6) {
        this.pieces.add(listAdapter);
        if (!z6) {
            this.attaches.add(listAdapter);
            if (this.isAttached && (listAdapter instanceof NVAdapter)) {
                ((NVAdapter) listAdapter).onAttach();
            }
        }
        if (this.pieces.size() == 1) {
            setAdapter(0);
        }
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        int i11 = 0;
        int viewTypeCount = 0;
        for (ListAdapter listAdapter : this.pieces) {
            int i12 = i11 + 1;
            if (this.index == i11) {
                int itemViewType = listAdapter.getItemViewType(i10);
                if (itemViewType < 0) {
                    return -1;
                }
                return itemViewType + viewTypeCount;
            }
            viewTypeCount += listAdapter.getViewTypeCount();
            i11 = i12;
        }
        return -1;
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

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public void onDetach() {
        for (ListAdapter listAdapter : this.attaches) {
            if (listAdapter instanceof NVAdapter) {
                ((NVAdapter) listAdapter).onDetach();
            }
        }
        this.isAttached = false;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putString("piecesHash", piecesHash());
        bundle.putInt("index", this.index);
        for (int i10 = 0; i10 < this.pieces.size(); i10++) {
            ListAdapter listAdapter = this.pieces.get(i10);
            if (listAdapter instanceof NVAdapter) {
                bundle.putBundle("adapter" + i10, ((NVAdapter) listAdapter).onSaveInstanceState());
            }
        }
        return bundle;
    }

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
        for (int i10 = 0; i10 < this.pieces.size(); i10++) {
            ListAdapter listAdapter = this.pieces.get(i10);
            if (listAdapter instanceof NVAdapter) {
                Bundle bundle2 = bundle.getBundle("adapter" + i10);
                if (bundle2 != null) {
                    ((NVAdapter) listAdapter).onRestoreInstanceState(bundle2);
                }
            }
        }
        setAdapter(bundle.getInt("index"));
    }

    public void setAdapter(int i10) {
        setAdapter(this.pieces.get(i10));
    }
}
