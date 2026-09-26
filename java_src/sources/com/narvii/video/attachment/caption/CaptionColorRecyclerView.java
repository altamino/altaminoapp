package com.narvii.video.attachment.caption;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.SpaceItemDecoration;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CaptionColorRecyclerView extends HorizontalRecyclerView {
    private static List<Integer> builtInColorList;
    private Adapter adapter;
    private int currentSelectColor;
    private boolean enabled;
    private OnColorSelectedListener onColorSelectedListener;
    private boolean supportDisable;

    public class Adapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.video.attachment.caption.CaptionColorRecyclerView.Adapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int childAdapterPosition = CaptionColorRecyclerView.this.getChildAdapterPosition(view);
                if (childAdapterPosition != -1) {
                    if (CaptionColorRecyclerView.this.supportDisable && childAdapterPosition == 0) {
                        CaptionColorRecyclerView.this.enabled = false;
                    } else {
                        CaptionColorRecyclerView.this.currentSelectColor = Adapter.this.getItemColor(childAdapterPosition);
                        CaptionColorRecyclerView.this.enabled = true;
                    }
                    if (CaptionColorRecyclerView.this.onColorSelectedListener != null) {
                        CaptionColorRecyclerView.this.onColorSelectedListener.onColorSelected(CaptionColorRecyclerView.this.currentSelectColor, CaptionColorRecyclerView.this.enabled);
                    }
                    CaptionColorRecyclerView.this.adapter.notifyDataSetChanged();
                }
            }
        };

        public class ColorPickerItemViewHolder extends RecyclerView.ViewHolder {
            public ColorPickerItemViewHolder(View view) {
                super(view);
                view.setOnClickListener(Adapter.this.onClickListener);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            return 0;
        }

        public Adapter() {
        }

        public int getItemColor(int i10) {
            if (!CaptionColorRecyclerView.this.supportDisable) {
                return ((Integer) CaptionColorRecyclerView.builtInColorList.get(i10)).intValue();
            }
            if (i10 == 0) {
                return 0;
            }
            return ((Integer) CaptionColorRecyclerView.builtInColorList.get(i10 - 1)).intValue();
        }

        public boolean isItemSelected(int i10) {
            if (CaptionColorRecyclerView.this.supportDisable && i10 == 0) {
                return !CaptionColorRecyclerView.this.enabled;
            }
            return CaptionColorRecyclerView.this.currentSelectColor == getItemColor(i10) && CaptionColorRecyclerView.this.enabled;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
            if (viewHolder instanceof ColorPickerItemViewHolder) {
                View view = viewHolder.itemView;
                if (view instanceof CaptionColorPickerView) {
                    CaptionColorPickerView captionColorPickerView = (CaptionColorPickerView) view;
                    captionColorPickerView.setColor(getItemColor(i10));
                    captionColorPickerView.setDisabled(CaptionColorRecyclerView.this.supportDisable && i10 == 0);
                    captionColorPickerView.setSelected(isItemSelected(i10));
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new ColorPickerItemViewHolder(LayoutInflater.from(CaptionColorRecyclerView.this.getContext()).inflate(R.layout.caption_color_item, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return CaptionColorRecyclerView.builtInColorList.size() + (CaptionColorRecyclerView.this.supportDisable ? 1 : 0);
        }
    }

    public interface OnColorSelectedListener {
        void onColorSelected(int i10, boolean z6);
    }

    public CaptionColorRecyclerView(Context context) {
        this(context, null);
    }

    public void setCurrentSelectColor(int i10) {
        setCurrentSelectColor(i10, true);
    }

    public void setOnColorSelectedListener(OnColorSelectedListener onColorSelectedListener) {
        this.onColorSelectedListener = onColorSelectedListener;
    }

    public void setSupportDisable(boolean z6) {
        this.supportDisable = z6;
    }

    static {
        ArrayList arrayList = new ArrayList();
        builtInColorList = arrayList;
        arrayList.add(Integer.valueOf(Color.parseColor("#FFFFFF")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#000000")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#54515d")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#f2ff41")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#0076FF")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#ffc102")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#ff6809")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#f20d57")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#1598ff")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#8134ff")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#a10abf")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#fe37ba")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#ff9dff")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#22f39e")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#018c86")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#00477f")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#036100")));
    }

    public CaptionColorRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.supportDisable = false;
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        setAdapter(adapter);
        setItemAnimator(null);
        addItemDecoration(new SpaceItemDecoration((int) Utils.dpToPx(getContext(), 15.0f)));
    }

    public void setCurrentSelectColor(int i10, boolean z6) {
        this.currentSelectColor = ColorUtils.o(i10, 255);
        this.enabled = z6;
        this.adapter.notifyDataSetChanged();
    }
}
