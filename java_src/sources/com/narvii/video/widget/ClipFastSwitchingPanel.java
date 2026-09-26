package com.narvii.video.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.mediaeditor.R;
import com.narvii.mediaeditor.databinding.ComponentClipFastSwitchingPanelBinding;
import com.narvii.mediaeditor.databinding.ItemClipFastSwitchingPanelBinding;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class ClipFastSwitchingPanel extends FrameLayout {

    @Nullable
    private SwitchingPanelAdapter adapter;

    @NotNull
    private final ComponentClipFastSwitchingPanelBinding binding;

    @NotNull
    private final LinearLayoutManager clipListLayoutManager;

    @Nullable
    private ClipFastSwitchingEventCallback eventCallback;

    @Nullable
    private FrameRetrieverManager frameRetrieverManager;
    private boolean hasClipListReordered;

    @Nullable
    private ItemTouchHelper itemTouchHelper;

    @NotNull
    private final View.OnClickListener onOptionClickListener;
    private final int panelItemSize;
    private int selectedClipIndex;

    public interface ClipFastSwitchingEventCallback {
        void onClipDeleted();

        void onClipListReordered(@NotNull ArrayList<AVClipInfoPack> arrayList, int i10);

        void onClipSwitched(@NotNull AVClipInfoPack aVClipInfoPack);

        void onOptionCropSelected();

        void onOptionMusicSelected();

        void onOptionSpeedSelected();

        void onOptionTrimSelected();

        void onVolumeChanged(float f);
    }

    public interface ItemTouchHelperAdapter {
        void onItemMoved(int i10, int i11);
    }

    private final class SimpleItemTouchHelperCallback extends ItemTouchHelper.Callback {

        @NotNull
        private final ItemTouchHelperAdapter adapter;
        final /* synthetic */ ClipFastSwitchingPanel this$0;

        @NotNull
        public final ItemTouchHelperAdapter getAdapter() {
            return this.adapter;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(@NotNull RecyclerView.ViewHolder p0, int i10) {
            t.j(p0, "p0");
        }

        public SimpleItemTouchHelperCallback(@NotNull ClipFastSwitchingPanel clipFastSwitchingPanel, ItemTouchHelperAdapter adapter) {
            t.j(adapter, "adapter");
            this.this$0 = clipFastSwitchingPanel;
            this.adapter = adapter;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(@NotNull RecyclerView p0, @NotNull RecyclerView.ViewHolder p1) {
            t.j(p0, "p0");
            t.j(p1, "p1");
            return ItemTouchHelper.Callback.makeMovementFlags(12, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(@NotNull RecyclerView p0, @NotNull RecyclerView.ViewHolder p1, @NotNull RecyclerView.ViewHolder p5) {
            t.j(p0, "p0");
            t.j(p1, "p1");
            t.j(p5, "p2");
            this.adapter.onItemMoved(p1.getAdapterPosition(), p5.getAdapterPosition());
            return true;
        }
    }

    private final class SwitchingPanelAdapter extends RecyclerView.Adapter<SwitchingPanelHolder> implements ItemTouchHelperAdapter {

        @NotNull
        private final ArrayList<AVClipInfoPack> clipList;
        final /* synthetic */ ClipFastSwitchingPanel this$0;

        @NotNull
        public final ArrayList<AVClipInfoPack> getClipList() {
            return this.clipList;
        }

        public SwitchingPanelAdapter(@NotNull ClipFastSwitchingPanel clipFastSwitchingPanel, ArrayList<AVClipInfoPack> clipList) {
            t.j(clipList, "clipList");
            this.this$0 = clipFastSwitchingPanel;
            this.clipList = clipList;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.clipList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull SwitchingPanelHolder holder, int i10) {
            t.j(holder, "holder");
            AVClipInfoPack aVClipInfoPack = this.clipList.get(i10);
            t.i(aVClipInfoPack, "get(...)");
            holder.setData(aVClipInfoPack);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public SwitchingPanelHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            ItemClipFastSwitchingPanelBinding itemClipFastSwitchingPanelBindingInflate = ItemClipFastSwitchingPanelBinding.inflate(LayoutInflater.from(this.this$0.getContext()), parent, false);
            t.i(itemClipFastSwitchingPanelBindingInflate, "inflate(...)");
            return new SwitchingPanelHolder(this.this$0, itemClipFastSwitchingPanelBindingInflate);
        }

        @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ItemTouchHelperAdapter
        public void onItemMoved(int i10, int i11) {
            this.this$0.hasClipListReordered = true;
            if (this.this$0.selectedClipIndex == i10) {
                this.this$0.selectedClipIndex = i11;
            } else if (this.this$0.selectedClipIndex == i11) {
                this.this$0.selectedClipIndex = i10;
            }
            this.clipList.get(i10).indexInScene = i11;
            this.clipList.get(i11).indexInScene = i10;
            Collections.swap(this.clipList, i10, i11);
            notifyItemMoved(i10, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class SwitchingPanelHolder extends RecyclerView.ViewHolder {

        @NotNull
        private final ItemClipFastSwitchingPanelBinding binding;
        final /* synthetic */ ClipFastSwitchingPanel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SwitchingPanelHolder(@NotNull ClipFastSwitchingPanel clipFastSwitchingPanel, ItemClipFastSwitchingPanelBinding binding) {
            super(binding.getRoot());
            t.j(binding, "binding");
            this.this$0 = clipFastSwitchingPanel;
            this.binding = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setData$lambda$2$lambda$1(AVClipInfoPack clip, ClipFastSwitchingPanel this$0, ItemClipFastSwitchingPanelBinding this_with, View view) {
            t.j(clip, "$clip");
            t.j(this$0, "this$0");
            t.j(this_with, "$this_with");
            if (clip.indexInScene == this$0.selectedClipIndex) {
                return;
            }
            ClipFastSwitchingEventCallback clipFastSwitchingEventCallback = this$0.eventCallback;
            if (clipFastSwitchingEventCallback != null) {
                clipFastSwitchingEventCallback.onClipSwitched(clip);
            }
            RecyclerView.LayoutManager layoutManager = this$0.binding.clipList.getLayoutManager();
            View viewFindViewByPosition = layoutManager != null ? layoutManager.findViewByPosition(this$0.selectedClipIndex) : null;
            if (viewFindViewByPosition != null) {
                ((NVImageView) viewFindViewByPosition.findViewById(R.id.clip_thumbnail)).setStrokeWidth(0.0f);
            }
            this_with.clipThumbnail.setStrokeWidth(4.0f);
            this$0.selectedClipIndex = clip.indexInScene;
            this$0.updateOptionPanel(clip);
        }

        public final void setData(@NotNull final AVClipInfoPack clip) {
            t.j(clip, "clip");
            final ItemClipFastSwitchingPanelBinding itemClipFastSwitchingPanelBinding = this.binding;
            final ClipFastSwitchingPanel clipFastSwitchingPanel = this.this$0;
            int i10 = clipFastSwitchingPanel.panelItemSize;
            FrameRetrieverManager frameRetrieverManager = clipFastSwitchingPanel.frameRetrieverManager;
            if (frameRetrieverManager != null) {
                FrameRetrieverManager.retrieveFrame$default(frameRetrieverManager, clip, (int) (((double) (clip.trimStartInMs + (clip.visibleDurationInMs / 3))) / clip.speed), false, new IVideoServiceCallback() { // from class: com.narvii.video.widget.ClipFastSwitchingPanel$SwitchingPanelHolder$setData$1$1
                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onFrameBitmapLoaded(int i11, @Nullable Bitmap bitmap) {
                        itemClipFastSwitchingPanelBinding.clipThumbnail.setImageBitmap(bitmap);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionCancelled() {
                        IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionFailed(@Nullable Exception exc) {
                        IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionStarted() {
                        IVideoServiceCallback.DefaultImpls.onActionStarted(this);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onExecutingTaskChanged(@NotNull g7.d dVar) {
                        IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, dVar);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onFramePicturesLoaded(int i11, @Nullable File file) {
                        IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i11, file);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onProgress(float f, @Nullable String str) {
                        IVideoServiceCallback.DefaultImpls.onProgress(this, f, str);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onVideoProcessed(@NotNull String str) {
                        IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, str);
                    }
                }, i10, i10, 4, null);
            }
            TextView textView = itemClipFastSwitchingPanelBinding.clipDuration;
            StringBuilder sb = new StringBuilder();
            sb.append(clip.trimmedDurationInMsWithSpeed() / 1000);
            sb.append('s');
            textView.setText(sb.toString());
            itemClipFastSwitchingPanelBinding.clipThumbnail.defaultDrawable = new ColorDrawable(Color.parseColor("#666666"));
            NVImageView nVImageView = itemClipFastSwitchingPanelBinding.clipThumbnail;
            nVImageView.strokeColor = -1;
            nVImageView.setStrokeWidth(clip.indexInScene == clipFastSwitchingPanel.selectedClipIndex ? 4.0f : 0.0f);
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.widget.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ClipFastSwitchingPanel.SwitchingPanelHolder.setData$lambda$2$lambda$1(clip, clipFastSwitchingPanel, itemClipFastSwitchingPanelBinding, view);
                }
            });
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClipFastSwitchingPanel(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.clipListLayoutManager = new LinearLayoutManager(getContext());
        this.panelItemSize = getResources().getDimensionPixelSize(R.dimen.clip_fast_switching_panel_item_size);
        this.onOptionClickListener = new View.OnClickListener() { // from class: com.narvii.video.widget.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ClipFastSwitchingPanel.onOptionClickListener$lambda$0(this.f2974a, view);
            }
        };
        ComponentClipFastSwitchingPanelBinding componentClipFastSwitchingPanelBindingInflate = ComponentClipFastSwitchingPanelBinding.inflate(LayoutInflater.from(getContext()), this, true);
        t.i(componentClipFastSwitchingPanelBindingInflate, "inflate(...)");
        this.binding = componentClipFastSwitchingPanelBindingInflate;
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.widget.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ClipFastSwitchingPanel._init_$lambda$1(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(View view) {
    }

    public final void setEventCallback(@NotNull ClipFastSwitchingEventCallback callback) {
        t.j(callback, "callback");
        this.eventCallback = callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateOptionPanel(AVClipInfoPack aVClipInfoPack) {
        this.binding.optionTrim.setOnClickListener(this.onOptionClickListener);
        this.binding.optionMusic.setOnClickListener(this.onOptionClickListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@NotNull MotionEvent ev) {
        t.j(ev, "ev");
        if (this.adapter != null && this.hasClipListReordered && (ev.getActionMasked() == 1 || ev.getActionMasked() == 3)) {
            this.hasClipListReordered = false;
            ClipFastSwitchingEventCallback clipFastSwitchingEventCallback = this.eventCallback;
            if (clipFastSwitchingEventCallback != null) {
                SwitchingPanelAdapter switchingPanelAdapter = this.adapter;
                t.g(switchingPanelAdapter);
                clipFastSwitchingEventCallback.onClipListReordered(switchingPanelAdapter.getClipList(), this.selectedClipIndex);
            }
        }
        return super.dispatchTouchEvent(ev);
    }

    public final void setClipSet(@NotNull final ArrayList<AVClipInfoPack> clipSet, int i10, @NotNull FrameRetrieverManager frameRetrieverManager) {
        t.j(clipSet, "clipSet");
        t.j(frameRetrieverManager, "frameRetrieverManager");
        final ComponentClipFastSwitchingPanelBinding componentClipFastSwitchingPanelBinding = this.binding;
        this.selectedClipIndex = Math.max(0, i10);
        this.frameRetrieverManager = frameRetrieverManager;
        ItemTouchHelper itemTouchHelper = this.itemTouchHelper;
        if (itemTouchHelper != null) {
            itemTouchHelper.e(null);
        }
        SwitchingPanelAdapter switchingPanelAdapter = new SwitchingPanelAdapter(this, clipSet);
        this.adapter = switchingPanelAdapter;
        componentClipFastSwitchingPanelBinding.clipList.setAdapter(switchingPanelAdapter);
        SwitchingPanelAdapter switchingPanelAdapter2 = this.adapter;
        t.g(switchingPanelAdapter2);
        ItemTouchHelper itemTouchHelper2 = new ItemTouchHelper(new SimpleItemTouchHelperCallback(this, switchingPanelAdapter2));
        this.itemTouchHelper = itemTouchHelper2;
        t.g(itemTouchHelper2);
        itemTouchHelper2.e(componentClipFastSwitchingPanelBinding.clipList);
        Utils.post(new Runnable() { // from class: com.narvii.video.widget.c
            @Override // java.lang.Runnable
            public final void run() {
                ClipFastSwitchingPanel.setClipSet$lambda$3$lambda$2(this.f2971a, clipSet, componentClipFastSwitchingPanelBinding);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onOptionClickListener$lambda$0(ClipFastSwitchingPanel this$0, View view) {
        ClipFastSwitchingEventCallback clipFastSwitchingEventCallback;
        t.j(this$0, "this$0");
        int id = view.getId();
        if (id == R.id.option_trim) {
            ClipFastSwitchingEventCallback clipFastSwitchingEventCallback2 = this$0.eventCallback;
            if (clipFastSwitchingEventCallback2 != null) {
                clipFastSwitchingEventCallback2.onOptionTrimSelected();
                return;
            }
            return;
        }
        if (id == R.id.option_music && (clipFastSwitchingEventCallback = this$0.eventCallback) != null) {
            clipFastSwitchingEventCallback.onOptionMusicSelected();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClipSet$lambda$3$lambda$2(ClipFastSwitchingPanel this$0, ArrayList clipSet, ComponentClipFastSwitchingPanelBinding this_with) {
        t.j(this$0, "this$0");
        t.j(clipSet, "$clipSet");
        t.j(this_with, "$this_with");
        Object obj = clipSet.get(this$0.selectedClipIndex);
        t.i(obj, "get(...)");
        this$0.updateOptionPanel((AVClipInfoPack) obj);
        this_with.clipList.scrollToPosition(this$0.selectedClipIndex);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.clipListLayoutManager.setOrientation(0);
        this.binding.clipList.setLayoutManager(this.clipListLayoutManager);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClipFastSwitchingPanel(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(context, "context");
        t.j(attributes, "attributes");
        this.clipListLayoutManager = new LinearLayoutManager(getContext());
        this.panelItemSize = getResources().getDimensionPixelSize(R.dimen.clip_fast_switching_panel_item_size);
        this.onOptionClickListener = new View.OnClickListener() { // from class: com.narvii.video.widget.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ClipFastSwitchingPanel.onOptionClickListener$lambda$0(this.f2974a, view);
            }
        };
        ComponentClipFastSwitchingPanelBinding componentClipFastSwitchingPanelBindingInflate = ComponentClipFastSwitchingPanelBinding.inflate(LayoutInflater.from(getContext()), this, true);
        t.i(componentClipFastSwitchingPanelBindingInflate, "inflate(...)");
        this.binding = componentClipFastSwitchingPanelBindingInflate;
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.widget.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ClipFastSwitchingPanel._init_$lambda$1(view);
            }
        });
    }
}
