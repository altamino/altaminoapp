package com.narvii.feed.quizzes;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
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

    public HeaderLayout(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        super(context, attributeSet, i);
        initView();
    }

    private void initView() throws Resources.NotFoundException {
        this.statusBarSize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        this.actionbarSize = ((NVActivity) getContext()).getActionBarOverlaySize();
        this.allOverlayHeight = getResources().getDimension(R.dimen.quizzes_header_overlay_header_with_section_height);
        this.tabOverlayHeight = getResources().getDimension(R.dimen.quizzes_header_tab_height);
        this.baseOverlayHeight = this.tabOverlayHeight + this.statusBarSize + this.actionbarSize;
        this.initIconSize = (int) Utils.dpToPx(getContext(), 60.0f);
        this.finalIconSize = (int) Utils.dpToPx(getContext(), 30.0f);
        this.finalTextSize = 24;
        this.initTextSize = 24;
        this.iconTextMargin = Utils.dpToPx(getContext(), 6.0f);
        this.titlePaint = new Paint(1);
        this.titlePaint.setTextSize(Utils.dpToPx(getContext(), this.finalTextSize));
        String string = getResources().getString(R.string.best_quizzes);
        this.finalTitleWidth = this.titlePaint.measureText(string, 0, string.length());
        this.titlePaint.setTextSize(Utils.dpToPx(getContext(), this.initTextSize));
        this.initTilteWidth = this.titlePaint.measureText(string, 0, string.length());
        this.initIconLeft = Utils.dpToPx(getContext(), 40.0f);
        this.finalIconLeft = (parentLayoutWidth() / 2.0f) - ((((this.initIconSize + this.finalTitleWidth) + this.iconTextMargin) + Utils.dpToPx(getContext(), 8.0f)) / 2.0f);
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
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int height = getHeight();
        boolean zIsRtl = Utils.isRtl();
        float f = this.allOverlayHeight;
        float f2 = this.baseOverlayHeight;
        if (f == f2) {
            return;
        }
        float f3 = height;
        float f4 = 1.0f - ((f3 - f2) / (f - f2));
        if (f4 < 0.0f) {
            f4 = 0.0f;
        }
        if (f4 > 1.0f) {
            f4 = 1.0f;
        }
        int i5 = this.initIconSize;
        int i6 = this.finalIconSize;
        float f5 = i5 - ((i5 - i6) * f4);
        float f6 = this.initTextSize - ((r1 - this.finalTextSize) * f4);
        int i7 = (f5 > i6 ? 1 : (f5 == i6 ? 0 : -1));
        int i8 = this.finalTextSize;
        if (f6 < i8) {
            f6 = i8;
        }
        this.infoTitle.getWidth();
        float height2 = this.infoIcon.getHeight();
        float f7 = this.initIconLeft;
        float f8 = f7 - ((f7 - this.finalIconLeft) * f4);
        float f9 = 1.0f - f4;
        float fDpToPx = ((f8 + height2) + (this.iconTextMargin * f9)) - (Utils.dpToPx(getContext(), 2.0f) * f4);
        if (zIsRtl) {
            float width = getWidth();
            float f10 = this.initIconLeft;
            f8 = ((width - f10) + ((f10 - this.finalIconLeft) * f4)) - height2;
            fDpToPx = (f8 - (this.iconTextMargin * f9)) + (Utils.dpToPx(getContext(), 2.0f) * f4);
        }
        this.infoTitle.setTextSize(1, f6);
        if (zIsRtl) {
            this.infoIcon.layout((int) f8, (int) (this.infoLayout.getPaddingTop() + this.statusBarSize + f4 + Utils.dpToPx(getContext(), 2.0f)), (int) (f8 + height2), (int) ((height - this.infoLayout.getPaddingBottom()) - this.tabOverlayHeight));
            this.infoTitleContainer.layout(0, this.infoLayout.getPaddingTop() + this.statusBarSize, (int) fDpToPx, (int) ((height - this.infoLayout.getPaddingBottom()) - this.tabOverlayHeight));
        } else {
            this.infoIcon.layout((int) f8, (int) (this.infoLayout.getPaddingTop() + this.statusBarSize + f4 + Utils.dpToPx(getContext(), 2.0f)), (int) (f8 + height2), (int) ((height - this.infoLayout.getPaddingBottom()) - this.tabOverlayHeight));
            this.infoTitleContainer.layout((int) fDpToPx, this.infoLayout.getPaddingTop() + this.statusBarSize, getWidth() - this.infoTitleContainer.getPaddingRight(), (int) ((height - this.infoLayout.getPaddingBottom()) - this.tabOverlayHeight));
        }
        float f11 = this.baseOverlayHeight;
        float f12 = this.allOverlayHeight;
        float f13 = (f11 + f12) / 2.0f;
        float f14 = (f13 + f12) / 2.0f;
        if (f3 <= f13) {
            this.infoHint.setAlpha(0.0f);
            this.infoHint.setVisibility(8);
        } else if (f3 >= f14) {
            this.infoHint.setVisibility(0);
            this.infoHint.setAlpha(1.0f);
        } else {
            this.infoHint.setVisibility(0);
            this.infoHint.setAlpha((f3 - f13) / (f12 - f13));
        }
    }

    private int parentLayoutWidth() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.x;
    }
}
