package com.narvii.master.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.app.theme.NVThemeFragment;
import com.narvii.config.ConfigService;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.setting.VideoAutoPlayService;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NVListView;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class VideoAutoPlayFragment extends NVListFragment implements FragmentOnBackListener {
    private int currentCond;
    private List<String> list;
    private int originCond;
    private SharedPreferences prefs;

    public static final class Adapter extends NVAdapter {

        @NotNull
        private final List<String> list;

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @NotNull
        public final List<String> getList() {
            return this.list;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(@NotNull NVContext context, @NotNull List<String> list) {
            super(context);
            t.j(context, "context");
            t.j(list, "list");
            this.list = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void getView$lambda$0(Adapter this$0, int i10, View view) {
            t.j(this$0, "this$0");
            NVContext nVContext = this$0.context;
            t.h(nVContext, "null cannot be cast to non-null type com.narvii.master.setting.VideoAutoPlayFragment");
            if (((VideoAutoPlayFragment) nVContext).currentCond != i10) {
                NVContext nVContext2 = this$0.context;
                t.h(nVContext2, "null cannot be cast to non-null type com.narvii.master.setting.VideoAutoPlayFragment");
                ((VideoAutoPlayFragment) nVContext2).currentCond = i10;
                this$0.notifyDataSetChanged();
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.list.size();
        }

        @Override // android.widget.Adapter
        @NotNull
        public Object getItem(int i10) {
            return this.list.get(i10);
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(final int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            int i11;
            View viewCreateView = createView(R.layout.setting_video_auto_play_item, viewGroup, view);
            t.h(viewCreateView, "null cannot be cast to non-null type android.widget.FrameLayout");
            FrameLayout frameLayout = (FrameLayout) viewCreateView;
            ((TextView) frameLayout.findViewById(R.id.text)).setText(this.list.get(i10));
            if (this.context instanceof VideoAutoPlayFragment) {
                FontAwesomeView fontAwesomeView = (FontAwesomeView) frameLayout.findViewById(R.id.check);
                NVContext nVContext = this.context;
                t.h(nVContext, "null cannot be cast to non-null type com.narvii.master.setting.VideoAutoPlayFragment");
                if (((VideoAutoPlayFragment) nVContext).currentCond == i10) {
                    i11 = 0;
                } else {
                    i11 = 8;
                }
                fontAwesomeView.setVisibility(i11);
                frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.setting.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        VideoAutoPlayFragment.Adapter.getView$lambda$0(this.f2424a, i10, view2);
                    }
                });
            }
            return frameLayout;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        t.j(context, "context");
        super.onAttach(context);
        Object service = getService(IncubatorApplication.PREFS_SERVICE_KEY);
        t.i(service, "getService(...)");
        SharedPreferences sharedPreferences = (SharedPreferences) service;
        this.prefs = sharedPreferences;
        if (sharedPreferences == null) {
            t.B(IncubatorApplication.PREFS_SERVICE_KEY);
            sharedPreferences = null;
        }
        int i10 = sharedPreferences.getInt(INVPlayer.VIDEO_AUTO_PLAY_PREFS_KEY, 0);
        this.currentCond = i10;
        this.originCond = i10;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        int i10 = this.currentCond;
        if (i10 == this.originCond) {
            return false;
        }
        VideoAutoPlayService.INSTANCE.triggerEvent(i10);
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences == null) {
            t.B(IncubatorApplication.PREFS_SERVICE_KEY);
            sharedPreferences = null;
        }
        sharedPreferences.edit().putInt(INVPlayer.VIDEO_AUTO_PLAY_PREFS_KEY, this.currentCond).apply();
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        String string = getResources().getString(R.string.video_atuo_play_on);
        t.i(string, "getString(...)");
        String string2 = getResources().getString(R.string.video_atuo_play_wlan);
        t.i(string2, "getString(...)");
        String string3 = getResources().getString(R.string.video_atuo_play_off);
        t.i(string3, "getString(...)");
        this.list = v.g(string, string2, string3);
        List<String> list = this.list;
        if (list == null) {
            t.B("list");
            list = null;
        }
        return new Adapter(this, list);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        boolean z6;
        super.onCreate(bundle);
        setTitle(R.string.video_auto_play);
        if (((ConfigService) getService("config")).getCommunityId() == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        NVThemeFragment.setDarkNVTheme$default(this, z6, false, 2, null);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@Nullable ListView listView, @Nullable Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i10) {
        super.onThemeChange(i10);
        if (i10 != 1) {
            if (i10 == 2) {
                int color = getResources().getColor(R.color.color_default_primary);
                ListView listView = getListView();
                t.h(listView, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView).setOverscrollStretchHeader(color);
                ListView listView2 = getListView();
                t.h(listView2, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView2).setOverscrollStretchFooter(color);
                ListView listView3 = getListView();
                t.h(listView3, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView3).setListContentBackgroundColor(0);
                return;
            }
            return;
        }
        int color2 = getResources().getColor(R.color.prefs_background);
        ListView listView4 = getListView();
        t.h(listView4, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView4).setOverscrollStretchHeader(color2);
        ListView listView5 = getListView();
        t.h(listView5, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView5).setOverscrollStretchFooter(color2);
        ListView listView6 = getListView();
        t.h(listView6, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView6).setListContentBackgroundColor(-1);
    }
}
