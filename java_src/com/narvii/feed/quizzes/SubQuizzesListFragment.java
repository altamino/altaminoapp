package com.narvii.feed.quizzes;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.widget.NVListView;

/* loaded from: classes2.dex */
public abstract class SubQuizzesListFragment extends NVListFragment {
    protected OverlayLayout header;
    private NVAdapter mainAdapter;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    protected abstract NVAdapter mainAdapter();

    protected void updateHeader() {
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.quizzes_list_with_overlay, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setTitle((CharSequence) null);
        this.header = (OverlayLayout) view.findViewById(R.id.overlay);
        initHeader();
        updateHeader();
        View viewFindViewById = view.findViewById(R.id.empty_text);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setText(getString(R.string.quiz_empty_info));
        }
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return getBooleanParam("__embed");
    }

    private void initHeader() {
        this.header.setLayout(R.layout.quizzes_header_overlayout, (int) getResources().getDimension(R.dimen.quizzes_header_overlay_header_with_section_height));
        if (getBooleanParam("__embed")) {
            this.header.setVisibility(8);
            return;
        }
        this.header.setHeight1((int) (getActionBarOverlaySize() + getStatusBarOverlaySize() + getResources().getDimension(R.dimen.quizzes_header_tab_height)));
        this.header.attach((NVListView) getListView());
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        if (!getBooleanParam("__embed")) {
            StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
            staticViewAdapter.addLayouts(R.layout.quizze_list_overlay_placeholder);
            mergeAdapter.addAdapter(staticViewAdapter);
        }
        this.mainAdapter = mainAdapter();
        mergeAdapter.addAdapter(this.mainAdapter, true);
        return mergeAdapter;
    }
}
