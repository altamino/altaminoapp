package com.narvii.editor.cropping.basic;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.meisheeditor.R;
import com.narvii.util.Utils;
import com.narvii.widget.EasyButton;

/* JADX INFO: loaded from: classes7.dex */
public class ColorPickerView extends FrameLayout {
    private ColorPickerAdapter mAdapter;
    private EasyButton mButton;
    private Context mContext;
    private RecyclerView mRecyclerView;
    private TextView mTextView;
    private IPickerChecked pickerCheckedListener;

    public interface IPickerChecked {
        void onChecked();
    }

    public ColorPickerView(@NonNull Context context) {
        this(context, null);
    }

    public void setPickerCheckedListener(IPickerChecked iPickerChecked) {
        this.pickerCheckedListener = iPickerChecked;
    }

    public ColorPickerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$0(View view) {
        IPickerChecked iPickerChecked = this.pickerCheckedListener;
        if (iPickerChecked != null) {
            iPickerChecked.onChecked();
        }
    }

    public void init(String[] strArr) {
        this.mRecyclerView = new RecyclerView(this.mContext);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        ColorPickerAdapter colorPickerAdapter = new ColorPickerAdapter(strArr, this.mContext);
        this.mAdapter = colorPickerAdapter;
        this.mRecyclerView.setAdapter(colorPickerAdapter);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.mContext);
        linearLayoutManager.setOrientation(0);
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        addView(this.mRecyclerView, layoutParams);
        this.mTextView = new TextView(this.mContext);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        layoutParams2.topMargin = Utils.dpToPxInt(this.mContext, 22.0f);
        this.mTextView.setTextColor(-1);
        this.mTextView.setText(R.string.background);
        this.mTextView.setTypeface(Typeface.DEFAULT_BOLD);
        addView(this.mTextView, layoutParams2);
        this.mButton = new EasyButton(this.mContext, null);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = GravityCompat.END;
        layoutParams3.rightMargin = Utils.dpToPxInt(this.mContext, 20.0f);
        layoutParams3.topMargin = Utils.dpToPxInt(this.mContext, 22.0f);
        this.mButton.setImageResource(R.drawable.dynamic_cropping_check);
        this.mButton.setClickable(true);
        this.mButton.setFocusable(true);
        addView(this.mButton, layoutParams3);
        this.mButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.editor.cropping.basic.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2258a.lambda$init$0(view);
            }
        });
    }

    public void setColorSelectedListener(IColorSelectedListener iColorSelectedListener) {
        this.mAdapter.setListener(iColorSelectedListener);
    }

    public void setSelectedIndex(int i10) {
        ColorPickerAdapter colorPickerAdapter = this.mAdapter;
        if (colorPickerAdapter != null) {
            colorPickerAdapter.setSelectedIndex(i10);
        }
    }

    public ColorPickerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mContext = context;
    }
}
