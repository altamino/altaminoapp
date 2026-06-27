package com.narvii.scene.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import com.narvii.mediaeditor.R;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SceneAttachDataDialog.kt */
/* loaded from: classes3.dex */
public final class SceneAttachDataDialog extends Dialog implements View.OnClickListener {
    private final View layoutNewPoll;
    private final View layoutNewQuiz;
    private OnItemClickListener onItemClickListener;

    /* compiled from: SceneAttachDataDialog.kt */
    public interface OnItemClickListener {
        void onNewPoll(View view);

        void onNewQuiz(View view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SceneAttachDataDialog(Context context) {
        super(context, R.style.CustomDialog);
        Intrinsics.checkParameterIsNotNull(context, "context");
        setContentView(R.layout.dialog_add_attach_data);
        View viewFindViewById = findViewById(R.id.layout_new_poll);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.layout_new_poll)");
        this.layoutNewPoll = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.layout_new_quiz);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.layout_new_quiz)");
        this.layoutNewQuiz = viewFindViewById2;
        this.layoutNewPoll.setOnClickListener(this);
        this.layoutNewQuiz.setOnClickListener(this);
        findViewById(R.id.iv_delete).setOnClickListener(this);
    }

    public final OnItemClickListener getOnItemClickListener() {
        return this.onItemClickListener;
    }

    public final void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i = R.id.layout_new_poll;
        if (numValueOf != null && numValueOf.intValue() == i) {
            OnItemClickListener onItemClickListener = this.onItemClickListener;
            if (onItemClickListener != null) {
                onItemClickListener.onNewPoll(view);
            }
            dismiss();
            return;
        }
        int i2 = R.id.layout_new_quiz;
        if (numValueOf != null && numValueOf.intValue() == i2) {
            OnItemClickListener onItemClickListener2 = this.onItemClickListener;
            if (onItemClickListener2 != null) {
                onItemClickListener2.onNewQuiz(view);
            }
            dismiss();
            return;
        }
        int i3 = R.id.iv_delete;
        if (numValueOf != null && numValueOf.intValue() == i3) {
            dismiss();
        }
    }
}
