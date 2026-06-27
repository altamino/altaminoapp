package com.narvii.editor.cropping.basic;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.meisheeditor.R;

/* loaded from: classes2.dex */
public class ColorPickerAdapter extends RecyclerView.Adapter<ColorPickerViewHolder> {
    private Context mContext;
    private String[] mData;
    private IColorSelectedListener mListener;
    private int mSelectedIndex = 0;

    public ColorPickerAdapter(String[] strArr, Context context) {
        this.mData = strArr;
        this.mContext = context;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ColorPickerViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        ColorPickerViewHolder colorPickerViewHolder = new ColorPickerViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.cropping_color_picker_item_view, viewGroup, false));
        colorPickerViewHolder.listener = this.mListener;
        return colorPickerViewHolder;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ColorPickerViewHolder colorPickerViewHolder, int i) {
        View view = colorPickerViewHolder.itemView;
        if (view instanceof ColorPickerItemView) {
            view.setSelected(false);
            ((ColorPickerItemView) colorPickerViewHolder.itemView).setColor(this.mData[i]);
            colorPickerViewHolder.color = this.mData[i];
            colorPickerViewHolder.position = i;
            if (i == this.mSelectedIndex) {
                colorPickerViewHolder.itemView.setSelected(true);
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.length;
    }

    public void setSelectedIndex(int i) {
        int i2 = this.mSelectedIndex;
        if (i2 == i) {
            return;
        }
        notifyItemChanged(i2);
        this.mSelectedIndex = i;
        notifyItemChanged(i);
    }

    public void setListener(IColorSelectedListener iColorSelectedListener) {
        this.mListener = iColorSelectedListener;
    }

    class ColorPickerViewHolder extends RecyclerView.ViewHolder {
        String color;
        IColorSelectedListener listener;
        int position;

        public ColorPickerViewHolder(View view) {
            super(view);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$ColorPickerAdapter$ColorPickerViewHolder$_OkLtzcxBTADhuCojVuvq337fPc
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$0$ColorPickerAdapter$ColorPickerViewHolder(view2);
                }
            });
        }

        public /* synthetic */ void lambda$new$0$ColorPickerAdapter$ColorPickerViewHolder(View view) {
            String str;
            IColorSelectedListener iColorSelectedListener = this.listener;
            if (iColorSelectedListener == null || (str = this.color) == null) {
                return;
            }
            iColorSelectedListener.onColorSelected(str, this.position);
            ColorPickerAdapter.this.setSelectedIndex(this.position);
        }
    }
}
