package com.narvii.sharedfolder;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class AddAlbumDialogCallback implements Callback<NVActivity> {
    List<String> fileIdList;

    @Override // com.narvii.util.Callback
    public void call(final NVActivity nVActivity) {
        if (CollectionUtils.isEmpty(this.fileIdList)) {
            return;
        }
        final AlertDialog.Builder builder = new AlertDialog.Builder(nVActivity);
        builder.setMessage(R.string.add_photos_to_album_confirm_message);
        builder.setNegativeButton(R.string.no, (DialogInterface.OnClickListener) null);
        builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.narvii.sharedfolder.AddAlbumDialogCallback.1
            public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                Intent intent = FragmentWrapperActivity.intent(SharedAlbumFragment.class);
                intent.putExtra("selectMode", SharedAlbumFragment.MODE_SINGLE_PICK_UPLOAD_PHOTO);
                intent.putExtra("fileIdList", JacksonUtils.writeAsString(AddAlbumDialogCallback.this.fileIdList));
                safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(nVActivity, intent);
            }
        });
        Utils.postDelayed(new Runnable() { // from class: com.narvii.sharedfolder.AddAlbumDialogCallback.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    builder.show();
                } catch (Exception unused) {
                }
            }
        }, 300L);
    }

    public AddAlbumDialogCallback(List<String> list) {
        this.fileIdList = list;
    }
}
