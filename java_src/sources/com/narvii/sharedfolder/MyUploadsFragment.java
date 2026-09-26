package com.narvii.sharedfolder;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.util.statistics.StatisticsService;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes8.dex */
public class MyUploadsFragment extends MyUploadsBaseFragment {
    public MergeAdapter mergeAdapter;

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
            public void onPhotosCountChanged(int i10) {
                FragmentActivity activity = MyUploadsFragment.this.getActivity();
                if (activity instanceof NVActivity) {
                    if (i10 == 0) {
                        ((NVActivity) activity).removeRightView();
                        return;
                    }
                    NVActivity nVActivity = (NVActivity) activity;
                    nVActivity.removeRightView();
                    nVActivity.setActionBarRightView(R.string.select, new View.OnClickListener() { // from class: com.narvii.sharedfolder.MyUploadsFragment.1.1
                        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                            if (p1 == null) {
                                return;
                            }
                            p0.startActivity(p1);
                        }

                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            Intent intent = FragmentWrapperActivity.intent(MyUploadsSelectFragment.class);
                            intent.putExtra("selectMode", "edit");
                            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(MyUploadsFragment.this, intent);
                            MyUploadsFragment.this.getActivity().overridePendingTransition(0, 0);
                        }
                    });
                }
            }
        });
        return this.mergeAdapter;
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("My Uploads Opened").userPropInc("My Uploads Opened Total");
        }
    }
}
