package com.narvii.video.attachment.caption;

import android.content.Context;
import android.graphics.Color;
import android.support.v4.graphics.ColorUtils;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.SpaceItemDecoration;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class CaptionColorRecyclerView extends HorizontalRecyclerView {
    private static List<Integer> builtInColorList = new ArrayList();
    private Adapter adapter;
    private int currentSelectColor;
    private boolean enabled;
    private OnColorSelectedListener onColorSelectedListener;
    private boolean supportDisable;

    public interface OnColorSelectedListener {
        void onColorSelected(int i, boolean z);
    }

    public void setSupportDisable(boolean z) {
        this.supportDisable = z;
    }

    static {
        builtInColorList.add(Integer.valueOf(Color.parseColor("#FFFFFF")));
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

    public CaptionColorRecyclerView(Context context) {
        this(context, null);
    }

    public CaptionColorRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.supportDisable = false;
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        setAdapter(adapter);
        setItemAnimator(null);
        addItemDecoration(new SpaceItemDecoration((int) Utils.dpToPx(getContext(), 15.0f)));
    }

    public void setOnColorSelectedListener(OnColorSelectedListener onColorSelectedListener) {
        this.onColorSelectedListener = onColorSelectedListener;
    }

    public void setCurrentSelectColor(int i) {
        setCurrentSelectColor(i, true);
    }

    public void setCurrentSelectColor(int i, boolean z) {
        this.currentSelectColor = ColorUtils.setAlphaComponent(i, 255);
        this.enabled = z;
        this.adapter.notifyDataSetChanged();
    }

    public class Adapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.video.attachment.caption.CaptionColorRecyclerView.Adapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int childAdapterPosition = CaptionColorRecyclerView.this.getChildAdapterPosition(view);
                if (childAdapterPosition != -1) {
                    if (!CaptionColorRecyclerView.this.supportDisable || childAdapterPosition != 0) {
                        CaptionColorRecyclerView.this.currentSelectColor = Adapter.this.getItemColor(childAdapterPosition);
                        CaptionColorRecyclerView.this.enabled = true;
                    } else {
                        CaptionColorRecyclerView.this.enabled = false;
                    }
                    if (CaptionColorRecyclerView.this.onColorSelectedListener != null) {
                        CaptionColorRecyclerView.this.onColorSelectedListener.onColorSelected(CaptionColorRecyclerView.this.currentSelectColor, CaptionColorRecyclerView.this.enabled);
                    }
                    CaptionColorRecyclerView.this.adapter.notifyDataSetChanged();
                }
            }
        };

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        public Adapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return CaptionColorRecyclerView.builtInColorList.size() + (CaptionColorRecyclerView.this.supportDisable ? 1 : 0);
        }

        public int getItemColor(int i) {
            if (!CaptionColorRecyclerView.this.supportDisable) {
                return ((Integer) CaptionColorRecyclerView.builtInColorList.get(i)).intValue();
            }
            if (i == 0) {
                return 0;
            }
            return ((Integer) CaptionColorRecyclerView.builtInColorList.get(i - 1)).intValue();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new ColorPickerItemViewHolder(LayoutInflater.from(CaptionColorRecyclerView.this.getContext()).inflate(R.layout.caption_color_item, viewGroup, false));
        }

        public boolean isItemSelected(int i) {
            if (CaptionColorRecyclerView.this.supportDisable && i == 0) {
                return !CaptionColorRecyclerView.this.enabled;
            }
            return CaptionColorRecyclerView.this.currentSelectColor == getItemColor(i) && CaptionColorRecyclerView.this.enabled;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder instanceof ColorPickerItemViewHolder) {
                View view = viewHolder.itemView;
                if (view instanceof CaptionColorPickerView) {
                    CaptionColorPickerView captionColorPickerView = (CaptionColorPickerView) view;
                    captionColorPickerView.setColor(getItemColor(i));
                    captionColorPickerView.setDisabled(CaptionColorRecyclerView.this.supportDisable && i == 0);
                    captionColorPickerView.setSelected(isItemSelected(i));
                }
            }
        }

        public class ColorPickerItemViewHolder extends RecyclerView.ViewHolder {
            public ColorPickerItemViewHolder(View view) {
                super(view);
                view.setOnClickListener(Adapter.this.onClickListener);
            }
        }
    }
}
