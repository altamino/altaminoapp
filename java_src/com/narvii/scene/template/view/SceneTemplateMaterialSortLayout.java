package com.narvii.scene.template.view;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.mediaeditor.R;
import com.narvii.scene.template.SceneTemplateGeneratorFragment;
import com.narvii.scene.template.view.SceneTemplateMaterialSortLayout;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SmoothProgressBar;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.collections.MapsKt___MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: SceneTemplateMaterialSortLayout.kt */
/* loaded from: classes3.dex */
public final class SceneTemplateMaterialSortLayout extends FrameLayout {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateMaterialSortLayout.class), "holderMap", "getHolderMap()Ljava/util/Map;"))};
    private HashMap _$_findViewCache;
    private RecyclerView backgroundRecyclerView;
    private final List<SceneTemplateGeneratorFragment.SelectedEntry> datas;
    private final Lazy holderMap$delegate;
    private ItemTouchHelper itemTouchHelper;
    private OnRemoveItemListener onRemoveItemListener;
    private OnViewClickListener onViewClickListener;
    private RecyclerView recyclerView;
    private int scrollOffset;
    private int totalCount;

    /* compiled from: SceneTemplateMaterialSortLayout.kt */
    public interface OnRemoveItemListener {
        void onRemove(SceneTemplateGeneratorFragment.SelectedEntry selectedEntry);
    }

    /* compiled from: SceneTemplateMaterialSortLayout.kt */
    public interface OnViewClickListener {
        void onBackgroundItemClick();

        void onItemClick(SceneTemplateGeneratorFragment.SelectedEntry selectedEntry);

        void onRetryClick(SceneTemplateGeneratorFragment.SelectedEntry selectedEntry);
    }

    public SceneTemplateMaterialSortLayout(Context context) {
        this(context, null, 0, 6, null);
    }

    public SceneTemplateMaterialSortLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public final Map<String, ViewHolder> getHolderMap() {
        Lazy lazy = this.holderMap$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (Map) lazy.getValue();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SceneTemplateMaterialSortLayout(final Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.holderMap$delegate = LazyKt__LazyJVMKt.lazy(new Function0<Map<String, ViewHolder>>() { // from class: com.narvii.scene.template.view.SceneTemplateMaterialSortLayout$holderMap$2
            @Override // kotlin.jvm.functions.Function0
            public final Map<String, SceneTemplateMaterialSortLayout.ViewHolder> invoke() {
                return new LinkedHashMap();
            }
        });
        this.datas = new ArrayList();
        LayoutInflater.from(context).inflate(R.layout.view_scene_template_materail_sort, this);
        View viewFindViewById = findViewById(R.id.background_recycler_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.background_recycler_view)");
        this.backgroundRecyclerView = (RecyclerView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.recycler_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.recycler_view)");
        this.recyclerView = (RecyclerView) viewFindViewById2;
        this.backgroundRecyclerView.setLayoutManager(new LinearLayoutManager(context, 0, false));
        this.backgroundRecyclerView.setAdapter(new BackgroundItemAdapter());
        this.recyclerView.setLayoutManager(new LinearLayoutManager(context, 0, false));
        this.recyclerView.setAdapter(new Adapter());
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.scene.template.view.SceneTemplateMaterialSortLayout.1
            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
                if (recyclerView.getScrollState() != 0) {
                    SceneTemplateMaterialSortLayout.this.backgroundRecyclerView.scrollBy(i2, i3);
                }
            }
        });
        this.recyclerView.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() { // from class: com.narvii.scene.template.view.SceneTemplateMaterialSortLayout.2
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                int iComputeHorizontalScrollOffset = SceneTemplateMaterialSortLayout.this.scrollOffset == 0 ? 0 : SceneTemplateMaterialSortLayout.this.recyclerView.computeHorizontalScrollOffset() - SceneTemplateMaterialSortLayout.this.scrollOffset;
                SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = SceneTemplateMaterialSortLayout.this;
                sceneTemplateMaterialSortLayout.scrollOffset = sceneTemplateMaterialSortLayout.recyclerView.computeHorizontalScrollOffset();
                if (SceneTemplateMaterialSortLayout.this.recyclerView.getScrollState() == 0) {
                    SceneTemplateMaterialSortLayout.this.backgroundRecyclerView.scrollBy(iComputeHorizontalScrollOffset, SceneTemplateMaterialSortLayout.this.recyclerView.computeVerticalScrollOffset());
                }
            }
        });
        int i2 = 12;
        this.itemTouchHelper = new ItemTouchHelper(new ItemTouchHelper.SimpleCallback(i2, i2) { // from class: com.narvii.scene.template.view.SceneTemplateMaterialSortLayout.3
            private boolean hasMoved;

            @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
            public boolean isItemViewSwipeEnabled() {
                return false;
            }

            @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
            public boolean isLongPressDragEnabled() {
                return false;
            }

            @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
            public void onSwiped(RecyclerView.ViewHolder viewHolder, int i3) {
            }

            public final boolean getHasMoved() {
                return this.hasMoved;
            }

            public final void setHasMoved(boolean z) {
                this.hasMoved = z;
            }

            @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
            public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder target) {
                Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
                Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
                Intrinsics.checkParameterIsNotNull(target, "target");
                this.hasMoved = true;
                int adapterPosition = viewHolder.getAdapterPosition();
                int adapterPosition2 = target.getAdapterPosition();
                if (adapterPosition2 < SceneTemplateMaterialSortLayout.this.getDatas().size()) {
                    Collections.swap(SceneTemplateMaterialSortLayout.this.getDatas(), adapterPosition, adapterPosition2);
                    recyclerView.getAdapter().notifyItemMoved(adapterPosition, adapterPosition2);
                }
                return true;
            }

            @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
            public int getBoundingBoxMargin() {
                return Utils.dpToPxInt(context, 10.0f);
            }

            @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
            public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i3) {
                super.onSelectedChanged(viewHolder, i3);
                if (i3 == 0 && this.hasMoved) {
                    this.hasMoved = false;
                    SceneTemplateMaterialSortLayout.this.recyclerView.getAdapter().notifyDataSetChanged();
                }
            }
        });
        this.itemTouchHelper.attachToRecyclerView(this.recyclerView);
    }

    public /* synthetic */ SceneTemplateMaterialSortLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final OnRemoveItemListener getOnRemoveItemListener() {
        return this.onRemoveItemListener;
    }

    public final void setOnRemoveItemListener(OnRemoveItemListener onRemoveItemListener) {
        this.onRemoveItemListener = onRemoveItemListener;
    }

    public final OnViewClickListener getOnViewClickListener() {
        return this.onViewClickListener;
    }

    public final void setOnViewClickListener(OnViewClickListener onViewClickListener) {
        this.onViewClickListener = onViewClickListener;
    }

    public final List<SceneTemplateGeneratorFragment.SelectedEntry> getDatas() {
        return this.datas;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int iDpToPx = this.totalCount * ((int) Utils.dpToPx(getContext(), 65.0f));
        int size = View.MeasureSpec.getSize(i);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(iDpToPx, size), View.MeasureSpec.getMode(i));
        if (iDpToPx < size) {
            this.recyclerView.setOverScrollMode(2);
        } else {
            this.recyclerView.setOverScrollMode(0);
        }
        super.onMeasure(iMakeMeasureSpec, i2);
    }

    public final void setTotalCount(int i) {
        this.totalCount = i;
        updateView();
    }

    public final void addData(SceneTemplateGeneratorFragment.SelectedEntry entry) {
        Intrinsics.checkParameterIsNotNull(entry, "entry");
        this.datas.add(entry);
        updateView();
    }

    public final void setDatas(List<SceneTemplateGeneratorFragment.SelectedEntry> list) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        this.datas.clear();
        this.datas.addAll(list);
        updateView();
    }

    private final void updateView() {
        this.recyclerView.getAdapter().notifyDataSetChanged();
        this.backgroundRecyclerView.getAdapter().notifyDataSetChanged();
    }

    public final void deleteEntry(String id) {
        Intrinsics.checkParameterIsNotNull(id, "id");
        Iterator<SceneTemplateGeneratorFragment.SelectedEntry> it = this.datas.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (TextUtils.equals(it.next().getId(), id)) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            deleteItem(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deleteItem(int i) {
        if (this.datas.size() <= i) {
            return;
        }
        SceneTemplateGeneratorFragment.SelectedEntry selectedEntryRemove = this.datas.remove(i);
        OnRemoveItemListener onRemoveItemListener = this.onRemoveItemListener;
        if (onRemoveItemListener != null) {
            onRemoveItemListener.onRemove(selectedEntryRemove);
        }
        this.recyclerView.getAdapter().notifyItemRemoved(i);
        this.recyclerView.getAdapter().notifyItemRangeChanged(i, this.totalCount - i);
        if (i == 0) {
            this.backgroundRecyclerView.smoothScrollToPosition(0);
        }
    }

    public final void updateData(SceneTemplateGeneratorFragment.SelectedEntry entry, boolean z) {
        Intrinsics.checkParameterIsNotNull(entry, "entry");
        updateData(entry);
        if (z) {
            updateView();
        }
    }

    public final void updateData(SceneTemplateGeneratorFragment.SelectedEntry entry) {
        Object next;
        Object next2;
        Intrinsics.checkParameterIsNotNull(entry, "entry");
        Iterator<T> it = this.datas.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (TextUtils.equals(entry.getId(), ((SceneTemplateGeneratorFragment.SelectedEntry) next).getId())) {
                    break;
                }
            }
        }
        SceneTemplateGeneratorFragment.SelectedEntry selectedEntry = (SceneTemplateGeneratorFragment.SelectedEntry) next;
        if (selectedEntry != null) {
            if (!Intrinsics.areEqual(selectedEntry, entry)) {
                selectedEntry.copy(entry);
            }
            Iterator it2 = MapsKt___MapsKt.toList(getHolderMap()).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                } else {
                    next2 = it2.next();
                    if (TextUtils.equals((CharSequence) ((Pair) next2).getFirst(), entry.getId())) {
                        break;
                    }
                }
            }
            Pair pair = (Pair) next2;
            if (pair != null) {
                ((ViewHolder) pair.getSecond()).updateStates(entry);
            }
        }
    }

    /* compiled from: SceneTemplateMaterialSortLayout.kt */
    public final class Adapter extends RecyclerView.Adapter<ViewHolder> {
        public Adapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = SceneTemplateMaterialSortLayout.this;
            View viewInflate = LayoutInflater.from(sceneTemplateMaterialSortLayout.getContext()).inflate(R.layout.item_template_materail_sort_media, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(cont…ort_media, parent, false)");
            return new ViewHolder(sceneTemplateMaterialSortLayout, viewInflate);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SceneTemplateMaterialSortLayout.this.totalCount;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(ViewHolder holder, int i) {
            SceneTemplateGeneratorFragment.SelectedEntry selectedEntry;
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (SceneTemplateMaterialSortLayout.this.getDatas().size() > i) {
                selectedEntry = SceneTemplateMaterialSortLayout.this.getDatas().get(i);
            } else {
                selectedEntry = new SceneTemplateGeneratorFragment.SelectedEntry(null, null, 0, 0L, 0L, 0, null, null, 255, null);
            }
            SceneTemplateMaterialSortLayout.this.getHolderMap().put(selectedEntry.getId(), holder);
            holder.update(i, selectedEntry);
        }
    }

    /* compiled from: SceneTemplateMaterialSortLayout.kt */
    public final class ViewHolder extends RecyclerView.ViewHolder {
        private final FrameLayout container;
        private final ImageView delete;
        private final NVImageView image;
        private final FrameLayout imageEdit;
        private final View mask;
        private final SmoothProgressBar progress;
        private final ImageView retry;
        final /* synthetic */ SceneTemplateMaterialSortLayout this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout, View view) {
            super(view);
            Intrinsics.checkParameterIsNotNull(view, "view");
            this.this$0 = sceneTemplateMaterialSortLayout;
            this.image = (NVImageView) this.itemView.findViewById(R.id.image);
            this.container = (FrameLayout) this.itemView.findViewById(R.id.container);
            this.imageEdit = (FrameLayout) this.itemView.findViewById(R.id.image_edit);
            this.delete = (ImageView) this.itemView.findViewById(R.id.delete);
            this.mask = this.itemView.findViewById(R.id.mask);
            SmoothProgressBar smoothProgressBar = (SmoothProgressBar) this.itemView.findViewById(R.id.progress);
            smoothProgressBar.setMax(100);
            smoothProgressBar.setDuration(50);
            this.progress = smoothProgressBar;
            this.retry = (ImageView) this.itemView.findViewById(R.id.retry);
        }

        public final NVImageView getImage() {
            return this.image;
        }

        public final FrameLayout getContainer() {
            return this.container;
        }

        public final FrameLayout getImageEdit() {
            return this.imageEdit;
        }

        public final ImageView getDelete() {
            return this.delete;
        }

        public final View getMask() {
            return this.mask;
        }

        public final SmoothProgressBar getProgress() {
            return this.progress;
        }

        public final ImageView getRetry() {
            return this.retry;
        }

        public final void update(final int i, final SceneTemplateGeneratorFragment.SelectedEntry data) {
            Intrinsics.checkParameterIsNotNull(data, "data");
            if (data.isEmpty()) {
                FrameLayout container = this.container;
                Intrinsics.checkExpressionValueIsNotNull(container, "container");
                container.setVisibility(4);
                this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.template.view.SceneTemplateMaterialSortLayout$ViewHolder$update$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SceneTemplateMaterialSortLayout.OnViewClickListener onViewClickListener = this.this$0.this$0.getOnViewClickListener();
                        if (onViewClickListener != null) {
                            onViewClickListener.onBackgroundItemClick();
                        }
                    }
                });
                this.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.narvii.scene.template.view.SceneTemplateMaterialSortLayout$ViewHolder$update$2
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return false;
                    }
                });
                return;
            }
            FrameLayout container2 = this.container;
            Intrinsics.checkExpressionValueIsNotNull(container2, "container");
            container2.setVisibility(0);
            this.image.setImageMedia(data.getPreviewMedia() != null ? data.getPreviewMedia() : data.getMedia());
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.template.view.SceneTemplateMaterialSortLayout$ViewHolder$update$3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SceneTemplateMaterialSortLayout.OnViewClickListener onViewClickListener;
                    if (data.getState() != 4 || (onViewClickListener = this.this$0.this$0.getOnViewClickListener()) == null) {
                        return;
                    }
                    onViewClickListener.onItemClick(data);
                }
            });
            this.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.narvii.scene.template.view.SceneTemplateMaterialSortLayout$ViewHolder$update$4
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    this.this$0.this$0.itemTouchHelper.startDrag(this.this$0);
                    return false;
                }
            });
            this.delete.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.template.view.SceneTemplateMaterialSortLayout$ViewHolder$update$5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.this$0.this$0.deleteItem(i);
                }
            });
            this.retry.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.template.view.SceneTemplateMaterialSortLayout$ViewHolder$update$6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SceneTemplateMaterialSortLayout.OnViewClickListener onViewClickListener = this.this$0.this$0.getOnViewClickListener();
                    if (onViewClickListener != null) {
                        onViewClickListener.onRetryClick(data);
                    }
                }
            });
            updateStates(data);
        }

        public final void updateStates(SceneTemplateGeneratorFragment.SelectedEntry data) {
            Intrinsics.checkParameterIsNotNull(data, "data");
            int state = data.getState();
            if (state == 2) {
                View mask = this.mask;
                Intrinsics.checkExpressionValueIsNotNull(mask, "mask");
                mask.setVisibility(0);
                SmoothProgressBar progress = this.progress;
                Intrinsics.checkExpressionValueIsNotNull(progress, "progress");
                progress.setVisibility(0);
                ImageView retry = this.retry;
                Intrinsics.checkExpressionValueIsNotNull(retry, "retry");
                retry.setVisibility(8);
                FrameLayout imageEdit = this.imageEdit;
                Intrinsics.checkExpressionValueIsNotNull(imageEdit, "imageEdit");
                imageEdit.setVisibility(8);
                SmoothProgressBar progress2 = this.progress;
                Intrinsics.checkExpressionValueIsNotNull(progress2, "progress");
                progress2.setProgress(data.getProgress());
                return;
            }
            if (state == 3) {
                View mask2 = this.mask;
                Intrinsics.checkExpressionValueIsNotNull(mask2, "mask");
                mask2.setVisibility(0);
                SmoothProgressBar progress3 = this.progress;
                Intrinsics.checkExpressionValueIsNotNull(progress3, "progress");
                progress3.setVisibility(8);
                ImageView retry2 = this.retry;
                Intrinsics.checkExpressionValueIsNotNull(retry2, "retry");
                retry2.setVisibility(0);
                FrameLayout imageEdit2 = this.imageEdit;
                Intrinsics.checkExpressionValueIsNotNull(imageEdit2, "imageEdit");
                imageEdit2.setVisibility(8);
                return;
            }
            if (state != 4) {
                return;
            }
            View mask3 = this.mask;
            Intrinsics.checkExpressionValueIsNotNull(mask3, "mask");
            mask3.setVisibility(8);
            SmoothProgressBar progress4 = this.progress;
            Intrinsics.checkExpressionValueIsNotNull(progress4, "progress");
            progress4.setVisibility(8);
            ImageView retry3 = this.retry;
            Intrinsics.checkExpressionValueIsNotNull(retry3, "retry");
            retry3.setVisibility(8);
            FrameLayout imageEdit3 = this.imageEdit;
            Intrinsics.checkExpressionValueIsNotNull(imageEdit3, "imageEdit");
            imageEdit3.setVisibility(0);
        }
    }

    /* compiled from: SceneTemplateMaterialSortLayout.kt */
    public final class BackgroundItemAdapter extends RecyclerView.Adapter<BackgroundItemViewHodler> {
        public BackgroundItemAdapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public BackgroundItemViewHodler onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = SceneTemplateMaterialSortLayout.this;
            View viewInflate = LayoutInflater.from(sceneTemplateMaterialSortLayout.getContext()).inflate(R.layout.item_template_materail_sort_background, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(cont…ackground, parent, false)");
            return new BackgroundItemViewHodler(sceneTemplateMaterialSortLayout, viewInflate);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SceneTemplateMaterialSortLayout.this.totalCount;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(BackgroundItemViewHodler holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            holder.update(i);
        }
    }

    /* compiled from: SceneTemplateMaterialSortLayout.kt */
    public final class BackgroundItemViewHodler extends RecyclerView.ViewHolder {
        private final TextView number;
        final /* synthetic */ SceneTemplateMaterialSortLayout this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BackgroundItemViewHodler(SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout, View view) {
            super(view);
            Intrinsics.checkParameterIsNotNull(view, "view");
            this.this$0 = sceneTemplateMaterialSortLayout;
            this.number = (TextView) this.itemView.findViewById(R.id.number);
        }

        public final TextView getNumber() {
            return this.number;
        }

        public final void update(int i) {
            TextView number = this.number;
            Intrinsics.checkExpressionValueIsNotNull(number, "number");
            number.setText(String.valueOf(i + 1));
        }
    }
}
