package com.narvii.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes4.dex */
public class HSVColorPickerView extends FrameLayout {
    private static final int[] COLORS = {SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -16711936, -16711681, -16776961, -65281, SupportMenu.CATEGORY_MASK};
    private OnColorChangedListener colorChangedListener;
    private float hue;
    private SeekBar hueSeekBar;
    private boolean isSetColor;
    private float saturation;
    private SeekBar saturationSeekBar;
    private float value;
    private SeekBar valueSeekBar;

    public interface OnColorChangedListener {
        void onColorChanged(int i10);
    }

    private class SeekbarTouchArea implements View.OnTouchListener {
        private SeekBar seekBar;

        private SeekbarTouchArea(SeekBar seekBar) {
            this.seekBar = seekBar;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            float fWidth;
            Rect rect = new Rect();
            this.seekBar.getHitRect(rect);
            if (motionEvent.getY() < rect.top - 50 || motionEvent.getY() > rect.bottom + 50) {
                return false;
            }
            float fHeight = rect.top + (rect.height() / 2);
            float x6 = motionEvent.getX() - rect.left;
            if (x6 < 0.0f) {
                fWidth = 0.0f;
            } else {
                fWidth = x6 > ((float) rect.width()) ? rect.width() : x6;
            }
            return this.seekBar.onTouchEvent(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), motionEvent.getAction(), fWidth, fHeight, motionEvent.getMetaState()));
        }
    }

    public HSVColorPickerView(Context context) {
        this(context, null);
    }

    private void onColorChanged() {
        int iHSVToColor = Color.HSVToColor(new float[]{this.hue, this.saturation, this.value});
        OnColorChangedListener onColorChangedListener = this.colorChangedListener;
        if (onColorChangedListener == null || this.isSetColor) {
            return;
        }
        onColorChangedListener.onColorChanged(iHSVToColor);
    }

    public void setColor(int i10) {
        float[] fArr = new float[3];
        Color.colorToHSV(i10, fArr);
        this.hue = fArr[0];
        this.isSetColor = true;
        SeekBar seekBar = this.hueSeekBar;
        seekBar.setProgress((int) ((seekBar.getMax() * this.hue) / 360.0f));
        this.saturation = fArr[1];
        SeekBar seekBar2 = this.saturationSeekBar;
        seekBar2.setProgress((int) (seekBar2.getMax() * this.saturation));
        this.value = fArr[2];
        SeekBar seekBar3 = this.valueSeekBar;
        seekBar3.setProgress((int) (seekBar3.getMax() * this.value));
        this.isSetColor = false;
    }

    public void setColorChangedListener(OnColorChangedListener onColorChangedListener) {
        this.colorChangedListener = onColorChangedListener;
    }

    public HSVColorPickerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private GradientDrawable getGradientDrawable(int[] iArr) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, iArr);
        gradientDrawable.setGradientType(0);
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHue(float f) {
        this.hue = f;
        setSeekBarProgressDrawable(this.saturationSeekBar, new int[]{Color.HSVToColor(new float[]{f, 0.0f, this.value}), Color.HSVToColor(new float[]{f, 1.0f, this.value})});
        setSeekBarProgressDrawable(this.valueSeekBar, new int[]{Color.HSVToColor(new float[]{f, this.saturation, 0.0f}), Color.HSVToColor(new float[]{f, this.saturation, 1.0f})});
        Drawable drawableMutate = getResources().getDrawable(R.drawable.hsv_color_picker_seekbar_icon_rect).mutate();
        if (drawableMutate instanceof GradientDrawable) {
            ((GradientDrawable) drawableMutate).setColor(Color.HSVToColor(new float[]{f, 1.0f, 1.0f}));
        } else if (drawableMutate instanceof LayerDrawable) {
            int iHSVToColor = Color.HSVToColor(new float[]{f, 1.0f, 1.0f});
            Drawable drawable = ((LayerDrawable) drawableMutate).getDrawable(1);
            if (drawable instanceof GradientDrawable) {
                ((GradientDrawable) drawable).setColor(iHSVToColor);
            }
        }
        this.hueSeekBar.setThumb(drawableMutate);
        onColorChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSaturation(float f) {
        this.saturation = f;
        setSeekBarProgressDrawable(this.valueSeekBar, new int[]{Color.HSVToColor(new float[]{this.hue, f, 0.0f}), Color.HSVToColor(new float[]{this.hue, f, 1.0f})});
        onColorChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(float f) {
        this.value = f;
        setSeekBarProgressDrawable(this.saturationSeekBar, new int[]{Color.HSVToColor(new float[]{this.hue, 0.0f, f}), Color.HSVToColor(new float[]{this.hue, 1.0f, f})});
        onColorChanged();
    }

    public HSVColorPickerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.isSetColor = false;
        init();
    }

    private void init() {
        View.inflate(getContext(), R.layout.hsv_color_picker_layout, this);
        SeekBar seekBar = (SeekBar) findViewById(R.id.hue_seek_bar);
        this.hueSeekBar = seekBar;
        ((View) seekBar.getParent()).setOnTouchListener(new SeekbarTouchArea(this.hueSeekBar));
        setSeekBarProgressDrawable(this.hueSeekBar, COLORS);
        this.saturationSeekBar = (SeekBar) findViewById(R.id.saturation_seek_bar);
        Context context = getContext();
        int i10 = R.drawable.hsv_color_picker_seekbar_icon_rect;
        this.saturationSeekBar.setThumb(ContextCompat.getDrawable(context, i10));
        ((View) this.saturationSeekBar.getParent()).setOnTouchListener(new SeekbarTouchArea(this.saturationSeekBar));
        SeekBar seekBar2 = (SeekBar) findViewById(R.id.value_seek_bar);
        this.valueSeekBar = seekBar2;
        ((View) seekBar2.getParent()).setOnTouchListener(new SeekbarTouchArea(this.valueSeekBar));
        this.valueSeekBar.setThumb(ContextCompat.getDrawable(getContext(), i10));
        this.hueSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.widget.HSVColorPickerView.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar3, int i11, boolean z6) {
                HSVColorPickerView.this.setHue((i11 * 360.0f) / seekBar3.getMax());
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar3) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar3) {
            }
        });
        this.saturationSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.widget.HSVColorPickerView.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar3) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar3) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar3, int i11, boolean z6) {
                HSVColorPickerView.this.setSaturation((i11 * 1.0f) / seekBar3.getMax());
            }
        });
        this.valueSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.widget.HSVColorPickerView.3
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar3) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar3) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar3, int i11, boolean z6) {
                HSVColorPickerView.this.setValue((i11 * 1.0f) / seekBar3.getMax());
            }
        });
        setHue(0.0f);
        setSaturation(0.0f);
        setValue(0.0f);
    }

    private void setSeekBarProgressDrawable(SeekBar seekBar, int[] iArr) {
        GradientDrawable gradientDrawable = getGradientDrawable(iArr);
        gradientDrawable.setStroke(Utils.dpToPxInt(getContext(), 0.5f), -1);
        gradientDrawable.setCornerRadius(Utils.dpToPx(getContext(), 5.0f));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable});
        layerDrawable.setLayerInset(0, 0, 0, 0, 0);
        seekBar.setProgressDrawable(layerDrawable);
    }
}
