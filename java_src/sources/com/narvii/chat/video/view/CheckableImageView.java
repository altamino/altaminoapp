package com.narvii.chat.video.view;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;

/* JADX INFO: loaded from: classes8.dex */
public class CheckableImageView extends AppCompatImageView implements Checkable {
    private static final int[] CHECK_STATE = {R.attr.state_checked};
    private boolean isChecked;

    public CheckableImageView(Context context) {
        super(context);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.isChecked;
    }

    public CheckableImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECK_STATE);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z6) {
        if (this.isChecked != z6) {
            this.isChecked = z6;
            refreshDrawableState();
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.isChecked);
    }
}
