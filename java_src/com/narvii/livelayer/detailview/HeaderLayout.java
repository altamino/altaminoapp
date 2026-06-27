package com.narvii.livelayer.detailview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.support.v4.graphics.ColorUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.mastes.R;
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

/* loaded from: classes3.dex */
public class HeaderLayout extends RelativeLayout {
    private int baseHeight;
    private RealtimeBlurView blurImg;
    private NVImageView icon;
    private int statusBarHeight;
    private TextView title;
    private View titleWrapper;

    /* JADX INFO: Access modifiers changed from: private */
    public static int getStatusBarHeight(NVContext nVContext) {
        return 0;
    }

    public HeaderLayout(Context context) {
        this(context, null);
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HeaderLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setClickable(true);
        this.statusBarHeight = getStatusBarHeight((NVActivity) getContext());
        this.baseHeight = ((NVActivity) getContext()).getActionBarOverlaySize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getMinHeight(NVContext nVContext) {
        if (nVContext instanceof NVFragment) {
            return ((NVFragment) nVContext).getActionBarOverlaySize();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getContentHeight(NVContext nVContext) {
        return (int) Utils.dpToPx(nVContext.getContext(), 60.0f);
    }

    public static void initHeadView(NVFragment nVFragment, OverlayLayout overlayLayout, NVListView nVListView) {
        overlayLayout.attach(nVListView);
        overlayLayout.setVisibility(0);
        overlayLayout.setLayout(R.layout.live_layer_detail_header, getStatusBarHeight(nVFragment) + getMinHeight(nVFragment) + getContentHeight(nVFragment));
        overlayLayout.setHeight1(getStatusBarHeight(nVFragment) + getMinHeight(nVFragment));
    }

    public void setViewInfo(OnlineCategoryConfig onlineCategoryConfig) {
        this.icon.setImageResource(onlineCategoryConfig.iconId());
        this.title.setText(onlineCategoryConfig.titleId());
        int iColor = onlineCategoryConfig.color();
        this.blurImg.setOverlayColor(ColorUtils.compositeColors(Color.argb(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, Color.red(iColor), Color.green(iColor), Color.blue(iColor)), 1627389951));
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.icon = (NVImageView) findViewById(R.id.detail_icon);
        this.icon.setShowPressedMask(false);
        this.titleWrapper = findViewById(R.id.detail_title_wrapper);
        this.title = (TextView) findViewById(R.id.detail_title);
        this.blurImg = (RealtimeBlurView) findViewById(R.id.blur);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        super.onLayout(z, i, i2, i3, i4);
        int width = getWidth();
        int height = getHeight();
        int i7 = Integer.MAX_VALUE;
        if (this.icon.getLayoutParams() instanceof LayoutParams) {
            LayoutParams layoutParams = (LayoutParams) this.icon.getLayoutParams();
            int i8 = layoutParams.imageMaxHeight;
            int i9 = layoutParams.imageMinHeight;
            i5 = layoutParams.minPaddingTop;
            i6 = i8;
            i7 = i9;
        } else {
            i5 = 0;
            i6 = Integer.MAX_VALUE;
        }
        int iMin = Math.min(this.baseHeight - i5, i7);
        int i10 = this.statusBarHeight + i5;
        int i11 = height - i10;
        if (i11 > this.titleWrapper.getMeasuredHeight() + i6) {
            int i12 = (width - i6) / 2;
            int measuredHeight = ((i11 - (this.titleWrapper.getMeasuredHeight() + i6)) / 2) + i10;
            int i13 = i12 + i6;
            int i14 = i6 + measuredHeight;
            this.icon.layout(i12, measuredHeight, i13, i14);
            this.titleWrapper.setAlpha(1.0f);
            View view = this.titleWrapper;
            view.layout(0, i14, width, view.getMeasuredHeight() + i14);
            return;
        }
        if (i11 > this.titleWrapper.getMeasuredHeight() + iMin) {
            int measuredHeight2 = i11 - this.titleWrapper.getMeasuredHeight();
            int i15 = (width - measuredHeight2) / 2;
            int i16 = i15 + measuredHeight2;
            int i17 = measuredHeight2 + i10;
            this.icon.layout(i15, i10, i16, i17);
            this.titleWrapper.setAlpha(1.0f);
            View view2 = this.titleWrapper;
            view2.layout(0, i17, width, view2.getMeasuredHeight() + i17);
            return;
        }
        int i18 = (width - iMin) / 2;
        int i19 = i18 + iMin;
        int i20 = iMin + i10;
        this.icon.layout(i18, i10, i19, i20);
        View view3 = this.titleWrapper;
        view3.setAlpha(calcAlpha(view3, i20 - view3.getPaddingTop(), i20));
    }

    private float calcAlpha(View view, int i, int i2) {
        int top = view.getTop();
        if (top <= i) {
            return 0.0f;
        }
        if (top >= i2) {
            return 1.0f;
        }
        return 1.0f - (((i2 - top) * 1.0f) / (i2 - i));
    }

    public static class TopAdapter extends NVAdapter {
        private final DetailAdapter.CellType HEADER;
        private View headerPlaceHolder;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        public TopAdapter(NVContext nVContext) {
            super(nVContext);
            this.HEADER = new DetailAdapter.CellType("user.header");
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.HEADER;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (getItem(i) != this.HEADER) {
                return null;
            }
            this.headerPlaceHolder = createView(R.layout.user_profile_header_placeholder, viewGroup, view);
            updateHeaderPlaceHolder();
            return this.headerPlaceHolder;
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
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public class LayoutParams extends RelativeLayout.LayoutParams {
        public int imageMaxHeight;
        public int imageMinHeight;
        public int minPaddingTop;

        public LayoutParams(int i, int i2) {
            super(i, i2);
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
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.HeaderLayout_Layout);
            this.imageMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, Integer.MAX_VALUE);
            this.imageMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, this.imageMaxHeight);
            this.minPaddingTop = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        }
    }
}
