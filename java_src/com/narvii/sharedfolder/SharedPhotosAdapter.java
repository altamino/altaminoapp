package com.narvii.sharedfolder;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.list.NVPagedAdapter;
import com.narvii.media.MediaPickerGalleryFragment;
import com.narvii.model.SharedFile;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.DateUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class SharedPhotosAdapter extends NVPagedAdapter<SharedFile, SharedFileListResponse> implements NotificationListener {
    public static final int MAX_PHOTO_COUNT = 200;
    public static final Tag UPLOAD_PHOTO = new Tag("uploadPhoto");
    String albumId;
    int count;
    Callback<Intent> galleyPickCallback;
    OnPhotosCountChangeListener onPhotosCountChangeListener;
    OnSelectedCountChangeListener onSelectedCountChangeListener;
    boolean selectable;
    List<String> selectedIds;
    String source;

    interface OnPhotosCountChangeListener {
        void onPhotosCountChanged(int i);
    }

    interface OnSelectedCountChangeListener {
        void onSelectedChanged(int i);
    }

    protected boolean allowShowDisabledByAmino() {
        return false;
    }

    protected boolean allowShowNormalDisable() {
        return false;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 2;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected boolean ignoreStopTime() {
        return true;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int pageSize() {
        return 40;
    }

    public void setOnPhotosCountChangeListener(OnPhotosCountChangeListener onPhotosCountChangeListener) {
        this.onPhotosCountChangeListener = onPhotosCountChangeListener;
    }

    public void setOnSelectedCountChangeListener(OnSelectedCountChangeListener onSelectedCountChangeListener) {
        this.onSelectedCountChangeListener = onSelectedCountChangeListener;
    }

    public SharedPhotosAdapter(NVContext nVContext) {
        this(nVContext, null);
    }

    public SharedPhotosAdapter(NVContext nVContext, String str) {
        super(nVContext);
        this.selectedIds = new ArrayList();
        this.source = "Shared Folder";
        this.albumId = str;
        setDarkTheme(true);
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putInt("count", this.count);
        return bundleOnSaveInstanceState;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.count = bundle.getInt("count");
    }

    public void setSelectable(boolean z, Callback<Intent> callback) {
        if (z == this.selectable) {
            return;
        }
        this.selectable = z;
        this.galleyPickCallback = callback;
        notifyDataSetChanged();
    }

    public void addSelectedIds(List<String> list) {
        if (list == null) {
            return;
        }
        for (String str : list) {
            if (this.selectedIds.size() >= 200) {
                break;
            } else {
                this.selectedIds.add(str);
            }
        }
        onSelectedCountChanged(this.selectedIds.size());
        notifyDataSetChanged();
    }

    public List<String> getSelectedIds() {
        return this.selectedIds;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<SharedFile> dataType() {
        return SharedFile.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends SharedFileListResponse> responseType() {
        return SharedFileListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        ApiRequest.Builder builderPath = ApiRequest.builder().path(getApiPath());
        if (!TextUtils.isEmpty(sourceType())) {
            builderPath.param("type", sourceType());
        }
        return builderPath.build();
    }

    public void setSelectedIds(List<String> list) {
        if (list == null) {
            return;
        }
        this.selectedIds = list;
        onSelectedCountChanged(list.size());
        notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        if (obj instanceof SharedFile) {
            return 0;
        }
        return obj == UPLOAD_PHOTO ? 1 : -1;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<SharedFile> filterResponseList(List<SharedFile> list, int i) {
        List<SharedFile> listFilterDuplicated = Utils.filterDuplicated(rawList(), list);
        return allowShowNormalDisable() ? listFilterDuplicated : super.filterResponseList(listFilterDuplicated, i);
    }

    protected void onSelectedCountChanged(int i) {
        OnSelectedCountChangeListener onSelectedCountChangeListener = this.onSelectedCountChangeListener;
        if (onSelectedCountChangeListener != null) {
            onSelectedCountChangeListener.onSelectedChanged(i);
        }
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof SharedFile) {
            SharedFile sharedFile = (SharedFile) obj;
            if (this.selectable) {
                if (view2 != null && view2.getId() == R.id.select) {
                    if (this.selectedIds.contains(sharedFile.id())) {
                        this.selectedIds.remove(sharedFile.id());
                        notifyDataSetChanged();
                    } else {
                        if (this.selectedIds.size() >= 200) {
                            NVToast.makeText(getContext(), getContext().getString(R.string.media_image_picker_hit_max_count, 200), 0).show();
                            return true;
                        }
                        this.selectedIds.add(sharedFile.id());
                        notifyDataSetChanged();
                    }
                    onSelectedCountChanged(this.selectedIds.size());
                    return true;
                }
                Intent intent = FragmentWrapperActivity.intent(SharedPhotoGalleryPickFragment.class);
                if (rawList().size() > 200) {
                    MediaPickerGalleryFragment.MEDIA_ITEM_LIST.set((ArrayList) rawList(), 1000L);
                    intent = intent;
                } else {
                    intent.putExtra("list", JacksonUtils.writeAsString(rawList()));
                }
                intent.putExtra("stopTime", this._stopTime);
                intent.putExtra(TtmlNode.START, this._start);
                intent.putExtra("isEnd", this._isEnd);
                int i2 = this.count;
                List<? extends SharedFile> listRawList = rawList();
                ArrayList arrayList = new ArrayList();
                if (listRawList != null) {
                    for (SharedFile sharedFile2 : listRawList) {
                        if (allowShowDisabledByAmino() || !sharedFile2.isDisabledByAmino()) {
                            arrayList.add(sharedFile2);
                        } else {
                            i2--;
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return true;
                }
                intent.putExtra("count", i2);
                intent.putExtra("selected", JacksonUtils.writeAsString(new ArrayList(this.selectedIds)));
                intent.putExtra("class", SharedFile.class);
                intent.putExtra("maxCount", 200);
                int i3 = 0;
                for (int i4 = 0; i4 < i; i4++) {
                    if ((list().get(i4) instanceof SharedFile) && (allowShowDisabledByAmino() || !((SharedFile) list().get(i4)).isDisabledByAmino())) {
                        i3++;
                    }
                }
                intent.putExtra("position", i3);
                intent.putExtra("allowShowIModeDisable", allowShowDisabledByAmino());
                intent.putExtra("allowShowNormalDisable", allowShowNormalDisable());
                intent.putExtra("apiPath", getApiPath());
                intent.putExtra("sourceType", sourceType());
                intent.putExtra("Source", this.source);
                Callback<Intent> callback = this.galleyPickCallback;
                if (callback == null) {
                    return true;
                }
                callback.call(intent);
                return true;
            }
            Intent intent2 = FragmentWrapperActivity.intent(SharedPhotoGalleryFragment.class);
            intent2.putExtra("stopTime", this._stopTime);
            intent2.putExtra(TtmlNode.START, this._start);
            intent2.putExtra("isEnd", this._isEnd);
            int i5 = this.count;
            List<? extends SharedFile> listRawList2 = rawList();
            ArrayList arrayList2 = new ArrayList();
            if (listRawList2 != null) {
                for (SharedFile sharedFile3 : listRawList2) {
                    if (allowShowDisabledByAmino() || !sharedFile3.isDisabledByAmino()) {
                        arrayList2.add(sharedFile3);
                    } else {
                        i5--;
                    }
                }
            }
            if (arrayList2.isEmpty()) {
                return true;
            }
            intent2.putExtra("count", i5);
            if (arrayList2.size() > 100) {
                SharedPhotoGalleryFragment.FILE_LIST.set(arrayList2, 1000L);
            } else {
                intent2.putExtra("list", JacksonUtils.writeAsString(arrayList2));
            }
            int i6 = 0;
            for (int i7 = 0; i7 < i; i7++) {
                if ((list().get(i7) instanceof SharedFile) && (allowShowDisabledByAmino() || !((SharedFile) list().get(i7)).isDisabledByAmino())) {
                    i6++;
                }
            }
            intent2.putExtra("position", i6);
            intent2.putExtra("allowShowIModeDisable", allowShowDisabledByAmino());
            intent2.putExtra("allowShowNormalDisable", allowShowNormalDisable());
            intent2.putExtra("apiPath", getApiPath());
            intent2.putExtra("sourceType", sourceType());
            intent2.putExtra("Source", this.source);
            startActivity(intent2);
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, SharedFileListResponse sharedFileListResponse, int i) {
        super.onPageResponse(apiRequest, (ApiRequest) sharedFileListResponse, i);
        int i2 = sharedFileListResponse.totalCount;
        if (i2 >= 0) {
            this.count = i2;
            OnPhotosCountChangeListener onPhotosCountChangeListener = this.onPhotosCountChangeListener;
            if (onPhotosCountChangeListener != null) {
                onPhotosCountChangeListener.onPhotosCountChanged(this.count);
            }
        }
    }

    protected String getApiPath() {
        if (this.albumId == null) {
            return "/shared-folder/files";
        }
        return "/shared-folder/folders/" + this.albumId + "/files";
    }

    protected String sourceType() {
        if (this.albumId == null) {
            return "latest";
        }
        return null;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        if (obj == UPLOAD_PHOTO) {
            return createView(R.layout.item_photo_upload, viewGroup, view);
        }
        if (!(obj instanceof SharedFile)) {
            return null;
        }
        SharedFile sharedFile = (SharedFile) obj;
        View viewCreateView = createView(R.layout.item_shared_photos, viewGroup, view);
        ((NVImageView) viewCreateView.findViewById(R.id.photo)).setImageMedia(sharedFile.media);
        ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.select);
        ViewUtils.show(imageView, this.selectable);
        imageView.setImageResource(this.selectedIds.contains(sharedFile.id()) ? R.drawable.ic_media_selected : R.drawable.ic_media_not_selected);
        imageView.setOnClickListener(this.subviewClickListener);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
        textView.setText(sharedFile.title);
        int i = 8;
        textView.setVisibility(TextUtils.isEmpty(sharedFile.title) ? 8 : 0);
        View viewFindViewById = viewCreateView.findViewById(R.id.new_);
        if (showNew() && isNewPhoto(sharedFile)) {
            i = 0;
        }
        viewFindViewById.setVisibility(i);
        return viewCreateView;
    }

    private boolean isNewPhoto(SharedFile sharedFile) {
        return System.currentTimeMillis() - sharedFile.createdTime.getTime() < DateUtils.ONE_DAY;
    }

    protected boolean showNew() {
        return !this.selectable;
    }

    public void onNotification(Notification notification) {
        List<String> list;
        if ((notification.obj instanceof SharedFile) && notification.action == "update") {
            editList(notification, false);
            return;
        }
        Object obj = notification.obj;
        if ((obj instanceof PhotoAdd) && Utils.isEqualsNotNull(this.albumId, ((PhotoAdd) obj).folderId)) {
            refresh(0, null);
            return;
        }
        if (this.albumId == null && (notification.obj instanceof PhotoUpload)) {
            refresh(0, null);
            return;
        }
        Object obj2 = notification.obj;
        if ((obj2 instanceof PhotoDelete) && notification.action == "delete" && (list = ((PhotoDelete) obj2).ids) != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                int iRemoveId = Utils.removeId(this._list, it.next());
                this._start -= iRemoveId;
                if (iRemoveId != 0) {
                    this.count--;
                }
            }
            notifyDataSetChanged();
        }
    }
}
