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
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PageStatusView.kt */
/* loaded from: classes3.dex */
public final class PageStatusView extends FrameLayout {
    public static final Companion Companion = new Companion(null);
    public static final int STATUS_EMPTY = 3;
    public static final int STATUS_FAILED = 2;
    public static final int STATUS_IDLE = 0;
    public static final int STATUS_LOADING = 1;
    private HashMap _$_findViewCache;
    private View btnEmptyRetry;
    private View btnErrorRetry;
    private int darkThemeColor;
    private final int emptyLayoutId;
    private View.OnClickListener emptyRetryListener;
    private View emptyView;
    private final int errorLayoutId;
    private View.OnClickListener errorRetryListener;
    private View errorView;
    private boolean isDarkTheme;
    private final int progressLayoutId;
    private View progressView;
    private TextView tvEmpty;
    private TextView tvError;
    private TextView tvErrorTitle;

    /* JADX WARN: Multi-variable type inference failed */
    public PageStatusView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageStatusView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.darkThemeColor = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PageStatusView);
        this.emptyLayoutId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PageStatusView_emptyLayoutId, R.layout.empty_view);
        this.progressLayoutId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PageStatusView_progressLayoutId, R.layout.status_layout_progress);
        this.errorLayoutId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PageStatusView_errorLayoutId, R.layout.error_view);
        typedArrayObtainStyledAttributes.recycle();
        this.errorView = LayoutInflater.from(getContext()).inflate(this.errorLayoutId, (ViewGroup) this, false);
        addView(this.errorView);
        configErrorView();
        this.progressView = LayoutInflater.from(getContext()).inflate(this.progressLayoutId, (ViewGroup) this, false);
        addView(this.progressView);
        configProgressView();
        this.emptyView = LayoutInflater.from(getContext()).inflate(this.emptyLayoutId, (ViewGroup) this, false);
        addView(this.emptyView);
        configEmptyView();
    }

    public /* synthetic */ PageStatusView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    public final TextView getTvEmpty() {
        return this.tvEmpty;
    }

    public final void setTvEmpty(TextView textView) {
        this.tvEmpty = textView;
    }

    public final View getBtnEmptyRetry() {
        return this.btnEmptyRetry;
    }

    public final void setBtnEmptyRetry(View view) {
        this.btnEmptyRetry = view;
    }

    public final View.OnClickListener getErrorRetryListener() {
        return this.errorRetryListener;
    }

    public final void setErrorRetryListener(View.OnClickListener onClickListener) {
        View view = this.btnErrorRetry;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
        this.errorRetryListener = onClickListener;
    }

    public final View.OnClickListener getEmptyRetryListener() {
        return this.emptyRetryListener;
    }

    public final void setEmptyRetryListener(View.OnClickListener onClickListener) {
        this.emptyRetryListener = onClickListener;
        View view = this.btnEmptyRetry;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
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
        if (view != null) {
            view.setVisibility(4);
        }
    }

    public final void setEmptyMessage(int i) {
        TextView textView = this.tvEmpty;
        if (textView != null) {
            textView.setText(i);
        }
    }

    public final void setEmptyMessageTextSize(float f, int i) {
        TextView textView = this.tvEmpty;
        if (textView != null) {
            textView.setTextSize(i, f);
        }
    }

    public final void setDarkTheme(boolean z) {
        this.isDarkTheme = z;
        int i = z ? this.darkThemeColor : -11184811;
        TextView textView = this.tvErrorTitle;
        if (textView != null) {
            textView.setTextColor(i);
        }
        TextView textView2 = this.tvError;
        if (textView2 != null) {
            textView2.setTextColor(i);
        }
        TextView textView3 = this.tvEmpty;
        if (textView3 != null) {
            textView3.setTextColor(i);
        }
        View view = this.progressView;
        if (!(view instanceof SpinningView)) {
            view = null;
        }
        SpinningView spinningView = (SpinningView) view;
        if (spinningView != null) {
            spinningView.setSpinColor(i);
        }
        View view2 = this.btnEmptyRetry;
        if (!(view2 instanceof FontAwesomeView)) {
            view2 = null;
        }
        FontAwesomeView fontAwesomeView = (FontAwesomeView) view2;
        if (fontAwesomeView != null) {
            fontAwesomeView.setTextColor(i);
        }
        View view3 = this.btnErrorRetry;
        if (!(view3 instanceof FontAwesomeView)) {
            view3 = null;
        }
        FontAwesomeView fontAwesomeView2 = (FontAwesomeView) view3;
        if (fontAwesomeView2 != null) {
            fontAwesomeView2.setTextColor(i);
        }
    }

    public final void setErrorMessage(String str) {
        TextView textView = this.tvError;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public final void setDarkThemeColor(int i) {
        this.darkThemeColor = i;
        setDarkTheme(this.isDarkTheme);
    }

    public final void updateStatus(int i) {
        View view = this.emptyView;
        if (view != null) {
            view.setVisibility(i == 3 ? 0 : 4);
        }
        View view2 = this.progressView;
        if (view2 != null) {
            view2.setVisibility(i == 1 ? 0 : 4);
        }
        View view3 = this.errorView;
        if (view3 != null) {
            view3.setVisibility(i != 2 ? 4 : 0);
        }
    }

    public final View setEmptyView(int i) {
        View view = this.emptyView;
        if (view != null) {
            removeView(view);
        }
        this.emptyView = LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this, false);
        addView(this.emptyView);
        configEmptyView();
        View view2 = this.btnEmptyRetry;
        if (view2 != null) {
            view2.setOnClickListener(this.emptyRetryListener);
        }
        return this.emptyView;
    }

    public final View setLoadingView(int i) {
        View view = this.progressView;
        if (view != null) {
            removeView(view);
        }
        this.progressView = LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this, false);
        addView(this.progressView);
        configProgressView();
        return this.progressView;
    }

    public final View setErrorView(int i) {
        View view = this.errorView;
        if (view != null) {
            removeView(view);
        }
        this.errorView = LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this, false);
        addView(this.errorView);
        configErrorView();
        View view2 = this.btnErrorRetry;
        if (view2 != null) {
            view2.setOnClickListener(this.errorRetryListener);
        }
        return this.errorView;
    }

    /* compiled from: PageStatusView.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
