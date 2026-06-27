package com.narvii.sharedfolder;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.media.MediaSelectItem;
import com.narvii.model.Media;
import com.narvii.util.JacksonUtils;
import com.narvii.util.ViewUtils;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TouchImageView;

/* loaded from: classes3.dex */
public class MediaSelectFragment extends NVFragment {
    MediaSelectItem item;

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.item = (MediaSelectItem) JacksonUtils.readAs(getStringParam("item"), (Class) getActivity().getIntent().getSerializableExtra("class"));
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_media_select_shared_photo, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.item == null) {
            return;
        }
        final TouchImageView touchImageView = (TouchImageView) view.findViewById(R.id.image);
        touchImageView.setImageMedia(this.item.getSelectMedia());
        final ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.image_loading);
        boolean z = false;
        if (touchImageView.getStatus() == 1) {
            ViewUtils.show(progressBar, touchImageView.getStatus() == 1);
            touchImageView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.sharedfolder.MediaSelectFragment.1
                @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                public void onImageChanged(NVImageView nVImageView, int i, Media media) {
                    ViewUtils.show(progressBar, touchImageView.getStatus() == 1);
                }
            });
        }
        touchImageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.sharedfolder.MediaSelectFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MediaSelectItem mediaSelectItem = MediaSelectFragment.this.item;
                if (mediaSelectItem == null || mediaSelectItem.getSelectMedia() == null || !MediaSelectFragment.this.item.getSelectMedia().isVideo()) {
                    return;
                }
                MediaSelectFragment mediaSelectFragment = MediaSelectFragment.this;
                mediaSelectFragment.startActivity(NVFullScreenVideoActivity.intent(mediaSelectFragment.item.getSelectMedia()));
            }
        });
        if (touchImageView instanceof TouchImageView) {
            MediaSelectItem mediaSelectItem = this.item;
            if (mediaSelectItem != null && mediaSelectItem.getSelectMedia() != null && this.item.getSelectMedia().isImage()) {
                z = true;
            }
            touchImageView.setZoomEnabled(z);
        }
    }
}
