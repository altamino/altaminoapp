package com.narvii.sharedfolder;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.NVObject;
import com.narvii.model.SharedFile;
import com.narvii.notification.Notification;
import com.narvii.util.ViewUtils;

/* loaded from: classes3.dex */
public class DisabledSharedPhotosFragment extends NVListFragment {
    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) throws Resources.NotFoundException {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.shared_photo_item_padding);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        divideColumnAdapter.setAdapter(new Adapter(this), 3);
        return divideColumnAdapter;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        setTitle(R.string.disabled_from_shared_folder);
    }

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
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if ((obj instanceof SharedFile) && ((SharedFile) obj).isDisabledByAmino()) {
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.sharedfolder.SharedPhotosAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            if (obj instanceof SharedFile) {
                SharedFile sharedFile = (SharedFile) obj;
                ViewUtils.show(itemView.findViewById(R.id.disabled_amino), sharedFile.isDisabledByAmino());
                ViewUtils.show(itemView.findViewById(R.id.disabled_overlay), sharedFile.status == 9);
            }
            return itemView;
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
    }
}
