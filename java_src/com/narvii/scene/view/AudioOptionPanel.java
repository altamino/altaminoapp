package com.narvii.scene.view;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.mediaeditor.R;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AudioOptionPanel.kt */
/* loaded from: classes3.dex */
public final class AudioOptionPanel extends RelativeLayout {
    private HashMap _$_findViewCache;
    private OnOptionClickListener onOptionClickListener;

    /* compiled from: AudioOptionPanel.kt */
    public interface OnOptionClickListener {
        void onOptionDelete(View view);

        void onOptionSubmit(View view);
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

    public AudioOptionPanel(Context context) {
        super(context);
        LayoutInflater.from(getContext()).inflate(R.layout.audio_option_panel, (ViewGroup) this, true);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioOptionPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(attributeSet, "attributeSet");
        LayoutInflater.from(getContext()).inflate(R.layout.audio_option_panel, (ViewGroup) this, true);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ImageView imageView = (ImageView) _$_findCachedViewById(R.id.option_done);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.view.AudioOptionPanel.onFinishInflate.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OnOptionClickListener onOptionClickListener = AudioOptionPanel.this.onOptionClickListener;
                    if (onOptionClickListener != null) {
                        ImageView option_done = (ImageView) AudioOptionPanel.this._$_findCachedViewById(R.id.option_done);
                        Intrinsics.checkExpressionValueIsNotNull(option_done, "option_done");
                        onOptionClickListener.onOptionSubmit(option_done);
                    }
                }
            });
        }
        ImageView imageView2 = (ImageView) _$_findCachedViewById(R.id.option_cancel);
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.view.AudioOptionPanel.onFinishInflate.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OnOptionClickListener onOptionClickListener = AudioOptionPanel.this.onOptionClickListener;
                    if (onOptionClickListener != null) {
                        ImageView option_cancel = (ImageView) AudioOptionPanel.this._$_findCachedViewById(R.id.option_cancel);
                        Intrinsics.checkExpressionValueIsNotNull(option_cancel, "option_cancel");
                        onOptionClickListener.onOptionDelete(option_cancel);
                    }
                }
            });
        }
    }

    public final void setOnOptionClickListener(OnOptionClickListener onOptionClickListener) {
        Intrinsics.checkParameterIsNotNull(onOptionClickListener, "onOptionClickListener");
        this.onOptionClickListener = onOptionClickListener;
    }

    public final void setData(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            TextView textView = (TextView) _$_findCachedViewById(R.id.option_title);
            if (textView != null) {
                textView.setText(str2);
                return;
            }
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str + " - " + str2);
        StyleSpan styleSpan = new StyleSpan(1);
        if (str == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        spannableStringBuilder.setSpan(styleSpan, 0, str.length(), 0);
        TextView textView2 = (TextView) _$_findCachedViewById(R.id.option_title);
        if (textView2 != null) {
            textView2.setText(spannableStringBuilder);
        }
    }
}
