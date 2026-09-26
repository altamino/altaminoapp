package com.narvii.video.attachment.caption;

import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.ColorUtils;
import com.narvii.app.NVFragment;
import com.narvii.mediaeditor.R;
import com.narvii.modulization.ConfigApiRequestHelper;

/* JADX INFO: loaded from: classes5.dex */
public class CaptionColorFragment extends NVFragment {
    public static final int MAX = 255;
    private int color;
    private CaptionColorRecyclerView colorRecyclerView;
    private boolean enabled;
    private SeekBar seekBar;

    private class SeekBarTouchArea implements View.OnTouchListener {
        private SeekBarTouchArea() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (CaptionColorFragment.this.seekBar == null || CaptionColorFragment.this.seekBar.getVisibility() != 0 || motionEvent.getY() < 0.0f || motionEvent.getY() > view.getHeight()) {
                return false;
            }
            return CaptionColorFragment.this.seekBar.onTouchEvent(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), motionEvent.getAction(), motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onColorChanged(int i10, boolean z6) {
        this.color = i10;
        this.enabled = z6;
        if (getParentFragment() instanceof CaptionEditListener) {
            ((CaptionEditListener) getParentFragment()).onColorChanged(getIntParam("type"), this.color, z6);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_caption_color, viewGroup, false);
    }

    public void setTextColor(int i10) {
        this.color = i10;
        CaptionColorRecyclerView captionColorRecyclerView = this.colorRecyclerView;
        if (captionColorRecyclerView != null) {
            captionColorRecyclerView.setCurrentSelectColor(i10);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.color = getIntParam("color");
        this.enabled = getBooleanParam(ConfigApiRequestHelper.ENABLED);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        CaptionColorRecyclerView captionColorRecyclerView = (CaptionColorRecyclerView) view.findViewById(R.id.color_picker);
        this.colorRecyclerView = captionColorRecyclerView;
        captionColorRecyclerView.setSupportDisable(getBooleanParam("supportDisable", false));
        this.colorRecyclerView.setCurrentSelectColor(this.color, getBooleanParam(ConfigApiRequestHelper.ENABLED));
        this.colorRecyclerView.setOnColorSelectedListener(new CaptionColorRecyclerView.OnColorSelectedListener() { // from class: com.narvii.video.attachment.caption.CaptionColorFragment.1
            @Override // com.narvii.video.attachment.caption.CaptionColorRecyclerView.OnColorSelectedListener
            public void onColorSelected(int i10, boolean z6) {
                CaptionColorFragment captionColorFragment = CaptionColorFragment.this;
                captionColorFragment.onColorChanged(ColorUtils.o(i10, Color.alpha(captionColorFragment.color)), z6);
            }
        });
        SeekBar seekBar = (SeekBar) view.findViewById(R.id.seek_bar);
        this.seekBar = seekBar;
        seekBar.setMax(255);
        final TextView textView = (TextView) view.findViewById(R.id.progress_text);
        this.seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.video.attachment.caption.CaptionColorFragment.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i10, boolean z6) {
                CaptionColorFragment captionColorFragment = CaptionColorFragment.this;
                captionColorFragment.onColorChanged(ColorUtils.o(captionColorFragment.color, i10), CaptionColorFragment.this.enabled);
                textView.setText(((i10 * 100) / 255) + "%");
            }
        });
        this.seekBar.setProgress(Color.alpha(this.color));
        view.findViewById(R.id.seek_bar_parent).setOnTouchListener(new SeekBarTouchArea());
    }
}
