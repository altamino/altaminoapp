package com.narvii.livelayer.detailview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.detail.DetailAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.livelayer.category.OnlineCategoryConfig;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import io.agora.rtc.Constants;

/* JADX INFO: loaded from: classes10.dex */
public class HeaderLayout extends RelativeLayout {
    private int baseHeight;
    private RealtimeBlurView blurImg;
    private NVImageView icon;
    private int statusBarHeight;
    private TextView title;
    private View titleWrapper;

    public class LayoutParams extends RelativeLayout.LayoutParams {
        public int imageMaxHeight;
        public int imageMinHeight;
        public int minPaddingTop;

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            this.imageMaxHeight = Integer.MAX_VALUE;
            this.imageMinHeight = Integer.MAX_VALUE;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.imageMaxHeight = Integer.MAX_VALUE;
            this.imageMinHeight = Integer.MAX_VALUE;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.imageMaxHeight = Integer.MAX_VALUE;
            this.imageMinHeight = Integer.MAX_VALUE;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.HeaderLayout_Layout);
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, Integer.MAX_VALUE);
            this.imageMaxHeight = dimensionPixelSize;
            this.imageMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, dimensionPixelSize);
            this.minPaddingTop = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        }
    }

    public static class TopAdapter extends NVAdapter {
        private final DetailAdapter.CellType HEADER;
        private View headerPlaceHolder;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this.HEADER;
        }

        private void updateHeaderPlaceHolder() {
            View view = this.headerPlaceHolder;
            if (view == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = HeaderLayout.getStatusBarHeight(this.context) + HeaderLayout.getMinHeight(this.context) + HeaderLayout.getContentHeight(this.context);
            this.headerPlaceHolder.setLayoutParams(layoutParams);
        }

        public TopAdapter(NVContext nVContext) {
            super(nVContext);
            this.HEADER = new DetailAdapter.CellType("user.header");
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (getItem(i10) == this.HEADER) {
                this.headerPlaceHolder = createView(com.narvii.amino.master.R.layout.user_profile_header_placeholder, viewGroup, view);
                updateHeaderPlaceHolder();
                return this.headerPlaceHolder;
            }
            return null;
        }
    }

    public HeaderLayout(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getStatusBarHeight(NVContext nVContext) {
        return 0;
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getMinHeight(NVContext nVContext) {
        if (nVContext instanceof NVFragment) {
            return ((NVFragment) nVContext).getActionBarOverlaySize();
        }
        return 0;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public void setViewInfo(OnlineCategoryConfig onlineCategoryConfig) {
        this.icon.setImageResource(onlineCategoryConfig.iconId());
        this.title.setText(onlineCategoryConfig.titleId());
        int iColor = onlineCategoryConfig.color();
        this.blurImg.setOverlayColor(ColorUtils.j(Color.argb(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, Color.red(iColor), Color.green(iColor), Color.blue(iColor)), 1627389951));
    }

    public HeaderLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setClickable(true);
        this.statusBarHeight = getStatusBarHeight((NVActivity) getContext());
        this.baseHeight = ((NVActivity) getContext()).getActionBarOverlaySize();
    }

    private float calcAlpha(View view, int i10, int i11) {
        int top = view.getTop();
        if (top <= i10) {
            return 0.0f;
        }
        if (top >= i11) {
            return 1.0f;
        }
        return 1.0f - (((i11 - top) * 1.0f) / (i11 - i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getContentHeight(NVContext nVContext) {
        return (int) Utils.dpToPx(nVContext.getContext(), 60.0f);
    }

    public static void initHeadView(NVFragment nVFragment, OverlayLayout overlayLayout, NVListView nVListView) {
        overlayLayout.attach(nVListView);
        overlayLayout.setVisibility(0);
        overlayLayout.setLayout(com.narvii.amino.master.R.layout.live_layer_detail_header, getStatusBarHeight(nVFragment) + getMinHeight(nVFragment) + getContentHeight(nVFragment));
        overlayLayout.setHeight1(getStatusBarHeight(nVFragment) + getMinHeight(nVFragment));
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        NVImageView nVImageView = (NVImageView) findViewById(com.narvii.amino.master.R.id.detail_icon);
        this.icon = nVImageView;
        nVImageView.setShowPressedMask(false);
        this.titleWrapper = findViewById(com.narvii.amino.master.R.id.detail_title_wrapper);
        this.title = (TextView) findViewById(com.narvii.amino.master.R.id.detail_title);
        this.blurImg = (RealtimeBlurView) findViewById(com.narvii.amino.master.R.id.blur);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        super.onLayout(z6, i10, i11, i12, i13);
        int width = getWidth();
        int height = getHeight();
        if (this.icon.getLayoutParams() instanceof LayoutParams) {
            LayoutParams layoutParams = (LayoutParams) this.icon.getLayoutParams();
            i14 = layoutParams.imageMaxHeight;
            i16 = layoutParams.imageMinHeight;
            i15 = layoutParams.minPaddingTop;
        } else {
            i14 = Integer.MAX_VALUE;
            i15 = 0;
            i16 = Integer.MAX_VALUE;
        }
        int iMin = Math.min(this.baseHeight - i15, i16);
        int i17 = this.statusBarHeight + i15;
        int i18 = height - i17;
        if (i18 > this.titleWrapper.getMeasuredHeight() + i14) {
            int i19 = (width - i14) / 2;
            int measuredHeight = ((i18 - (this.titleWrapper.getMeasuredHeight() + i14)) / 2) + i17;
            int i20 = i19 + i14;
            int i21 = i14 + measuredHeight;
            this.icon.layout(i19, measuredHeight, i20, i21);
            this.titleWrapper.setAlpha(1.0f);
            View view = this.titleWrapper;
            view.layout(0, i21, width, view.getMeasuredHeight() + i21);
            return;
        }
        if (i18 > this.titleWrapper.getMeasuredHeight() + iMin) {
            int measuredHeight2 = i18 - this.titleWrapper.getMeasuredHeight();
            int i22 = (width - measuredHeight2) / 2;
            int i23 = i22 + measuredHeight2;
            int i24 = measuredHeight2 + i17;
            this.icon.layout(i22, i17, i23, i24);
            this.titleWrapper.setAlpha(1.0f);
            View view2 = this.titleWrapper;
            view2.layout(0, i24, width, view2.getMeasuredHeight() + i24);
            return;
        }
        int i25 = (width - iMin) / 2;
        int i26 = i25 + iMin;
        int i27 = iMin + i17;
        this.icon.layout(i25, i17, i26, i27);
        View view3 = this.titleWrapper;
        view3.setAlpha(calcAlpha(view3, i27 - view3.getPaddingTop(), i27));
    }
}
