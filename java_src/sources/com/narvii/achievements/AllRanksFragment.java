package com.narvii.achievements;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.modulization.Module;
import com.narvii.theme.ThemePackService;
import com.narvii.util.ranking.RankingLevel;
import com.narvii.util.ranking.RankingService;
import com.narvii.util.statistics.StatisticsService;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class AllRanksFragment extends ProfileDarkFragment {
    private NumberFormat numberFormat;

    class Adapter extends NVAdapter {
        List<RankingLevel> rankingLevelList;
        RankingService rankingService;

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            RankingService rankingService = (RankingService) getService(Module.MODULE_RANKING);
            this.rankingService = rankingService;
            this.rankingLevelList = rankingService.getLevels();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<RankingLevel> list = this.rankingLevelList;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public RankingLevel getItem(int i10) {
            return this.rankingLevelList.get(i10);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            String string;
            View viewCreateView = createView(R.layout.rank_item, viewGroup, view);
            ((ImageView) viewCreateView.findViewById(R.id.badge)).setImageDrawable(this.rankingService.getBadge(i10 + 1));
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(getItem(i10).title);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.subTitle);
            if (getCount() > 1) {
                i11 = getItem(1).reputation;
            } else {
                i11 = 0;
            }
            if (i10 == 0) {
                AllRanksFragment allRanksFragment = AllRanksFragment.this;
                string = allRanksFragment.getString(R.string.less_than_level_1_max_points, allRanksFragment.numberFormat.format(i11));
            } else {
                AllRanksFragment allRanksFragment2 = AllRanksFragment.this;
                string = allRanksFragment2.getString(R.string.n_reputation_points, allRanksFragment2.numberFormat.format(getItem(i10).reputation));
            }
            textView.setText(string);
            return viewCreateView;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        mergeAdapter.addAdapter(staticViewAdapter);
        Adapter adapter = new Adapter(this);
        DividerAdapter dividerAdapter = new DividerAdapter(this) { // from class: com.narvii.achievements.AllRanksFragment.1
            @Override // com.narvii.list.DividerAdapter
            protected int getDividerLayoutId() {
                return R.layout.prefs_divider;
            }
        };
        dividerAdapter.setAdapter(adapter, 2);
        mergeAdapter.addAdapter(dividerAdapter, true);
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.all_ranks);
        setHasOptionsMenu(true);
        this.numberFormat = NumberFormat.getInstance(Locale.US);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("See All Ranks Page Opened").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("See All Ranks Page Opened Total");
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.layout_fragment_all_ranks, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        int i10 = 0;
        Drawable drawable = ((ThemePackService) getService("themePack")).getDrawable(((ConfigService) getService("config")).getCommunityId(), ThemePackService.ThemeObject.BACKGROUND, 0, 0);
        ((ImageView) view.findViewById(R.id.background_image)).setImageDrawable(drawable);
        View viewFindViewById = view.findViewById(R.id.bg);
        if (drawable != null) {
            i10 = 8;
        }
        viewFindViewById.setVisibility(i10);
    }
}
