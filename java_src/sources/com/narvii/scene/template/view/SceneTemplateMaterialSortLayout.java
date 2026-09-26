package com.narvii.scene.template.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.mediaeditor.R;
import com.narvii.scene.template.SceneTemplateGeneratorFragment;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SmoothProgressBar;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.u0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.u;

/* JADX INFO: loaded from: classes4.dex */
public final class SceneTemplateMaterialSortLayout extends FrameLayout {

    @NotNull
    private RecyclerView backgroundRecyclerView;

    @NotNull
    private final List<SceneTemplateGeneratorFragment.SelectedEntry> datas;

    @NotNull
    private final m holderMap$delegate;

    @NotNull
    private ItemTouchHelper itemTouchHelper;

    @Nullable
    private OnRemoveItemListener onRemoveItemListener;

    @Nullable
    private OnViewClickListener onViewClickListener;

    @NotNull
    private RecyclerView recyclerView;
    private int scrollOffset;
    private int totalCount;

    public final class Adapter extends RecyclerView.Adapter<ViewHolder> {
        public Adapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SceneTemplateMaterialSortLayout.this.totalCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull ViewHolder holder, int i10) {
            t.j(holder, "holder");
            SceneTemplateGeneratorFragment.SelectedEntry selectedEntry = SceneTemplateMaterialSortLayout.this.getDatas().size() > i10 ? SceneTemplateMaterialSortLayout.this.getDatas().get(i10) : new SceneTemplateGeneratorFragment.SelectedEntry(null, null, 0, 0L, 0L, 0, null, null, 255, null);
            SceneTemplateMaterialSortLayout.this.getHolderMap().put(selectedEntry.getId(), holder);
            holder.update(i10, selectedEntry);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = SceneTemplateMaterialSortLayout.this;
            View viewInflate = LayoutInflater.from(sceneTemplateMaterialSortLayout.getContext()).inflate(R.layout.item_template_materail_sort_media, parent, false);
            t.i(viewInflate, "inflate(...)");
            return new ViewHolder(sceneTemplateMaterialSortLayout, viewInflate);
        }
    }

    public final class BackgroundItemAdapter extends RecyclerView.Adapter<BackgroundItemViewHodler> {
        public BackgroundItemAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SceneTemplateMaterialSortLayout.this.totalCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull BackgroundItemViewHodler holder, int i10) {
            t.j(holder, "holder");
            holder.update(i10);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public BackgroundItemViewHodler onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = SceneTemplateMaterialSortLayout.this;
            View viewInflate = LayoutInflater.from(sceneTemplateMaterialSortLayout.getContext()).inflate(R.layout.item_template_materail_sort_background, parent, false);
            t.i(viewInflate, "inflate(...)");
            return new BackgroundItemViewHodler(sceneTemplateMaterialSortLayout, viewInflate);
        }
    }

    public final class BackgroundItemViewHodler extends RecyclerView.ViewHolder {
        private final TextView number;
        final /* synthetic */ SceneTemplateMaterialSortLayout this$0;

        public final TextView getNumber() {
            return this.number;
        }

        public final void update(int i10) {
            this.number.setText(String.valueOf(i10 + 1));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BackgroundItemViewHodler(@NotNull SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout, View view) {
            super(view);
            t.j(view, "view");
            this.this$0 = sceneTemplateMaterialSortLayout;
            this.number = (TextView) this.itemView.findViewById(R.id.number);
        }
    }

    public interface OnRemoveItemListener {
        void onRemove(@NotNull SceneTemplateGeneratorFragment.SelectedEntry selectedEntry);
    }

    public interface OnViewClickListener {
        void onBackgroundItemClick();

        void onItemClick(@NotNull SceneTemplateGeneratorFragment.SelectedEntry selectedEntry);

        void onRetryClick(@NotNull SceneTemplateGeneratorFragment.SelectedEntry selectedEntry);
    }

    public final class ViewHolder extends RecyclerView.ViewHolder {
        private final FrameLayout container;
        private final ImageView delete;
        private final NVImageView image;
        private final FrameLayout imageEdit;
        private final View mask;
        private final SmoothProgressBar progress;
        private final ImageView retry;
        final /* synthetic */ SceneTemplateMaterialSortLayout this$0;

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean update$lambda$2(View view) {
            return false;
        }

        public final FrameLayout getContainer() {
            return this.container;
        }

        public final ImageView getDelete() {
            return this.delete;
        }

        public final NVImageView getImage() {
            return this.image;
        }

        public final FrameLayout getImageEdit() {
            return this.imageEdit;
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

        /* JADX INFO: Access modifiers changed from: private */
        public static final void update$lambda$3(SceneTemplateGeneratorFragment.SelectedEntry data, SceneTemplateMaterialSortLayout this$0, View view) {
            OnViewClickListener onViewClickListener;
            t.j(data, "$data");
            t.j(this$0, "this$0");
            if (data.getState() != 4 || (onViewClickListener = this$0.getOnViewClickListener()) == null) {
                return;
            }
            onViewClickListener.onItemClick(data);
        }

        public final void update(final int i10, @NotNull final SceneTemplateGeneratorFragment.SelectedEntry data) {
            t.j(data, "data");
            if (data.isEmpty()) {
                this.container.setVisibility(4);
                View view = this.itemView;
                final SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = this.this$0;
                view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.template.view.b
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        SceneTemplateMaterialSortLayout.ViewHolder.update$lambda$1(sceneTemplateMaterialSortLayout, view2);
                    }
                });
                this.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.narvii.scene.template.view.c
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view2) {
                        return SceneTemplateMaterialSortLayout.ViewHolder.update$lambda$2(view2);
                    }
                });
                return;
            }
            this.container.setVisibility(0);
            this.image.setImageMedia(data.getPreviewMedia() != null ? data.getPreviewMedia() : data.getMedia());
            View view2 = this.itemView;
            final SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout2 = this.this$0;
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.template.view.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    SceneTemplateMaterialSortLayout.ViewHolder.update$lambda$3(data, sceneTemplateMaterialSortLayout2, view3);
                }
            });
            View view3 = this.itemView;
            final SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout3 = this.this$0;
            view3.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.narvii.scene.template.view.e
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view4) {
                    return SceneTemplateMaterialSortLayout.ViewHolder.update$lambda$4(sceneTemplateMaterialSortLayout3, this, view4);
                }
            });
            ImageView imageView = this.delete;
            final SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout4 = this.this$0;
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.template.view.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    SceneTemplateMaterialSortLayout.ViewHolder.update$lambda$5(sceneTemplateMaterialSortLayout4, i10, view4);
                }
            });
            ImageView imageView2 = this.retry;
            final SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout5 = this.this$0;
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.template.view.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    SceneTemplateMaterialSortLayout.ViewHolder.update$lambda$6(sceneTemplateMaterialSortLayout5, data, view4);
                }
            });
            updateStates(data);
        }

        public final void updateStates(@NotNull SceneTemplateGeneratorFragment.SelectedEntry data) {
            t.j(data, "data");
            int state = data.getState();
            if (state == 2) {
                this.mask.setVisibility(0);
                this.progress.setVisibility(0);
                this.retry.setVisibility(8);
                this.imageEdit.setVisibility(8);
                this.progress.setProgress(data.getProgress());
                return;
            }
            if (state == 3) {
                this.mask.setVisibility(0);
                this.progress.setVisibility(8);
                this.retry.setVisibility(0);
                this.imageEdit.setVisibility(8);
                return;
            }
            if (state != 4) {
                return;
            }
            this.mask.setVisibility(8);
            this.progress.setVisibility(8);
            this.retry.setVisibility(8);
            this.imageEdit.setVisibility(0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(@NotNull SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout, View view) {
            super(view);
            t.j(view, "view");
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

        /* JADX INFO: Access modifiers changed from: private */
        public static final void update$lambda$1(SceneTemplateMaterialSortLayout this$0, View view) {
            t.j(this$0, "this$0");
            OnViewClickListener onViewClickListener = this$0.getOnViewClickListener();
            if (onViewClickListener != null) {
                onViewClickListener.onBackgroundItemClick();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean update$lambda$4(SceneTemplateMaterialSortLayout this$0, ViewHolder this$1, View view) {
            t.j(this$0, "this$0");
            t.j(this$1, "this$1");
            this$0.itemTouchHelper.z(this$1);
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void update$lambda$5(SceneTemplateMaterialSortLayout this$0, int i10, View view) {
            t.j(this$0, "this$0");
            this$0.deleteItem(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void update$lambda$6(SceneTemplateMaterialSortLayout this$0, SceneTemplateGeneratorFragment.SelectedEntry data, View view) {
            t.j(this$0, "this$0");
            t.j(data, "$data");
            OnViewClickListener onViewClickListener = this$0.getOnViewClickListener();
            if (onViewClickListener != null) {
                onViewClickListener.onRetryClick(data);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SceneTemplateMaterialSortLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        t.j(context, "context");
    }

    @NotNull
    public final List<SceneTemplateGeneratorFragment.SelectedEntry> getDatas() {
        return this.datas;
    }

    @Nullable
    public final OnRemoveItemListener getOnRemoveItemListener() {
        return this.onRemoveItemListener;
    }

    @Nullable
    public final OnViewClickListener getOnViewClickListener() {
        return this.onViewClickListener;
    }

    public final void setOnRemoveItemListener(@Nullable OnRemoveItemListener onRemoveItemListener) {
        this.onRemoveItemListener = onRemoveItemListener;
    }

    public final void setOnViewClickListener(@Nullable OnViewClickListener onViewClickListener) {
        this.onViewClickListener = onViewClickListener;
    }

    public final void updateData(@NotNull SceneTemplateGeneratorFragment.SelectedEntry entry, boolean z6) {
        t.j(entry, "entry");
        updateData(entry);
        if (z6) {
            updateView();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SceneTemplateMaterialSortLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        t.j(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deleteItem(int i10) {
        if (this.datas.size() <= i10) {
            return;
        }
        SceneTemplateGeneratorFragment.SelectedEntry selectedEntryRemove = this.datas.remove(i10);
        OnRemoveItemListener onRemoveItemListener = this.onRemoveItemListener;
        if (onRemoveItemListener != null) {
            onRemoveItemListener.onRemove(selectedEntryRemove);
        }
        RecyclerView.Adapter adapter = this.recyclerView.getAdapter();
        if (adapter != null) {
            adapter.notifyItemRemoved(i10);
        }
        RecyclerView.Adapter adapter2 = this.recyclerView.getAdapter();
        if (adapter2 != null) {
            adapter2.notifyItemRangeChanged(i10, this.totalCount - i10);
        }
        if (i10 == 0) {
            this.backgroundRecyclerView.smoothScrollToPosition(0);
        }
    }

    private final void updateView() {
        RecyclerView.Adapter adapter = this.recyclerView.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        RecyclerView.Adapter adapter2 = this.backgroundRecyclerView.getAdapter();
        if (adapter2 != null) {
            adapter2.notifyDataSetChanged();
        }
    }

    public final void addData(@NotNull SceneTemplateGeneratorFragment.SelectedEntry entry) {
        t.j(entry, "entry");
        this.datas.add(entry);
        updateView();
    }

    public final void deleteEntry(@NotNull String id) {
        t.j(id, "id");
        Iterator<SceneTemplateGeneratorFragment.SelectedEntry> it = this.datas.iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            } else if (TextUtils.equals(it.next().getId(), id)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 != -1) {
            deleteItem(i10);
        }
    }

    @NotNull
    public final Map<String, ViewHolder> getHolderMap() {
        return (Map) this.holderMap$delegate.getValue();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iDpToPx = this.totalCount * ((int) Utils.dpToPx(getContext(), 65.0f));
        int size = View.MeasureSpec.getSize(i10);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(iDpToPx, size), View.MeasureSpec.getMode(i10));
        if (iDpToPx < size) {
            this.recyclerView.setOverScrollMode(2);
        } else {
            this.recyclerView.setOverScrollMode(0);
        }
        super.onMeasure(iMakeMeasureSpec, i11);
    }

    public final void setDatas(@NotNull List<SceneTemplateGeneratorFragment.SelectedEntry> list) {
        t.j(list, "list");
        this.datas.clear();
        this.datas.addAll(list);
        updateView();
    }

    public final void setTotalCount(int i10) {
        this.totalCount = i10;
        updateView();
    }

    public /* synthetic */ SceneTemplateMaterialSortLayout(Context context, AttributeSet attributeSet, int i10, int i11, k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(SceneTemplateMaterialSortLayout this$0) {
        int iComputeHorizontalScrollOffset;
        t.j(this$0, "this$0");
        if (this$0.scrollOffset == 0) {
            iComputeHorizontalScrollOffset = 0;
        } else {
            iComputeHorizontalScrollOffset = this$0.recyclerView.computeHorizontalScrollOffset() - this$0.scrollOffset;
        }
        this$0.scrollOffset = this$0.recyclerView.computeHorizontalScrollOffset();
        if (this$0.recyclerView.getScrollState() == 0) {
            this$0.backgroundRecyclerView.scrollBy(iComputeHorizontalScrollOffset, this$0.recyclerView.computeVerticalScrollOffset());
        }
    }

    public final void updateData(@NotNull SceneTemplateGeneratorFragment.SelectedEntry entry) {
        Object obj;
        Object next;
        ViewHolder viewHolder;
        t.j(entry, "entry");
        Iterator<T> it = this.datas.iterator();
        do {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!TextUtils.equals(entry.getId(), ((SceneTemplateGeneratorFragment.SelectedEntry) next).getId()));
        SceneTemplateGeneratorFragment.SelectedEntry selectedEntry = (SceneTemplateGeneratorFragment.SelectedEntry) next;
        if (selectedEntry == null) {
            return;
        }
        if (!t.e(selectedEntry, entry)) {
            selectedEntry.copy(entry);
        }
        for (Object obj2 : u0.C(getHolderMap())) {
            if (TextUtils.equals((CharSequence) ((u) obj2).c(), entry.getId())) {
                obj = obj2;
                break;
            }
        }
        u uVar = (u) obj;
        if (uVar == null || (viewHolder = (ViewHolder) uVar.d()) == null) {
            return;
        }
        viewHolder.updateStates(entry);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SceneTemplateMaterialSortLayout(@NotNull final Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        this.holderMap$delegate = o.a(SceneTemplateMaterialSortLayout$holderMap$2.INSTANCE);
        this.datas = new ArrayList();
        LayoutInflater.from(context).inflate(R.layout.view_scene_template_materail_sort, this);
        View viewFindViewById = findViewById(R.id.background_recycler_view);
        t.i(viewFindViewById, "findViewById(...)");
        this.backgroundRecyclerView = (RecyclerView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.recycler_view);
        t.i(viewFindViewById2, "findViewById(...)");
        this.recyclerView = (RecyclerView) viewFindViewById2;
        this.backgroundRecyclerView.setLayoutManager(new LinearLayoutManager(context, 0, false));
        this.backgroundRecyclerView.setAdapter(new BackgroundItemAdapter());
        this.recyclerView.setLayoutManager(new LinearLayoutManager(context, 0, false));
        this.recyclerView.setAdapter(new Adapter());
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.scene.template.view.SceneTemplateMaterialSortLayout.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NotNull RecyclerView recyclerView, int i11, int i12) {
                t.j(recyclerView, "recyclerView");
                if (recyclerView.getScrollState() != 0) {
                    SceneTemplateMaterialSortLayout.this.backgroundRecyclerView.scrollBy(i11, i12);
                }
            }
        });
        this.recyclerView.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() { // from class: com.narvii.scene.template.view.a
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                SceneTemplateMaterialSortLayout._init_$lambda$0(this.f2693a);
            }
        });
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new ItemTouchHelper.SimpleCallback() { // from class: com.narvii.scene.template.view.SceneTemplateMaterialSortLayout.3
            private boolean hasMoved;

            public final boolean getHasMoved() {
                return this.hasMoved;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean isItemViewSwipeEnabled() {
                return false;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean isLongPressDragEnabled() {
                return false;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSwiped(@NotNull RecyclerView.ViewHolder p0, int i11) {
                t.j(p0, "p0");
            }

            public final void setHasMoved(boolean z6) {
                this.hasMoved = z6;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(12, 12);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public int getBoundingBoxMargin() {
                return Utils.dpToPxInt(context, 10.0f);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean onMove(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, @NotNull RecyclerView.ViewHolder target) {
                t.j(recyclerView, "recyclerView");
                t.j(viewHolder, "viewHolder");
                t.j(target, "target");
                this.hasMoved = true;
                int adapterPosition = viewHolder.getAdapterPosition();
                int adapterPosition2 = target.getAdapterPosition();
                if (adapterPosition2 < SceneTemplateMaterialSortLayout.this.getDatas().size()) {
                    Collections.swap(SceneTemplateMaterialSortLayout.this.getDatas(), adapterPosition, adapterPosition2);
                    RecyclerView.Adapter adapter = recyclerView.getAdapter();
                    if (adapter != null) {
                        adapter.notifyItemMoved(adapterPosition, adapterPosition2);
                    }
                }
                return true;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int i11) {
                super.onSelectedChanged(viewHolder, i11);
                if (i11 == 0 && this.hasMoved) {
                    this.hasMoved = false;
                    RecyclerView.Adapter adapter = SceneTemplateMaterialSortLayout.this.recyclerView.getAdapter();
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                }
            }
        });
        this.itemTouchHelper = itemTouchHelper;
        itemTouchHelper.e(this.recyclerView);
    }
}
