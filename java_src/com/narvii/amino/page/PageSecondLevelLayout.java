package com.narvii.amino.page;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Region;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.modulization.page.Page;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes2.dex */
public class PageSecondLevelLayout extends FrameLayout {
    private static final int COUNT_COLUMN = 3;
    private static final float DIVIDER_WIDTH = 1.0f;
    private int backgoundColor;
    private View chatChildView;
    PageItemClickListener clickListener;
    GridLayout gridLayout;
    private int height;
    LayoutInflater inflater;
    List<Page> pageItems;
    private Paint paint;
    private int rowCount;
    private int width;

    public PageSecondLevelLayout(Context context) {
        this(context, null);
    }

    public PageSecondLevelLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.inflater = LayoutInflater.from(context);
        this.paint = new Paint(1);
        this.backgoundColor = ContextCompat.getColor(getContext(), R.color.draw_host_overlay_color);
        setWillNotDraw(false);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.gridLayout = (GridLayout) findViewById(R.id.grid);
        this.gridLayout.setColumnCount(3);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.width = i;
        this.height = i2;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        int i = 1;
        for (int i2 = 1; i2 < 3; i2++) {
            canvas.clipRect((int) (((this.width * i2) / 3) - (Utils.dpToPx(getContext(), 1.0f) / 2.0f)), 0.0f, (int) (((this.width * i2) / 3) + (Utils.dpToPx(getContext(), 1.0f) / 2.0f)), this.height, Region.Op.DIFFERENCE);
        }
        while (true) {
            if (i < this.rowCount) {
                canvas.clipRect(0.0f, (int) (((this.height * i) / r1) - (Utils.dpToPx(getContext(), 1.0f) / 2.0f)), this.width, (int) (((this.height * i) / this.rowCount) + (Utils.dpToPx(getContext(), 1.0f) / 2.0f)), Region.Op.DIFFERENCE);
                i++;
            } else {
                this.paint.setColor(this.backgoundColor);
                canvas.drawRect(0.0f, 0.0f, this.width, this.height, this.paint);
                canvas.restore();
                super.dispatchDraw(canvas);
                return;
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public void setPageItemClickListener(PageItemClickListener pageItemClickListener) {
        this.clickListener = pageItemClickListener;
    }

    public void setPageItems(NVContext nVContext, List<Page> list, int i) {
        this.pageItems = list;
        this.chatChildView = null;
        List<Page> list2 = this.pageItems;
        if (list2 == null) {
            return;
        }
        int size = list2.size();
        int i2 = (size / 3) + (size % 3 == 0 ? 0 : 1);
        while (this.gridLayout.getChildCount() > size) {
            GridLayout gridLayout = this.gridLayout;
            gridLayout.removeViewAt(gridLayout.getChildCount() - 1);
        }
        this.gridLayout.setColumnCount(3);
        this.rowCount = i2;
        try {
            this.gridLayout.setRowCount(i2);
        } catch (Exception unused) {
        }
        final int i3 = 0;
        while (i3 < size) {
            View childAt = this.gridLayout.getChildCount() > i3 ? this.gridLayout.getChildAt(i3) : null;
            if (childAt == null) {
                childAt = this.inflater.inflate(R.layout.item_page_second_layout, (ViewGroup) this.gridLayout, false);
                this.gridLayout.addView(childAt);
            }
            final Page page = this.pageItems.get(i3);
            ImageView imageView = (ImageView) childAt.findViewById(R.id.page_item_icon);
            imageView.setBackgroundDrawable(page.getIconBackgroundDrawable(nVContext));
            imageView.setImageDrawable(page.getIcon(getContext()));
            ((TextView) childAt.findViewById(R.id.page_item_name)).setText(page.getDisplayName(getContext()));
            TextView textView = (TextView) childAt.findViewById(R.id.page_item_badge);
            if (page.isMyChatPage()) {
                this.chatChildView = childAt;
            }
            textView.setVisibility((!page.isMyChatPage() || i <= 0) ? 8 : 0);
            textView.setText(i > 9 ? "9+" : String.valueOf(i));
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            layoutParams.width = (int) (getResources().getDimension(R.dimen.drawer_left_content_width) / 3.0f);
            layoutParams.height = -2;
            childAt.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.page.PageSecondLevelLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PageItemClickListener pageItemClickListener = PageSecondLevelLayout.this.clickListener;
                    if (pageItemClickListener != null) {
                        pageItemClickListener.onItemClicked(i3, page);
                    }
                }
            });
            i3++;
        }
        invalidate();
    }

    public View getChatChildView() {
        return this.chatChildView;
    }
}
