package com.narvii.video.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.widget.ClipFastSwitchingPanel;
import com.narvii.widget.NVImageView;
import ffmpeg.base.MediaEditingConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ClipFastSwitchingPanel.kt */
/* loaded from: classes3.dex */
public final class ClipFastSwitchingPanel extends FrameLayout {
    private HashMap _$_findViewCache;
    private SwitchingPanelAdapter adapter;
    private final LinearLayoutManager clipListLayoutManager;
    private ClipFastSwitchingEventCallback eventCallback;
    private FrameRetrieverManager frameRetrieverManager;
    private boolean hasClipListReordered;
    private ItemTouchHelper itemTouchHelper;
    private final View.OnClickListener onOptionClickListener;
    private final int panelItemSize;
    private int selectedClipIndex;

    /* compiled from: ClipFastSwitchingPanel.kt */
    /* renamed from: com.narvii.video.widget.ClipFastSwitchingPanel$1, reason: invalid class name */
    static final class AnonymousClass1 implements View.OnClickListener {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* compiled from: ClipFastSwitchingPanel.kt */
    public interface ClipFastSwitchingEventCallback {
        void onClipDeleted();

        void onClipListReordered(ArrayList<AVClipInfoPack> arrayList, int i);

        void onClipSwitched(AVClipInfoPack aVClipInfoPack);

        void onOptionCropSelected();

        void onOptionMusicSelected();

        void onOptionSpeedSelected();

        void onOptionTrimSelected();

        void onVolumeChanged(float f);
    }

    /* compiled from: ClipFastSwitchingPanel.kt */
    public interface ItemTouchHelperAdapter {
        void onItemMoved(int i, int i2);
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClipFastSwitchingPanel(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.clipListLayoutManager = new LinearLayoutManager(getContext());
        this.panelItemSize = getResources().getDimensionPixelSize(R.dimen.clip_fast_switching_panel_item_size);
        this.onOptionClickListener = new View.OnClickListener() { // from class: com.narvii.video.widget.ClipFastSwitchingPanel$onOptionClickListener$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View it) {
                ClipFastSwitchingPanel.ClipFastSwitchingEventCallback clipFastSwitchingEventCallback;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                int id = it.getId();
                if (id == R.id.option_trim) {
                    ClipFastSwitchingPanel.ClipFastSwitchingEventCallback clipFastSwitchingEventCallback2 = this.this$0.eventCallback;
                    if (clipFastSwitchingEventCallback2 != null) {
                        clipFastSwitchingEventCallback2.onOptionTrimSelected();
                        return;
                    }
                    return;
                }
                if (id == R.id.option_crop) {
                    ClipFastSwitchingPanel.ClipFastSwitchingEventCallback clipFastSwitchingEventCallback3 = this.this$0.eventCallback;
                    if (clipFastSwitchingEventCallback3 != null) {
                        clipFastSwitchingEventCallback3.onOptionCropSelected();
                        return;
                    }
                    return;
                }
                if (id == R.id.option_speed) {
                    ClipFastSwitchingPanel.ClipFastSwitchingEventCallback clipFastSwitchingEventCallback4 = this.this$0.eventCallback;
                    if (clipFastSwitchingEventCallback4 != null) {
                        clipFastSwitchingEventCallback4.onOptionSpeedSelected();
                        return;
                    }
                    return;
                }
                if (id == R.id.option_music) {
                    ClipFastSwitchingPanel.ClipFastSwitchingEventCallback clipFastSwitchingEventCallback5 = this.this$0.eventCallback;
                    if (clipFastSwitchingEventCallback5 != null) {
                        clipFastSwitchingEventCallback5.onOptionMusicSelected();
                        return;
                    }
                    return;
                }
                if (id != R.id.option_remove || (clipFastSwitchingEventCallback = this.this$0.eventCallback) == null) {
                    return;
                }
                clipFastSwitchingEventCallback.onClipDeleted();
            }
        };
        LayoutInflater.from(getContext()).inflate(R.layout.component_clip_fast_switching_panel, (ViewGroup) this, true);
        setOnClickListener(AnonymousClass1.INSTANCE);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClipFastSwitchingPanel(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.clipListLayoutManager = new LinearLayoutManager(getContext());
        this.panelItemSize = getResources().getDimensionPixelSize(R.dimen.clip_fast_switching_panel_item_size);
        this.onOptionClickListener = new View.OnClickListener() { // from class: com.narvii.video.widget.ClipFastSwitchingPanel$onOptionClickListener$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View it) {
                ClipFastSwitchingPanel.ClipFastSwitchingEventCallback clipFastSwitchingEventCallback;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                int id = it.getId();
                if (id == R.id.option_trim) {
                    ClipFastSwitchingPanel.ClipFastSwitchingEventCallback clipFastSwitchingEventCallback2 = this.this$0.eventCallback;
                    if (clipFastSwitchingEventCallback2 != null) {
                        clipFastSwitchingEventCallback2.onOptionTrimSelected();
                        return;
                    }
                    return;
                }
                if (id == R.id.option_crop) {
                    ClipFastSwitchingPanel.ClipFastSwitchingEventCallback clipFastSwitchingEventCallback3 = this.this$0.eventCallback;
                    if (clipFastSwitchingEventCallback3 != null) {
                        clipFastSwitchingEventCallback3.onOptionCropSelected();
                        return;
                    }
                    return;
                }
                if (id == R.id.option_speed) {
                    ClipFastSwitchingPanel.ClipFastSwitchingEventCallback clipFastSwitchingEventCallback4 = this.this$0.eventCallback;
                    if (clipFastSwitchingEventCallback4 != null) {
                        clipFastSwitchingEventCallback4.onOptionSpeedSelected();
                        return;
                    }
                    return;
                }
                if (id == R.id.option_music) {
                    ClipFastSwitchingPanel.ClipFastSwitchingEventCallback clipFastSwitchingEventCallback5 = this.this$0.eventCallback;
                    if (clipFastSwitchingEventCallback5 != null) {
                        clipFastSwitchingEventCallback5.onOptionMusicSelected();
                        return;
                    }
                    return;
                }
                if (id != R.id.option_remove || (clipFastSwitchingEventCallback = this.this$0.eventCallback) == null) {
                    return;
                }
                clipFastSwitchingEventCallback.onClipDeleted();
            }
        };
        LayoutInflater.from(getContext()).inflate(R.layout.component_clip_fast_switching_panel, (ViewGroup) this, true);
        setOnClickListener(AnonymousClass1.INSTANCE);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.clipListLayoutManager.setOrientation(0);
        RecyclerView clip_list = (RecyclerView) _$_findCachedViewById(R.id.clip_list);
        Intrinsics.checkExpressionValueIsNotNull(clip_list, "clip_list");
        clip_list.setLayoutManager(this.clipListLayoutManager);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        Intrinsics.checkParameterIsNotNull(ev, "ev");
        if (this.adapter != null && this.hasClipListReordered && (ev.getActionMasked() == 1 || ev.getActionMasked() == 3)) {
            this.hasClipListReordered = false;
            ClipFastSwitchingEventCallback clipFastSwitchingEventCallback = this.eventCallback;
            if (clipFastSwitchingEventCallback != null) {
                SwitchingPanelAdapter switchingPanelAdapter = this.adapter;
                if (switchingPanelAdapter == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                clipFastSwitchingEventCallback.onClipListReordered(switchingPanelAdapter.getClipList(), this.selectedClipIndex);
            }
        }
        return super.dispatchTouchEvent(ev);
    }

    public final void setEventCallback(ClipFastSwitchingEventCallback callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        this.eventCallback = callback;
    }

    public final void setClipSet(final ArrayList<AVClipInfoPack> clipSet, int i, FrameRetrieverManager frameRetrieverManager) {
        Intrinsics.checkParameterIsNotNull(clipSet, "clipSet");
        Intrinsics.checkParameterIsNotNull(frameRetrieverManager, "frameRetrieverManager");
        this.selectedClipIndex = Math.max(0, i);
        this.frameRetrieverManager = frameRetrieverManager;
        ItemTouchHelper itemTouchHelper = this.itemTouchHelper;
        if (itemTouchHelper != null) {
            itemTouchHelper.attachToRecyclerView(null);
        }
        this.adapter = new SwitchingPanelAdapter(this, clipSet);
        RecyclerView clip_list = (RecyclerView) _$_findCachedViewById(R.id.clip_list);
        Intrinsics.checkExpressionValueIsNotNull(clip_list, "clip_list");
        clip_list.setAdapter(this.adapter);
        SwitchingPanelAdapter switchingPanelAdapter = this.adapter;
        if (switchingPanelAdapter != null) {
            this.itemTouchHelper = new ItemTouchHelper(new SimpleItemTouchHelperCallback(this, switchingPanelAdapter));
            ItemTouchHelper itemTouchHelper2 = this.itemTouchHelper;
            if (itemTouchHelper2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            itemTouchHelper2.attachToRecyclerView((RecyclerView) _$_findCachedViewById(R.id.clip_list));
            Utils.post(new Runnable() { // from class: com.narvii.video.widget.ClipFastSwitchingPanel.setClipSet.1
                @Override // java.lang.Runnable
                public final void run() {
                    ClipFastSwitchingPanel clipFastSwitchingPanel = ClipFastSwitchingPanel.this;
                    Object obj = clipSet.get(clipFastSwitchingPanel.selectedClipIndex);
                    Intrinsics.checkExpressionValueIsNotNull(obj, "clipSet[this.selectedClipIndex]");
                    clipFastSwitchingPanel.updateOptionPanel((AVClipInfoPack) obj);
                    ((RecyclerView) ClipFastSwitchingPanel.this._$_findCachedViewById(R.id.clip_list)).scrollToPosition(ClipFastSwitchingPanel.this.selectedClipIndex);
                }
            });
            return;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateOptionPanel(AVClipInfoPack aVClipInfoPack) {
        ((LinearLayout) _$_findCachedViewById(R.id.option_trim)).setOnClickListener(this.onOptionClickListener);
        ((LinearLayout) _$_findCachedViewById(R.id.option_crop)).setOnClickListener(this.onOptionClickListener);
        ((LinearLayout) _$_findCachedViewById(R.id.option_speed)).setOnClickListener(this.onOptionClickListener);
        ((LinearLayout) _$_findCachedViewById(R.id.option_music)).setOnClickListener(this.onOptionClickListener);
        ((LinearLayout) _$_findCachedViewById(R.id.option_remove)).setOnClickListener(this.onOptionClickListener);
    }

    /* compiled from: ClipFastSwitchingPanel.kt */
    private final class SwitchingPanelHolder extends RecyclerView.ViewHolder {
        final /* synthetic */ ClipFastSwitchingPanel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SwitchingPanelHolder(ClipFastSwitchingPanel clipFastSwitchingPanel, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = clipFastSwitchingPanel;
        }

        public final void setData(final AVClipInfoPack clip) {
            Intrinsics.checkParameterIsNotNull(clip, "clip");
            int i = this.this$0.panelItemSize;
            FrameRetrieverManager frameRetrieverManager = this.this$0.frameRetrieverManager;
            if (frameRetrieverManager != null) {
                double d = clip.trimStartInMs + (clip.visibleDurationInMs / 3);
                double d2 = clip.speed;
                Double.isNaN(d);
                frameRetrieverManager.retrieveFrame(clip, (int) (d / d2), (4 & 4) != 0, new IVideoServiceCallback() { // from class: com.narvii.video.widget.ClipFastSwitchingPanel$SwitchingPanelHolder$setData$1
                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionCancelled() {
                        IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionFailed(Exception exc) {
                        IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionStarted() {
                        IVideoServiceCallback.DefaultImpls.onActionStarted(this);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onExecutingTaskChanged(MediaEditingConfig newTask) {
                        Intrinsics.checkParameterIsNotNull(newTask, "newTask");
                        IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, newTask);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onFramePicturesLoaded(int i2, File file) {
                        IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i2, file);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onProgress(float f, String str) {
                        IVideoServiceCallback.DefaultImpls.onProgress(this, f, str);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onVideoProcessed(String path) {
                        Intrinsics.checkParameterIsNotNull(path, "path");
                        IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onFrameBitmapLoaded(int i2, Bitmap bitmap) {
                        View itemView = this.this$0.itemView;
                        Intrinsics.checkExpressionValueIsNotNull(itemView, "itemView");
                        ((NVImageView) itemView.findViewById(R.id.clip_thumbnail)).setImageBitmap(bitmap);
                    }
                }, (4 & 16) != 0 ? -1 : i, (4 & 32) != 0 ? -1 : i);
            }
            View itemView = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(itemView, "itemView");
            TextView textView = (TextView) itemView.findViewById(R.id.clip_duration);
            Intrinsics.checkExpressionValueIsNotNull(textView, "itemView.clip_duration");
            textView.setText(String.valueOf(clip.trimmedDurationInMsWithSpeed() / 1000) + "s");
            View itemView2 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(itemView2, "itemView");
            ((NVImageView) itemView2.findViewById(R.id.clip_thumbnail)).defaultDrawable = new ColorDrawable(Color.parseColor("#666666"));
            View itemView3 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(itemView3, "itemView");
            ((NVImageView) itemView3.findViewById(R.id.clip_thumbnail)).strokeColor = -1;
            View itemView4 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(itemView4, "itemView");
            ((NVImageView) itemView4.findViewById(R.id.clip_thumbnail)).setStrokeWidth(clip.indexInScene == this.this$0.selectedClipIndex ? 4.0f : 0.0f);
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.widget.ClipFastSwitchingPanel$SwitchingPanelHolder$setData$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    View viewFindViewByPosition;
                    NVImageView nVImageView;
                    if (clip.indexInScene == this.this$0.this$0.selectedClipIndex) {
                        return;
                    }
                    ClipFastSwitchingPanel.ClipFastSwitchingEventCallback clipFastSwitchingEventCallback = this.this$0.this$0.eventCallback;
                    if (clipFastSwitchingEventCallback != null) {
                        clipFastSwitchingEventCallback.onClipSwitched(clip);
                    }
                    RecyclerView clip_list = (RecyclerView) this.this$0.this$0._$_findCachedViewById(R.id.clip_list);
                    Intrinsics.checkExpressionValueIsNotNull(clip_list, "clip_list");
                    RecyclerView.LayoutManager layoutManager = clip_list.getLayoutManager();
                    if (layoutManager != null && (viewFindViewByPosition = layoutManager.findViewByPosition(this.this$0.this$0.selectedClipIndex)) != null && (nVImageView = (NVImageView) viewFindViewByPosition.findViewById(R.id.clip_thumbnail)) != null) {
                        nVImageView.setStrokeWidth(0.0f);
                    }
                    View itemView5 = this.this$0.itemView;
                    Intrinsics.checkExpressionValueIsNotNull(itemView5, "itemView");
                    ((NVImageView) itemView5.findViewById(R.id.clip_thumbnail)).setStrokeWidth(4.0f);
                    this.this$0.this$0.selectedClipIndex = clip.indexInScene;
                    this.this$0.this$0.updateOptionPanel(clip);
                }
            });
        }
    }

    /* compiled from: ClipFastSwitchingPanel.kt */
    private final class SwitchingPanelAdapter extends RecyclerView.Adapter<SwitchingPanelHolder> implements ItemTouchHelperAdapter {
        private final ArrayList<AVClipInfoPack> clipList;
        final /* synthetic */ ClipFastSwitchingPanel this$0;

        public SwitchingPanelAdapter(ClipFastSwitchingPanel clipFastSwitchingPanel, ArrayList<AVClipInfoPack> clipList) {
            Intrinsics.checkParameterIsNotNull(clipList, "clipList");
            this.this$0 = clipFastSwitchingPanel;
            this.clipList = clipList;
        }

        public final ArrayList<AVClipInfoPack> getClipList() {
            return this.clipList;
        }

        @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ItemTouchHelperAdapter
        public void onItemMoved(int i, int i2) {
            this.this$0.hasClipListReordered = true;
            if (this.this$0.selectedClipIndex == i) {
                this.this$0.selectedClipIndex = i2;
            } else if (this.this$0.selectedClipIndex == i2) {
                this.this$0.selectedClipIndex = i;
            }
            this.clipList.get(i).indexInScene = i2;
            this.clipList.get(i2).indexInScene = i;
            Collections.swap(this.clipList, i, i2);
            notifyItemMoved(i, i2);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public SwitchingPanelHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View itemView = LayoutInflater.from(this.this$0.getContext()).inflate(R.layout.item_clip_fast_switching_panel, parent, false);
            ClipFastSwitchingPanel clipFastSwitchingPanel = this.this$0;
            Intrinsics.checkExpressionValueIsNotNull(itemView, "itemView");
            return new SwitchingPanelHolder(clipFastSwitchingPanel, itemView);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.clipList.size();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(SwitchingPanelHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            AVClipInfoPack aVClipInfoPack = this.clipList.get(i);
            Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPack, "clipList[position]");
            holder.setData(aVClipInfoPack);
        }
    }

    /* compiled from: ClipFastSwitchingPanel.kt */
    private final class SimpleItemTouchHelperCallback extends ItemTouchHelper.Callback {
        private final ItemTouchHelperAdapter adapter;
        final /* synthetic */ ClipFastSwitchingPanel this$0;

        @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder p0, int i) {
            Intrinsics.checkParameterIsNotNull(p0, "p0");
        }

        public SimpleItemTouchHelperCallback(ClipFastSwitchingPanel clipFastSwitchingPanel, ItemTouchHelperAdapter adapter) {
            Intrinsics.checkParameterIsNotNull(adapter, "adapter");
            this.this$0 = clipFastSwitchingPanel;
            this.adapter = adapter;
        }

        public final ItemTouchHelperAdapter getAdapter() {
            return this.adapter;
        }

        @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView p0, RecyclerView.ViewHolder p1) {
            Intrinsics.checkParameterIsNotNull(p0, "p0");
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            return ItemTouchHelper.Callback.makeMovementFlags(12, 0);
        }

        @Override // android.support.v7.widget.helper.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView p0, RecyclerView.ViewHolder p1, RecyclerView.ViewHolder p2) {
            Intrinsics.checkParameterIsNotNull(p0, "p0");
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            Intrinsics.checkParameterIsNotNull(p2, "p2");
            this.adapter.onItemMoved(p1.getAdapterPosition(), p2.getAdapterPosition());
            return true;
        }
    }
}
