package com.narvii.pip;

import android.view.LayoutInflater;
import com.narvii.mediaeditor.databinding.FragmentPipEditorBinding;
import e8.l;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
/* synthetic */ class PipEditorFragment$binding$2 extends q implements l<LayoutInflater, FragmentPipEditorBinding> {
    public static final PipEditorFragment$binding$2 INSTANCE = new PipEditorFragment$binding$2();

    PipEditorFragment$binding$2() {
        super(1, FragmentPipEditorBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;)Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;", 0);
    }

    @Override // e8.l
    @NotNull
    public final FragmentPipEditorBinding invoke(@NotNull LayoutInflater p0) {
        t.j(p0, "p0");
        return FragmentPipEditorBinding.inflate(p0);
    }
}
