package com.narvii.master.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.theme.NVThemeFragment;
import com.narvii.config.ConfigService;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.setting.VideoAutoPlayService;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NVListView;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VideoAutoPlayFragment.kt */
/* loaded from: classes3.dex */
public final class VideoAutoPlayFragment extends NVListFragment implements FragmentOnBackListener {
    private HashMap _$_findViewCache;
    private int currentCond;
    private List<String> list;
    private int originCond;
    private SharedPreferences prefs;

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.video_auto_play);
        ConfigService config = (ConfigService) getService("config");
        Intrinsics.checkExpressionValueIsNotNull(config, "config");
        NVThemeFragment.setDarkNVTheme$default(this, config.getCommunityId() == 0, false, 2, null);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Object service = getService("prefs");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"prefs\")");
        this.prefs = (SharedPreferences) service;
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            throw null;
        }
        this.currentCond = sharedPreferences.getInt(INVPlayer.VIDEO_AUTO_PLAY_PREFS_KEY, 0);
        this.originCond = this.currentCond;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.list = CollectionsKt__CollectionsKt.arrayListOf(getResources().getString(R.string.video_atuo_play_on), getResources().getString(R.string.video_atuo_play_wlan), getResources().getString(R.string.video_atuo_play_off));
        List<String> list = this.list;
        if (list != null) {
            return new Adapter(this, list);
        }
        Intrinsics.throwUninitializedPropertyAccessException("list");
        throw null;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        ListView listView2 = getListView();
        Intrinsics.checkExpressionValueIsNotNull(listView2, "listView");
        listView2.setDivider(null);
        ListView listView3 = getListView();
        Intrinsics.checkExpressionValueIsNotNull(listView3, "listView");
        listView3.setDividerHeight(0);
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        int i = this.currentCond;
        if (i == this.originCond) {
            return false;
        }
        VideoAutoPlayService.INSTANCE.triggerEvent(i);
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putInt(INVPlayer.VIDEO_AUTO_PLAY_PREFS_KEY, this.currentCond).apply();
            return false;
        }
        Intrinsics.throwUninitializedPropertyAccessException("prefs");
        throw null;
    }

    /* compiled from: VideoAutoPlayFragment.kt */
    public static final class Adapter extends NVAdapter {
        private final List<String> list;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(NVContext context, List<String> list) {
            super(context);
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(list, "list");
            this.list = list;
        }

        public final List<String> getList() {
            return this.list;
        }

        @Override // android.widget.Adapter
        public View getView(final int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.setting_video_auto_play_item, viewGroup, view);
            if (viewCreateView == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.FrameLayout");
            }
            FrameLayout frameLayout = (FrameLayout) viewCreateView;
            View viewFindViewById = frameLayout.findViewById(R.id.text);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "frameLayout.findViewById<TextView>(R.id.text)");
            ((TextView) viewFindViewById).setText(this.list.get(i));
            if (this.context instanceof VideoAutoPlayFragment) {
                View viewFindViewById2 = frameLayout.findViewById(R.id.check);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "frameLayout.findViewById…tAwesomeView>(R.id.check)");
                ((FontAwesomeView) viewFindViewById2).setVisibility(((VideoAutoPlayFragment) this.context).currentCond == i ? 0 : 8);
                frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.setting.VideoAutoPlayFragment$Adapter$getView$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        if (((VideoAutoPlayFragment) ((NVAdapter) this.this$0).context).currentCond != i) {
                            ((VideoAutoPlayFragment) ((NVAdapter) this.this$0).context).currentCond = i;
                            this.this$0.notifyDataSetChanged();
                        }
                    }
                });
            }
            return frameLayout;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.list.get(i);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.list.size();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i) throws Resources.NotFoundException {
        super.onThemeChange(i);
        if (i == 2) {
            int color = getResources().getColor(R.color.color_default_primary);
            ListView listView = getListView();
            if (listView == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView).setOverscrollStretchHeader(color);
            ListView listView2 = getListView();
            if (listView2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView2).setOverscrollStretchFooter(color);
            ListView listView3 = getListView();
            if (listView3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView3).setListContentBackgroundColor(0);
            return;
        }
        if (i == 1) {
            int color2 = getResources().getColor(R.color.prefs_background);
            ListView listView4 = getListView();
            if (listView4 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView4).setOverscrollStretchHeader(color2);
            ListView listView5 = getListView();
            if (listView5 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView5).setOverscrollStretchFooter(color2);
            ListView listView6 = getListView();
            if (listView6 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView6).setListContentBackgroundColor(-1);
        }
    }
}
