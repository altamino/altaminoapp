package com.narvii.sharedfolder;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.sharedfolder.MyUploadsBaseFragment;
import com.narvii.sharedfolder.SharedPhotosAdapter;

/* loaded from: classes3.dex */
public class MyUploadsFragment extends MyUploadsBaseFragment {
    public MergeAdapter mergeAdapter;

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        this.mergeAdapter.addAdapter(staticViewAdapter);
        this.mergeAdapter.addAdapter(new MyUploadsBaseFragment.UploadAdapter(this));
        this.mergeAdapter.addAdapter(getPhotoAdapter(false), true);
        this.sharedPhotosAdapter.setOnPhotosCountChangeListener(new SharedPhotosAdapter.OnPhotosCountChangeListener() { // from class: com.narvii.sharedfolder.MyUploadsFragment.1
            @Override // com.narvii.sharedfolder.SharedPhotosAdapter.OnPhotosCountChangeListener
            public void onPhotosCountChanged(int i) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
                FragmentActivity activity = MyUploadsFragment.this.getActivity();
                if (activity instanceof NVActivity) {
                    if (i == 0) {
                        ((NVActivity) activity).removeRightView();
                        return;
                    }
                    NVActivity nVActivity = (NVActivity) activity;
                    nVActivity.removeRightView();
                    nVActivity.setActionBarRightView(R.string.select, new View.OnClickListener() { // from class: com.narvii.sharedfolder.MyUploadsFragment.1.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            Intent intent = FragmentWrapperActivity.intent(MyUploadsSelectFragment.class);
                            intent.putExtra("selectMode", "edit");
                            MyUploadsFragment.this.startActivity(intent);
                            MyUploadsFragment.this.getActivity().overridePendingTransition(0, 0);
                        }
                    });
                }
            }
        });
        return this.mergeAdapter;
    }
}
