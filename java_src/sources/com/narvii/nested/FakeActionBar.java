package com.narvii.nested;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.app.NVActivity;
import com.narvii.lib.R;
import com.narvii.widget.TintButton;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class FakeActionBar extends FrameLayout {

    @Nullable
    private IFakeActionBarRightViewClickListener rightViewClickListener;

    public interface IFakeActionBarRightViewClickListener {
        void onRightViewClick();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FakeActionBar(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        LayoutInflater.from(getContext()).inflate(R.layout.fake_action_bar_layout, (ViewGroup) this, true);
        ((TintButton) findViewById(R.id.actionbar_back)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nested.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FakeActionBar._init_$lambda$0(this.f2539a, view);
            }
        });
        ((TintButton) findViewById(R.id.actionbar_right)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nested.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FakeActionBar._init_$lambda$1(this.f2540a, view);
            }
        });
    }

    @Nullable
    public final IFakeActionBarRightViewClickListener getRightViewClickListener() {
        return this.rightViewClickListener;
    }

    public final void setRightViewClickListener(@Nullable IFakeActionBarRightViewClickListener iFakeActionBarRightViewClickListener) {
        this.rightViewClickListener = iFakeActionBarRightViewClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(FakeActionBar this$0, View view) {
        t.j(this$0, "this$0");
        if (this$0.getContext() instanceof NVActivity) {
            Context context = this$0.getContext();
            t.h(context, "null cannot be cast to non-null type com.narvii.app.NVActivity");
            ((NVActivity) context).finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(FakeActionBar this$0, View view) {
        t.j(this$0, "this$0");
        IFakeActionBarRightViewClickListener iFakeActionBarRightViewClickListener = this$0.rightViewClickListener;
        if (iFakeActionBarRightViewClickListener != null) {
            iFakeActionBarRightViewClickListener.onRightViewClick();
        }
    }

    public final void setRightView(int i10, @NotNull IFakeActionBarRightViewClickListener rightViewClickListener) {
        t.j(rightViewClickListener, "rightViewClickListener");
        ((TintButton) findViewById(R.id.actionbar_right)).setImageDrawable(ContextCompat.getDrawable(getContext(), i10));
        this.rightViewClickListener = rightViewClickListener;
    }

    public final void setTitle(int i10) {
        ((TextView) findViewById(R.id.actionbar_title)).setText(getResources().getString(i10));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FakeActionBar(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        LayoutInflater.from(getContext()).inflate(R.layout.fake_action_bar_layout, (ViewGroup) this, true);
        ((TintButton) findViewById(R.id.actionbar_back)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nested.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FakeActionBar._init_$lambda$0(this.f2539a, view);
            }
        });
        ((TintButton) findViewById(R.id.actionbar_right)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nested.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FakeActionBar._init_$lambda$1(this.f2540a, view);
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FakeActionBar(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        LayoutInflater.from(getContext()).inflate(R.layout.fake_action_bar_layout, (ViewGroup) this, true);
        ((TintButton) findViewById(R.id.actionbar_back)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nested.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FakeActionBar._init_$lambda$0(this.f2539a, view);
            }
        });
        ((TintButton) findViewById(R.id.actionbar_right)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nested.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FakeActionBar._init_$lambda$1(this.f2540a, view);
            }
        });
    }
}
