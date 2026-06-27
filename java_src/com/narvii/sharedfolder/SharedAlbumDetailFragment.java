package com.narvii.sharedfolder;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.media.MediaPickCallbackManager;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.NVObject;
import com.narvii.model.SharedAlbum;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.share.ShareDialog;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListView;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class SharedAlbumDetailFragment extends DetailFragment implements NotificationListener {
    static final DetailAdapter.CellType HEADER = new DetailAdapter.CellType("detail.album.header", true);
    public static final int REQUEST_EDIT = 1;
    public static final int REQUEST_INFO = 2;
    public Adapter adapter;
    File dir;
    OverlayLayout header;
    public String liveLayerTarget;
    protected MediaPickerFragment mediaPickerFragment;
    public MergeAdapter mergeAdapter;
    SharedFolderHelper sharedFolderHelper;
    SharedPhotoPostHelper sharedPhotoPostHelper;
    public SharedPhotosAdapter sharedPhotosAdapter;
    public SwipeRefreshLayout swipeRefreshLayout;
    public final List<String> actions = new ArrayList();
    final int album_add_photos2 = R.string.tipping_confirm_custom_hint;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment
    protected boolean hasVisitorBar() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) throws Resources.NotFoundException {
        this.mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.sharedfolder.SharedAlbumDetailFragment.1
            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public void refresh(int i, Callback<Integer> callback) {
                super.refresh(i, callback);
                SharedPhotosAdapter sharedPhotosAdapter = SharedAlbumDetailFragment.this.sharedPhotosAdapter;
                if (sharedPhotosAdapter != null) {
                    sharedPhotosAdapter.refresh(0, null);
                }
            }
        };
        this.adapter = new Adapter(this);
        this.mergeAdapter.addAdapter(this.adapter);
        NVAdapter nVAdapter = new NVAdapter(this) { // from class: com.narvii.sharedfolder.SharedAlbumDetailFragment.2
            @Override // android.widget.Adapter
            public Object getItem(int i) {
                return null;
            }

            @Override // android.widget.Adapter
            public long getItemId(int i) {
                return 0L;
            }

            @Override // android.widget.Adapter
            public int getCount() {
                SharedPhotosAdapter sharedPhotosAdapter;
                return (SharedAlbumDetailFragment.this.sharedFolderHelper.canUploadPhoto() && (sharedPhotosAdapter = SharedAlbumDetailFragment.this.sharedPhotosAdapter) != null && sharedPhotosAdapter.errorMessage() == null) ? 1 : 0;
            }

            @Override // android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View viewCreateView = createView(R.layout.item_photo_add, viewGroup, view);
                viewCreateView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.sharedfolder.SharedAlbumDetailFragment.2.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        SharedAlbumDetailFragment.this.addPhotos(" Square Button");
                    }
                });
                return viewCreateView;
            }
        };
        this.sharedPhotosAdapter = new SharedPhotosAdapter(this, id()) { // from class: com.narvii.sharedfolder.SharedAlbumDetailFragment.3
            @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
            public int getCount() {
                if (errorMessage() != null) {
                    return 0;
                }
                return super.getCount();
            }
        };
        final MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.sharedPhotosAdapter.source = "Album";
        mergeAdapter.addAdapter(nVAdapter);
        mergeAdapter.addAdapter(this.sharedPhotosAdapter);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.shared_photo_item_padding);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        divideColumnAdapter.setAdapter(mergeAdapter, 3);
        this.mergeAdapter.addAdapter(divideColumnAdapter);
        NVPagerStatusAdapter nVPagerStatusAdapter = new NVPagerStatusAdapter(this) { // from class: com.narvii.sharedfolder.SharedAlbumDetailFragment.4
            @Override // com.narvii.adapter.NVPagerStatusAdapter, android.widget.Adapter
            public int getCount() {
                return mergeAdapter.getCount() == 0 ? 1 : 0;
            }
        };
        nVPagerStatusAdapter.setAdapter(this.sharedPhotosAdapter);
        this.mergeAdapter.addAdapter(nVPagerStatusAdapter);
        return this.mergeAdapter;
    }

    protected void addPhotos(final String str) {
        final SharedAlbum object = this.adapter.getObject();
        if (object == null) {
            return;
        }
        if (object.isDefaultAlbum()) {
            this.sharedFolderHelper.checkUploadPhotoEligible(new Callback() { // from class: com.narvii.sharedfolder.SharedAlbumDetailFragment.5
                @Override // com.narvii.util.Callback
                public void call(Object obj) {
                    SharedAlbumDetailFragment.this.mediaPickerFragment.pickCallback = MediaPickCallbackManager.SHARED_PHOTO_PICK;
                    HashMap<String, Object> map = new HashMap<>();
                    map.put("folderId", object.id());
                    map.put("Source", "Album");
                    SharedAlbumDetailFragment sharedAlbumDetailFragment = SharedAlbumDetailFragment.this;
                    MediaPickerFragment mediaPickerFragment = sharedAlbumDetailFragment.mediaPickerFragment;
                    mediaPickerFragment.pickCallbackParams = map;
                    mediaPickerFragment.pickMedia(sharedAlbumDetailFragment.dir, (Bundle) null, 0, 25);
                }
            });
        } else {
            if (this.sharedFolderHelper.ifShowAlbumLockedDialog(this, object)) {
                return;
            }
            this.sharedFolderHelper.checkUploadPhotoEligible(new Callback() { // from class: com.narvii.sharedfolder.SharedAlbumDetailFragment.6
                @Override // com.narvii.util.Callback
                public void call(Object obj) {
                    SharedAlbumDetailFragment sharedAlbumDetailFragment = SharedAlbumDetailFragment.this;
                    SharedFolderHelper sharedFolderHelper = sharedAlbumDetailFragment.sharedFolderHelper;
                    sharedFolderHelper.sourceExtra = str;
                    sharedFolderHelper.showUploadChooseSourceDialog(sharedAlbumDetailFragment.getContext(), SharedAlbumDetailFragment.this.id(), new Callback<Object>() { // from class: com.narvii.sharedfolder.SharedAlbumDetailFragment.6.1
                        @Override // com.narvii.util.Callback
                        public void call(Object obj2) {
                            SharedAlbumDetailFragment.this.mediaPickerFragment.pickCallback = MediaPickCallbackManager.SHARED_PHOTO_PICK;
                            HashMap<String, Object> map = new HashMap<>();
                            map.put("folderId", object.id());
                            map.put("Source", "Album");
                            SharedAlbumDetailFragment sharedAlbumDetailFragment2 = SharedAlbumDetailFragment.this;
                            MediaPickerFragment mediaPickerFragment = sharedAlbumDetailFragment2.mediaPickerFragment;
                            mediaPickerFragment.pickCallbackParams = map;
                            mediaPickerFragment.pickMedia(sharedAlbumDetailFragment2.dir, (Bundle) null, 0, 25);
                        }
                    });
                }
            });
        }
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.layout_detail_shared_album, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.album_add_photos, 0, R.string.album_add_photos).setIcon(R.drawable.ic_menu_shared_add_photo).setShowAsActionFlags(2);
        menu.add(0, R.string.share, 0, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsActionFlags(2);
        menu.add(0, R.string.edit_album_info, 0, R.string.edit_album_info);
        menu.add(0, R.string.tipping_confirm_custom_hint, 0, R.string.album_add_photos);
        menu.add(0, R.string.select_ellipsis, 0, R.string.select_ellipsis);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        Adapter adapter = this.adapter;
        boolean z = (adapter == null || adapter.getObject() == null) ? false : true;
        menu.findItem(R.string.album_add_photos).setVisible(z && this.sharedFolderHelper.canUploadPhoto());
        menu.findItem(R.string.share).setVisible(z);
        menu.findItem(R.string.edit_album_info).setVisible(z && this.sharedFolderHelper.canManageAlbum());
        menu.findItem(R.string.tipping_confirm_custom_hint).setVisible(z && this.sharedFolderHelper.canUploadPhoto());
        menu.findItem(R.string.select_ellipsis).setVisible(z && this.sharedFolderHelper.canManageAlbum());
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.string.album_add_photos /* 2131689661 */:
            case R.string.tipping_confirm_custom_hint /* 2131693756 */:
                addPhotos(" Nav Bar");
                return true;
            case R.string.edit_album_info /* 2131690446 */:
                if (!this.sharedFolderHelper.ifShowAlbumLockedDialog(this, this.adapter.getObject())) {
                    this.sharedFolderHelper.checkAlbumManageEligible(new Callback() { // from class: com.narvii.sharedfolder.SharedAlbumDetailFragment.7
                        @Override // com.narvii.util.Callback
                        public void call(Object obj) {
                            Intent intent = new Intent(SharedAlbumDetailFragment.this.getContext(), (Class<?>) SharedAlbumInfoPostActivity.class);
                            AlbumInfoPost albumInfoPost = new AlbumInfoPost();
                            SharedAlbum object = SharedAlbumDetailFragment.this.adapter.getObject();
                            if (object == null) {
                                return;
                            }
                            albumInfoPost.title = object.getTitle(SharedAlbumDetailFragment.this.getContext());
                            albumInfoPost.description = object.description;
                            albumInfoPost.coverMediaList = object.coverMediaList;
                            albumInfoPost.isDefaultFolder = object.isDefaultAlbum();
                            albumInfoPost.status = object.status;
                            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(albumInfoPost));
                            intent.putExtra("folderId", object.folderId);
                            intent.putExtra("album", JacksonUtils.writeAsString(object));
                            SharedAlbumDetailFragment.this.startActivityForResult(intent, 2);
                        }
                    });
                }
                return true;
            case R.string.select_ellipsis /* 2131693425 */:
                this.sharedFolderHelper.checkAlbumManageEligible(new Callback() { // from class: com.narvii.sharedfolder.SharedAlbumDetailFragment.8
                    @Override // com.narvii.util.Callback
                    public void call(Object obj) {
                        Intent intent = FragmentWrapperActivity.intent(SharedPhotoSelectFragment.class);
                        intent.putExtra("selectMode", "edit");
                        intent.putExtra("id", SharedAlbumDetailFragment.this.id());
                        Adapter adapter = SharedAlbumDetailFragment.this.adapter;
                        if (adapter != null) {
                            intent.putExtra("album", JacksonUtils.writeAsString(adapter.getObject()));
                        }
                        SharedAlbumDetailFragment.this.startActivityForResult(intent, 1);
                    }
                });
                return true;
            case R.string.share /* 2131693474 */:
                ShareDialog.getShareDialogFromAlbum(this, this.adapter.getObject()).setSource("Shared Album").show();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            if (i == 1) {
                MergeAdapter mergeAdapter = this.mergeAdapter;
                if (mergeAdapter != null) {
                    mergeAdapter.refresh(0, null);
                }
            } else if (i == 2) {
                if (intent != null) {
                    this.adapter.setObject((SharedAlbum) JacksonUtils.readAs(intent.getStringExtra("object"), SharedAlbum.class));
                } else {
                    finish();
                }
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (this.liveLayerTarget != null) {
            LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
            if (z) {
                liveLayerService.reportActive(this.actions, this.liveLayerTarget, (HashMap<String, Object>) null);
            } else {
                liveLayerService.reportInactive(this.actions, this.liveLayerTarget, (HashMap<String, Object>) null);
            }
        }
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle((CharSequence) null);
        this.dir = new File(getContext().getFilesDir(), "shared_folder");
        this.dir.mkdir();
        this.sharedFolderHelper = new SharedFolderHelper(this);
        this.sharedFolderHelper.source = "Album Detail";
        this.sharedPhotoPostHelper = new SharedPhotoPostHelper(this);
        setHasOptionsMenu(true);
        this.dir = new File(getContext().getFilesDir(), "shared_folder");
        this.dir.mkdir();
        this.mediaPickerFragment = (MediaPickerFragment) getFragmentManager().findFragmentByTag("mediaPicker");
        if (this.mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            getFragmentManager().beginTransaction().add(this.mediaPickerFragment, "mediaPicker").commit();
        }
        this.actions.add(LiveLayerService.ACTION_BROWSING);
        this.liveLayerTarget = NVObject.objectTypeName(106) + "/" + id();
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        this.header = (OverlayLayout) view.findViewById(R.id.overlay);
        super.onViewCreated(view, bundle);
        this.header.attach((NVListView) getListView());
        updateHeader();
        if (getActivity() instanceof NVActivity) {
            this.header.setHeight1(getActionBarOverlaySize() + getStatusBarOverlaySize());
        }
        view.setBackgroundColor(((ConfigService) getService("config")).getTheme().colorPrimary());
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh);
        this.swipeRefreshLayout.setEnabled(false);
        this.swipeRefreshLayout.setVisibility(0);
        this.swipeRefreshLayout.setTarget((NVListView) getListView());
        this.swipeRefreshLayout.setOnRefreshListener(this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        Callback<Integer> callback = new Callback<Integer>() { // from class: com.narvii.sharedfolder.SharedAlbumDetailFragment.9
            int n;

            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                int i = this.n + 1;
                this.n = i;
                if (i == 2) {
                    SharedAlbumDetailFragment.this.swipeRefreshLayout.setRefreshing(false);
                }
            }
        };
        SharedPhotosAdapter sharedPhotosAdapter = this.sharedPhotosAdapter;
        if (sharedPhotosAdapter != null) {
            sharedPhotosAdapter.refresh(512, callback);
        }
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.refresh(1, callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeader() throws Resources.NotFoundException {
        Adapter adapter = this.adapter;
        if (adapter == null || this.header == null) {
            return;
        }
        SharedAlbum object = adapter.getObject();
        if (object == null) {
            this.header.setVisibility(8);
            return;
        }
        this.header.setVisibility(0);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.shared_album_detail_header_height);
        this.header.setLayout(R.layout.shared_album_detail_header, dimensionPixelSize);
        HeaderLayout headerLayout = (HeaderLayout) this.header.findViewById(R.id.detail_header);
        headerLayout.setHeight1(dimensionPixelSize);
        headerLayout.setSharedAlbum(object);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        SharedAlbum object;
        Adapter adapter = this.adapter;
        if (adapter != null && (object = adapter.getObject()) != null && object.isDefaultAlbum() && (notification.obj instanceof PhotoUpload)) {
            this.adapter.refresh(0, null);
            SharedPhotosAdapter sharedPhotosAdapter = this.sharedPhotosAdapter;
            if (sharedPhotosAdapter != null) {
                sharedPhotosAdapter.refresh(0, null);
            }
        }
    }

    class Adapter extends DetailAdapter<SharedAlbum, SharedAlbumResponse> {
        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(SharedAlbum sharedAlbum) {
            SharedAlbumResponse sharedAlbumResponse = new SharedAlbumResponse();
            sharedAlbumResponse.folder = sharedAlbum;
            setResponse(sharedAlbumResponse);
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if ((notification.obj instanceof PhotoAdd) && Utils.isEqualsNotNull(SharedAlbumDetailFragment.this.id(), ((PhotoAdd) notification.obj).folderId)) {
                refresh(0, null);
            } else {
                super.onNotification(notification);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.detail.DetailAdapter
        public void onObjectResponse(ApiRequest apiRequest, SharedAlbumResponse sharedAlbumResponse) {
            super.onObjectResponse(apiRequest, (ApiRequest) sharedAlbumResponse);
            SharedAlbum sharedAlbum = sharedAlbumResponse.folder;
            if (sharedAlbum != null) {
                Notification notification = new Notification("update", sharedAlbum.m46clone());
                NotificationCenter notificationCenter = (NotificationCenter) getService("notification");
                if (notificationCenter != null) {
                    notificationCenter.sendNotification(notification);
                }
            }
            invalidateOptionsMenu();
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class objectType() {
            return SharedAlbum.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class responseType() {
            return SharedAlbumResponse.class;
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() throws Resources.NotFoundException {
            super.notifyDataSetChanged();
            SharedAlbumDetailFragment.this.updateHeader();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            return ApiRequest.builder().path("/shared-folder/folders/" + SharedAlbumDetailFragment.this.id()).build();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List list) {
            list.add(SharedAlbumDetailFragment.HEADER);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(SharedAlbumDetailFragment.HEADER);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            if (obj == SharedAlbumDetailFragment.HEADER) {
                return createView(R.layout.shared_album_detail_placeholder, viewGroup, view);
            }
            return super.getCell(obj, view, viewGroup);
        }
    }
}
