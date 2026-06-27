package com.narvii.monetization.sticker.shared;

import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.widget.NVListView;
import com.narvii.widget.ReversibleLinearLayout;
import com.narvii.widget.StatusBarPlaceHolder;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SharedStickerCollectionPickerDialog extends NVDialog implements StickerService.StickerCollectionListObserver {
    private Adapter adapter;
    ColorDrawable colorDrawable;
    NVContext context;
    int count;
    boolean dismissing;
    private View gradient;
    List<StickerCollection> list;
    protected NVListView listView;
    SharedStickerPrefHelper prefHelper;
    OnStickerCollectionSelectListener selectListener;
    Runnable selectRunnable;
    StickerCollection selected;
    StickerService stickerService;

    public interface OnStickerCollectionSelectListener {
        void onStickerCollectionSelected(StickerCollection stickerCollection);
    }

    @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
    public void onRequestFailed() {
    }

    @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
    public void onListChanged() {
        refreshData();
    }

    public void refreshData() {
        this.list = this.stickerService.getSharedStickerPackList();
        if (this.stickerService.sharedStickerPackCount < CollectionUtils.getSize(this.list)) {
            Log.e("count is not right : " + this.stickerService.sharedStickerPackCount + "-" + CollectionUtils.getSize(this.list));
        }
        this.count = Math.max(this.stickerService.sharedStickerPackCount, CollectionUtils.getSize(this.list));
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.setList((ArrayList) this.list);
        }
    }

    public SharedStickerCollectionPickerDialog(NVContext nVContext, OnStickerCollectionSelectListener onStickerCollectionSelectListener, List<StickerCollection> list, int i) {
        super(nVContext, R.style.CustomListDialog);
        this.colorDrawable = new ColorDrawable(-1);
        this.selectRunnable = new Runnable() { // from class: com.narvii.monetization.sticker.shared.SharedStickerCollectionPickerDialog.1
            @Override // java.lang.Runnable
            public void run() {
                SharedStickerCollectionPickerDialog sharedStickerCollectionPickerDialog = SharedStickerCollectionPickerDialog.this;
                OnStickerCollectionSelectListener onStickerCollectionSelectListener2 = sharedStickerCollectionPickerDialog.selectListener;
                if (onStickerCollectionSelectListener2 != null) {
                    onStickerCollectionSelectListener2.onStickerCollectionSelected(sharedStickerCollectionPickerDialog.selected);
                }
                SharedStickerCollectionPickerDialog.this.dismiss();
            }
        };
        this.context = nVContext;
        this.selectListener = onStickerCollectionSelectListener;
        this.list = list;
        this.count = i;
        StatusBarUtils.addTranslucentFlags(getWindow());
        this.stickerService = (StickerService) nVContext.getService("sticker");
        super.setContentView(R.layout.sticker_pack_picker);
        this.prefHelper = new SharedStickerPrefHelper(nVContext);
        setupListView();
        this.gradient = findViewById(R.id.gradient);
        findViewById(R.id.root).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.shared.SharedStickerCollectionPickerDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SharedStickerCollectionPickerDialog.this.dismiss();
            }
        });
    }

    private void setupListView() {
        this.listView = (NVListView) findViewById(android.R.id.list);
        this.listView.setCacheColorHint(0);
        this.listView.setSelector(android.R.color.transparent);
        this.listView.setDividerHeight(0);
        this.listView.setDivider(null);
        MergeAdapter mergeAdapter = new MergeAdapter(this.context);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new StatusBarPlaceHolder(getContext()));
        mergeAdapter.addAdapter(staticViewAdapter);
        mergeAdapter.addAdapter(new SeeAllAdapter(this.context));
        this.adapter = new Adapter(this.context, StickerCollection.class, this.list);
        mergeAdapter.addAdapter(this.adapter);
        this.listView.setOnItemClickListener(mergeAdapter);
        this.listView.setAdapter((ListAdapter) mergeAdapter);
    }

    public void setSelectedStickerCollection(StickerCollection stickerCollection) {
        this.selected = stickerCollection;
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        try {
            super.show();
        } catch (Exception unused) {
        }
        try {
            int scrollPosition = this.prefHelper.getScrollPosition();
            int scrollTop = this.prefHelper.getScrollTop();
            if (scrollPosition != -1 && this.listView.getAdapter() != null && this.listView.getAdapter().getCount() > 0) {
                if (scrollPosition < this.listView.getAdapter().getCount()) {
                    this.listView.setSelectionFromTop(scrollPosition, scrollTop);
                } else {
                    this.listView.setSelectionFromTop(this.listView.getAdapter().getCount() - 1, 0);
                }
            }
        } catch (Exception unused2) {
        }
        this.stickerService.addSharedStickerPackListObserver(this);
        this.dismissing = false;
        this.listView.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.dialog_bottom_in));
        this.gradient.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.sticker_list_fade_in));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveListViewPositionAndTop() {
        NVListView nVListView = this.listView;
        if (nVListView == null) {
            return;
        }
        int firstVisiblePosition = nVListView.getFirstVisiblePosition();
        View childAt = this.listView.getChildAt(0);
        this.prefHelper.saveScrollPositionAndTop(firstVisiblePosition, childAt != null ? childAt.getTop() : 0);
    }

    public void dismissWithoutAnimation() {
        try {
            super.dismiss();
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.dismissing) {
            return;
        }
        this.dismissing = true;
        this.stickerService.removeSharedStickerPackObserver(this);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.dialog_bottom_out);
        animationLoadAnimation.setFillAfter(true);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.monetization.sticker.shared.SharedStickerCollectionPickerDialog.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                Utils.post(new Runnable() { // from class: com.narvii.monetization.sticker.shared.SharedStickerCollectionPickerDialog.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            SharedStickerCollectionPickerDialog.this.saveListViewPositionAndTop();
                            SharedStickerCollectionPickerDialog.super.dismiss();
                        } catch (Exception e) {
                            Log.e("dismiss", e);
                        }
                    }
                });
            }
        });
        this.listView.startAnimation(animationLoadAnimation);
        Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(getContext(), R.anim.sticker_list_fade_out);
        animationLoadAnimation2.setFillAfter(true);
        this.gradient.startAnimation(animationLoadAnimation2);
    }

    public class SeeAllAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public SeeAllAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 == null) {
                SharedStickerCollectionPickerDialog.this.dismiss();
                return true;
            }
            if (view2.getId() == R.id.see_all_layout) {
                startActivity(FragmentWrapperActivity.intent(SharedStickerCollectionListFragment.class));
                SharedStickerCollectionPickerDialog.this.stickerService.refreshSharedStickerPackList(true);
                SharedStickerCollectionPickerDialog.this.dismiss();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            String str;
            View viewCreateView = createView(R.layout.shared_sticker_picked_see_all, viewGroup, view);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.see_all);
            StringBuilder sb = new StringBuilder();
            sb.append(getContext().getString(R.string.see_all));
            if (SharedStickerCollectionPickerDialog.this.count > 0) {
                str = " (" + SharedStickerCollectionPickerDialog.this.count + ")";
            } else {
                str = "";
            }
            sb.append(str);
            textView.setText(sb.toString());
            viewCreateView.findViewById(R.id.see_all_layout).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    public class Adapter extends NVArrayAdapter<StickerCollection> {
        public Adapter(NVContext nVContext, Class<StickerCollection> cls, List<StickerCollection> list) {
            super(nVContext, cls, list);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            StickerCollection item = getItem(i);
            View viewCreateView = createView(R.layout.shared_sticker_pack_picker_item, viewGroup, view);
            if (viewCreateView instanceof ReversibleLinearLayout) {
                ((ReversibleLinearLayout) viewCreateView).setReverse(true);
            }
            ((ImageView) viewCreateView.findViewById(R.id.icon_bg)).setImageDrawable(SharedStickerCollectionPickerDialog.this.colorDrawable);
            ((StickerImageView) viewCreateView.findViewById(R.id.collection_icon)).setStickerImageUrl(item.collectionId, item.smallIcon);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.collection_name);
            textView.setText(item.name);
            String strId = item.id();
            StickerCollection stickerCollection = SharedStickerCollectionPickerDialog.this.selected;
            boolean zIsEqualsNotNull = Utils.isEqualsNotNull(strId, stickerCollection != null ? stickerCollection.id() : null);
            textView.setBackgroundResource(zIsEqualsNotNull ? R.drawable.shared_sticker_picker_name_bg_white : R.drawable.shared_sticker_picker_name_bg);
            textView.setTextColor(zIsEqualsNotNull ? -14143949 : -1);
            viewCreateView.findViewById(R.id.cell_main_layout).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 == null) {
                SharedStickerCollectionPickerDialog.this.dismiss();
                return true;
            }
            if (view2.getId() == R.id.cell_main_layout) {
                SharedStickerCollectionPickerDialog.this.selected = getItem(i);
                notifyDataSetChanged();
                Utils.handler.removeCallbacks(SharedStickerCollectionPickerDialog.this.selectRunnable);
                Utils.handler.postDelayed(SharedStickerCollectionPickerDialog.this.selectRunnable, 200L);
            }
            return true;
        }
    }
}
