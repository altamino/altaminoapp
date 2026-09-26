package com.narvii.pre_editing;

import android.content.DialogInterface;
import com.narvii.model.Media;
import com.narvii.util.dialog.ProgressDialog;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class MediaPreEditingActivity$dialog$2 extends v implements e8.a<ProgressDialog> {
    final /* synthetic */ MediaPreEditingActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaPreEditingActivity$dialog$2(MediaPreEditingActivity mediaPreEditingActivity) {
        super(0);
        this.this$0 = mediaPreEditingActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(MediaPreEditingActivity this$0, DialogInterface dialogInterface) {
        t.j(this$0, "this$0");
        Media media = this$0.inputMedia;
        if (media == null) {
            t.B("inputMedia");
            media = null;
        }
        long j6 = media.duration;
        if (1 > j6 || j6 >= 61000) {
            this$0.trimVideoGenerator.cancel();
        } else {
            this$0.finish();
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ProgressDialog invoke() {
        ProgressDialog progressDialog = new ProgressDialog(this.this$0.getContext());
        final MediaPreEditingActivity mediaPreEditingActivity = this.this$0;
        progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.pre_editing.b
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MediaPreEditingActivity$dialog$2.invoke$lambda$0(mediaPreEditingActivity, dialogInterface);
            }
        });
        return progressDialog;
    }
}
