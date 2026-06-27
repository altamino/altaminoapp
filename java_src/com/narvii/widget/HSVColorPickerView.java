package com.narvii.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.support.v4.content.ContextCompat;
import android.support.v4.internal.view.SupportMenu;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class HSVColorPickerView extends FrameLayout {
    private static final int[] COLORS = {SupportMenu.CATEGORY_MASK, -256, -16711936, -16711681, -16776961, -65281, SupportMenu.CATEGORY_MASK};
    private OnColorChangedListener colorChangedListener;
    private float hue;
    private SeekBar hueSeekBar;
    private boolean isSetColor;
    private float saturation;
    private SeekBar saturationSeekBar;
    private float value;
    private SeekBar valueSeekBar;

    public interface OnColorChangedListener {
        void onColorChanged(int i);
    }

    public HSVColorPickerView(Context context) {
        this(context, null);
    }

    public HSVColorPickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HSVColorPickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isSetColor = false;
        init();
    }

    private void init() {
        FrameLayout.inflate(getContext(), R.layout.hsv_color_picker_layout, this);
        this.hueSeekBar = (SeekBar) findViewById(R.id.hue_seek_bar);
        ((View) this.hueSeekBar.getParent()).setOnTouchListener(new SeekbarTouchArea(this.hueSeekBar));
        setSeekBarProgressDrawable(this.hueSeekBar, COLORS);
        this.saturationSeekBar = (SeekBar) findViewById(R.id.saturation_seek_bar);
        this.saturationSeekBar.setThumb(ContextCompat.getDrawable(getContext(), R.drawable.hsv_color_picker_seekbar_icon_rect));
        ((View) this.saturationSeekBar.getParent()).setOnTouchListener(new SeekbarTouchArea(this.saturationSeekBar));
        this.valueSeekBar = (SeekBar) findViewById(R.id.value_seek_bar);
        ((View) this.valueSeekBar.getParent()).setOnTouchListener(new SeekbarTouchArea(this.valueSeekBar));
        this.valueSeekBar.setThumb(ContextCompat.getDrawable(getContext(), R.drawable.hsv_color_picker_seekbar_icon_rect));
        this.hueSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.widget.HSVColorPickerView.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                HSVColorPickerView.this.setHue((i * 360.0f) / seekBar.getMax());
            }
        });
        this.saturationSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.widget.HSVColorPickerView.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                HSVColorPickerView.this.setSaturation((i * 1.0f) / seekBar.getMax());
            }
        });
        this.valueSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.widget.HSVColorPickerView.3
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                HSVColorPickerView.this.setValue((i * 1.0f) / seekBar.getMax());
            }
        });
        setHue(0.0f);
        setSaturation(0.0f);
        setValue(0.0f);
    }

    public void setColor(int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        this.hue = fArr[0];
        this.isSetColor = true;
        this.hueSeekBar.setProgress((int) ((r2.getMax() * this.hue) / 360.0f));
        this.saturation = fArr[1];
        this.saturationSeekBar.setProgress((int) (r1.getMax() * this.saturation));
        this.value = fArr[2];
        this.valueSeekBar.setProgress((int) (r0.getMax() * this.value));
        this.isSetColor = false;
    }

    public void setColorChangedListener(OnColorChangedListener onColorChangedListener) {
        this.colorChangedListener = onColorChangedListener;
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

    private void onColorChanged() {
        int iHSVToColor = Color.HSVToColor(new float[]{this.hue, this.saturation, this.value});
        OnColorChangedListener onColorChangedListener = this.colorChangedListener;
        if (onColorChangedListener == null || this.isSetColor) {
            return;
        }
        onColorChangedListener.onColorChanged(iHSVToColor);
    }

    private void setSeekBarProgressDrawable(SeekBar seekBar, int[] iArr) {
        GradientDrawable gradientDrawable = getGradientDrawable(iArr);
        gradientDrawable.setStroke(Utils.dpToPxInt(getContext(), 0.5f), -1);
        gradientDrawable.setCornerRadius(Utils.dpToPx(getContext(), 5.0f));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable});
        layerDrawable.setLayerInset(0, 0, 0, 0, 0);
        seekBar.setProgressDrawable(layerDrawable);
    }

    private GradientDrawable getGradientDrawable(int[] iArr) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, iArr);
        gradientDrawable.setGradientType(0);
        return gradientDrawable;
    }

    private class SeekbarTouchArea implements View.OnTouchListener {
        private SeekBar seekBar;

        private SeekbarTouchArea(SeekBar seekBar) {
            this.seekBar = seekBar;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            float f;
            Rect rect = new Rect();
            this.seekBar.getHitRect(rect);
            if (motionEvent.getY() < rect.top - 50 || motionEvent.getY() > rect.bottom + 50) {
                return false;
            }
            float fHeight = rect.top + (rect.height() / 2);
            float x = motionEvent.getX() - rect.left;
            if (x < 0.0f) {
                f = 0.0f;
            } else {
                f = x > ((float) rect.width()) ? rect.width() : x;
            }
            return this.seekBar.onTouchEvent(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), motionEvent.getAction(), f, fHeight, motionEvent.getMetaState()));
        }
    }
}
