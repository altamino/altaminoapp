package com.narvii.prefs;

import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsDescription;
import com.narvii.list.prefs.PrefsToggle;
import com.narvii.util.Callback;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.widget.NVListView;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GdprFragment.kt */
/* loaded from: classes3.dex */
public final class GdprFragment extends NVListFragment {
    private HashMap _$_findViewCache;

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

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.personal_data);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView != null) {
            listView.setDividerHeight(0);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter(this, this);
    }

    /* compiled from: GdprFragment.kt */
    private final class Adapter extends PrefsAdapter {
        private final SharedPreferences prefs;
        final /* synthetic */ GdprFragment this$0;

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(GdprFragment gdprFragment, NVContext nvContext) {
            super(nvContext);
            Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
            this.this$0 = gdprFragment;
            this.prefs = (SharedPreferences) nvContext.getService("prefs");
        }

        public final SharedPreferences getPrefs() {
            return this.prefs;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            PrefsToggle prefsToggle = new PrefsToggle(R.string.personal_data, this.this$0.getString(R.string.personal_data_msg));
            prefsToggle.on = this.prefs.getBoolean("gdprOptout", false);
            prefsToggle.callback = new Callback<PrefsToggle>() { // from class: com.narvii.prefs.GdprFragment$Adapter$buildCells$1
                @Override // com.narvii.util.Callback
                public final void call(PrefsToggle prefsToggle2) {
                }

                /* compiled from: GdprFragment.kt */
                /* renamed from: com.narvii.prefs.GdprFragment$Adapter$buildCells$1$1, reason: invalid class name */
                static final class AnonymousClass1 implements Runnable {
                    final /* synthetic */ ProgressDialog $pd;

                    AnonymousClass1(ProgressDialog progressDialog) {
                        this.$pd = progressDialog;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.$pd.dismiss();
                    }
                }
            };
            if (list != null) {
                list.add(prefsToggle);
                list.add(new PrefsDescription(this.this$0.getText(R.string.personal_data_msg2)));
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
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
