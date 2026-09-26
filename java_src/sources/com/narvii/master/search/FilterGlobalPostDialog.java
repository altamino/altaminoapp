package com.narvii.master.search;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.util.Utils;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;

/* JADX INFO: loaded from: classes8.dex */
public class FilterGlobalPostDialog extends NVDialog implements View.OnClickListener {
    OnSearchConfigChangListener configChangListener;
    private boolean filterByMyAmino;
    private GlobalPostSearchPrefsHelper prefsHelper;
    private String sortBy;

    public interface OnSearchConfigChangListener {
        void onConfigChanged();
    }

    private void updateSortByItem(View view, boolean z6, String str) {
        TextView textView;
        if (str.equals(GlobalPostSearchPrefsHelper.MOST_RECENT)) {
            textView = (TextView) view.findViewById(R.id.text_most_recent);
            view.findViewById(R.id.check_recent).setVisibility(z6 ? 0 : 4);
        } else {
            textView = (TextView) view.findViewById(R.id.text_relevant);
            view.findViewById(R.id.check_relevant).setVisibility(z6 ? 0 : 4);
        }
        textView.setTextColor(z6 ? -14013910 : -8487298);
        if (z6) {
            textView.setTypeface(Typeface.DEFAULT, 1);
        } else {
            textView.setTypeface(null);
        }
    }

    public FilterGlobalPostDialog(final Context context, boolean z6, OnSearchConfigChangListener onSearchConfigChangListener, int i10) {
        super(context, R.style.CustomDialogWithAnimation);
        this.configChangListener = onSearchConfigChangListener;
        setContentView(R.layout.dialog_filter_global_post);
        GlobalPostSearchPrefsHelper globalPostSearchPrefsHelper = new GlobalPostSearchPrefsHelper(context, i10);
        this.prefsHelper = globalPostSearchPrefsHelper;
        this.filterByMyAmino = globalPostSearchPrefsHelper.filterByMyAmino();
        this.sortBy = this.prefsHelper.sortBy();
        if (!z6) {
            findViewById(R.id.filter_layout).setVisibility(8);
        }
        final CheckBox checkBox = (CheckBox) findViewById(R.id.my_amino_checkbox);
        checkBox.setChecked(this.filterByMyAmino);
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.master.search.FilterGlobalPostDialog.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                NVContext nVContext = Utils.getNVContext(context);
                if (z10 && Utils.shouldShowLoginPage(nVContext)) {
                    checkBox.setChecked(false);
                } else {
                    FilterGlobalPostDialog.this.filterByMyAmino = z10;
                }
            }
        });
        updateSortByViews();
        findViewById(R.id.most_relevant_layout).setOnClickListener(this);
        findViewById(R.id.most_recent_layout).setOnClickListener(this);
        findViewById(R.id.apply).setOnClickListener(this);
        findViewById(R.id.blank).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.search.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2402a.onClick(view);
            }
        });
    }

    private void updateSortByViews() {
        updateSortByItem(findViewById(R.id.most_relevant_layout), GlobalPostSearchPrefsHelper.MOST_RELEVANT.equals(this.sortBy), GlobalPostSearchPrefsHelper.MOST_RELEVANT);
        updateSortByItem(findViewById(R.id.most_recent_layout), GlobalPostSearchPrefsHelper.MOST_RECENT.equals(this.sortBy), GlobalPostSearchPrefsHelper.MOST_RECENT);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        switch (view.getId()) {
            case R.id.apply /* 2131362106 */:
                this.prefsHelper.saveConfigChange(this.filterByMyAmino, this.sortBy);
                OnSearchConfigChangListener onSearchConfigChangListener = this.configChangListener;
                if (onSearchConfigChangListener != null) {
                    onSearchConfigChangListener.onConfigChanged();
                }
                dismiss();
                StatisticsEventBuilder statisticsEventBuilderUserProp = ((StatisticsService) Utils.getNVContext(getContext()).getService("statistics")).event(null).userProp("Global Post Search- Filter By My Aminos", this.filterByMyAmino);
                if (this.sortBy == GlobalPostSearchPrefsHelper.MOST_RECENT) {
                    str = "Most Recent";
                } else {
                    str = "Most Relevant";
                }
                statisticsEventBuilderUserProp.userProp("Global Post Search- Sort By", str);
                break;
            case R.id.blank /* 2131362260 */:
                dismiss();
                break;
            case R.id.most_recent_layout /* 2131364250 */:
                this.sortBy = GlobalPostSearchPrefsHelper.MOST_RECENT;
                updateSortByViews();
                break;
            case R.id.most_relevant_layout /* 2131364251 */:
                this.sortBy = GlobalPostSearchPrefsHelper.MOST_RELEVANT;
                updateSortByViews();
                break;
        }
    }
}
