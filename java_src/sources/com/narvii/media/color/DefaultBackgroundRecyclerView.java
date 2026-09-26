package com.narvii.media.color;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.lib.R;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.recycleview.NVRecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultBackgroundRecyclerView extends NVRecyclerView implements View.OnClickListener {
    private static List<Integer> builtInColorList;
    private final DefaultBackgroundAdapter adapter;
    private int currentSelectColor;
    private List<Integer> customColorList;
    private OnColorSelectedListener onColorSelectedListener;

    public class DefaultBackgroundAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        private static final int ITEM_TYPE_BUILTIN = 2;
        private static final int ITEM_TYPE_CUSTOM = 1;
        private static final int ITEM_TYPE_DIVIDER = 0;
        private static final int ITEM_TYPE_NONE = -1;
        private static final int VIEW_TYPE_DIVIDER = 1;
        private static final int VIEW_TYPE_NORMAL = 0;

        public class ColorPickerItemDividerViewHolder extends RecyclerView.ViewHolder {
            public ColorPickerItemDividerViewHolder(View view) {
                super(view);
            }
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

        public int getItemColor(int i10) {
            try {
                int itemType = getItemType(i10);
                if (itemType == 1) {
                    return ((Integer) DefaultBackgroundRecyclerView.this.customColorList.get(i10)).intValue();
                }
                if (itemType == 2) {
                    return ((Integer) DefaultBackgroundRecyclerView.builtInColorList.get((i10 - DefaultBackgroundRecyclerView.this.customColorList.size()) - (isShownDivider() ? 1 : 0))).intValue();
                }
                return 0;
            } catch (Exception unused) {
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return i10 == 0 ? new ColorPickerItemViewHolder(LayoutInflater.from(DefaultBackgroundRecyclerView.this.getContext()).inflate(R.layout.color_picker_default_item_layout, viewGroup, false)) : new ColorPickerItemDividerViewHolder(LayoutInflater.from(DefaultBackgroundRecyclerView.this.getContext()).inflate(R.layout.color_picker_default_item_divider_layout, viewGroup, false));
        }

        public DefaultBackgroundAdapter() {
        }

        public int getItemType(int i10) {
            if (i10 < 0 || i10 > getItemCount()) {
                return -1;
            }
            if (i10 < DefaultBackgroundRecyclerView.this.customColorList.size()) {
                return 1;
            }
            return (isShownDivider() && i10 == DefaultBackgroundRecyclerView.this.customColorList.size()) ? 0 : 2;
        }

        public boolean isShownDivider() {
            return !DefaultBackgroundRecyclerView.this.customColorList.isEmpty();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
            if (!(viewHolder instanceof ColorPickerItemViewHolder)) {
                boolean z6 = viewHolder instanceof ColorPickerItemDividerViewHolder;
                return;
            }
            ColorPickerItemViewHolder colorPickerItemViewHolder = (ColorPickerItemViewHolder) viewHolder;
            colorPickerItemViewHolder.colorDrawableView.setImageDrawable(new ColorDrawable(getItemColor(i10)));
            int i11 = 8;
            if (getItemType(i10) == 1) {
                colorPickerItemViewHolder.colorSelected.setVisibility(DefaultBackgroundRecyclerView.this.currentSelectColor == getItemColor(i10) ? 0 : 8);
                return;
            }
            if (getItemType(i10) == 2) {
                View view = colorPickerItemViewHolder.colorSelected;
                if (DefaultBackgroundRecyclerView.this.currentSelectColor == getItemColor(i10) && !DefaultBackgroundRecyclerView.this.customColorList.contains(Integer.valueOf(DefaultBackgroundRecyclerView.this.currentSelectColor))) {
                    i11 = 0;
                }
                view.setVisibility(i11);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return DefaultBackgroundRecyclerView.builtInColorList.size() + DefaultBackgroundRecyclerView.this.customColorList.size() + (isShownDivider() ? 1 : 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            int itemType = getItemType(i10);
            if (itemType != 1 && itemType != 2) {
                return 1;
            }
            return 0;
        }
    }

    public interface OnColorSelectedListener {
        void onColorSelected(int i10);
    }

    private class SpaceItemDecoration extends RecyclerView.ItemDecoration {
        private int padding;
        private int space;

        public SpaceItemDecoration(int i10, int i11) {
            this.space = i10;
            this.padding = i11;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
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

    public DefaultBackgroundRecyclerView(Context context) {
        this(context, null);
    }

    public void removeCurrentSelectColor() {
        setCurrentSelectColor(-1);
    }

    public void setOnColorSelectedListener(OnColorSelectedListener onColorSelectedListener) {
        this.onColorSelectedListener = onColorSelectedListener;
    }

    static {
        ArrayList arrayList = new ArrayList();
        builtInColorList = arrayList;
        arrayList.add(Integer.valueOf(Color.parseColor("#ff3d00")));
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

    public DefaultBackgroundRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setCurrentSelectColor(int i10) {
        this.currentSelectColor = i10;
        this.adapter.notifyDataSetChanged();
    }

    public void setCustomColorList(List<Integer> list) {
        this.customColorList.clear();
        if (list != null) {
            this.customColorList.addAll(list);
        }
        this.adapter.notifyDataSetChanged();
    }

    public DefaultBackgroundRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
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
        if (childAdapterPosition != -1 && childAdapterPosition <= this.adapter.getItemCount() && childAdapterPosition >= 0) {
            if (this.onColorSelectedListener == null) {
                return;
            }
            int itemColor = this.adapter.getItemColor(childAdapterPosition);
            this.onColorSelectedListener.onColorSelected(itemColor);
            this.currentSelectColor = itemColor;
            this.adapter.notifyDataSetChanged();
            return;
        }
        Log.w("DefaultBackgroundRecyclerView click with NO_POSITION");
    }
}
