package com.narvii.user.title;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.DragSortListFragment;
import com.narvii.list.NVArrayAdapter;
import com.narvii.model.api.UserTitle;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.JacksonUtils;
import com.narvii.util.PaletteUtils;
import java.util.List;

/* loaded from: classes3.dex */
public class UserTitleManageFragment extends DragSortListFragment<UserTitle> {
    Adapter adapter;
    UserTitleColorHelper userTitleColorHelper;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(getString(R.string.manage_titles));
        this.userTitleColorHelper = new UserTitleColorHelper(getContext());
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            List<UserTitle> list = this.adapter.getList();
            Intent intent = new Intent();
            intent.putExtra("list", JacksonUtils.writeAsString(list));
            setResult(-1, intent);
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment
    public NVArrayAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter(this, UserTitle.class, JacksonUtils.readListAs(getStringParam("list"), UserTitle.class));
        this.adapter = adapter;
        return adapter;
    }

    class Adapter extends NVArrayAdapter<UserTitle> {
        public Adapter(NVContext nVContext, Class<UserTitle> cls, List<UserTitle> list) {
            super(nVContext, cls, list);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            UserTitle item = getItem(i);
            View viewCreateView = createView(R.layout.item_manage_user_title, viewGroup, view);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
            textView.setText(item.title);
            textView.setTextColor(PaletteUtils.isDarkColor(UserTitleManageFragment.this.userTitleColorHelper.getTitleColor(item)) ? -1 : -11908534);
            textView.setBackgroundDrawable(UserTitleManageFragment.this.userTitleColorHelper.getBackgroundDrawable(item));
            return viewCreateView;
        }
    }
}
