package com.narvii.nested;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.app.NVActivity;
import com.narvii.lib.R;
import com.narvii.widget.TintButton;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FakeActionBar.kt */
/* loaded from: classes3.dex */
public final class FakeActionBar extends FrameLayout {
    private HashMap _$_findViewCache;
    private IFakeActionBarRightViewClickListener rightViewClickListener;

    /* compiled from: FakeActionBar.kt */
    public interface IFakeActionBarRightViewClickListener {
        void onRightViewClick();
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
    public FakeActionBar(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        LayoutInflater.from(getContext()).inflate(R.layout.fake_action_bar_layout, (ViewGroup) this, true);
        ((TintButton) _$_findCachedViewById(R.id.actionbar_back)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nested.FakeActionBar.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (FakeActionBar.this.getContext() instanceof NVActivity) {
                    Context context2 = FakeActionBar.this.getContext();
                    if (context2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
                    }
                    ((NVActivity) context2).finish();
                }
            }
        });
        ((TintButton) _$_findCachedViewById(R.id.actionbar_right)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nested.FakeActionBar.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                IFakeActionBarRightViewClickListener rightViewClickListener = FakeActionBar.this.getRightViewClickListener();
                if (rightViewClickListener != null) {
                    rightViewClickListener.onRightViewClick();
                }
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FakeActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        LayoutInflater.from(getContext()).inflate(R.layout.fake_action_bar_layout, (ViewGroup) this, true);
        ((TintButton) _$_findCachedViewById(R.id.actionbar_back)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nested.FakeActionBar.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (FakeActionBar.this.getContext() instanceof NVActivity) {
                    Context context2 = FakeActionBar.this.getContext();
                    if (context2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
                    }
                    ((NVActivity) context2).finish();
                }
            }
        });
        ((TintButton) _$_findCachedViewById(R.id.actionbar_right)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nested.FakeActionBar.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                IFakeActionBarRightViewClickListener rightViewClickListener = FakeActionBar.this.getRightViewClickListener();
                if (rightViewClickListener != null) {
                    rightViewClickListener.onRightViewClick();
                }
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FakeActionBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        LayoutInflater.from(getContext()).inflate(R.layout.fake_action_bar_layout, (ViewGroup) this, true);
        ((TintButton) _$_findCachedViewById(R.id.actionbar_back)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nested.FakeActionBar.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (FakeActionBar.this.getContext() instanceof NVActivity) {
                    Context context2 = FakeActionBar.this.getContext();
                    if (context2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
                    }
                    ((NVActivity) context2).finish();
                }
            }
        });
        ((TintButton) _$_findCachedViewById(R.id.actionbar_right)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nested.FakeActionBar.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                IFakeActionBarRightViewClickListener rightViewClickListener = FakeActionBar.this.getRightViewClickListener();
                if (rightViewClickListener != null) {
                    rightViewClickListener.onRightViewClick();
                }
            }
        });
    }

    public final IFakeActionBarRightViewClickListener getRightViewClickListener() {
        return this.rightViewClickListener;
    }

    public final void setRightViewClickListener(IFakeActionBarRightViewClickListener iFakeActionBarRightViewClickListener) {
        this.rightViewClickListener = iFakeActionBarRightViewClickListener;
    }

    public final void setRightView(int i, IFakeActionBarRightViewClickListener rightViewClickListener) {
        Intrinsics.checkParameterIsNotNull(rightViewClickListener, "rightViewClickListener");
        ((TintButton) _$_findCachedViewById(R.id.actionbar_right)).setImageDrawable(ContextCompat.getDrawable(getContext(), i));
        this.rightViewClickListener = rightViewClickListener;
    }

    public final void setTitle(int i) {
        TextView actionbar_title = (TextView) _$_findCachedViewById(R.id.actionbar_title);
        Intrinsics.checkExpressionValueIsNotNull(actionbar_title, "actionbar_title");
        actionbar_title.setText(getResources().getString(i));
    }
}
