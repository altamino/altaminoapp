package com.narvii.sharedfolder;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.date.DateSection;
import com.narvii.list.DatePageHelper;
import com.narvii.list.DatePagedAdapter;
import com.narvii.list.HoverAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.SectionDivideColumnAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.list.select.SharedPhotoDatePageHelper;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.model.NVObject;
import com.narvii.util.Callback;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class AllSharedPhotosFragment extends SharedBaseFragment implements HoverAdapter {
    public final List<String> actions = new ArrayList();
    boolean fromHomeTab;
    public String liveLayerTarget;
    public MergeAdapter mergeAdapter;
    int totalCount;

    @Override // com.narvii.list.NVListFragment
    protected boolean hoverChangeTitle() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(!getBooleanParam("fromTab"));
        this.fromHomeTab = isEmbedFragment() && getBooleanParam("fromTab");
        this.actions.add(LiveLayerService.ACTION_BROWSING);
        this.liveLayerTarget = NVObject.objectTypeName(106);
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        View emptyView = setEmptyView(R.layout.shared_folder_empty_upload);
        View viewFindViewById = emptyView.findViewById(R.id.empty_main_layout);
        viewFindViewById.getLayoutParams().width = (int) (getContext().getResources().getDisplayMetrics().widthPixels * 0.8f);
        viewFindViewById.requestLayout();
        View viewFindViewById2 = emptyView.findViewById(R.id.upload_layout);
        viewFindViewById2.setVisibility(this.sharedFolderHelper.canUploadPhoto() ? 0 : 8);
        viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.sharedfolder.AllSharedPhotosFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                AllSharedPhotosFragment.this.addPhotos("Recent");
            }
        });
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.sharedfolder.AllSharedPhotosFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (AllSharedPhotosFragment.this.getListAdapter() instanceof NVAdapter) {
                    ((NVAdapter) AllSharedPhotosFragment.this.getListAdapter()).refresh(2, null);
                }
            }
        });
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
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

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) throws Resources.NotFoundException {
        this.mergeAdapter = new MergeAdapter(this);
        if (!getBooleanParam("fromTab")) {
            StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
            staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
            this.mergeAdapter.addAdapter(staticViewAdapter);
        }
        DatePagedAdapter datePagedAdapter = new DatePagedAdapter(this) { // from class: com.narvii.sharedfolder.AllSharedPhotosFragment.3
            @Override // com.narvii.list.DatePagedAdapter
            protected DatePageHelper newDatePageHelper(NVPagedAdapter nVPagedAdapter) {
                return new SharedPhotoDatePageHelper(nVPagedAdapter, new Callback<ArrayList>() { // from class: com.narvii.sharedfolder.AllSharedPhotosFragment.3.1
                    @Override // com.narvii.util.Callback
                    public void call(ArrayList arrayList) {
                        if (arrayList == null || !AllSharedPhotosFragment.this.sharedFolderHelper.canUploadPhoto()) {
                            return;
                        }
                        arrayList.add(SharedPhotosAdapter.UPLOAD_PHOTO);
                    }
                });
            }

            @Override // com.narvii.list.DatePagedAdapter, com.narvii.list.ProxyAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
                View view2 = super.getView(i, view, viewGroup);
                if (AllSharedPhotosFragment.this.fromHomeTab && view2 != null && (getItem(i) instanceof DateSection)) {
                    DateSection dateSection = (DateSection) getItem(i);
                    int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.date_section_header_padding_v);
                    view2.setPadding(0, dateSection.first ? 0 : dimensionPixelSize, 0, dimensionPixelSize);
                }
                return view2;
            }
        };
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.shared_photo_item_padding);
        SectionDivideColumnAdapter sectionDivideColumnAdapter = new SectionDivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize);
        datePagedAdapter.setAdapter(new SharedPhotosAdapter(this) { // from class: com.narvii.sharedfolder.AllSharedPhotosFragment.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.narvii.sharedfolder.SharedPhotosAdapter, com.narvii.list.NVPagedAdapter
            public void onPageResponse(ApiRequest apiRequest, SharedFileListResponse sharedFileListResponse, int i) {
                super.onPageResponse(apiRequest, sharedFileListResponse, i);
                int i2 = sharedFileListResponse.totalCount;
                if (i2 >= 0) {
                    AllSharedPhotosFragment allSharedPhotosFragment = AllSharedPhotosFragment.this;
                    allSharedPhotosFragment.totalCount = i2;
                    if (allSharedPhotosFragment.getParentFragment() instanceof SharedFolderFragment) {
                        ((SharedFolderFragment) AllSharedPhotosFragment.this.getParentFragment()).setFileCount(AllSharedPhotosFragment.this.totalCount);
                    }
                }
                AllSharedPhotosFragment.this.hoverUpdateView();
            }

            @Override // com.narvii.sharedfolder.SharedPhotosAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                if (obj == SharedPhotosAdapter.UPLOAD_PHOTO) {
                    AllSharedPhotosFragment.this.addPhotos("Recent");
                }
                return super.onItemClick(listAdapter, i, obj, view, view2);
            }
        });
        sectionDivideColumnAdapter.setAdapter(datePagedAdapter, 3);
        this.mergeAdapter.addAdapter(sectionDivideColumnAdapter, true);
        return this.mergeAdapter;
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.my_uploads) {
            startActivity(FragmentWrapperActivity.intent(MyUploadsFragment.class));
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.my_uploads, 0, R.string.my_uploads).setIcon(R.drawable.ic_menu_shared_upload_photo).setShowAsAction(2);
    }

    @Override // com.narvii.list.HoverAdapter
    public boolean isHover(int i) {
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter == null) {
            return false;
        }
        return mergeAdapter.getItem(i) instanceof DateSection;
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment
    protected String getTitle() {
        return TextUtils.getCountTitle(getString(R.string.all_photos), this.totalCount);
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setHoverAdapter(this);
    }
}
