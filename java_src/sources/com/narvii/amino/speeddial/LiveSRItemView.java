package com.narvii.amino.speeddial;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.model.ChatThread;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public class LiveSRItemView extends FrameLayout {
    private NVImageView imgBg;
    private TextView tvTitle;

    public LiveSRItemView(@NonNull Context context) {
        this(context, null);
    }

    public LiveSRItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.item_live_sr, this);
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

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initViews();
    }
}
