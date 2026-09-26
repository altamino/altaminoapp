package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.renderscript.ScriptIntrinsicBLAS;
import com.narvii.amino.master.R;
import com.narvii.image.BackgroundSource;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
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

    public void setMediaPicker(MediaPickerFragment mediaPickerFragment, File file) {
        setMediaPicker(mediaPickerFragment, file, 0);
    }

    public void setOnPrePickCallback(OnPrePickCallback onPrePickCallback) {
        this.onPrePickCallback = onPrePickCallback;
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

    public void setBackgroundPost(BackgroundSource backgroundSource) {
        if (backgroundSource == null) {
            return;
        }
        this.backgroundPost = backgroundSource;
        boolean zHasBackground = backgroundSource.hasBackground();
        ImageView imageView = this.pickerIcon;
        if (imageView != null && !this.isGlobal) {
            imageView.setImageResource(zHasBackground ? R.drawable.ic_palette_blue : R.drawable.ic_palette);
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

    public void setBackgroundText(String str) {
        this.backgroundText = str;
        resetBackgoundTextView();
    }

    public void setChooseBackgroundText(String str) {
        this.chooseBackgroundText = str;
        resetBackgoundTextView();
    }

    public void setMediaPicker(final MediaPickerFragment mediaPickerFragment, final File file, final int i10) {
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
                int i11 = i10;
                if (i11 == 0) {
                    i11 = ScriptIntrinsicBLAS.RIGHT;
                }
                if (BackgroundPickerView.this.backgroundPost.hasBackground()) {
                    i11 |= 64;
                    mediaPickerFragment.deleteStringId = R.string.remove_background;
                }
                MediaPickerFragment mediaPickerFragment2 = mediaPickerFragment;
                mediaPickerFragment2.pickColorStringId = R.string.pick_a_color;
                mediaPickerFragment2.oldColor = BackgroundPickerView.this.backgroundPost.getBackgroundColor();
                mediaPickerFragment.pickMedia(file, bundle, i11, 0);
            }
        };
        if (!this.isLite) {
            setOnClickListener(onClickListener);
        } else {
            this.pickerIcon.setOnClickListener(onClickListener);
            this.backgroundPreview.setOnClickListener(onClickListener);
        }
    }

    public BackgroundPickerView(Context context, AttributeSet attributeSet) {
        int i10;
        String str;
        super(context, attributeSet);
        setWillNotDraw(false);
        Paint paint = new Paint(1);
        this.redLinePaint = paint;
        paint.setColor(SupportMenu.CATEGORY_MASK);
        this.redLinePaint.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.BackgroundPickerView);
        this.isLite = typedArrayObtainStyledAttributes.getBoolean(3, false);
        this.isGlobal = typedArrayObtainStyledAttributes.getBoolean(2, false);
        this.backgroundText = typedArrayObtainStyledAttributes.getString(0);
        String string = typedArrayObtainStyledAttributes.getString(1);
        this.chooseBackgroundText = string;
        if (string == null && (str = this.backgroundText) != null) {
            this.chooseBackgroundText = str;
        }
        if (this.chooseBackgroundText == null) {
            this.chooseBackgroundText = getContext().getString(R.string.choose_background);
        }
        if (this.backgroundText == null) {
            this.backgroundText = getContext().getString(R.string.background);
        }
        typedArrayObtainStyledAttributes.recycle();
        Context context2 = getContext();
        if (this.isLite) {
            i10 = R.layout.background_picker_lite;
        } else if (this.isGlobal) {
            i10 = R.layout.background_picker_global;
        } else {
            i10 = R.layout.background_picker;
        }
        View.inflate(context2, i10, this);
        this.backgroundPreview = (NVImageView) findViewById(R.id.background_preview);
        this.pickerIcon = (ImageView) findViewById(R.id.picker_icon);
        if (!this.isLite) {
            this.backgroundTextView = (TextView) findViewById(R.id.background_text);
        }
        setClipChildren(false);
        setClipToPadding(false);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        BackgroundSource backgroundSource = this.backgroundPost;
        if (backgroundSource == null || (backgroundSource != null && !backgroundSource.hasBackground())) {
            canvas.drawLine(this.backgroundPreview.getLeft(), this.backgroundPreview.getTop(), this.backgroundPreview.getRight(), this.backgroundPreview.getBottom(), this.redLinePaint);
        }
    }
}
