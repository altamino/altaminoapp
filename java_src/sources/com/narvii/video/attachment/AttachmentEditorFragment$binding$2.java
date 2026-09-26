package com.narvii.video.attachment;

import android.view.LayoutInflater;
import com.narvii.mediaeditor.databinding.FragmentAttachmentEditorBinding;
import e8.l;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class AttachmentEditorFragment$binding$2 extends q implements l<LayoutInflater, FragmentAttachmentEditorBinding> {
    public static final AttachmentEditorFragment$binding$2 INSTANCE = new AttachmentEditorFragment$binding$2();

    AttachmentEditorFragment$binding$2() {
        super(1, FragmentAttachmentEditorBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;)Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;", 0);
    }

    @Override // e8.l
    @NotNull
    public final FragmentAttachmentEditorBinding invoke(@NotNull LayoutInflater p0) {
        t.j(p0, "p0");
        return FragmentAttachmentEditorBinding.inflate(p0);
    }
}
