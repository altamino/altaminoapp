package com.narvii.monetization.sticker.post;

import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.Sticker;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class StickerPostItem extends LinearLayout implements TextWatcher, View.OnFocusChangeListener, TextView.OnEditorActionListener {
    public static final int NAME_MAX_LENGTH = 20;
    TextView countDown;
    NVImageView icon;
    View iconLayout;
    View.OnClickListener iconLayoutClickListener;
    EditText name;
    StickerPost stickerPost;
    View thumbnail;

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public StickerPostItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.name = (EditText) findViewById(R.id.edit_name);
        this.countDown = (TextView) findViewById(R.id.countdown);
        this.name.addTextChangedListener(this);
        this.name.setOnFocusChangeListener(this);
        this.name.setOnEditorActionListener(this);
        this.name.setFilters(new InputFilter[]{new InputFilter.LengthFilter(20)});
        this.icon = (NVImageView) findViewById(R.id.icon);
        this.iconLayout = findViewById(R.id.icon_layout);
        this.thumbnail = findViewById(R.id.thumbnail);
        this.iconLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.post.StickerPostItem.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                StickerPostItem stickerPostItem = StickerPostItem.this;
                View.OnClickListener onClickListener = stickerPostItem.iconLayoutClickListener;
                if (onClickListener != null) {
                    onClickListener.onClick(stickerPostItem);
                }
            }
        });
    }

    public void setIconLayoutClickListener(View.OnClickListener onClickListener) {
        this.iconLayoutClickListener = onClickListener;
    }

    public void showThumbnail(boolean z) {
        ViewUtils.show(this.thumbnail, z);
    }

    public void setStickerPost(StickerPost stickerPost) {
        if (stickerPost == null) {
            return;
        }
        this.stickerPost = stickerPost;
        this.name.setText(stickerPost.name);
        updateIconView();
    }

    public void changeFromSticker(Sticker sticker) {
        if (sticker == null) {
            return;
        }
        if (this.stickerPost == null) {
            this.stickerPost = new StickerPost();
        }
        StickerPost stickerPost = this.stickerPost;
        stickerPost.originalSticker = sticker;
        stickerPost.icon = null;
        this.name.setText(sticker.name);
        updateIconView();
    }

    public void changeIcon(String str) {
        if (this.stickerPost == null) {
            this.stickerPost = new StickerPost();
        }
        StickerPost stickerPost = this.stickerPost;
        stickerPost.icon = str;
        stickerPost.originalSticker = null;
        this.name.setText((CharSequence) null);
        updateIconView();
    }

    private void updateIconView() {
        this.icon.setImageUrl(this.stickerPost.getIconPreviewUrl());
    }

    public EditText getNameEdit() {
        return this.name;
    }

    public StickerPost getStickerPost() {
        if (this.stickerPost == null) {
            this.stickerPost = new StickerPost();
        }
        this.stickerPost.name = this.name.getText().toString().trim();
        return this.stickerPost;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        updateCountDownView();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        updateCountDownView();
    }

    private void updateCountDownView() {
        this.countDown.setText((20 - this.name.getText().toString().length()) + "");
        ViewUtils.show(this.countDown, this.name.isFocused());
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        SoftKeyboard.hideSoftKeyboard(this.name);
        return true;
    }
}
