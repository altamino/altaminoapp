package com.narvii.monetization.sticker.mood;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.monetization.StickerCollectionOwnStatusController;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.sticker.collection.HeaderLayout;
import com.narvii.monetization.sticker.model.MoodStickerCollection;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.util.ViewUtils;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import com.narvii.widget.NVListView;

/* loaded from: classes3.dex */
public class MoodCollectionDetailFragment extends MoodBaseListFragment {
    OverlayLayout header;
    StickerCollectionOwnStatusController storeItemOwnStatusController;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.monetization.sticker.mood.MoodBaseListFragment
    protected boolean isMoodClickable() {
        return false;
    }

    @Override // com.narvii.monetization.sticker.mood.MoodBaseListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.source = "Store Detail";
    }

    @Override // com.narvii.monetization.sticker.mood.MoodBaseListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.header = (OverlayLayout) view.findViewById(R.id.overlay);
        super.onViewCreated(view, bundle);
        this.header.attach((NVListView) getListView());
        updateHeader();
        if (getActivity() instanceof NVActivity) {
            this.header.setHeight1(getActionBarOverlaySize() + getStatusBarOverlaySize());
        }
    }

    private void updateHeader() throws Resources.NotFoundException {
        if (this.header == null) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.sticker_collection_detail_header_height);
        this.header.setLayout(R.layout.sticker_collection_detail_header, dimensionPixelSize);
        HeaderLayout headerLayout = (HeaderLayout) this.header.findViewById(R.id.detail_header);
        headerLayout.setHeight1(dimensionPixelSize);
        headerLayout.setStickerCollection(new MoodStickerCollection(getContext()));
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addLayouts(R.layout.sticker_collection_detail_placeholder);
        mergeAdapter.addAdapter(staticViewAdapter);
        mergeAdapter.addAdapter(new DetailAdapter(this));
        StaticViewAdapter staticViewAdapter2 = new StaticViewAdapter();
        staticViewAdapter2.addLayouts(R.layout.mood_sticker_collection_divider);
        mergeAdapter.addAdapter(staticViewAdapter2);
        mergeAdapter.addAdapter(getMoodBaseAdapter());
        return mergeAdapter;
    }

    class DetailAdapter extends AdriftAdapter {
        public DetailAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.sticker_collection_detail, viewGroup, view);
            MoodStickerCollection moodStickerCollection = new MoodStickerCollection(getContext());
            ((StoreItemNameView) viewCreateView.findViewById(R.id.sticker_collection_name)).setStoreItem(moodStickerCollection);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.collection_desc);
            String description = moodStickerCollection.getDescription();
            if (TextUtils.isEmpty(description)) {
                textView.setText(description);
                ViewUtils.show(textView, false);
            } else {
                NVText nVText = new NVText(description);
                nVText.markAllEntries(new DefaultTagClickListener());
                textView.setClickable(true);
                textView.setMovementMethod(LinkTouchMovementMethod.getInstance());
                textView.setText(nVText, TextView.BufferType.SPANNABLE);
                ViewUtils.show(textView, true);
            }
            StoreItemStatusView storeItemStatusView = (StoreItemStatusView) viewCreateView.findViewById(R.id.store_item_status_view);
            MoodCollectionDetailFragment moodCollectionDetailFragment = MoodCollectionDetailFragment.this;
            if (moodCollectionDetailFragment.storeItemOwnStatusController == null) {
                moodCollectionDetailFragment.storeItemOwnStatusController = new StickerCollectionOwnStatusController(getParentContext(), storeItemStatusView);
            }
            MoodCollectionDetailFragment.this.storeItemOwnStatusController.setStoreItem(moodStickerCollection);
            return viewCreateView;
        }
    }
}
