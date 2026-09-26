package com.narvii.sharedfolder;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.SharedAlbum;
import com.narvii.util.JacksonUtils;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes9.dex */
public class SharedAlbumTagView extends TextView {
    SharedAlbum sharedAlbum;
    SharedPhotoColorHelper sharedPhotoColorHelper;

    public void setAlbum(SharedAlbum sharedAlbum) {
        if (sharedAlbum == null) {
            return;
        }
        this.sharedAlbum = sharedAlbum;
        setText(sharedAlbum.getTitle(getContext()));
        setBackgroundDrawable(this.sharedPhotoColorHelper.getTagBackground(getContext(), sharedAlbum));
    }

    public SharedAlbumTagView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setSingleLine(true);
        this.sharedPhotoColorHelper = new SharedPhotoColorHelper(getContext());
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.sharedfolder.SharedAlbumTagView.1
            public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = FragmentWrapperActivity.intent(SharedAlbumDetailFragment.class);
                intent.putExtra("id", SharedAlbumTagView.this.sharedAlbum.id());
                intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(SharedAlbumTagView.this.sharedAlbum));
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Shared Folder Media Tag");
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(SharedAlbumTagView.this.getContext(), intent);
            }
        });
    }
}
