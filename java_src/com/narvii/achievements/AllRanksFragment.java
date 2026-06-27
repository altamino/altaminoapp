package com.narvii.achievements;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.modulization.Module;
import com.narvii.theme.ThemePackService;
import com.narvii.util.ranking.RankingLevel;
import com.narvii.util.ranking.RankingService;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public class AllRanksFragment extends ProfileDarkFragment {
    private NumberFormat numberFormat;

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.all_ranks);
        setHasOptionsMenu(true);
        this.numberFormat = NumberFormat.getInstance(Locale.US);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.layout_fragment_all_ranks, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        Drawable drawable = ((ThemePackService) getService("themePack")).getDrawable(((ConfigService) getService("config")).getCommunityId(), ThemePackService.ThemeObject.BACKGROUND, 0, 0);
        ((ImageView) view.findViewById(R.id.background_image)).setImageDrawable(drawable);
        view.findViewById(R.id.bg).setVisibility(drawable != null ? 8 : 0);
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

    class Adapter extends NVAdapter {
        List<RankingLevel> rankingLevelList;
        RankingService rankingService;

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            this.rankingService = (RankingService) getService(Module.MODULE_RANKING);
            this.rankingLevelList = this.rankingService.getLevels();
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
        public RankingLevel getItem(int i) {
            return this.rankingLevelList.get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            String string;
            View viewCreateView = createView(R.layout.rank_item, viewGroup, view);
            ((ImageView) viewCreateView.findViewById(R.id.badge)).setImageDrawable(this.rankingService.getBadge(i + 1));
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(getItem(i).title);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.subTitle);
            int i2 = getCount() > 1 ? getItem(1).reputation : 0;
            if (i == 0) {
                AllRanksFragment allRanksFragment = AllRanksFragment.this;
                string = allRanksFragment.getString(R.string.less_than_level_1_max_points, allRanksFragment.numberFormat.format(i2));
            } else {
                AllRanksFragment allRanksFragment2 = AllRanksFragment.this;
                string = allRanksFragment2.getString(R.string.n_reputation_points, allRanksFragment2.numberFormat.format(getItem(i).reputation));
            }
            textView.setText(string);
            return viewCreateView;
        }
    }
}
