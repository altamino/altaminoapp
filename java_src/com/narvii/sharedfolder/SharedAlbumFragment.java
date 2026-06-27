package com.narvii.sharedfolder;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.SharedAlbum;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class SharedAlbumFragment extends SharedBaseFragment implements NotificationListener {
    public static final String MODE_SINGLE_PICK_CHOOSE_PHOTO = "singlePickChoosePhoto";
    public static final String MODE_SINGLE_PICK_UPLOAD_PHOTO = "singlePickUploadPhoto";
    static final int SORT_ITEM_REQUEST = 1;
    int albumCount = 0;
    String filterAlbumId;
    public boolean fromHomeTab;
    String selectMode;
    public SharedAlbumAdapter sharedAlbumAdapter;

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.selectMode = getStringParam("selectMode");
        this.sharedFolderHelper.source = "All Albums";
        this.fromHomeTab = isEmbedFragment() && getBooleanParam("fromTab");
        if (bundle != null) {
            this.albumCount = bundle.getInt("albumCount");
        }
        this.filterAlbumId = getStringParam("filterAlbumId");
        setHasOptionsMenu(!getBooleanParam("fromTab") && this.selectMode == null);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("albumCount", this.albumCount);
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        View view2 = this.emptyView;
        View viewFindViewById = view2 == null ? null : view2.findViewById(R.id.empty_retry);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.sharedfolder.SharedAlbumFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    SharedAlbumAdapter sharedAlbumAdapter = SharedAlbumFragment.this.sharedAlbumAdapter;
                    if (sharedAlbumAdapter != null) {
                        sharedAlbumAdapter.resetList();
                    }
                }
            });
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (this.selectMode != null) {
            setTitle(R.string.select);
            setCrossBackIcon();
        } else {
            setTitle(R.string.albums);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.my_uploads, 0, R.string.my_uploads).setIcon(R.drawable.ic_menu_shared_upload_photo).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.my_uploads) {
            startActivity(FragmentWrapperActivity.intent(MyUploadsFragment.class));
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            this.sharedAlbumAdapter.refresh(0, null);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) throws Resources.NotFoundException {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.album_item_padding);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, this.fromHomeTab ? -dimensionPixelSize : dimensionPixelSize, dimensionPixelSize);
        divideColumnAdapter.setSupportLongClick(true);
        this.sharedAlbumAdapter = new AnonymousClass2(this);
        SharedAlbumAdapter sharedAlbumAdapter = this.sharedAlbumAdapter;
        sharedAlbumAdapter.source = "All Albums";
        divideColumnAdapter.setAdapter(sharedAlbumAdapter, 2);
        if (!getBooleanParam("fromTab")) {
            StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
            staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
            mergeAdapter.addAdapter(staticViewAdapter);
        }
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        return mergeAdapter;
    }

    /* renamed from: com.narvii.sharedfolder.SharedAlbumFragment$2, reason: invalid class name */
    class AnonymousClass2 extends SharedAlbumAdapter {
        AnonymousClass2(NVContext nVContext) {
            super(nVContext);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, SharedAlbumListResponse sharedAlbumListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) sharedAlbumListResponse, i);
            int i2 = sharedAlbumListResponse.totalCount;
            if (i2 >= 0) {
                SharedAlbumFragment sharedAlbumFragment = SharedAlbumFragment.this;
                sharedAlbumFragment.albumCount = i2;
                sharedAlbumFragment.setTitle(TextUtils.getCountTitle(sharedAlbumFragment.getString(R.string.albums), SharedAlbumFragment.this.albumCount));
                if (SharedAlbumFragment.this.getParentFragment() instanceof SharedFolderFragment) {
                    ((SharedFolderFragment) SharedAlbumFragment.this.getParentFragment()).setFolderCount(SharedAlbumFragment.this.albumCount);
                }
            }
        }

        @Override // com.narvii.sharedfolder.SharedAlbumAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            String str = SharedAlbumFragment.this.filterAlbumId;
            if (str != null && itemView != null && (obj instanceof SharedAlbum)) {
                itemView.setAlpha(Utils.isEquals(str, ((SharedAlbum) obj).id()) ? 0.1f : 1.0f);
            }
            return itemView;
        }

        @Override // com.narvii.sharedfolder.SharedAlbumAdapter
        protected boolean showAllPhotos() {
            if (SharedAlbumFragment.MODE_SINGLE_PICK_UPLOAD_PHOTO.equals(SharedAlbumFragment.this.selectMode)) {
                return false;
            }
            return super.showAllPhotos();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return SharedAlbumFragment.this.sharedFolderHelper.canManageAlbum() && !SharedAlbumFragment.MODE_SINGLE_PICK_CHOOSE_PHOTO.equals(SharedAlbumFragment.this.selectMode);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            SharedAlbumFragment sharedAlbumFragment = SharedAlbumFragment.this;
            if (sharedAlbumFragment.selectMode == null && (obj instanceof SharedAlbum)) {
                if (sharedAlbumFragment.sharedFolderHelper.canManageAlbum()) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(SharedAlbumFragment.this.getText(R.string.create_new_album));
                    arrayList.add(SharedAlbumFragment.this.getText(R.string.reorder_albums));
                    final int[] iArr = {R.string.create_new_album, R.string.reorder_albums};
                    builder.setItems((CharSequence[]) arrayList.toArray(new CharSequence[0]), new DialogInterface.OnClickListener() { // from class: com.narvii.sharedfolder.SharedAlbumFragment.2.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            int i3 = iArr[i2];
                            if (i3 == R.string.create_new_album) {
                                SharedAlbumFragment.this.sharedFolderHelper.showAddAlbumDialog();
                            } else if (i3 == R.string.reorder_albums) {
                                SharedAlbumFragment.this.sharedFolderHelper.checkAlbumManageEligible(new Callback() { // from class: com.narvii.sharedfolder.SharedAlbumFragment.2.1.1
                                    @Override // com.narvii.util.Callback
                                    public void call(Object obj2) {
                                        SharedAlbumFragment.this.startActivityForResult(FragmentWrapperActivity.intent(SharedAlbumSortFragment.class), 1);
                                    }
                                });
                            }
                        }
                    });
                    builder.show();
                }
                return true;
            }
            return super.onLongClick(listAdapter, i, obj, view, view2);
        }

        /* renamed from: com.narvii.sharedfolder.SharedAlbumFragment$2$2, reason: invalid class name and collision with other inner class name */
        class ViewOnClickListenerC01212 implements View.OnClickListener {
            ViewOnClickListenerC01212() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SharedAlbumFragment.MODE_SINGLE_PICK_UPLOAD_PHOTO.equals(SharedAlbumFragment.this.selectMode)) {
                    final ArrayList listAs = JacksonUtils.readListAs(SharedAlbumFragment.this.getStringParam("fileIdList"), String.class);
                    SharedAlbumFragment.this.sharedFolderHelper.showAddAlbumDialog(listAs, new Callback<SharedAlbumResponse>() { // from class: com.narvii.sharedfolder.SharedAlbumFragment.2.2.1
                        @Override // com.narvii.util.Callback
                        public void call(final SharedAlbumResponse sharedAlbumResponse) {
                            if (SharedAlbumFragment.this.isAdded()) {
                                SharedAlbumFragment.this.sharedFolderHelper.addPhotosToAlbum(sharedAlbumResponse.folder.id(), listAs, new Callback() { // from class: com.narvii.sharedfolder.SharedAlbumFragment.2.2.1.1
                                    @Override // com.narvii.util.Callback
                                    public void call(Object obj) {
                                        if (SharedAlbumFragment.this.isAdded()) {
                                            Intent intent = FragmentWrapperActivity.intent(SharedAlbumDetailFragment.class);
                                            intent.putExtra("id", sharedAlbumResponse.folder.id());
                                            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(sharedAlbumResponse.folder));
                                            AnonymousClass2.this.startActivity(intent);
                                            SharedAlbumFragment.this.setResult(-1);
                                            SharedAlbumFragment.this.finish();
                                        }
                                    }
                                });
                            }
                        }
                    });
                } else {
                    SharedAlbumFragment.this.sharedFolderHelper.showAddAlbumDialog();
                }
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i) {
            View viewCreateView = createView(R.layout.item_album_add, viewGroup, view);
            viewCreateView.setOnClickListener(new ViewOnClickListenerC01212());
            return viewCreateView;
        }

        @Override // com.narvii.sharedfolder.SharedAlbumAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof SharedAlbum) {
                SharedAlbum sharedAlbum = (SharedAlbum) obj;
                if (SharedAlbumFragment.MODE_SINGLE_PICK_UPLOAD_PHOTO.equals(SharedAlbumFragment.this.selectMode)) {
                    SharedAlbumFragment sharedAlbumFragment = SharedAlbumFragment.this;
                    if (sharedAlbumFragment.sharedFolderHelper.ifShowAlbumLockedDialog(sharedAlbumFragment, sharedAlbum)) {
                        return true;
                    }
                }
                if (Utils.isEquals(SharedAlbumFragment.this.filterAlbumId, sharedAlbum.id())) {
                    return true;
                }
                if (SharedAlbumFragment.MODE_SINGLE_PICK_CHOOSE_PHOTO.equals(SharedAlbumFragment.this.selectMode)) {
                    Intent intent = FragmentWrapperActivity.intent(SharedPhotoSelectFragment.class);
                    intent.putExtra("id", sharedAlbum.id());
                    intent.putExtra("album", JacksonUtils.writeAsString(sharedAlbum));
                    intent.putExtra("toAlbumId", SharedAlbumFragment.this.getStringParam("toAlbumId"));
                    intent.putExtra("selectMode", "pickUpload");
                    startActivity(intent);
                    SharedAlbumFragment.this.finish();
                    return true;
                }
                if (SharedAlbumFragment.MODE_SINGLE_PICK_UPLOAD_PHOTO.equals(SharedAlbumFragment.this.selectMode)) {
                    SharedAlbumFragment.this.sharedFolderHelper.addPhotosToAlbum(sharedAlbum.id(), JacksonUtils.readListAs(SharedAlbumFragment.this.getStringParam("fileIdList"), String.class), new Callback() { // from class: com.narvii.sharedfolder.SharedAlbumFragment.2.3
                        @Override // com.narvii.util.Callback
                        public void call(Object obj2) {
                            SharedAlbumFragment.this.setResult(-1);
                            SharedAlbumFragment.this.finish();
                        }
                    });
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    @Override // com.narvii.app.NVFragment
    public void setTitle(CharSequence charSequence) {
        if (this.selectMode == null) {
            super.setTitle(charSequence);
        } else {
            super.setTitle(R.string.select);
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification.obj instanceof SharedAlbum) {
            String str = notification.action;
            char c = 65535;
            int iHashCode = str.hashCode();
            if (iHashCode != -1335458389) {
                if (iHashCode == 108960 && str.equals("new")) {
                    c = 0;
                }
            } else if (str.equals("delete")) {
                c = 1;
            }
            if (c == 0) {
                if (this.sharedAlbumAdapter != null) {
                    this.albumCount++;
                    setTitle(TextUtils.getCountTitle(getString(R.string.albums), this.albumCount));
                    return;
                }
                return;
            }
            if (c == 1 && this.sharedAlbumAdapter != null) {
                this.albumCount--;
                setTitle(TextUtils.getCountTitle(getString(R.string.albums), this.albumCount));
            }
        }
    }
}
