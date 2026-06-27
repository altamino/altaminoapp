package com.narvii.amino.speeddial;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.ChatThread;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* loaded from: classes2.dex */
public class LiveSRItemView extends FrameLayout {
    private NVImageView imgBg;
    private TextView tvTitle;

    public LiveSRItemView(Context context) {
        this(context, null);
    }

    public LiveSRItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(context, R.layout.item_live_sr, this);
        initViews();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initViews();
    }

    public void updateViews(ChatThread chatThread, String str) {
        if (chatThread == null) {
            return;
        }
        NVImageView nVImageView = this.imgBg;
        if (str == null) {
            str = chatThread.icon;
        }
        nVImageView.setImageUrl(str);
        this.tvTitle.setText(chatThread.title);
    }

    private void initViews() {
        this.imgBg = (NVImageView) findViewById(R.id.sr_bg);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1879048192);
        gradientDrawable.setCornerRadius(Utils.dpToPx(getContext(), 4.0f));
        this.imgBg.setDefaultDrawable(gradientDrawable);
        this.imgBg.setLoadingDrawable(gradientDrawable);
        this.tvTitle = (TextView) findViewById(R.id.title);
    }
}
