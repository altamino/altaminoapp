package com.narvii.wallet.optinads;

import ai.medialab.medialabads2.banners.MediaLabAdView;
import ai.medialab.medialabads2.data.AdSize;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.ProxyAdapter;
import com.narvii.prompt.AccountPopUpUtils;
import com.narvii.util.Log;
import com.narvii.util.MLUtilsKt;
import com.narvii.util.Tag;

/* JADX INFO: loaded from: classes5.dex */
public class OptinAdsAdapter extends ProxyAdapter {
    public static final Tag ADS = new Tag(AccountPopUpUtils.POPUP_TYPE_ADS);
    private int A;
    private int B;
    private int ROLLING;
    private String adUnitId;
    private MediaLabAdView adView;
    public boolean addDivider;
    private boolean darkTheme;

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // com.narvii.list.NVAdapter
    public void setDarkTheme(boolean z6) {
        this.darkTheme = z6;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public int getCount() {
        int count = this.wrapped.getCount();
        int i10 = this.A;
        return count > i10 ? count + (((count - i10) - 1) / this.B) + 1 : count;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.wrapped.getViewTypeCount() + this.ROLLING;
    }

    public void set(int i10, int i11) {
        if (i10 == this.A && i11 == this.B) {
            return;
        }
        this.A = i10;
        this.B = i11;
        notifyDataSetChanged();
    }

    protected int trans(int i10) {
        int i11 = this.A;
        if (i10 < i11) {
            return i10;
        }
        if (i10 == i11) {
            return -1;
        }
        int i12 = i10 - i11;
        int i13 = i12 - 1;
        if (i13 > 0) {
            int i14 = this.B;
            if (i12 % (i14 + 1) == 0) {
                return ((-i12) / (i14 + 1)) - 1;
            }
        }
        return (i13 - (i13 / (this.B + 1))) + i11;
    }

    public OptinAdsAdapter(NVContext nVContext, int i10, int i11, String str) {
        super(nVContext);
        this.ROLLING = 50;
        this.A = i10;
        this.B = i11;
        this.adUnitId = str;
        MediaLabAdView mediaLabAdView = new MediaLabAdView(getContext());
        this.adView = mediaLabAdView;
        mediaLabAdView.initialize("feed", AdSize.MEDIUM_RECTANGLE);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i10) {
        int iTrans = trans(i10);
        if (iTrans < 0) {
            return ADS;
        }
        return this.wrapped.getItem(iTrans);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public long getItemId(int i10) {
        int iTrans = trans(i10);
        if (iTrans < 0) {
            return iTrans | (ADS.hashCode() << 32);
        }
        return this.wrapped.getItemId(iTrans);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        int iTrans = trans(i10);
        if (iTrans < 0) {
            return this.wrapped.getViewTypeCount() + ((-iTrans) % this.ROLLING);
        }
        return this.wrapped.getItemViewType(iTrans);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        int iTrans = trans(i10);
        if (iTrans < 0) {
            if (view instanceof MediaLabAdView) {
                Log.d("OptinAdsAdapter", "MediaLab MedRect - Returning old ad view");
                return view;
            }
            if (this.adView.showPreloadedAd()) {
                Log.v("OptinAdsAdapter", "MediaLab MedRect - New ad view ready");
                this.adView.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, (getContext().getResources().getDimensionPixelSize(R.dimen.ad_divider_padding) * 2) + AdSize.MEDIUM_RECTANGLE.getHeightPx(getContext())));
                MLUtilsKt.centerMRECView(this.adView);
                return this.adView;
            }
            Log.d("OptinAdsAdapter", "MediaLab MedRect - No ad view available");
            return new View(this.context.getContext());
        }
        return this.wrapped.getView(iTrans, view, viewGroup);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        int iTrans = trans(i10);
        if (iTrans < 0) {
            return false;
        }
        return this.wrapped.isEnabled(iTrans);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        int iTrans = trans(i10);
        if (iTrans < 0) {
            return true;
        }
        return super.onItemClick(listAdapter, iTrans, obj, view, view2);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        int iTrans = trans(i10);
        if (iTrans < 0) {
            return false;
        }
        return super.onLongClick(listAdapter, iTrans, obj, view, view2);
    }
}
