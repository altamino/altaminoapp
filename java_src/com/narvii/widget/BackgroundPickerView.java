package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.internal.view.SupportMenu;
import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.amino.R;
import com.narvii.image.BackgroundSource;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import java.io.File;

/* loaded from: classes3.dex */
public class BackgroundPickerView extends RelativeLayout {
    public static final int IMAGE_BACKGROUND = 10000;
    BackgroundSource backgroundPost;
    NVImageView backgroundPreview;
    String backgroundText;
    TextView backgroundTextView;
    String chooseBackgroundText;
    boolean isGlobal;
    boolean isLite;
    private OnPrePickCallback onPrePickCallback;
    ImageView pickerIcon;
    Paint redLinePaint;

    public interface OnPrePickCallback {
        void onPrePick(View view);
    }

    public BackgroundPickerView(Context context, AttributeSet attributeSet) {
        String str;
        super(context, attributeSet);
        setWillNotDraw(false);
        this.redLinePaint = new Paint(1);
        this.redLinePaint.setColor(SupportMenu.CATEGORY_MASK);
        this.redLinePaint.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BackgroundPickerView);
        this.isLite = typedArrayObtainStyledAttributes.getBoolean(3, false);
        this.isGlobal = typedArrayObtainStyledAttributes.getBoolean(2, false);
        this.backgroundText = typedArrayObtainStyledAttributes.getString(0);
        this.chooseBackgroundText = typedArrayObtainStyledAttributes.getString(1);
        if (this.chooseBackgroundText == null && (str = this.backgroundText) != null) {
            this.chooseBackgroundText = str;
        }
        if (this.chooseBackgroundText == null) {
            this.chooseBackgroundText = getContext().getString(com.narvii.amino.mastes.R.string.choose_background);
        }
        if (this.backgroundText == null) {
            this.backgroundText = getContext().getString(com.narvii.amino.mastes.R.string.background);
        }
        typedArrayObtainStyledAttributes.recycle();
        RelativeLayout.inflate(getContext(), this.isLite ? com.narvii.amino.mastes.R.layout.background_picker_lite : this.isGlobal ? com.narvii.amino.mastes.R.layout.background_picker_global : com.narvii.amino.mastes.R.layout.background_picker, this);
        this.backgroundPreview = (NVImageView) findViewById(com.narvii.amino.mastes.R.id.background_preview);
        this.pickerIcon = (ImageView) findViewById(com.narvii.amino.mastes.R.id.picker_icon);
        if (!this.isLite) {
            this.backgroundTextView = (TextView) findViewById(com.narvii.amino.mastes.R.id.background_text);
        }
        setClipChildren(false);
        setClipToPadding(false);
    }

    public void setBackgroundText(String str) {
        this.backgroundText = str;
        resetBackgoundTextView();
    }

    private void resetBackgoundTextView() {
        BackgroundSource backgroundSource = this.backgroundPost;
        if (backgroundSource == null) {
            return;
        }
        boolean zHasBackground = backgroundSource.hasBackground();
        TextView textView = this.backgroundTextView;
        if (textView != null) {
            textView.setText(zHasBackground ? this.backgroundText : this.chooseBackgroundText);
        }
    }

    public void setChooseBackgroundText(String str) {
        this.chooseBackgroundText = str;
        resetBackgoundTextView();
    }

    public void setBackgroundPost(BackgroundSource backgroundSource) {
        if (backgroundSource == null) {
            return;
        }
        this.backgroundPost = backgroundSource;
        boolean zHasBackground = backgroundSource.hasBackground();
        ImageView imageView = this.pickerIcon;
        if (imageView != null && !this.isGlobal) {
            imageView.setImageResource(zHasBackground ? com.narvii.amino.mastes.R.drawable.ic_palette_blue : com.narvii.amino.mastes.R.drawable.ic_palette);
        }
        TextView textView = this.backgroundTextView;
        if (textView != null) {
            textView.setText(zHasBackground ? this.backgroundText : this.chooseBackgroundText);
        }
        if (this.backgroundPreview != null) {
            Media backgroundMedia = backgroundSource.getBackgroundMedia();
            if (backgroundMedia != null) {
                this.backgroundPreview.setImageUrl(backgroundMedia.url);
            } else {
                this.backgroundPreview.setImageDrawable(new ColorDrawable(backgroundSource.getBackgroundColor()));
            }
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        BackgroundSource backgroundSource = this.backgroundPost;
        if (backgroundSource == null || !(backgroundSource == null || backgroundSource.hasBackground())) {
            canvas.drawLine(this.backgroundPreview.getLeft(), this.backgroundPreview.getTop(), this.backgroundPreview.getRight(), this.backgroundPreview.getBottom(), this.redLinePaint);
        }
    }

    public void setMediaPicker(MediaPickerFragment mediaPickerFragment, File file) {
        setMediaPicker(mediaPickerFragment, file, 0);
    }

    public void setMediaPicker(final MediaPickerFragment mediaPickerFragment, final File file, final int i) {
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.widget.BackgroundPickerView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BackgroundPickerView.this.onPrePickCallback != null) {
                    BackgroundPickerView.this.onPrePickCallback.onPrePick(view);
                }
                if (BackgroundPickerView.this.backgroundPost == null || mediaPickerFragment == null) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putInt("type", 10000);
                int i2 = i;
                if (i2 == 0) {
                    i2 = ScriptIntrinsicBLAS.RIGHT;
                }
                if (BackgroundPickerView.this.backgroundPost.hasBackground()) {
                    i2 |= 64;
                    mediaPickerFragment.deleteStringId = com.narvii.amino.mastes.R.string.remove_background;
                }
                MediaPickerFragment mediaPickerFragment2 = mediaPickerFragment;
                mediaPickerFragment2.pickColorStringId = com.narvii.amino.mastes.R.string.pick_a_color;
                mediaPickerFragment2.oldColor = BackgroundPickerView.this.backgroundPost.getBackgroundColor();
                mediaPickerFragment.pickMedia(file, bundle, i2, 0);
            }
        };
        if (this.isLite) {
            this.pickerIcon.setOnClickListener(onClickListener);
            this.backgroundPreview.setOnClickListener(onClickListener);
        } else {
            setOnClickListener(onClickListener);
        }
    }

    public void setOnPrePickCallback(OnPrePickCallback onPrePickCallback) {
        this.onPrePickCallback = onPrePickCallback;
    }
}
