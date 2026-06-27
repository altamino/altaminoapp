package com.narvii.monetization.sticker.post;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.Sticker;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.model.StickerCollectionListResponse;
import com.narvii.monetization.sticker.widget.StickerCacheImageView;
import com.narvii.sharedfolder.SharedPhotoSelectFragment;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class CustomizedStickerPickListFragment extends NVListFragment {
    Adapter adapter;
    String collectionId;
    List<Sticker> selectedStickers = new ArrayList();
    boolean singlePick;
    ArrayList<Sticker> stickerList;
    StickerService stickerService;

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.stickerService = (StickerService) getService("sticker");
        this.singlePick = getBooleanParam(SharedPhotoSelectFragment.MODE_SINGLE_PICK);
        StickerCollection customizedCollection = this.stickerService.getCustomizedCollection();
        if (customizedCollection == null || customizedCollection.id() == null) {
            finish();
        } else {
            this.collectionId = customizedCollection.id();
            setTitle(R.string.choose_from_favorite_stickers);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDividerHeight(0);
        listView.setDivider(null);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (this.singlePick) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setActionBarRightView(R.string.done, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.post.CustomizedStickerPickListFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (!CustomizedStickerPickListFragment.this.selectedStickers.isEmpty()) {
                        CustomizedStickerPickListFragment.this.finishWithResult();
                    } else {
                        CustomizedStickerPickListFragment.this.finish();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishWithResult() {
        Intent intent = new Intent();
        intent.putExtra("stickerList", JacksonUtils.writeAsString(this.selectedStickers));
        intent.putExtra("index", getIntParam("index"));
        setResult(-1, intent);
        finish();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        int iDpToPx = (int) Utils.dpToPx(getContext(), 5.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, 0, 0, iDpToPx, iDpToPx);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.adapter = new Adapter(this, Sticker.class);
        mergeAdapter.addAdapter(this.adapter);
        divideColumnAdapter.setAdapter(mergeAdapter, 3);
        return divideColumnAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
    }

    class Adapter extends NVArrayAdapter<Sticker> {
        String error;

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendRequest();
        }

        public Adapter(NVContext nVContext, Class<Sticker> cls) {
            super(nVContext, cls);
        }

        public Adapter(NVContext nVContext, Class<Sticker> cls, List<Sticker> list) {
            super(nVContext, cls, list);
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            if (CustomizedStickerPickListFragment.this.stickerList == null) {
                return this.error;
            }
            return null;
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return (CustomizedStickerPickListFragment.this.stickerList == null && this.error == null) ? false : true;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            CustomizedStickerPickListFragment.this.stickerList = null;
            this.error = null;
            sendRequest();
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            return new Bundle();
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof Sticker) {
                Sticker sticker = (Sticker) obj;
                CustomizedStickerPickListFragment customizedStickerPickListFragment = CustomizedStickerPickListFragment.this;
                if (customizedStickerPickListFragment.singlePick) {
                    customizedStickerPickListFragment.selectedStickers.add(sticker);
                    CustomizedStickerPickListFragment.this.finishWithResult();
                } else if (customizedStickerPickListFragment.selectedStickers.contains(sticker)) {
                    CustomizedStickerPickListFragment.this.selectedStickers.remove(sticker);
                    notifyDataSetChanged();
                } else {
                    if (CustomizedStickerPickListFragment.this.selectedStickers.size() >= CustomizedStickerPickListFragment.this.getIntParam("max")) {
                        NVToast.makeText(getContext(), CustomizedStickerPickListFragment.this.getStringParam("maxStr"), 0).show();
                        return true;
                    }
                    CustomizedStickerPickListFragment.this.selectedStickers.add(sticker);
                    notifyDataSetChanged();
                }
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        public void sendRequest() {
            ((ApiService) getService("api")).exec(ApiRequest.builder().path("/sticker-collection").param("type", "my-favorite-collection").param("includeStickers", true).build(), new ApiResponseListener<StickerCollectionListResponse>(StickerCollectionListResponse.class) { // from class: com.narvii.monetization.sticker.post.CustomizedStickerPickListFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, StickerCollectionListResponse stickerCollectionListResponse) throws Exception {
                    StickerCollection stickerCollection;
                    ArrayList<Sticker> arrayList;
                    super.onFinish(apiRequest, (ApiRequest) stickerCollectionListResponse);
                    CustomizedStickerPickListFragment.this.stickerList = new ArrayList<>();
                    if (stickerCollectionListResponse != null && !CollectionUtils.isEmpty(stickerCollectionListResponse.stickerCollectionList) && (stickerCollection = stickerCollectionListResponse.stickerCollectionList.get(0)) != null && (arrayList = stickerCollection.stickerList) != null) {
                        CustomizedStickerPickListFragment.this.stickerList.addAll(arrayList);
                    }
                    CustomizedStickerPickListFragment customizedStickerPickListFragment = CustomizedStickerPickListFragment.this;
                    customizedStickerPickListFragment.stickerService.setStickerList(customizedStickerPickListFragment.collectionId, customizedStickerPickListFragment.stickerList);
                    ArrayList arrayList2 = new ArrayList(CustomizedStickerPickListFragment.this.stickerList);
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        if (((Sticker) it.next()).isDisabled()) {
                            it.remove();
                        }
                    }
                    Adapter.this.setList(arrayList2);
                    Adapter adapter = Adapter.this;
                    adapter.error = null;
                    adapter.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    Adapter adapter = Adapter.this;
                    adapter.error = str;
                    adapter.notifyDataSetChanged();
                }
            });
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Sticker item = getItem(i);
            View viewCreateView = createView(R.layout.item_sticker_favorite_pick, viewGroup, view);
            ((StickerCacheImageView) viewCreateView.findViewById(R.id.sticker)).setStickerImageUrl(CustomizedStickerPickListFragment.this.collectionId, item.icon);
            ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.select);
            ViewUtils.show(imageView, !CustomizedStickerPickListFragment.this.singlePick);
            imageView.setImageResource(CustomizedStickerPickListFragment.this.selectedStickers.contains(item) ? R.drawable.ic_media_selected : R.drawable.ic_media_not_selected);
            imageView.setOnClickListener(this.subviewClickListener);
            ViewUtils.show(viewCreateView, R.id.disabled, item.isDisabled());
            return viewCreateView;
        }
    }
}
