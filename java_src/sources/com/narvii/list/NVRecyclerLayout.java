package com.narvii.list;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import com.narvii.widget.recycleview.NVRecycleAdapter;

/* JADX INFO: loaded from: classes5.dex */
public class NVRecyclerLayout extends FrameLayout {
    RecyclerView.AdapterDataObserver adapterDataObserver;
    private View emptyView;
    View.OnClickListener errorRetryListener;
    private View errorView;
    private View loadingView;
    private View mainLayout;
    private NVRecycleAdapter recycleAdapter;
    public RecyclerView recyclerView;

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViews() {
        NVRecycleAdapter nVRecycleAdapter = this.recycleAdapter;
        if (nVRecycleAdapter != null) {
            boolean zIsListShown = nVRecycleAdapter.isListShown();
            boolean zIsEmpty = this.recycleAdapter.isEmpty();
            boolean z6 = this.recycleAdapter.errorMessage() != null;
            View view = this.mainLayout;
            if (view != null) {
                view.setVisibility(zIsListShown ? 0 : 4);
            }
            View view2 = this.emptyView;
            if (view2 != null) {
                view2.setVisibility((zIsListShown && zIsEmpty && !z6) ? 0 : 4);
            }
            View view3 = this.loadingView;
            if (view3 != null) {
                view3.setVisibility((zIsListShown || z6) ? 4 : 0);
            }
            View view4 = this.errorView;
            if (view4 != null) {
                view4.setVisibility(this.recycleAdapter.errorMessage() == null ? 4 : 0);
                TextView textView = (TextView) this.errorView.findViewById(R.id.error_text);
                String string = getContext().getString(R.string.normal_error_offline2);
                if (!Utils.isDeviceOffline(getContext())) {
                    string = this.recycleAdapter.errorMessage();
                }
                textView.setText(string);
                this.errorView.findViewById(R.id.error_retry).setOnClickListener(this.errorRetryListener);
            }
        }
    }

    public void setRecycleAdapter(NVRecycleAdapter nVRecycleAdapter) {
        this.recyclerView.setAdapter(nVRecycleAdapter);
        this.recycleAdapter = nVRecycleAdapter;
        nVRecycleAdapter.registerAdapterDataObserver(this.adapterDataObserver);
        updateViews();
    }

    public NVRecyclerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.adapterDataObserver = new RecyclerView.AdapterDataObserver() { // from class: com.narvii.list.NVRecyclerLayout.1
            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                NVRecyclerLayout.this.updateViews();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeChanged(int i10, int i11) {
                NVRecyclerLayout.this.updateViews();
            }
        };
        this.errorRetryListener = new View.OnClickListener() { // from class: com.narvii.list.NVRecyclerLayout.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NVRecyclerLayout.this.recycleAdapter.onErrorRetry();
            }
        };
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.errorView = findViewById(R.id.error);
        this.loadingView = findViewById(R.id.loading);
        this.recyclerView = (RecyclerView) findViewById(R.id.recycler);
        this.mainLayout = findViewById(R.id.main_layout);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            getChildAt(i10).setVisibility(4);
        }
    }
}
