package com.narvii.sharedfolder;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.date.DateSection;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.HoverAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class MyUploadsBaseFragment extends SharedBaseFragment implements HoverAdapter {
    protected SharedPhotosAdapter sharedPhotosAdapter;

    @Override // com.narvii.list.NVListFragment
    protected boolean hoverChangeTitle() {
        return true;
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment
    protected String getTitle() {
        return getString(R.string.my_uploads);
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setHoverAdapter(this);
    }

    @Override // com.narvii.list.HoverAdapter
    public boolean isHover(int i) {
        ListAdapter listAdapter = getListAdapter();
        if (listAdapter == null) {
            return false;
        }
        return listAdapter.getItem(i) instanceof DateSection;
    }

    protected NVAdapter getPhotoAdapter(boolean z) throws Resources.NotFoundException {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.shared_photo_item_padding);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        this.sharedPhotosAdapter = new SharedPhotosAdapter(this) { // from class: com.narvii.sharedfolder.MyUploadsBaseFragment.1
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
        SharedPhotosAdapter sharedPhotosAdapter = this.sharedPhotosAdapter;
        sharedPhotosAdapter.source = "My Uploads";
        if (z) {
            sharedPhotosAdapter.setSelectable(true, new Callback<Intent>() { // from class: com.narvii.sharedfolder.MyUploadsBaseFragment.2
                @Override // com.narvii.util.Callback
                public void call(Intent intent) {
                    MyUploadsBaseFragment.this.startActivityForResult(intent, 100);
                }
            });
        } else {
            sharedPhotosAdapter.setSelectable(false, null);
        }
        divideColumnAdapter.setAdapter(this.sharedPhotosAdapter, 3);
        return divideColumnAdapter;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        ArrayList listAs;
        SharedPhotosAdapter sharedPhotosAdapter;
        if (i2 == -1 && i == 100 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("selected"), String.class)) != null && (sharedPhotosAdapter = this.sharedPhotosAdapter) != null) {
            sharedPhotosAdapter.setSelectedIds(listAs);
        }
        super.onActivityResult(i, i2, intent);
    }

    class UploadAdapter extends AdriftAdapter {
        public UploadAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_upload_more_photos, viewGroup, view);
            viewCreateView.findViewById(R.id.upload_layout).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.upload_layout) {
                MyUploadsBaseFragment.this.addPhotos("My Uploads");
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
