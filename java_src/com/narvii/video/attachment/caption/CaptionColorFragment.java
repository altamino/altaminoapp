package com.narvii.video.attachment.caption;

import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.graphics.ColorUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.app.NVFragment;
import com.narvii.mediaeditor.R;
import com.narvii.modulization.ConfigApiRequestHelper;
import com.narvii.video.attachment.caption.CaptionColorRecyclerView;

/* loaded from: classes3.dex */
public class CaptionColorFragment extends NVFragment {
    public static final int MAX = 255;
    private int color;
    private CaptionColorRecyclerView colorRecyclerView;
    private boolean enabled;
    private SeekBar seekBar;

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_caption_color, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.color = getIntParam(TtmlNode.ATTR_TTS_COLOR);
        this.enabled = getBooleanParam(ConfigApiRequestHelper.ENABLED);
    }

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

    public void setTextColor(int i) {
        this.color = i;
        CaptionColorRecyclerView captionColorRecyclerView = this.colorRecyclerView;
        if (captionColorRecyclerView != null) {
            captionColorRecyclerView.setCurrentSelectColor(i);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.colorRecyclerView = (CaptionColorRecyclerView) view.findViewById(R.id.color_picker);
        this.colorRecyclerView.setSupportDisable(getBooleanParam("supportDisable", false));
        this.colorRecyclerView.setCurrentSelectColor(this.color, getBooleanParam(ConfigApiRequestHelper.ENABLED));
        this.colorRecyclerView.setOnColorSelectedListener(new CaptionColorRecyclerView.OnColorSelectedListener() { // from class: com.narvii.video.attachment.caption.CaptionColorFragment.1
            @Override // com.narvii.video.attachment.caption.CaptionColorRecyclerView.OnColorSelectedListener
            public void onColorSelected(int i, boolean z) {
                CaptionColorFragment captionColorFragment = CaptionColorFragment.this;
                captionColorFragment.onColorChanged(ColorUtils.setAlphaComponent(i, Color.alpha(captionColorFragment.color)), z);
            }
        });
        this.seekBar = (SeekBar) view.findViewById(R.id.seek_bar);
        this.seekBar.setMax(255);
        final TextView textView = (TextView) view.findViewById(R.id.progress_text);
        this.seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.video.attachment.caption.CaptionColorFragment.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                CaptionColorFragment captionColorFragment = CaptionColorFragment.this;
                captionColorFragment.onColorChanged(ColorUtils.setAlphaComponent(captionColorFragment.color, i), CaptionColorFragment.this.enabled);
                textView.setText(((i * 100) / 255) + "%");
            }
        });
        this.seekBar.setProgress(Color.alpha(this.color));
        view.findViewById(R.id.seek_bar_parent).setOnTouchListener(new SeekBarTouchArea());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onColorChanged(int i, boolean z) {
        this.color = i;
        this.enabled = z;
        if (getParentFragment() instanceof CaptionEditListener) {
            ((CaptionEditListener) getParentFragment()).onColorChanged(getIntParam("type"), this.color, z);
        }
    }
}
