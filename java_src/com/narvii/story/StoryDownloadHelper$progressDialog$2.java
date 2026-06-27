package com.narvii.story;

import android.content.Context;
import android.content.DialogInterface;
import com.narvii.amino.mastes.R;
import com.narvii.scene.view.ProgressRingDialog;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: StoryDownloadHelper.kt */
/* loaded from: classes3.dex */
final class StoryDownloadHelper$progressDialog$2 extends Lambda implements Function0<ProgressRingDialog> {
    final /* synthetic */ StoryDownloadHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StoryDownloadHelper$progressDialog$2(StoryDownloadHelper storyDownloadHelper) {
        super(0);
        this.this$0 = storyDownloadHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ProgressRingDialog invoke() {
        Context context = this.this$0.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        ProgressRingDialog progressRingDialog = new ProgressRingDialog(context);
        progressRingDialog.setPromptTitle(R.string.downloading);
        progressRingDialog.setPromptText("");
        progressRingDialog.setCancelable(true);
        progressRingDialog.setCanceledOnTouchOutside(true);
        progressRingDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.story.StoryDownloadHelper$progressDialog$2$$special$$inlined$apply$lambda$1
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.this$0.this$0.cancel();
            }
        });
        return progressRingDialog;
    }
}
