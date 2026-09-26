package com.narvii.video;

import android.content.DialogInterface;
import com.narvii.util.dialog.ProgressDialog;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class MediaTrimmingFragment$progress$2 extends kotlin.jvm.internal.v implements e8.a<ProgressDialog> {
    final /* synthetic */ MediaTrimmingFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaTrimmingFragment$progress$2(MediaTrimmingFragment mediaTrimmingFragment) {
        super(0);
        this.this$0 = mediaTrimmingFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ProgressDialog invoke() {
        ProgressDialog progressDialog = new ProgressDialog(this.this$0.getContext());
        final MediaTrimmingFragment mediaTrimmingFragment = this.this$0;
        progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.video.i0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MediaTrimmingFragment$progress$2.invoke$lambda$2(mediaTrimmingFragment, dialogInterface);
            }
        });
        return progressDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2(MediaTrimmingFragment this$0, DialogInterface dialogInterface) {
        boolean z6;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (this$0.getInProgressTaskCount() > 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        this$0.cancelled = z6;
        g7.d dVar = this$0.inProcessTrimTask;
        if (dVar != null) {
            this$0.getVideoManager().abort(dVar);
        }
        g7.d dVar2 = this$0.inProcessCoverImageTask;
        if (dVar2 != null) {
            this$0.getVideoManager().abort(dVar2);
        }
        if (!this$0.getTasksTouchDown()) {
            BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this$0, false, false, 2, null);
            this$0.setAutoPlaying(true);
        }
    }
}
