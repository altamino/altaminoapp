package com.narvii.sharedfolder;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes3.dex */
public class AddAlbumDialogCallback implements Callback<NVActivity> {
    List<String> fileIdList;

    public AddAlbumDialogCallback(List<String> list) {
        this.fileIdList = list;
    }

    @Override // com.narvii.util.Callback
    public void call(final NVActivity nVActivity) {
        if (CollectionUtils.isEmpty(this.fileIdList)) {
            return;
        }
        final AlertDialog.Builder builder = new AlertDialog.Builder(nVActivity);
        builder.setMessage(R.string.add_photos_to_album_confirm_message);
        builder.setNegativeButton(R.string.no, (DialogInterface.OnClickListener) null);
        builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.narvii.sharedfolder.AddAlbumDialogCallback.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = FragmentWrapperActivity.intent(SharedAlbumFragment.class);
                intent.putExtra("selectMode", SharedAlbumFragment.MODE_SINGLE_PICK_UPLOAD_PHOTO);
                intent.putExtra("fileIdList", JacksonUtils.writeAsString(AddAlbumDialogCallback.this.fileIdList));
                nVActivity.startActivity(intent);
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
}
