package com.narvii.amino.page;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.model.Community;
import com.narvii.modulization.page.Page;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes2.dex */
public class PageTopLevelLayout extends LinearLayout {
    private View chatChildView;
    PageItemClickListener clickListener;
    LayoutInflater inflater;
    List<Page> pageItems;

    public PageTopLevelLayout(Context context) {
        this(context, null);
    }

    public PageTopLevelLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.inflater = LayoutInflater.from(context);
        setOrientation(1);
    }

    public void setPageItemClickListener(PageItemClickListener pageItemClickListener) {
        this.clickListener = pageItemClickListener;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    public void setPageItems(NVContext nVContext, List<Page> list, int i) {
        this.pageItems = list;
        this.chatChildView = null;
        if (this.pageItems == null) {
            return;
        }
        while (getChildCount() > this.pageItems.size()) {
            removeViewAt(getChildCount() - 1);
        }
        final int i2 = 0;
        while (i2 < this.pageItems.size()) {
            if (this.pageItems.get(i2) != null) {
                View childAt = getChildCount() > i2 ? getChildAt(i2) : null;
                if (childAt == null) {
                    childAt = this.inflater.inflate(R.layout.item_page_top_layout, (ViewGroup) this, false);
                    addView(childAt);
                }
                final Page page = this.pageItems.get(i2);
                childAt.setTag(R.id.lsp_indicator, page.url);
                View viewFindViewById = childAt.findViewById(R.id.cur_page_indicator);
                Community community = ((CommunityService) nVContext.getService("community")).getCommunity(((ConfigService) nVContext.getService("config")).getCommunityId());
                if (community != null) {
                    viewFindViewById.setBackgroundDrawable(new ColorDrawable(community.themeColor()));
                }
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
                childAt.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.page.PageTopLevelLayout.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        PageItemClickListener pageItemClickListener = PageTopLevelLayout.this.clickListener;
                        if (pageItemClickListener != null) {
                            pageItemClickListener.onItemClicked(i2, page);
                        }
                    }
                });
            }
            i2++;
        }
    }

    public void updateIndicator(String str) {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            boolean zIsEqualsNotNull = Utils.isEqualsNotNull(str, childAt.getTag(R.id.lsp_indicator));
            View viewFindViewById = childAt.findViewById(R.id.cur_page_indicator);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(zIsEqualsNotNull ? 0 : 4);
            }
            View viewFindViewById2 = childAt.findViewById(R.id.top_content_container);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setBackgroundDrawable(new ColorDrawable(getResources().getColor(zIsEqualsNotNull ? R.color.draw_host_overlay_highlight_color : R.color.draw_host_overlay_color)));
            }
        }
    }

    public View getChatChildView() {
        return this.chatChildView;
    }
}
