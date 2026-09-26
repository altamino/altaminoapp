package com.narvii.sharedfolder;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.date.DateSection;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.HoverAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public abstract class MyUploadsBaseFragment extends SharedBaseFragment implements HoverAdapter {
    protected SharedPhotosAdapter sharedPhotosAdapter;

    class UploadAdapter extends AdriftAdapter {
        public UploadAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null || view2.getId() != R.id.upload_layout) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            MyUploadsBaseFragment.this.addPhotos("My Uploads");
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_upload_more_photos, viewGroup, view);
            viewCreateView.findViewById(R.id.upload_layout).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean hoverChangeTitle() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        ArrayList listAs;
        SharedPhotosAdapter sharedPhotosAdapter;
        if (i11 == -1 && i10 == 100 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("selected"), String.class)) != null && (sharedPhotosAdapter = this.sharedPhotosAdapter) != null) {
            sharedPhotosAdapter.setSelectedIds(listAs);
        }
        super.onActivityResult(i10, i11, intent);
    }

    protected NVAdapter getPhotoAdapter(boolean z6) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.shared_photo_item_padding);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        SharedPhotosAdapter sharedPhotosAdapter = new SharedPhotosAdapter(this) { // from class: com.narvii.sharedfolder.MyUploadsBaseFragment.1
            @Override // com.narvii.sharedfolder.SharedPhotosAdapter
            protected boolean allowShowDisabledByAmino() {
                return true;
            }

            @Override // com.narvii.sharedfolder.SharedPhotosAdapter
            protected boolean allowShowNormalDisable() {
                return true;
            }

            @Override // com.narvii.sharedfolder.SharedPhotosAdapter
            protected boolean showNew() {
                return false;
            }

            @Override // com.narvii.sharedfolder.SharedPhotosAdapter
            protected String sourceType() {
                return "my-uploads";
            }
        };
        this.sharedPhotosAdapter = sharedPhotosAdapter;
        sharedPhotosAdapter.source = "My Uploads";
        if (z6) {
            sharedPhotosAdapter.setSelectable(true, new Callback<Intent>() { // from class: com.narvii.sharedfolder.MyUploadsBaseFragment.2
                public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivityForResult(p1, p5);
                }

                @Override // com.narvii.util.Callback
                public void call(Intent intent) {
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(MyUploadsBaseFragment.this, intent, 100);
                }
            });
        } else {
            sharedPhotosAdapter.setSelectable(false, null);
        }
        divideColumnAdapter.setAdapter(this.sharedPhotosAdapter, 3);
        return divideColumnAdapter;
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment
    protected String getTitle() {
        return getString(R.string.my_uploads);
    }

    @Override // com.narvii.list.HoverAdapter
    public boolean isHover(int i10) {
        ListAdapter listAdapter = getListAdapter();
        if (listAdapter == null) {
            return false;
        }
        return listAdapter.getItem(i10) instanceof DateSection;
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setHoverAdapter(this);
    }
}
