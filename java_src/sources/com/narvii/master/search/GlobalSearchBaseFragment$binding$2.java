package com.narvii.master.search;

import android.view.LayoutInflater;
import com.narvii.amino.databinding.FragmentSearchBaseBinding;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
/* synthetic */ class GlobalSearchBaseFragment$binding$2 extends q implements e8.l<LayoutInflater, FragmentSearchBaseBinding> {
    public static final GlobalSearchBaseFragment$binding$2 INSTANCE = new GlobalSearchBaseFragment$binding$2();

    GlobalSearchBaseFragment$binding$2() {
        super(1, FragmentSearchBaseBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentSearchBaseBinding;", 0);
    }

    @Override // e8.l
    @NotNull
    public final FragmentSearchBaseBinding invoke(@NotNull LayoutInflater p0) {
        t.j(p0, "p0");
        return FragmentSearchBaseBinding.inflate(p0);
    }
}
