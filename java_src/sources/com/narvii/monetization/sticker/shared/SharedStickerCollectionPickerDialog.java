package com.narvii.monetization.sticker.shared;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.master.R;
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
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
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

    public class Adapter extends NVArrayAdapter<StickerCollection> {
        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null) {
                SharedStickerCollectionPickerDialog.this.dismiss();
                return true;
            }
            if (view2.getId() == R.id.cell_main_layout) {
                SharedStickerCollectionPickerDialog.this.selected = getItem(i10);
                notifyDataSetChanged();
                Handler handler = Utils.handler;
                handler.removeCallbacks(SharedStickerCollectionPickerDialog.this.selectRunnable);
                handler.postDelayed(SharedStickerCollectionPickerDialog.this.selectRunnable, 200L);
            }
            return true;
        }

        public Adapter(NVContext nVContext, Class<StickerCollection> cls, List<StickerCollection> list) {
            super(nVContext, cls, list);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            String strId;
            int i11;
            int i12;
            StickerCollection item = getItem(i10);
            View viewCreateView = createView(R.layout.shared_sticker_pack_picker_item, viewGroup, view);
            if (viewCreateView instanceof ReversibleLinearLayout) {
                ((ReversibleLinearLayout) viewCreateView).setReverse(true);
            }
            ((ImageView) viewCreateView.findViewById(R.id.icon_bg)).setImageDrawable(SharedStickerCollectionPickerDialog.this.colorDrawable);
            ((StickerImageView) viewCreateView.findViewById(R.id.collection_icon)).setStickerImageUrl(item.collectionId, item.smallIcon);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.collection_name);
            textView.setText(item.name);
            String strId2 = item.id();
            StickerCollection stickerCollection = SharedStickerCollectionPickerDialog.this.selected;
            if (stickerCollection != null) {
                strId = stickerCollection.id();
            } else {
                strId = null;
            }
            boolean zIsEqualsNotNull = Utils.isEqualsNotNull(strId2, strId);
            if (zIsEqualsNotNull) {
                i11 = R.drawable.shared_sticker_picker_name_bg_white;
            } else {
                i11 = R.drawable.shared_sticker_picker_name_bg;
            }
            textView.setBackgroundResource(i11);
            if (zIsEqualsNotNull) {
                i12 = -14143949;
            } else {
                i12 = -1;
            }
            textView.setTextColor(i12);
            viewCreateView.findViewById(R.id.cell_main_layout).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    public interface OnStickerCollectionSelectListener {
        void onStickerCollectionSelected(StickerCollection stickerCollection);
    }

    public class SeeAllAdapter extends NVAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null) {
                SharedStickerCollectionPickerDialog.this.dismiss();
                return true;
            }
            if (view2.getId() == R.id.see_all_layout) {
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, FragmentWrapperActivity.intent(SharedStickerCollectionListFragment.class));
                SharedStickerCollectionPickerDialog.this.stickerService.refreshSharedStickerPackList(true);
                SharedStickerCollectionPickerDialog.this.dismiss();
            }
            return true;
        }

        public SeeAllAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
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

    @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
    public void onRequestFailed() {
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

    public void refreshData() {
        List<StickerCollection> sharedStickerPackList = this.stickerService.getSharedStickerPackList();
        this.list = sharedStickerPackList;
        if (this.stickerService.sharedStickerPackCount < CollectionUtils.getSize(sharedStickerPackList)) {
            Log.e("count is not right : " + this.stickerService.sharedStickerPackCount + "-" + CollectionUtils.getSize(this.list));
        }
        this.count = Math.max(this.stickerService.sharedStickerPackCount, CollectionUtils.getSize(this.list));
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.setList((ArrayList) this.list);
        }
    }

    public void setSelectedStickerCollection(StickerCollection stickerCollection) {
        this.selected = stickerCollection;
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    public SharedStickerCollectionPickerDialog(NVContext nVContext, OnStickerCollectionSelectListener onStickerCollectionSelectListener, List<StickerCollection> list, int i10) {
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
        this.count = i10;
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

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void setupListView() {
        NVListView nVListView = (NVListView) findViewById(android.R.id.list);
        this.listView = nVListView;
        nVListView.setCacheColorHint(0);
        this.listView.setSelector(android.R.color.transparent);
        this.listView.setDividerHeight(0);
        this.listView.setDivider(null);
        MergeAdapter mergeAdapter = new MergeAdapter(this.context);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new StatusBarPlaceHolder(getContext()));
        mergeAdapter.addAdapter(staticViewAdapter);
        mergeAdapter.addAdapter(new SeeAllAdapter(this.context));
        Adapter adapter = new Adapter(this.context, StickerCollection.class, this.list);
        this.adapter = adapter;
        mergeAdapter.addAdapter(adapter);
        this.listView.setOnItemClickListener(mergeAdapter);
        this.listView.setAdapter((ListAdapter) mergeAdapter);
    }

    public void dismissWithoutAnimation() {
        try {
            super.dismiss();
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
    public void onListChanged() {
        refreshData();
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
                    NVListView nVListView = this.listView;
                    nVListView.setSelectionFromTop(nVListView.getAdapter().getCount() - 1, 0);
                }
            }
        } catch (Exception unused2) {
        }
        this.stickerService.addSharedStickerPackListObserver(this);
        this.dismissing = false;
        this.listView.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.dialog_bottom_in));
        this.gradient.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.sticker_list_fade_in));
    }
}
