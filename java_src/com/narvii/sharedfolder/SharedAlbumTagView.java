package com.narvii.sharedfolder;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.SharedAlbum;
import com.narvii.util.JacksonUtils;

/* loaded from: classes3.dex */
public class SharedAlbumTagView extends TextView {
    SharedAlbum sharedAlbum;
    SharedPhotoColorHelper sharedPhotoColorHelper;

    public SharedAlbumTagView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setSingleLine(true);
        this.sharedPhotoColorHelper = new SharedPhotoColorHelper(getContext());
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.sharedfolder.SharedAlbumTagView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = FragmentWrapperActivity.intent(SharedAlbumDetailFragment.class);
                intent.putExtra("id", SharedAlbumTagView.this.sharedAlbum.id());
                intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(SharedAlbumTagView.this.sharedAlbum));
                intent.putExtra("Source", "Shared Folder Media Tag");
                SharedAlbumTagView.this.getContext().startActivity(intent);
            }
        });
    }

    public void setAlbum(SharedAlbum sharedAlbum) {
        if (sharedAlbum == null) {
            return;
        }
        this.sharedAlbum = sharedAlbum;
        setText(sharedAlbum.getTitle(getContext()));
        setBackgroundDrawable(this.sharedPhotoColorHelper.getTagBackground(getContext(), sharedAlbum));
    }
}
