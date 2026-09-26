package com.narvii.scene.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import com.narvii.mediaeditor.R;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class SceneAttachDataDialog extends Dialog implements View.OnClickListener {

    @NotNull
    private final View layoutNewPoll;

    @NotNull
    private final View layoutNewQuiz;

    @Nullable
    private OnItemClickListener onItemClickListener;

    public interface OnItemClickListener {
        void onNewPoll(@NotNull View view);

        void onNewQuiz(@NotNull View view);
    }

    @Nullable
    public final OnItemClickListener getOnItemClickListener() {
        return this.onItemClickListener;
    }

    public final void setOnItemClickListener(@Nullable OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SceneAttachDataDialog(@NotNull Context context) {
        super(context, R.style.CustomDialog);
        t.j(context, "context");
        setContentView(R.layout.dialog_add_attach_data);
        View viewFindViewById = findViewById(R.id.layout_new_poll);
        t.i(viewFindViewById, "findViewById(...)");
        this.layoutNewPoll = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.layout_new_quiz);
        t.i(viewFindViewById2, "findViewById(...)");
        this.layoutNewQuiz = viewFindViewById2;
        viewFindViewById.setOnClickListener(this);
        viewFindViewById2.setOnClickListener(this);
        findViewById(R.id.iv_delete).setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i10 = R.id.layout_new_poll;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            OnItemClickListener onItemClickListener = this.onItemClickListener;
            if (onItemClickListener != null) {
                onItemClickListener.onNewPoll(view);
            }
            dismiss();
            return;
        }
        int i11 = R.id.layout_new_quiz;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            OnItemClickListener onItemClickListener2 = this.onItemClickListener;
            if (onItemClickListener2 != null) {
                onItemClickListener2.onNewQuiz(view);
            }
            dismiss();
            return;
        }
        int i12 = R.id.iv_delete;
        if (numValueOf != null && numValueOf.intValue() == i12) {
            dismiss();
        }
    }
}
