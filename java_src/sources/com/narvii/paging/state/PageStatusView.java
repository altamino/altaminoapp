package com.narvii.paging.state;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SpinningView;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class PageStatusView extends FrameLayout {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int STATUS_EMPTY = 3;
    public static final int STATUS_FAILED = 2;
    public static final int STATUS_IDLE = 0;
    public static final int STATUS_LOADING = 1;

    @Nullable
    private View btnEmptyRetry;

    @Nullable
    private View btnErrorRetry;
    private int darkThemeColor;
    private final int emptyLayoutId;

    @Nullable
    private View.OnClickListener emptyRetryListener;

    @Nullable
    private View emptyView;
    private final int errorLayoutId;

    @Nullable
    private View.OnClickListener errorRetryListener;

    @Nullable
    private View errorView;
    private boolean isDarkTheme;
    private final int progressLayoutId;

    @Nullable
    private View progressView;

    @Nullable
    private TextView tvEmpty;

    @Nullable
    private TextView tvError;

    @Nullable
    private TextView tvErrorTitle;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PageStatusView(@NotNull Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        t.j(context, "context");
    }

    @Nullable
    public final View getBtnEmptyRetry() {
        return this.btnEmptyRetry;
    }

    @Nullable
    public final View.OnClickListener getEmptyRetryListener() {
        return this.emptyRetryListener;
    }

    @Nullable
    public final View.OnClickListener getErrorRetryListener() {
        return this.errorRetryListener;
    }

    @Nullable
    public final TextView getTvEmpty() {
        return this.tvEmpty;
    }

    public final void setBtnEmptyRetry(@Nullable View view) {
        this.btnEmptyRetry = view;
    }

    public final void setTvEmpty(@Nullable TextView textView) {
        this.tvEmpty = textView;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageStatusView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        this.darkThemeColor = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PageStatusView);
        t.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PageStatusView_emptyLayoutId, R.layout.empty_view);
        this.emptyLayoutId = resourceId;
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PageStatusView_progressLayoutId, R.layout.status_layout_progress);
        this.progressLayoutId = resourceId2;
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PageStatusView_errorLayoutId, R.layout.error_view);
        this.errorLayoutId = resourceId3;
        typedArrayObtainStyledAttributes.recycle();
        View viewInflate = LayoutInflater.from(getContext()).inflate(resourceId3, (ViewGroup) this, false);
        this.errorView = viewInflate;
        addView(viewInflate);
        configErrorView();
        View viewInflate2 = LayoutInflater.from(getContext()).inflate(resourceId2, (ViewGroup) this, false);
        this.progressView = viewInflate2;
        addView(viewInflate2);
        configProgressView();
        View viewInflate3 = LayoutInflater.from(getContext()).inflate(resourceId, (ViewGroup) this, false);
        this.emptyView = viewInflate3;
        addView(viewInflate3);
        configEmptyView();
    }

    public final void configEmptyView() {
        View view = this.emptyView;
        if (view != null) {
            view.setVisibility(4);
        }
        View view2 = this.emptyView;
        this.tvEmpty = view2 != null ? (TextView) view2.findViewById(R.id.empty_text) : null;
        View view3 = this.emptyView;
        this.btnEmptyRetry = view3 != null ? view3.findViewById(R.id.empty_retry) : null;
    }

    public final void configErrorView() {
        View view = this.errorView;
        if (view != null) {
            view.setVisibility(4);
        }
        View view2 = this.errorView;
        this.tvError = view2 != null ? (TextView) view2.findViewById(R.id.text) : null;
        View view3 = this.errorView;
        this.tvErrorTitle = view3 != null ? (TextView) view3.findViewById(R.id.error) : null;
        View view4 = this.errorView;
        this.btnErrorRetry = view4 != null ? view4.findViewById(R.id.retry) : null;
    }

    public final void configProgressView() {
        View view = this.progressView;
        if (view == null) {
            return;
        }
        view.setVisibility(4);
    }

    public final void setDarkTheme(boolean z6) {
        this.isDarkTheme = z6;
        int i10 = z6 ? this.darkThemeColor : -11184811;
        TextView textView = this.tvErrorTitle;
        if (textView != null) {
            textView.setTextColor(i10);
        }
        TextView textView2 = this.tvError;
        if (textView2 != null) {
            textView2.setTextColor(i10);
        }
        TextView textView3 = this.tvEmpty;
        if (textView3 != null) {
            textView3.setTextColor(i10);
        }
        View view = this.progressView;
        SpinningView spinningView = view instanceof SpinningView ? (SpinningView) view : null;
        if (spinningView != null) {
            spinningView.setSpinColor(i10);
        }
        View view2 = this.btnEmptyRetry;
        FontAwesomeView fontAwesomeView = view2 instanceof FontAwesomeView ? (FontAwesomeView) view2 : null;
        if (fontAwesomeView != null) {
            fontAwesomeView.setTextColor(i10);
        }
        View view3 = this.btnErrorRetry;
        FontAwesomeView fontAwesomeView2 = view3 instanceof FontAwesomeView ? (FontAwesomeView) view3 : null;
        if (fontAwesomeView2 != null) {
            fontAwesomeView2.setTextColor(i10);
        }
    }

    public final void setDarkThemeColor(int i10) {
        this.darkThemeColor = i10;
        setDarkTheme(this.isDarkTheme);
    }

    public final void setEmptyMessage(int i10) {
        TextView textView = this.tvEmpty;
        if (textView != null) {
            textView.setText(i10);
        }
    }

    public final void setEmptyMessageTextSize(float f, int i10) {
        TextView textView = this.tvEmpty;
        if (textView != null) {
            textView.setTextSize(i10, f);
        }
    }

    public final void setEmptyRetryListener(@Nullable View.OnClickListener onClickListener) {
        this.emptyRetryListener = onClickListener;
        View view = this.btnEmptyRetry;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
    }

    @Nullable
    public final View setEmptyView(int i10) {
        View view = this.emptyView;
        if (view != null) {
            removeView(view);
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this, false);
        this.emptyView = viewInflate;
        addView(viewInflate);
        configEmptyView();
        View view2 = this.btnEmptyRetry;
        if (view2 != null) {
            view2.setOnClickListener(this.emptyRetryListener);
        }
        return this.emptyView;
    }

    public final void setErrorMessage(@Nullable String str) {
        TextView textView = this.tvError;
        if (textView == null) {
            return;
        }
        textView.setText(str);
    }

    public final void setErrorRetryListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.btnErrorRetry;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
        this.errorRetryListener = onClickListener;
    }

    @Nullable
    public final View setErrorView(int i10) {
        View view = this.errorView;
        if (view != null) {
            removeView(view);
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this, false);
        this.errorView = viewInflate;
        addView(viewInflate);
        configErrorView();
        View view2 = this.btnErrorRetry;
        if (view2 != null) {
            view2.setOnClickListener(this.errorRetryListener);
        }
        return this.errorView;
    }

    @Nullable
    public final View setLoadingView(int i10) {
        View view = this.progressView;
        if (view != null) {
            removeView(view);
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this, false);
        this.progressView = viewInflate;
        addView(viewInflate);
        configProgressView();
        return this.progressView;
    }

    public final void updateStatus(int i10) {
        View view = this.emptyView;
        if (view != null) {
            view.setVisibility(i10 == 3 ? 0 : 4);
        }
        View view2 = this.progressView;
        if (view2 != null) {
            view2.setVisibility(i10 == 1 ? 0 : 4);
        }
        View view3 = this.errorView;
        if (view3 == null) {
            return;
        }
        view3.setVisibility(i10 == 2 ? 0 : 4);
    }

    public /* synthetic */ PageStatusView(Context context, AttributeSet attributeSet, int i10, k kVar) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }
}
