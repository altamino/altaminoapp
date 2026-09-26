package com.narvii.sharedfolder;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
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
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.text.TextUtils;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class SharedAlbumFragment extends SharedBaseFragment implements NotificationListener {
    public static final String MODE_SINGLE_PICK_CHOOSE_PHOTO = "singlePickChoosePhoto";
    public static final String MODE_SINGLE_PICK_UPLOAD_PHOTO = "singlePickUploadPhoto";
    static final int SORT_ITEM_REQUEST = 1;
    int albumCount = 0;
    String filterAlbumId;
    public boolean fromHomeTab;
    String selectMode;
    public SharedAlbumAdapter sharedAlbumAdapter;

    /* JADX INFO: renamed from: com.narvii.sharedfolder.SharedAlbumFragment$2, reason: invalid class name */
    class AnonymousClass2 extends SharedAlbumAdapter {

        /* JADX INFO: renamed from: com.narvii.sharedfolder.SharedAlbumFragment$2$2, reason: invalid class name and collision with other inner class name */
        class ViewOnClickListenerC03562 implements View.OnClickListener {
            ViewOnClickListenerC03562() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!SharedAlbumFragment.MODE_SINGLE_PICK_UPLOAD_PHOTO.equals(SharedAlbumFragment.this.selectMode)) {
                    SharedAlbumFragment.this.sharedFolderHelper.showAddAlbumDialog();
                } else {
                    final ArrayList listAs = JacksonUtils.readListAs(SharedAlbumFragment.this.getStringParam("fileIdList"), String.class);
                    SharedAlbumFragment.this.sharedFolderHelper.showAddAlbumDialog(listAs, new Callback<SharedAlbumResponse>() { // from class: com.narvii.sharedfolder.SharedAlbumFragment.2.2.1
                        @Override // com.narvii.util.Callback
                        public void call(final SharedAlbumResponse sharedAlbumResponse) {
                            if (SharedAlbumFragment.this.isAdded()) {
                                SharedAlbumFragment.this.sharedFolderHelper.addPhotosToAlbum(sharedAlbumResponse.folder.id(), listAs, new Callback() { // from class: com.narvii.sharedfolder.SharedAlbumFragment.2.2.1.1
                                    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                                        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                                        if (p1 == null) {
                                            return;
                                        }
                                        p0.startActivity(p1);
                                    }

                                    @Override // com.narvii.util.Callback
                                    public void call(Object obj) {
                                        if (SharedAlbumFragment.this.isAdded()) {
                                            Intent intent = FragmentWrapperActivity.intent(SharedAlbumDetailFragment.class);
                                            intent.putExtra("id", sharedAlbumResponse.folder.id());
                                            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(sharedAlbumResponse.folder));
                                            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(AnonymousClass2.this, intent);
                                            SharedAlbumFragment.this.setResult(-1);
                                            SharedAlbumFragment.this.finish();
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        AnonymousClass2(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.sharedfolder.SharedAlbumAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
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
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
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
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            SharedAlbumFragment sharedAlbumFragment = SharedAlbumFragment.this;
            if (sharedAlbumFragment.selectMode != null || !(obj instanceof SharedAlbum)) {
                return super.onLongClick(listAdapter, i10, obj, view, view2);
            }
            if (sharedAlbumFragment.sharedFolderHelper.canManageAlbum()) {
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                ArrayList arrayList = new ArrayList();
                arrayList.add(SharedAlbumFragment.this.getText(R.string.create_new_album));
                arrayList.add(SharedAlbumFragment.this.getText(R.string.reorder_albums));
                final int[] iArr = {R.string.create_new_album, R.string.reorder_albums};
                builder.setItems((CharSequence[]) arrayList.toArray(new CharSequence[0]), new DialogInterface.OnClickListener() { // from class: com.narvii.sharedfolder.SharedAlbumFragment.2.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i11) {
                        int i12 = iArr[i11];
                        if (i12 == R.string.create_new_album) {
                            SharedAlbumFragment.this.sharedFolderHelper.showAddAlbumDialog();
                        } else if (i12 == R.string.reorder_albums) {
                            SharedAlbumFragment.this.sharedFolderHelper.checkAlbumManageEligible(new Callback() { // from class: com.narvii.sharedfolder.SharedAlbumFragment.2.1.1
                                public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                                    if (p1 == null) {
                                        return;
                                    }
                                    p0.startActivityForResult(p1, p5);
                                }

                                @Override // com.narvii.util.Callback
                                public void call(Object obj2) {
                                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(SharedAlbumFragment.this, FragmentWrapperActivity.intent(SharedAlbumSortFragment.class), 1);
                                }
                            });
                        }
                    }
                });
                builder.show();
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, SharedAlbumListResponse sharedAlbumListResponse, int i10) {
            super.onPageResponse(apiRequest, sharedAlbumListResponse, i10);
            int i11 = sharedAlbumListResponse.totalCount;
            if (i11 >= 0) {
                SharedAlbumFragment sharedAlbumFragment = SharedAlbumFragment.this;
                sharedAlbumFragment.albumCount = i11;
                sharedAlbumFragment.setTitle(TextUtils.getCountTitle(sharedAlbumFragment.getString(R.string.albums), SharedAlbumFragment.this.albumCount));
                if (SharedAlbumFragment.this.getParentFragment() instanceof SharedFolderFragment) {
                    ((SharedFolderFragment) SharedAlbumFragment.this.getParentFragment()).setFolderCount(SharedAlbumFragment.this.albumCount);
                }
            }
        }

        @Override // com.narvii.sharedfolder.SharedAlbumAdapter
        protected boolean showAllPhotos() {
            if (SharedAlbumFragment.MODE_SINGLE_PICK_UPLOAD_PHOTO.equals(SharedAlbumFragment.this.selectMode)) {
                return false;
            }
            return super.showAllPhotos();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i10) {
            return SharedAlbumFragment.this.sharedFolderHelper.canManageAlbum() && !SharedAlbumFragment.MODE_SINGLE_PICK_CHOOSE_PHOTO.equals(SharedAlbumFragment.this.selectMode);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i10) {
            View viewCreateView = createView(R.layout.item_album_add, viewGroup, view);
            viewCreateView.setOnClickListener(new ViewOnClickListenerC03562());
            return viewCreateView;
        }

        @Override // com.narvii.sharedfolder.SharedAlbumAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            float f;
            View itemView = super.getItemView(obj, view, viewGroup);
            String str = SharedAlbumFragment.this.filterAlbumId;
            if (str != null && itemView != null && (obj instanceof SharedAlbum)) {
                if (Utils.isEquals(str, ((SharedAlbum) obj).id())) {
                    f = 0.1f;
                } else {
                    f = 1.0f;
                }
                itemView.setAlpha(f);
            }
            return itemView;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (getCount() == 0) {
                return true;
            }
            return false;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 1 && i11 == -1) {
            this.sharedAlbumAdapter.refresh(0, null);
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.album_item_padding);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, this.fromHomeTab ? -dimensionPixelSize : dimensionPixelSize, dimensionPixelSize);
        divideColumnAdapter.setSupportLongClick(true);
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this);
        this.sharedAlbumAdapter = anonymousClass2;
        anonymousClass2.source = "All Albums";
        divideColumnAdapter.setAdapter(anonymousClass2, 2);
        if (!getBooleanParam("fromTab")) {
            StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
            staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
            mergeAdapter.addAdapter(staticViewAdapter);
        }
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        return mergeAdapter;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification.obj instanceof SharedAlbum) {
            String str = notification.action;
            str.hashCode();
            if (str.equals("delete")) {
                if (this.sharedAlbumAdapter != null) {
                    this.albumCount--;
                    setTitle(TextUtils.getCountTitle(getString(R.string.albums), this.albumCount));
                    return;
                }
                return;
            }
            if (str.equals("new") && this.sharedAlbumAdapter != null) {
                this.albumCount++;
                setTitle(TextUtils.getCountTitle(getString(R.string.albums), this.albumCount));
            }
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

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.selectMode != null) {
            setTitle(R.string.select);
            setCrossBackIcon();
        } else {
            setTitle(R.string.albums);
        }
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        boolean z6;
        super.onCreate(bundle);
        this.selectMode = getStringParam("selectMode");
        this.sharedFolderHelper.source = "All Albums";
        boolean z10 = false;
        if (isEmbedFragment() && getBooleanParam("fromTab")) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.fromHomeTab = z6;
        if (bundle != null) {
            this.albumCount = bundle.getInt("albumCount");
        }
        this.filterAlbumId = getStringParam("filterAlbumId");
        if (!getBooleanParam("fromTab") && this.selectMode == null) {
            z10 = true;
        }
        setHasOptionsMenu(z10);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("All Albums Opened").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("All Albums Opened Total");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.my_uploads, 0, R.string.my_uploads).setIcon(R.drawable.ic_menu_shared_upload_photo).setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.string.my_uploads) {
            return super.onOptionsItemSelected(menuItem);
        }
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, FragmentWrapperActivity.intent(MyUploadsFragment.class));
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("albumCount", this.albumCount);
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        View viewFindViewById;
        super.onViewCreated(view, bundle);
        View view2 = this.emptyView;
        if (view2 == null) {
            viewFindViewById = null;
        } else {
            viewFindViewById = view2.findViewById(R.id.empty_retry);
        }
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
}
