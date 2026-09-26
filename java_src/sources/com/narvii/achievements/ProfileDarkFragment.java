package com.narvii.achievements;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.list.NVListFragment;
import com.narvii.webview.WebViewFragment;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes10.dex */
public abstract class ProfileDarkFragment extends NVListFragment {
    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951635;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.add(0, R.string.prefs_help_center, 0, R.string.prefs_help_center).setIcon(R.drawable.ic_question_white).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.prefs_help_center) {
            Intent intent = FragmentWrapperActivity.intent(WebViewFragment.class);
            intent.putExtra(ImagesContract.URL, "https://support.altamino.top/hc/articles/360025979793");
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
