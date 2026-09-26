package com.google.android.material.internal;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import com.google.android.material.internal.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
@UiThread
public class a<T extends i<T>> {
    private final Map<Integer, T> checkables = new HashMap();
    private final Set<Integer> checkedIds = new HashSet();
    private b onCheckedStateChangeListener;
    private boolean selectionRequired;
    private boolean singleSelection;

    /* JADX INFO: renamed from: com.google.android.material.internal.a$a, reason: collision with other inner class name */
    class C0203a implements i.a<T> {
        C0203a() {
        }

        @Override // com.google.android.material.internal.i.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(T t5, boolean z6) {
            if (!z6) {
                a aVar = a.this;
                if (!aVar.r(t5, aVar.selectionRequired)) {
                    return;
                }
            } else if (!a.this.g(t5)) {
                return;
            }
            a.this.m();
        }
    }

    public interface b {
        void a(@NonNull Set<Integer> set);
    }

    public boolean l() {
        return this.singleSelection;
    }

    public void n(T t5) {
        t5.setInternalOnCheckedChangeListener(null);
        this.checkables.remove(Integer.valueOf(t5.getId()));
        this.checkedIds.remove(Integer.valueOf(t5.getId()));
    }

    public void o(@Nullable b bVar) {
        this.onCheckedStateChangeListener = bVar;
    }

    public void p(boolean z6) {
        this.selectionRequired = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        b bVar = this.onCheckedStateChangeListener;
        if (bVar != null) {
            bVar.a(i());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void e(T t5) {
        this.checkables.put(Integer.valueOf(t5.getId()), t5);
        if (t5.isChecked()) {
            g(t5);
        }
        t5.setInternalOnCheckedChangeListener(new C0203a());
    }

    public void f(@IdRes int i10) {
        T t5 = this.checkables.get(Integer.valueOf(i10));
        if (t5 != null && g(t5)) {
            m();
        }
    }

    public void h() {
        boolean z6 = !this.checkedIds.isEmpty();
        Iterator<T> it = this.checkables.values().iterator();
        while (it.hasNext()) {
            r(it.next(), false);
        }
        if (z6) {
            m();
        }
    }

    @NonNull
    public Set<Integer> i() {
        return new HashSet(this.checkedIds);
    }

    @IdRes
    public int k() {
        if (!this.singleSelection || this.checkedIds.isEmpty()) {
            return -1;
        }
        return this.checkedIds.iterator().next().intValue();
    }

    public void q(boolean z6) {
        if (this.singleSelection != z6) {
            this.singleSelection = z6;
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(@NonNull i<T> iVar) {
        int id = iVar.getId();
        if (this.checkedIds.contains(Integer.valueOf(id))) {
            return false;
        }
        T t5 = this.checkables.get(Integer.valueOf(k()));
        if (t5 != null) {
            r(t5, false);
        }
        boolean zAdd = this.checkedIds.add(Integer.valueOf(id));
        if (!iVar.isChecked()) {
            iVar.setChecked(true);
        }
        return zAdd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r(@NonNull i<T> iVar, boolean z6) {
        int id = iVar.getId();
        if (!this.checkedIds.contains(Integer.valueOf(id))) {
            return false;
        }
        if (z6 && this.checkedIds.size() == 1 && this.checkedIds.contains(Integer.valueOf(id))) {
            iVar.setChecked(true);
            return false;
        }
        boolean zRemove = this.checkedIds.remove(Integer.valueOf(id));
        if (iVar.isChecked()) {
            iVar.setChecked(false);
        }
        return zRemove;
    }

    @NonNull
    public List<Integer> j(@NonNull ViewGroup viewGroup) {
        Set<Integer> setI = i();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof i) && setI.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }
}
