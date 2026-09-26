package com.narvii.wallet.optinads;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class AdBackgroundView extends FrameLayout {

    @NotNull
    private final ImageView iconIV;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdBackgroundView(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        ImageView imageView = new ImageView(getContext());
        this.iconIV = imageView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(Utils.dpToPxInt(getContext(), 24.0f), Utils.dpToPxInt(getContext(), 18.0f));
        layoutParams.gravity = 17;
        imageView.setImageResource(R.drawable.ad_banner_logo);
        addView(imageView, layoutParams);
    }

    public final void setDarkTheme(boolean z6) {
        setBackgroundColor(Color.parseColor(z6 ? "#33ffffff" : "#08000000"));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdBackgroundView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        ImageView imageView = new ImageView(getContext());
        this.iconIV = imageView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(Utils.dpToPxInt(getContext(), 24.0f), Utils.dpToPxInt(getContext(), 18.0f));
        layoutParams.gravity = 17;
        imageView.setImageResource(R.drawable.ad_banner_logo);
        addView(imageView, layoutParams);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdBackgroundView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        ImageView imageView = new ImageView(getContext());
        this.iconIV = imageView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(Utils.dpToPxInt(getContext(), 24.0f), Utils.dpToPxInt(getContext(), 18.0f));
        layoutParams.gravity = 17;
        imageView.setImageResource(R.drawable.ad_banner_logo);
        addView(imageView, layoutParams);
    }
}
