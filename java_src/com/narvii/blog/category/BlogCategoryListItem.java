package com.narvii.blog.category;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.BlogCategory;
import com.narvii.widget.CommunityNameDrawable;
import com.narvii.widget.ThumbImageView;

/* loaded from: classes2.dex */
public class BlogCategoryListItem extends RelativeLayout {
    TextView desc;
    ThumbImageView icon;
    ImageView status;
    TextView stub;
    TextView title;

    public BlogCategoryListItem(Context context) {
        this(context, null);
    }

    public BlogCategoryListItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.icon = (ThumbImageView) findViewById(R.id.icon);
        this.title = (TextView) findViewById(R.id.title);
        this.status = (ImageView) findViewById(R.id.status);
        this.desc = (TextView) findViewById(R.id.subTitle);
        this.stub = (TextView) findViewById(R.id.stub1);
    }

    public void setCategory(BlogCategory blogCategory) throws Resources.NotFoundException {
        Drawable drawable = null;
        if (TextUtils.isEmpty(blogCategory.icon)) {
            this.icon.setImageDrawable(new CommunityNameDrawable(getContext(), blogCategory.label, -1, TypedValue.applyDimension(1, 30.0f, getResources().getDisplayMetrics()), -7829368));
        } else {
            this.icon.setImageDrawable(null);
            this.icon.setImageUrl(blogCategory.icon);
        }
        int i = blogCategory.status;
        if (i == 3) {
            drawable = getResources().getDrawable(R.drawable.categroy_viewonly_grey);
        } else if (i == 9) {
            drawable = getResources().getDrawable(R.drawable.categroy_hide_grey);
        }
        this.status.setImageDrawable(drawable);
        this.title.setText(blogCategory.label);
        this.desc.setText(blogCategory.content);
        this.desc.setVisibility(TextUtils.isEmpty(blogCategory.content) ? 8 : 0);
        if (blogCategory.status == 9) {
            this.icon.setAlpha(0.3f);
            this.title.setAlpha(0.3f);
            this.desc.setAlpha(0.3f);
        } else {
            this.icon.setAlpha(1.0f);
            this.title.setAlpha(1.0f);
            this.desc.setAlpha(1.0f);
        }
    }

    public void setChecked(Boolean bool) {
        this.stub.setVisibility((bool == null || bool.booleanValue()) ? 0 : 4);
        this.stub.setText(bool == null ? R.string.fa_chevron_right : R.string.fa_check);
    }
}
