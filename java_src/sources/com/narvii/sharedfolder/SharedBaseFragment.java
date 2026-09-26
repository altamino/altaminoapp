package com.narvii.sharedfolder;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListView;
import com.narvii.amino.master.R;
import com.narvii.config.ConfigService;
import com.narvii.date.DateSection;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVListFragment;
import com.narvii.media.MediaPickCallbackManager;
import com.narvii.media.MediaPickerFragment;
import com.narvii.util.Callback;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SharedBaseFragment extends NVListFragment {
    public static final int MAX_UPLOAD_PHOTO_COUNT = 25;
    public static final int REQUEST_SELECT_PHOTO_GALLEY = 100;
    protected View actionBarOverlay;
    protected File dir;
    protected MediaPickerFragment mediaPickerFragment;
    AbsListView.OnScrollListener onScrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.sharedfolder.SharedBaseFragment.1
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            View childAt = absListView.getChildAt(0);
            if (SharedBaseFragment.this.isEmbedFragment() || SharedBaseFragment.this.getBooleanParam("fromTab")) {
                SharedBaseFragment.this.actionBarOverlay.setVisibility(8);
                return;
            }
            if (i10 != 0 || childAt == null || childAt.getHeight() == 0) {
                SharedBaseFragment.this.actionBarOverlay.setVisibility(0);
                SharedBaseFragment.this.actionBarOverlay.setAlpha(1.0f);
            } else {
                float top = 1.0f - (((childAt.getTop() + childAt.getHeight()) * 1.0f) / childAt.getHeight());
                SharedBaseFragment.this.actionBarOverlay.setVisibility(0);
                SharedBaseFragment.this.actionBarOverlay.setAlpha(top);
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
        }
    };
    protected SharedFolderHelper sharedFolderHelper;
    protected SharedPhotoPostHelper sharedPhotoPostHelper;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    protected String getTitle() {
        return null;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    protected void addPhotos(final String str) {
        this.sharedFolderHelper.checkUploadPhotoEligible(new Callback() { // from class: com.narvii.sharedfolder.SharedBaseFragment.2
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                HashMap<String, Object> map = new HashMap<>();
                map.put(ExternalPostPreviewFragment.SOURCE, str);
                SharedBaseFragment sharedBaseFragment = SharedBaseFragment.this;
                MediaPickerFragment mediaPickerFragment = sharedBaseFragment.mediaPickerFragment;
                mediaPickerFragment.pickCallbackParams = map;
                mediaPickerFragment.pickCallback = MediaPickCallbackManager.SHARED_PHOTO_PICK;
                mediaPickerFragment.pickMedia(sharedBaseFragment.dir, (Bundle) null, 0, 25);
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment
    protected void hoverChange(Object obj) {
        if (obj == null) {
            setTitle(getTitle());
        } else if (obj instanceof DateSection) {
            setTitle(((DateSection) obj).time);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getTitle());
        this.sharedFolderHelper = new SharedFolderHelper(this);
        File file = new File(getContext().getFilesDir(), "shared_folder");
        this.dir = file;
        file.mkdir();
        MediaPickerFragment mediaPickerFragment = (MediaPickerFragment) getFragmentManager().m0("mediaPicker");
        this.mediaPickerFragment = mediaPickerFragment;
        if (mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            getFragmentManager().q().e(this.mediaPickerFragment, "mediaPicker").k();
        }
        this.sharedPhotoPostHelper = new SharedPhotoPostHelper(this);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.shared_folder_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setOnScrollListener(this.onScrollListener);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        float[] fArr = new float[3];
        Color.colorToHSV(((ConfigService) getService("config")).getTheme().colorPrimary(), fArr);
        fArr[2] = fArr[2] * 0.85f;
        view.setBackgroundColor(Color.HSVToColor(fArr));
        this.actionBarOverlay = view.findViewById(R.id.action_bar_overlay);
    }
}
