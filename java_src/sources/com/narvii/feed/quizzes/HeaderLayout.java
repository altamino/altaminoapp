package com.narvii.feed.quizzes;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes8.dex */
public class HeaderLayout extends RelativeLayout {
    private static final int ICON_FINAL_SIZE = 30;
    private static final int ICON_INIT_SIZE = 60;
    private int actionbarSize;
    private float allOverlayHeight;
    private float baseOverlayHeight;
    private float finalIconLeft;
    private int finalIconSize;
    private int finalTextSize;
    private float finalTitleWidth;
    private float iconTextMargin;
    TextView infoHint;
    ImageView infoIcon;
    View infoLayout;
    TextView infoTitle;
    private View infoTitleContainer;
    private float initIconLeft;
    private int initIconSize;
    private int initTextSize;
    private float initTilteWidth;
    private int statusBarSize;
    private float tabOverlayHeight;
    private Paint titlePaint;

    public HeaderLayout(Context context) {
        this(context, null);
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HeaderLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        initView();
    }

    private void initView() {
        this.statusBarSize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        this.actionbarSize = ((NVActivity) getContext()).getActionBarOverlaySize();
        this.allOverlayHeight = getResources().getDimension(R.dimen.quizzes_header_overlay_header_with_section_height);
        float dimension = getResources().getDimension(R.dimen.quizzes_header_tab_height);
        this.tabOverlayHeight = dimension;
        this.baseOverlayHeight = dimension + this.statusBarSize + this.actionbarSize;
        this.initIconSize = (int) Utils.dpToPx(getContext(), 60.0f);
        this.finalIconSize = (int) Utils.dpToPx(getContext(), 30.0f);
        this.finalTextSize = 24;
        this.initTextSize = 24;
        this.iconTextMargin = Utils.dpToPx(getContext(), 6.0f);
        Paint paint = new Paint(1);
        this.titlePaint = paint;
        paint.setTextSize(Utils.dpToPx(getContext(), this.finalTextSize));
        String string = getResources().getString(R.string.best_quizzes);
        this.finalTitleWidth = this.titlePaint.measureText(string, 0, string.length());
        this.titlePaint.setTextSize(Utils.dpToPx(getContext(), this.initTextSize));
        this.initTilteWidth = this.titlePaint.measureText(string, 0, string.length());
        this.initIconLeft = Utils.dpToPx(getContext(), 40.0f);
        this.finalIconLeft = (parentLayoutWidth() / 2.0f) - ((((this.initIconSize + this.finalTitleWidth) + this.iconTextMargin) + Utils.dpToPx(getContext(), 8.0f)) / 2.0f);
    }

    private int parentLayoutWidth() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.x;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.infoIcon = (ImageView) findViewById(R.id.info_icon);
        this.infoTitle = (TextView) findViewById(R.id.info_title);
        this.infoHint = (TextView) findViewById(R.id.info_hint);
        this.infoLayout = findViewById(R.id.overlay_info_layout);
        this.infoTitleContainer = findViewById(R.id.info_title_container);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        int height = getHeight();
        boolean zIsRtl = Utils.isRtl();
        float f = this.allOverlayHeight;
        float f6 = this.baseOverlayHeight;
        if (f == f6) {
            return;
        }
        float f7 = height;
        float f10 = 1.0f - ((f7 - f6) / (f - f6));
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        int i14 = this.initTextSize;
        int i15 = this.finalTextSize;
        float f11 = i14 - ((i14 - i15) * f10);
        if (f11 < i15) {
            f11 = i15;
        }
        this.infoTitle.getWidth();
        float height2 = this.infoIcon.getHeight();
        float f12 = this.initIconLeft;
        float f13 = f12 - ((f12 - this.finalIconLeft) * f10);
        float f14 = 1.0f - f10;
        float fDpToPx = ((f13 + height2) + (this.iconTextMargin * f14)) - (Utils.dpToPx(getContext(), 2.0f) * f10);
        if (zIsRtl) {
            float width = getWidth();
            float f15 = this.initIconLeft;
            f13 = ((width - f15) + ((f15 - this.finalIconLeft) * f10)) - height2;
            fDpToPx = (f13 - (this.iconTextMargin * f14)) + (Utils.dpToPx(getContext(), 2.0f) * f10);
        }
        this.infoTitle.setTextSize(1, f11);
        if (zIsRtl) {
            this.infoIcon.layout((int) f13, (int) (this.infoLayout.getPaddingTop() + this.statusBarSize + f10 + Utils.dpToPx(getContext(), 2.0f)), (int) (f13 + height2), (int) ((height - this.infoLayout.getPaddingBottom()) - this.tabOverlayHeight));
            this.infoTitleContainer.layout(0, this.infoLayout.getPaddingTop() + this.statusBarSize, (int) fDpToPx, (int) ((height - this.infoLayout.getPaddingBottom()) - this.tabOverlayHeight));
        } else {
            this.infoIcon.layout((int) f13, (int) (this.infoLayout.getPaddingTop() + this.statusBarSize + f10 + Utils.dpToPx(getContext(), 2.0f)), (int) (f13 + height2), (int) ((height - this.infoLayout.getPaddingBottom()) - this.tabOverlayHeight));
            this.infoTitleContainer.layout((int) fDpToPx, this.infoLayout.getPaddingTop() + this.statusBarSize, getWidth() - this.infoTitleContainer.getPaddingRight(), (int) ((height - this.infoLayout.getPaddingBottom()) - this.tabOverlayHeight));
        }
        float f16 = this.baseOverlayHeight;
        float f17 = this.allOverlayHeight;
        float f18 = (f16 + f17) / 2.0f;
        float f19 = (f18 + f17) / 2.0f;
        if (f7 <= f18) {
            this.infoHint.setAlpha(0.0f);
            this.infoHint.setVisibility(8);
        } else if (f7 >= f19) {
            this.infoHint.setVisibility(0);
            this.infoHint.setAlpha(1.0f);
        } else {
            this.infoHint.setVisibility(0);
            this.infoHint.setAlpha((f7 - f18) / (f17 - f18));
        }
    }
}
