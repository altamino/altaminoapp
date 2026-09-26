package com.narvii.amino.page;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Region;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.modulization.page.Page;
import com.narvii.util.Utils;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
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

    public PageSecondLevelLayout(@NonNull Context context) {
        this(context, null);
    }

    public View getChatChildView() {
        return this.chatChildView;
    }

    public void setPageItemClickListener(PageItemClickListener pageItemClickListener) {
        this.clickListener = pageItemClickListener;
    }

    public PageSecondLevelLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.inflater = LayoutInflater.from(context);
        this.paint = new Paint(1);
        this.backgoundColor = ContextCompat.getColor(getContext(), R.color.draw_host_overlay_color);
        setWillNotDraw(false);
    }

    public void setPageItems(NVContext nVContext, List<Page> list, int i10) {
        this.pageItems = list;
        this.chatChildView = null;
        if (list == null) {
            return;
        }
        int size = list.size();
        int i11 = (size / 3) + (size % 3 == 0 ? 0 : 1);
        while (this.gridLayout.getChildCount() > size) {
            GridLayout gridLayout = this.gridLayout;
            gridLayout.removeViewAt(gridLayout.getChildCount() - 1);
        }
        this.gridLayout.setColumnCount(3);
        this.rowCount = i11;
        try {
            this.gridLayout.setRowCount(i11);
        } catch (Exception unused) {
        }
        final int i12 = 0;
        while (i12 < size) {
            View childAt = this.gridLayout.getChildCount() > i12 ? this.gridLayout.getChildAt(i12) : null;
            if (childAt == null) {
                childAt = this.inflater.inflate(R.layout.item_page_second_layout, (ViewGroup) this.gridLayout, false);
                this.gridLayout.addView(childAt);
            }
            final Page page = this.pageItems.get(i12);
            ImageView imageView = (ImageView) childAt.findViewById(R.id.page_item_icon);
            imageView.setBackgroundDrawable(page.getIconBackgroundDrawable(nVContext));
            imageView.setImageDrawable(page.getIcon(getContext()));
            ((TextView) childAt.findViewById(R.id.page_item_name)).setText(page.getDisplayName(getContext()));
            TextView textView = (TextView) childAt.findViewById(R.id.page_item_badge);
            if (page.isMyChatPage()) {
                this.chatChildView = childAt;
            }
            textView.setVisibility((!page.isMyChatPage() || i10 <= 0) ? 8 : 0);
            textView.setText(i10 > 9 ? "9+" : String.valueOf(i10));
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            layoutParams.width = (int) (getResources().getDimension(R.dimen.drawer_left_content_width) / 3.0f);
            layoutParams.height = -2;
            childAt.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.page.PageSecondLevelLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PageItemClickListener pageItemClickListener = PageSecondLevelLayout.this.clickListener;
                    if (pageItemClickListener != null) {
                        pageItemClickListener.onItemClicked(i12, page);
                    }
                }
            });
            i12++;
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        int i10 = 1;
        for (int i11 = 1; i11 < 3; i11++) {
            canvas.clipRect((int) (((this.width * i11) / 3) - (Utils.dpToPx(getContext(), 1.0f) / 2.0f)), 0.0f, (int) (((this.width * i11) / 3) + (Utils.dpToPx(getContext(), 1.0f) / 2.0f)), this.height, Region.Op.DIFFERENCE);
        }
        while (true) {
            int i12 = this.rowCount;
            if (i10 < i12) {
                canvas.clipRect(0.0f, (int) (((this.height * i10) / i12) - (Utils.dpToPx(getContext(), 1.0f) / 2.0f)), this.width, (int) (((this.height * i10) / this.rowCount) + (Utils.dpToPx(getContext(), 1.0f) / 2.0f)), Region.Op.DIFFERENCE);
                i10++;
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

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        GridLayout gridLayout = (GridLayout) findViewById(R.id.grid);
        this.gridLayout = gridLayout;
        gridLayout.setColumnCount(3);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.width = i10;
        this.height = i11;
    }
}
