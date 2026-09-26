package com.narvii.editor.cropping.basic;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.meisheeditor.R;

/* JADX INFO: loaded from: classes8.dex */
public class ColorPickerAdapter extends RecyclerView.Adapter<ColorPickerViewHolder> {
    private Context mContext;
    private String[] mData;
    private IColorSelectedListener mListener;
    private int mSelectedIndex = 0;

    class ColorPickerViewHolder extends RecyclerView.ViewHolder {
        String color;
        IColorSelectedListener listener;
        int position;

        public ColorPickerViewHolder(View view) {
            super(view);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.editor.cropping.basic.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f2257a.lambda$new$0(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            String str;
            IColorSelectedListener iColorSelectedListener = this.listener;
            if (iColorSelectedListener == null || (str = this.color) == null) {
                return;
            }
            iColorSelectedListener.onColorSelected(str, this.position);
            ColorPickerAdapter.this.setSelectedIndex(this.position);
        }
    }

    public void setListener(IColorSelectedListener iColorSelectedListener) {
        this.mListener = iColorSelectedListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.length;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull ColorPickerViewHolder colorPickerViewHolder, int i10) {
        View view = colorPickerViewHolder.itemView;
        if (view instanceof ColorPickerItemView) {
            view.setSelected(false);
            ((ColorPickerItemView) colorPickerViewHolder.itemView).setColor(this.mData[i10]);
            colorPickerViewHolder.color = this.mData[i10];
            colorPickerViewHolder.position = i10;
            if (i10 == this.mSelectedIndex) {
                colorPickerViewHolder.itemView.setSelected(true);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public ColorPickerViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        ColorPickerViewHolder colorPickerViewHolder = new ColorPickerViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.cropping_color_picker_item_view, viewGroup, false));
        colorPickerViewHolder.listener = this.mListener;
        return colorPickerViewHolder;
    }

    public void setSelectedIndex(int i10) {
        int i11 = this.mSelectedIndex;
        if (i11 == i10) {
            return;
        }
        notifyItemChanged(i11);
        this.mSelectedIndex = i10;
        notifyItemChanged(i10);
    }

    public ColorPickerAdapter(String[] strArr, Context context) {
        this.mData = strArr;
        this.mContext = context;
    }
}
