package com.narvii.scene.view;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.mediaeditor.R;
import com.narvii.util.OnPreventRepeatedClickListener;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.TintButton;

/* loaded from: classes3.dex */
public class NvStoryBackgroundMusicButton extends RelativeLayout implements View.OnClickListener {
    public static final int MODE_ADD = 2;
    public static final int MODE_DISABLE = 1;
    public static final int MODE_EDIT = 3;
    private TintButton ivMusic;

    @MODE
    public int mode;
    private OnClickListener onClickListener;
    private TextView tvTitle;

    /* loaded from: classes.dex */
    public @interface MODE {
    }

    public interface OnClickListener {
        void onClick(NvStoryBackgroundMusicButton nvStoryBackgroundMusicButton, @MODE int i);
    }

    public NvStoryBackgroundMusicButton(Context context) {
        this(context, null);
    }

    public NvStoryBackgroundMusicButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NvStoryBackgroundMusicButton(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        super(context, attributeSet, i);
        this.mode = 1;
        init(context);
    }

    public void init(Context context) throws Resources.NotFoundException {
        LayoutInflater.from(context).inflate(R.layout.story_background_music_button, (ViewGroup) this, true);
        this.ivMusic = (TintButton) findViewById(R.id.iv_music);
        this.tvTitle = (TextView) findViewById(R.id.tv_title);
        updateView(getContext().getString(R.string.background_music));
        setOnClickListener(new OnPreventRepeatedClickListener(this));
    }

    public void setMode(@MODE int i, String str) throws Resources.NotFoundException {
        this.mode = i;
        if (TextUtils.isEmpty(str)) {
            str = getContext().getString(R.string.untitled);
        }
        updateView(str);
    }

    private void updateView(String str) throws Resources.NotFoundException {
        if (this.mode == 3) {
            setBackgroundResource(R.drawable.button_background_music_bg_edit_mode);
            int color = getResources().getColor(R.color.music_button_edit_text_color);
            this.tvTitle.setTextColor(color);
            this.tvTitle.setText(str);
            this.ivMusic.setImageResource(R.drawable.ic_scene_logo_music);
            this.ivMusic.setTintColor(color);
        } else {
            setBackgroundResource(R.drawable.button_background_music_bg);
            this.tvTitle.setTextColor(ContextCompat.getColor(getContext(), R.color.story_theme_color));
            this.tvTitle.setText(getContext().getString(R.string.background_music));
            this.ivMusic.setImageResource(R.drawable.ic_scene_logo_music);
            this.ivMusic.setTintColor(ContextCompat.getColor(getContext(), R.color.story_theme_color));
        }
        setAlpha(this.mode == 1 ? 0.3f : 1.0f);
        requestLayout();
    }

    public void setOnButtonClickListener(OnClickListener onClickListener) {
        this.onClickListener = onClickListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        OnClickListener onClickListener;
        int i = this.mode;
        if (i == 1 || (onClickListener = this.onClickListener) == null) {
            return;
        }
        onClickListener.onClick(this, i);
    }
}
