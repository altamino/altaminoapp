package com.narvii.master.search;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class FilterGlobalPostDialog extends NVDialog implements View.OnClickListener {
    OnSearchConfigChangListener configChangListener;
    private boolean filterByMyAmino;
    private GlobalPostSearchPrefsHelper prefsHelper;
    private String sortBy;

    public interface OnSearchConfigChangListener {
        void onConfigChanged();
    }

    public FilterGlobalPostDialog(final Context context, boolean z, OnSearchConfigChangListener onSearchConfigChangListener, int i) {
        super(context, R.style.CustomDialogWithAnimation);
        this.configChangListener = onSearchConfigChangListener;
        setContentView(R.layout.dialog_filter_global_post);
        this.prefsHelper = new GlobalPostSearchPrefsHelper(context, i);
        this.filterByMyAmino = this.prefsHelper.filterByMyAmino();
        this.sortBy = this.prefsHelper.sortBy();
        if (!z) {
            findViewById(R.id.filter_layout).setVisibility(8);
        }
        final CheckBox checkBox = (CheckBox) findViewById(R.id.my_amino_checkbox);
        checkBox.setChecked(this.filterByMyAmino);
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.master.search.FilterGlobalPostDialog.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                NVContext nVContext = Utils.getNVContext(context);
                if (!z2 || !Utils.shouldShowLoginPage(nVContext)) {
                    FilterGlobalPostDialog.this.filterByMyAmino = z2;
                } else {
                    checkBox.setChecked(false);
                }
            }
        });
        updateSortByViews();
        findViewById(R.id.most_relevant_layout).setOnClickListener(this);
        findViewById(R.id.most_recent_layout).setOnClickListener(this);
        findViewById(R.id.apply).setOnClickListener(this);
        findViewById(R.id.blank).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.search.-$$Lambda$Maxy7Id8GFUF1WpPHOkMzZXXgw4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClick(view);
            }
        });
    }

    private void updateSortByViews() {
        updateSortByItem(findViewById(R.id.most_relevant_layout), GlobalPostSearchPrefsHelper.MOST_RELEVANT.equals(this.sortBy));
        updateSortByItem(findViewById(R.id.most_recent_layout), GlobalPostSearchPrefsHelper.MOST_RECENT.equals(this.sortBy));
    }

    private void updateSortByItem(View view, boolean z) {
        TextView textView = (TextView) view.findViewById(R.id.text);
        textView.setTextColor(z ? -14013910 : -8487298);
        if (z) {
            textView.setTypeface(Typeface.DEFAULT, 1);
        } else {
            textView.setTypeface(null);
        }
        view.findViewById(R.id.check).setVisibility(z ? 0 : 4);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.apply /* 2131296440 */:
                this.prefsHelper.saveConfigChange(this.filterByMyAmino, this.sortBy);
                OnSearchConfigChangListener onSearchConfigChangListener = this.configChangListener;
                if (onSearchConfigChangListener != null) {
                    onSearchConfigChangListener.onConfigChanged();
                }
                dismiss();
                break;
            case R.id.blank /* 2131296566 */:
                dismiss();
                break;
            case R.id.most_recent_layout /* 2131298097 */:
                this.sortBy = GlobalPostSearchPrefsHelper.MOST_RECENT;
                updateSortByViews();
                break;
            case R.id.most_relevant_layout /* 2131298098 */:
                this.sortBy = GlobalPostSearchPrefsHelper.MOST_RELEVANT;
                updateSortByViews();
                break;
        }
    }
}
