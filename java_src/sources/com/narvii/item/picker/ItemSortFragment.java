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
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
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
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ItemSortFragment extends DragSortListFragment<Item> implements FragmentWillFinishListener {
    static final int PICK_ITEM_REQUEST = 1;
    Adapter adapter;

    private class Adapter extends NVArrayAdapter<Item> {
        public Adapter(List<Item> list) {
            super(ItemSortFragment.this, Item.class, list);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            View viewCreateView = createView(R.layout.item_sort_list_item, viewGroup, view);
            Item item = getItem(i10);
            ((ThumbImageView) viewCreateView.findViewById(R.id.image)).setImageMedia(item.firstMedia());
            ((TextView) viewCreateView.findViewById(R.id.label)).setText(item.label);
            View viewFindViewById = viewCreateView.findViewById(R.id.fans_only_content_indicator);
            if (viewFindViewById != null) {
                if (item.isFansOnly()) {
                    i11 = 0;
                } else {
                    i11 = 8;
                }
                viewFindViewById.setVisibility(i11);
            }
            return viewCreateView;
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment
    public NVArrayAdapter<Item> createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter(bundle == null ? JacksonUtils.readListAs(getStringParam("itemList"), Item.class) : null);
        this.adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        Intent intent = new Intent();
        intent.putExtra("itemList", JacksonUtils.writeAsString(this.adapter.getList()));
        nVActivity.setResult(-1, intent);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        ArrayList listAs;
        super.onActivityResult(i10, i11, intent);
        if (i10 == 1 && i11 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("itemList"), Item.class)) != null) {
            this.adapter.clear();
            this.adapter.addAll(listAs);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(getString(R.string.item_picker_title));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        View viewInflate = getLayoutInflater(null).inflate(R.layout.item_add_more_list_item, (ViewGroup) getListView(), false);
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.item.picker.ItemSortFragment.1
            public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivityForResult(p1, p5);
            }

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
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(ItemSortFragment.this, intent, 1);
            }
        });
        listView.addFooterView(viewInflate, null, true);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
