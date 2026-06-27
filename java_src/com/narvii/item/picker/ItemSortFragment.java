package com.narvii.item.picker;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.catalog.picker.CatalogPickerFragment;
import com.narvii.list.DragSortListFragment;
import com.narvii.list.NVArrayAdapter;
import com.narvii.model.Item;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.widget.ThumbImageView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ItemSortFragment extends DragSortListFragment<Item> implements FragmentWillFinishListener {
    static final int PICK_ITEM_REQUEST = 1;
    Adapter adapter;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(getString(R.string.item_picker_title));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment
    public NVArrayAdapter<Item> createAdapter(Bundle bundle) {
        this.adapter = new Adapter(bundle == null ? JacksonUtils.readListAs(getStringParam("itemList"), Item.class) : null);
        return this.adapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        View viewInflate = getLayoutInflater(null).inflate(R.layout.item_add_more_list_item, (ViewGroup) getListView(), false);
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.item.picker.ItemSortFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int intParam = ItemSortFragment.this.getIntParam("maximum", 10);
                if (ItemSortFragment.this.adapter.getList().size() >= intParam) {
                    NVToast.makeText(ItemSortFragment.this.getContext(), ItemSortFragment.this.getString(R.string.item_picker_exceed_limit, Integer.valueOf(intParam)), 0).show();
                    return;
                }
                Intent intent = FragmentWrapperActivity.intent(CatalogPickerFragment.class);
                intent.putExtra("mine", true);
                intent.putExtra("itemList", JacksonUtils.writeAsString(ItemSortFragment.this.adapter.getList()));
                intent.putExtra("maximum", intParam);
                ItemSortFragment.this.startActivityForResult(intent, 1);
            }
        });
        listView.addFooterView(viewInflate, null, true);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        ArrayList listAs;
        super.onActivityResult(i, i2, intent);
        if (i != 1 || i2 != -1 || intent == null || (listAs = JacksonUtils.readListAs(intent.getStringExtra("itemList"), Item.class)) == null) {
            return;
        }
        this.adapter.clear();
        this.adapter.addAll(listAs);
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        Intent intent = new Intent();
        intent.putExtra("itemList", JacksonUtils.writeAsString(this.adapter.getList()));
        nVActivity.setResult(-1, intent);
    }

    private class Adapter extends NVArrayAdapter<Item> {
        public Adapter(List<Item> list) {
            super(ItemSortFragment.this, Item.class, list);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_sort_list_item, viewGroup, view);
            Item item = getItem(i);
            ((ThumbImageView) viewCreateView.findViewById(R.id.image)).setImageMedia(item.firstMedia());
            ((TextView) viewCreateView.findViewById(R.id.label)).setText(item.label);
            View viewFindViewById = viewCreateView.findViewById(R.id.fans_only_content_indicator);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(item.isFansOnly() ? 0 : 8);
            }
            return viewCreateView;
        }
    }
}
