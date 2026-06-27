package com.narvii.video.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.narvii.mediaeditor.R;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VolumeProgressView.kt */
/* loaded from: classes3.dex */
public final class VolumeProgressView extends RelativeLayout {
    private HashMap _$_findViewCache;
    private OnVolumeChangedListener volumeListener;

    /* compiled from: VolumeProgressView.kt */
    public interface OnVolumeChangedListener {
        void onVolumeChanged(int i);
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
    public VolumeProgressView(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        LayoutInflater.from(getContext()).inflate(R.layout.component_volume_progress_bar, (ViewGroup) this, true);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VolumeProgressView(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        LayoutInflater.from(getContext()).inflate(R.layout.component_volume_progress_bar, (ViewGroup) this, true);
    }

    public static /* synthetic */ void init$default(VolumeProgressView volumeProgressView, int i, OnVolumeChangedListener onVolumeChangedListener, boolean z, int i2, Object obj) throws Resources.NotFoundException {
        if ((i2 & 4) != 0) {
            z = true;
        }
        volumeProgressView.init(i, onVolumeChangedListener, z);
    }

    public final void init(int i, OnVolumeChangedListener listener, boolean z) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        Drawable drawable = getResources().getDrawable(R.drawable.button_volume_bg);
        if (z) {
            ((TextView) _$_findCachedViewById(R.id.volume_progress_text)).setTextColor(Color.parseColor("#88FFFFFF"));
            DrawableCompat.setTint(drawable, Color.parseColor("#FFFFFF"));
        } else {
            ((TextView) _$_findCachedViewById(R.id.volume_progress_text)).setTextColor(Color.parseColor("#4A4A4A"));
            DrawableCompat.setTint(drawable, Color.parseColor("#4A4A4A"));
        }
        ((ImageView) _$_findCachedViewById(R.id.icon_volume)).setImageDrawable(drawable);
        updateVolumeIcon(i);
        this.volumeListener = listener;
        SeekBar volume_bar = (SeekBar) _$_findCachedViewById(R.id.volume_bar);
        Intrinsics.checkExpressionValueIsNotNull(volume_bar, "volume_bar");
        volume_bar.setProgress(i);
        TextView volume_progress_text = (TextView) _$_findCachedViewById(R.id.volume_progress_text);
        Intrinsics.checkExpressionValueIsNotNull(volume_progress_text, "volume_progress_text");
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append('%');
        volume_progress_text.setText(sb.toString());
        ((SeekBar) _$_findCachedViewById(R.id.volume_bar)).setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.video.widget.VolumeProgressView.init.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
                TextView volume_progress_text2 = (TextView) VolumeProgressView.this._$_findCachedViewById(R.id.volume_progress_text);
                Intrinsics.checkExpressionValueIsNotNull(volume_progress_text2, "volume_progress_text");
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i2);
                sb2.append('%');
                volume_progress_text2.setText(sb2.toString());
                VolumeProgressView.this.updateVolumeIcon(i2);
                OnVolumeChangedListener onVolumeChangedListener = VolumeProgressView.this.volumeListener;
                if (onVolumeChangedListener != null) {
                    onVolumeChangedListener.onVolumeChanged(i2);
                }
            }
        });
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.widget.VolumeProgressView.init.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateVolumeIcon(int i) {
        if (i <= 0) {
            ((ImageView) _$_findCachedViewById(R.id.icon_volume)).setImageLevel(3);
        } else if (1 <= i && 49 >= i) {
            ((ImageView) _$_findCachedViewById(R.id.icon_volume)).setImageLevel(2);
        } else {
            ((ImageView) _$_findCachedViewById(R.id.icon_volume)).setImageLevel(1);
        }
    }

    public final void removeOnVolumeChangedListener() {
        this.volumeListener = null;
    }
}
