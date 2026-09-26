package com.narvii.sharedfolder;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.NVObject;
import com.narvii.model.SharedFile;
import com.narvii.notification.Notification;
import com.narvii.util.ViewUtils;

/* JADX INFO: loaded from: classes9.dex */
public class DisabledSharedPhotosFragment extends NVListFragment {

    class Adapter extends SharedPhotosAdapter {
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
            return "disabled";
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.sharedfolder.SharedPhotosAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if ((obj instanceof SharedFile) && ((SharedFile) obj).isDisabledByAmino()) {
                return true;
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.sharedfolder.SharedPhotosAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if (notification.action.equals("update")) {
                Object obj = notification.obj;
                if ((obj instanceof NVObject) && ((NVObject) obj).status() == 0) {
                    notification.action = "delete";
                    super.onNotification(notification);
                }
            }
        }

        @Override // com.narvii.sharedfolder.SharedPhotosAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            boolean z6;
            View itemView = super.getItemView(obj, view, viewGroup);
            if (obj instanceof SharedFile) {
                SharedFile sharedFile = (SharedFile) obj;
                ViewUtils.show(itemView.findViewById(R.id.disabled_amino), sharedFile.isDisabledByAmino());
                View viewFindViewById = itemView.findViewById(R.id.disabled_overlay);
                if (sharedFile.status == 9) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                ViewUtils.show(viewFindViewById, z6);
            }
            return itemView;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.shared_photo_item_padding);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        divideColumnAdapter.setAdapter(new Adapter(this), 3);
        return divideColumnAdapter;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        setTitle(R.string.disabled_from_shared_folder);
    }
}
