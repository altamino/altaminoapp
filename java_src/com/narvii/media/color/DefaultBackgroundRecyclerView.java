package com.narvii.media.color;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.lib.R;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.recycleview.NVRecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class DefaultBackgroundRecyclerView extends NVRecyclerView implements View.OnClickListener {
    private static List<Integer> builtInColorList = new ArrayList();
    private final DefaultBackgroundAdapter adapter;
    private int currentSelectColor;
    private List<Integer> customColorList;
    private OnColorSelectedListener onColorSelectedListener;

    public interface OnColorSelectedListener {
        void onColorSelected(int i);
    }

    static {
        builtInColorList.add(Integer.valueOf(Color.parseColor("#ff3d00")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#e91e63")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#ff8f00")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#fdd835")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#43a047")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#0097a7")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#00b0ff")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#283593")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#8e24aa")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#4e342e")));
        builtInColorList.add(Integer.valueOf(Color.parseColor("#424242")));
    }

    public DefaultBackgroundRecyclerView(Context context) {
        this(context, null);
    }

    public DefaultBackgroundRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DefaultBackgroundRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.customColorList = new ArrayList();
        DefaultBackgroundAdapter defaultBackgroundAdapter = new DefaultBackgroundAdapter();
        this.adapter = defaultBackgroundAdapter;
        setAdapter(defaultBackgroundAdapter);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        setLayoutManager(linearLayoutManager);
        linearLayoutManager.setOrientation(0);
        addItemDecoration(new SpaceItemDecoration((int) Utils.dpToPx(getContext(), 15.0f), (int) Utils.dpToPx(getContext(), 20.0f)));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int childAdapterPosition = getChildAdapterPosition(view);
        if (childAdapterPosition == -1 || childAdapterPosition > this.adapter.getItemCount() || childAdapterPosition < 0) {
            Log.w("DefaultBackgroundRecyclerView click with NO_POSITION");
        } else {
            if (this.onColorSelectedListener == null) {
                return;
            }
            int itemColor = this.adapter.getItemColor(childAdapterPosition);
            this.onColorSelectedListener.onColorSelected(itemColor);
            this.currentSelectColor = itemColor;
            this.adapter.notifyDataSetChanged();
        }
    }

    public void setCustomColorList(List<Integer> list) {
        this.customColorList.clear();
        if (list != null) {
            this.customColorList.addAll(list);
        }
        this.adapter.notifyDataSetChanged();
    }

    public void setOnColorSelectedListener(OnColorSelectedListener onColorSelectedListener) {
        this.onColorSelectedListener = onColorSelectedListener;
    }

    public void removeCurrentSelectColor() {
        setCurrentSelectColor(-1);
    }

    public void setCurrentSelectColor(int i) {
        this.currentSelectColor = i;
        this.adapter.notifyDataSetChanged();
    }

    public class DefaultBackgroundAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        private static final int ITEM_TYPE_BUILTIN = 2;
        private static final int ITEM_TYPE_CUSTOM = 1;
        private static final int ITEM_TYPE_DIVIDER = 0;
        private static final int ITEM_TYPE_NONE = -1;
        private static final int VIEW_TYPE_DIVIDER = 1;
        private static final int VIEW_TYPE_NORMAL = 0;

        public DefaultBackgroundAdapter() {
        }

        public boolean isShownDivider() {
            return !DefaultBackgroundRecyclerView.this.customColorList.isEmpty();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return DefaultBackgroundRecyclerView.builtInColorList.size() + DefaultBackgroundRecyclerView.this.customColorList.size() + (isShownDivider() ? 1 : 0);
        }

        public int getItemType(int i) {
            if (i < 0 || i > getItemCount()) {
                return -1;
            }
            if (i < DefaultBackgroundRecyclerView.this.customColorList.size()) {
                return 1;
            }
            return (isShownDivider() && i == DefaultBackgroundRecyclerView.this.customColorList.size()) ? 0 : 2;
        }

        public int getItemColor(int i) {
            int itemType;
            int i2;
            try {
                itemType = getItemType(i);
                i2 = 1;
            } catch (Exception unused) {
            }
            if (itemType == 1) {
                return ((Integer) DefaultBackgroundRecyclerView.this.customColorList.get(i)).intValue();
            }
            if (itemType == 2) {
                int size = i - DefaultBackgroundRecyclerView.this.customColorList.size();
                if (!isShownDivider()) {
                    i2 = 0;
                }
                return ((Integer) DefaultBackgroundRecyclerView.builtInColorList.get(size - i2)).intValue();
            }
            return 0;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            int itemType = getItemType(i);
            return (itemType == 1 || itemType == 2) ? 0 : 1;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                return new ColorPickerItemViewHolder(LayoutInflater.from(DefaultBackgroundRecyclerView.this.getContext()).inflate(R.layout.color_picker_default_item_layout, viewGroup, false));
            }
            return new ColorPickerItemDividerViewHolder(LayoutInflater.from(DefaultBackgroundRecyclerView.this.getContext()).inflate(R.layout.color_picker_default_item_divider_layout, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder instanceof ColorPickerItemViewHolder) {
                ColorPickerItemViewHolder colorPickerItemViewHolder = (ColorPickerItemViewHolder) viewHolder;
                colorPickerItemViewHolder.colorDrawableView.setImageDrawable(new ColorDrawable(getItemColor(i)));
                if (getItemType(i) == 1) {
                    colorPickerItemViewHolder.colorSelected.setVisibility(DefaultBackgroundRecyclerView.this.currentSelectColor != getItemColor(i) ? 8 : 0);
                    return;
                } else {
                    if (getItemType(i) == 2) {
                        colorPickerItemViewHolder.colorSelected.setVisibility((DefaultBackgroundRecyclerView.this.currentSelectColor != getItemColor(i) || DefaultBackgroundRecyclerView.this.customColorList.contains(Integer.valueOf(DefaultBackgroundRecyclerView.this.currentSelectColor))) ? 8 : 0);
                        return;
                    }
                    return;
                }
            }
            boolean z = viewHolder instanceof ColorPickerItemDividerViewHolder;
        }

        public class ColorPickerItemViewHolder extends RecyclerView.ViewHolder {
            private final NVImageView colorDrawableView;
            private final View colorSelected;

            public ColorPickerItemViewHolder(View view) {
                super(view);
                this.colorDrawableView = (NVImageView) view.findViewById(R.id.item_color_drawable);
                this.colorSelected = view.findViewById(R.id.item_color_selected);
                view.setOnClickListener(DefaultBackgroundRecyclerView.this);
            }
        }

        public class ColorPickerItemDividerViewHolder extends RecyclerView.ViewHolder {
            public ColorPickerItemDividerViewHolder(View view) {
                super(view);
            }
        }
    }

    private class SpaceItemDecoration extends RecyclerView.ItemDecoration {
        private int padding;
        private int space;

        public SpaceItemDecoration(int i, int i2) {
            this.space = i;
            this.padding = i2;
        }

        @Override // android.support.v7.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            super.getItemOffsets(rect, view, recyclerView, state);
            if (Utils.isRtl()) {
                rect.left = this.space;
            } else {
                rect.right = this.space;
            }
            if (recyclerView.getChildAdapterPosition(view) == 0) {
                if (Utils.isRtl()) {
                    rect.right = this.padding;
                } else {
                    rect.left = this.padding;
                }
            }
        }
    }
}
