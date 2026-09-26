package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes2.dex */
abstract class m<S> extends Fragment {
    protected final LinkedHashSet<l<S>> onSelectionChangedListeners = new LinkedHashSet<>();

    boolean f(l<S> lVar) {
        return this.onSelectionChangedListeners.add(lVar);
    }

    void g() {
        this.onSelectionChangedListeners.clear();
    }

    m() {
    }
}
