package com.narvii.sharedfolder;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
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
import com.safedk.android.utils.Logger;
import ha.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
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
        void onPhotosCountChanged(int i10);
    }

    interface OnSelectedCountChangeListener {
        void onSelectedChanged(int i10);
    }

    public SharedPhotosAdapter(NVContext nVContext) {
        this(nVContext, null);
    }

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    protected boolean allowShowDisabledByAmino() {
        return false;
    }

    protected boolean allowShowNormalDisable() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<SharedFile> dataType() {
        return SharedFile.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 2;
    }

    public List<String> getSelectedIds() {
        return this.selectedIds;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected boolean ignoreStopTime() {
        return true;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int pageSize() {
        return 40;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends SharedFileListResponse> responseType() {
        return SharedFileListResponse.class;
    }

    public void setOnPhotosCountChangeListener(OnPhotosCountChangeListener onPhotosCountChangeListener) {
        this.onPhotosCountChangeListener = onPhotosCountChangeListener;
    }

    public void setOnSelectedCountChangeListener(OnSelectedCountChangeListener onSelectedCountChangeListener) {
        this.onSelectedCountChangeListener = onSelectedCountChangeListener;
    }

    protected boolean showNew() {
        return !this.selectable;
    }

    protected String sourceType() {
        if (this.albumId == null) {
            return "latest";
        }
        return null;
    }

    public SharedPhotosAdapter(NVContext nVContext, String str) {
        super(nVContext);
        this.selectedIds = new ArrayList();
        this.source = "Shared Folder";
        this.albumId = str;
        setDarkTheme(true);
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

    protected String getApiPath() {
        if (this.albumId == null) {
            return "/shared-folder/files";
        }
        return "/shared-folder/folders/" + this.albumId + "/files";
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        if (obj instanceof SharedFile) {
            return 0;
        }
        return obj == UPLOAD_PHOTO ? 1 : -1;
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
        textView.setVisibility(TextUtils.isEmpty(sharedFile.title) ? 8 : 0);
        viewCreateView.findViewById(R.id.new_text).setVisibility((showNew() && isNewPhoto(sharedFile)) ? 0 : 8);
        return viewCreateView;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
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
                } else {
                    intent.putExtra("list", JacksonUtils.writeAsString(rawList()));
                }
                intent.putExtra("stopTime", this._stopTime);
                intent.putExtra("start", this._start);
                intent.putExtra("isEnd", this._isEnd);
                int i11 = this.count;
                List<? extends SharedFile> listRawList = rawList();
                ArrayList arrayList = new ArrayList();
                if (listRawList != null) {
                    for (SharedFile sharedFile2 : listRawList) {
                        if (allowShowDisabledByAmino() || !sharedFile2.isDisabledByAmino()) {
                            arrayList.add(sharedFile2);
                        } else {
                            i11--;
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return true;
                }
                intent.putExtra(f.COUNT_KEY, i11);
                intent.putExtra("selected", JacksonUtils.writeAsString(new ArrayList(this.selectedIds)));
                intent.putExtra("class", SharedFile.class);
                intent.putExtra("maxCount", 200);
                int i12 = 0;
                for (int i13 = 0; i13 < i10; i13++) {
                    if ((list().get(i13) instanceof SharedFile) && (allowShowDisabledByAmino() || !((SharedFile) list().get(i13)).isDisabledByAmino())) {
                        i12++;
                    }
                }
                intent.putExtra("position", i12);
                intent.putExtra("allowShowIModeDisable", allowShowDisabledByAmino());
                intent.putExtra("allowShowNormalDisable", allowShowNormalDisable());
                intent.putExtra("apiPath", getApiPath());
                intent.putExtra("sourceType", sourceType());
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
                Callback<Intent> callback = this.galleyPickCallback;
                if (callback != null) {
                    callback.call(intent);
                }
                return true;
            }
            Intent intent2 = FragmentWrapperActivity.intent(SharedPhotoGalleryFragment.class);
            intent2.putExtra("stopTime", this._stopTime);
            intent2.putExtra("start", this._start);
            intent2.putExtra("isEnd", this._isEnd);
            int i14 = this.count;
            List<? extends SharedFile> listRawList2 = rawList();
            ArrayList arrayList2 = new ArrayList();
            if (listRawList2 != null) {
                for (SharedFile sharedFile3 : listRawList2) {
                    if (allowShowDisabledByAmino() || !sharedFile3.isDisabledByAmino()) {
                        arrayList2.add(sharedFile3);
                    } else {
                        i14--;
                    }
                }
            }
            if (arrayList2.isEmpty()) {
                return true;
            }
            intent2.putExtra(f.COUNT_KEY, i14);
            if (arrayList2.size() > 100) {
                SharedPhotoGalleryFragment.FILE_LIST.set(arrayList2, 1000L);
            } else {
                intent2.putExtra("list", JacksonUtils.writeAsString(arrayList2));
            }
            int i15 = 0;
            for (int i16 = 0; i16 < i10; i16++) {
                if ((list().get(i16) instanceof SharedFile) && (allowShowDisabledByAmino() || !((SharedFile) list().get(i16)).isDisabledByAmino())) {
                    i15++;
                }
            }
            intent2.putExtra("position", i15);
            intent2.putExtra("allowShowIModeDisable", allowShowDisabledByAmino());
            intent2.putExtra("allowShowNormalDisable", allowShowNormalDisable());
            intent2.putExtra("apiPath", getApiPath());
            intent2.putExtra("sourceType", sourceType());
            intent2.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent2);
        }
        return super.onItemClick(listAdapter, i10, obj, view, view2);
    }

    public void onNotification(Notification notification) {
        List<String> list;
        Object obj = notification.obj;
        if ((obj instanceof SharedFile) && notification.action == "update") {
            editList(notification, false);
            return;
        }
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, SharedFileListResponse sharedFileListResponse, int i10) {
        super.onPageResponse(apiRequest, sharedFileListResponse, i10);
        int i11 = sharedFileListResponse.totalCount;
        if (i11 >= 0) {
            this.count = i11;
            OnPhotosCountChangeListener onPhotosCountChangeListener = this.onPhotosCountChangeListener;
            if (onPhotosCountChangeListener != null) {
                onPhotosCountChangeListener.onPhotosCountChanged(i11);
            }
        }
    }

    protected void onSelectedCountChanged(int i10) {
        OnSelectedCountChangeListener onSelectedCountChangeListener = this.onSelectedCountChangeListener;
        if (onSelectedCountChangeListener != null) {
            onSelectedCountChangeListener.onSelectedChanged(i10);
        }
    }

    public void setSelectable(boolean z6, Callback<Intent> callback) {
        if (z6 == this.selectable) {
            return;
        }
        this.selectable = z6;
        this.galleyPickCallback = callback;
        notifyDataSetChanged();
    }

    public void setSelectedIds(List<String> list) {
        if (list == null) {
            return;
        }
        this.selectedIds = list;
        onSelectedCountChanged(list.size());
        notifyDataSetChanged();
    }

    private boolean isNewPhoto(SharedFile sharedFile) {
        if (System.currentTimeMillis() - sharedFile.createdTime.getTime() < DateUtils.ONE_DAY) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z6) {
        ApiRequest.Builder builderPath = ApiRequest.builder().path(getApiPath());
        if (!TextUtils.isEmpty(sourceType())) {
            builderPath.param("type", sourceType());
        }
        return builderPath.build();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<SharedFile> filterResponseList(List<SharedFile> list, int i10) {
        List<SharedFile> listFilterDuplicated = Utils.filterDuplicated(rawList(), list);
        if (allowShowNormalDisable()) {
            return listFilterDuplicated;
        }
        return super.filterResponseList(listFilterDuplicated, i10);
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.count = bundle.getInt(f.COUNT_KEY);
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putInt(f.COUNT_KEY, this.count);
        return bundleOnSaveInstanceState;
    }
}
