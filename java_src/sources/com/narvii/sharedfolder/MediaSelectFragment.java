package com.narvii.sharedfolder;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.media.MediaSelectItem;
import com.narvii.model.Media;
import com.narvii.util.JacksonUtils;
import com.narvii.util.ViewUtils;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TouchImageView;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes8.dex */
public class MediaSelectFragment extends NVFragment {
    MediaSelectItem item;

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.item = (MediaSelectItem) JacksonUtils.readAs(getStringParam("item"), (Class) getActivity().getIntent().getSerializableExtra("class"));
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_media_select_shared_photo, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        boolean z6;
        super.onViewCreated(view, bundle);
        if (this.item == null) {
            return;
        }
        final TouchImageView touchImageView = (TouchImageView) view.findViewById(R.id.image);
        touchImageView.setImageMedia(this.item.getSelectMedia());
        final ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.image_loading);
        boolean z10 = false;
        if (touchImageView.getStatus() == 1) {
            if (touchImageView.getStatus() == 1) {
                z6 = true;
            } else {
                z6 = false;
            }
            ViewUtils.show(progressBar, z6);
            touchImageView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.sharedfolder.MediaSelectFragment.1
                @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
                    ViewUtils.show(progressBar, touchImageView.getStatus() == 1);
                }
            });
        }
        touchImageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.sharedfolder.MediaSelectFragment.2
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MediaSelectItem mediaSelectItem = MediaSelectFragment.this.item;
                if (mediaSelectItem == null || mediaSelectItem.getSelectMedia() == null || !MediaSelectFragment.this.item.getSelectMedia().isVideo()) {
                    return;
                }
                MediaSelectFragment mediaSelectFragment = MediaSelectFragment.this;
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(mediaSelectFragment, NVFullScreenVideoActivity.intent(mediaSelectFragment.item.getSelectMedia()));
            }
        });
        MediaSelectItem mediaSelectItem = this.item;
        if (mediaSelectItem != null && mediaSelectItem.getSelectMedia() != null && this.item.getSelectMedia().isImage()) {
            z10 = true;
        }
        touchImageView.setZoomEnabled(z10);
    }
}
