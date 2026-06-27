package com.narvii.prefs;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsToggle;
import com.narvii.util.Callback;
import com.narvii.util.DBAminoLightHelper;
import java.util.List;

/* loaded from: classes3.dex */
public class AminolightSettings extends NVListFragment {
    Adapter adapter;
    SharedPreferences prefs;
    final Callback<PrefsToggle> switchCallback = new Callback<PrefsToggle>() { // from class: com.narvii.prefs.AminolightSettings.1
        @Override // com.narvii.util.Callback
        public void call(PrefsToggle prefsToggle) {
            if (prefsToggle.id == R.string.aminolight_settings_toggle_debug) {
                boolean z = prefsToggle.on;
                NVApplication.DEBUG = z;
                DBAminoLightHelper.setBoolean("debug", z);
            }
            if (prefsToggle.id == R.string.aminolight_settings_toggle_fakecheckin) {
                DBAminoLightHelper.setBoolean("show_fake_checkin", prefsToggle.on);
            }
            if (prefsToggle.id == R.string.aminolight_settings_send_active) {
                DBAminoLightHelper.setBoolean("stop_send_active", prefsToggle.on);
            }
            if (prefsToggle.id == R.string.aminolight_settings_show_visitor_count) {
                DBAminoLightHelper.setBoolean("show_visitor_count", prefsToggle.on);
            }
        }
    };

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Aminolight Settings";
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    protected boolean isCommunityLevel() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.prefs = (SharedPreferences) getService("prefs");
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = new Adapter();
        getListView().setOnItemLongClickListener(this.adapter);
        return this.adapter;
    }

    class Adapter extends PrefsAdapter {
        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return super.getView(i, view, viewGroup);
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
        }

        public Adapter() {
            super(AminolightSettings.this);
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            refreshMonitorStart(i, callback);
            notifyDataSetChanged();
            refreshMonitorEnd();
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List list) {
            list.add(PrefsAdapter.DIVIDER);
            AminolightSettings aminolightSettings = AminolightSettings.this;
            PrefsToggle prefsToggle = new PrefsToggle(R.string.aminolight_settings_toggle_debug, aminolightSettings.getString(R.string.aminolight_settings_toggle_debug));
            prefsToggle.on = NVApplication.DEBUG;
            prefsToggle.callback = aminolightSettings.switchCallback;
            list.add(prefsToggle);
            AminolightSettings aminolightSettings2 = AminolightSettings.this;
            PrefsToggle prefsToggle2 = new PrefsToggle(R.string.aminolight_settings_toggle_fakecheckin, aminolightSettings2.getString(R.string.aminolight_settings_toggle_fakecheckin));
            prefsToggle2.on = DBAminoLightHelper.getBoolean("show_fake_checkin", false);
            prefsToggle2.callback = aminolightSettings2.switchCallback;
            list.add(prefsToggle2);
            AminolightSettings aminolightSettings3 = AminolightSettings.this;
            PrefsToggle prefsToggle3 = new PrefsToggle(R.string.aminolight_settings_send_active, aminolightSettings3.getString(R.string.aminolight_settings_send_active));
            prefsToggle3.on = DBAminoLightHelper.getBoolean("stop_send_active", false);
            prefsToggle3.callback = aminolightSettings3.switchCallback;
            list.add(prefsToggle3);
            AminolightSettings aminolightSettings4 = AminolightSettings.this;
            PrefsToggle prefsToggle4 = new PrefsToggle(R.string.aminolight_settings_show_visitor_count, aminolightSettings4.getString(R.string.aminolight_settings_show_visitor_count));
            prefsToggle4.on = DBAminoLightHelper.getBoolean("show_visitor_count", false);
            prefsToggle4.callback = aminolightSettings4.switchCallback;
            list.add(prefsToggle4);
        }
    }
}
