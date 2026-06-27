package com.narvii.achievements;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.list.NVListFragment;
import com.narvii.webview.WebViewFragment;

/* loaded from: classes2.dex */
public abstract class ProfileDarkFragment extends NVListFragment {
    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755026;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.add(0, R.string.prefs_help_center, 0, R.string.prefs_help_center).setIcon(R.drawable.ic_question_white).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.prefs_help_center) {
            Intent intent = FragmentWrapperActivity.intent(WebViewFragment.class);
            intent.putExtra("url", "https://support.aminoapps.com/hc/articles/360025979793");
            startActivity(intent);
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
