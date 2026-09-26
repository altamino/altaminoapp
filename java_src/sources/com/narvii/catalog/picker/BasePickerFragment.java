package com.narvii.catalog.picker;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.NVActivity;
import com.narvii.catalog.CatalogThemeFragment;
import com.narvii.list.select.SelectableAdapter;
import com.narvii.model.Item;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
abstract class BasePickerFragment extends CatalogThemeFragment implements FragmentWillFinishListener {
    public static final int MODE_PICK_MULTIPLE = 0;
    public static final int MODE_PICK_SINGLE = 1;
    public static final int MODE_PICK_SINGLE_EXCLUSIVE = 2;
    static final int PICK_REQUEST = 1;
    static final int RESULT_PICK = 2;
    int maximum;
    int mode;
    private SelAdapter sAdapter;
    String title;
    final ArrayList<Item> selection = new ArrayList<>();
    Item singleSelection = null;
    int finishResult = 2;
    boolean canSelectOfficial = true;
    final View.OnClickListener pickListener = new View.OnClickListener() { // from class: com.narvii.catalog.picker.BasePickerFragment.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BasePickerFragment basePickerFragment = BasePickerFragment.this;
            basePickerFragment.finishResult = -1;
            basePickerFragment.finish();
        }
    };

    class SelAdapter extends SelectableAdapter {
        @Override // com.narvii.list.select.SelectableAdapter
        protected boolean canSelect(int i10, Object obj, boolean z6) {
            if (!z6 || BasePickerFragment.this.selection.size() < BasePickerFragment.this.maximum) {
                return true;
            }
            Context context = getContext();
            BasePickerFragment basePickerFragment = BasePickerFragment.this;
            NVToast.makeText(context, basePickerFragment.getString(R.string.catalog_select_maximum, Integer.valueOf(basePickerFragment.maximum)), 0).show();
            return false;
        }

        public SelAdapter() {
            super(BasePickerFragment.this, R.layout.selectable_item_frame, true);
            BasePickerFragment.this.sAdapter = this;
        }

        @Override // com.narvii.list.select.SelectableAdapter
        protected boolean isSelectable(int i10, Object obj) {
            User user;
            if (BasePickerFragment.this.canSelectOfficial || !(obj instanceof Item) || (user = ((Item) obj).author) == null || !user.isSystem()) {
                return obj instanceof Item;
            }
            return false;
        }

        @Override // com.narvii.list.select.SelectableAdapter
        public boolean isSelected(Object obj) {
            return Utils.containsId(BasePickerFragment.this.selection, ((Item) obj).id());
        }

        @Override // com.narvii.list.select.SelectableAdapter
        public void onSelectionChanged(Object obj, boolean z6) {
            BasePickerFragment basePickerFragment = BasePickerFragment.this;
            int i10 = basePickerFragment.mode;
            if (i10 == 1 || i10 == 2) {
                if (z6 || i10 != 2) {
                    basePickerFragment.singleSelection = (Item) obj;
                    basePickerFragment.finishResult = -1;
                    basePickerFragment.finish();
                    return;
                }
                return;
            }
            Item item = (Item) obj;
            Utils.removeId(basePickerFragment.selection, item.id());
            if (z6) {
                BasePickerFragment.this.selection.add(item);
            }
            notifyDataSetChanged();
            BasePickerFragment.this.update();
        }
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 != 1 || (!(i11 == 2 || i11 == -1) || intent == null)) {
            super.onActivityResult(i10, i11, intent);
            return;
        }
        int i12 = this.mode;
        if (i12 == 1 || i12 == 2) {
            this.singleSelection = (Item) JacksonUtils.readAs(intent.getStringExtra("item"), Item.class);
            this.finishResult = -1;
            finish();
            return;
        }
        ArrayList listAs = JacksonUtils.readListAs(intent.getStringExtra("itemList"), Item.class);
        if (listAs != null) {
            this.selection.clear();
            this.selection.addAll(listAs);
            this.sAdapter.notifyDataSetChanged();
            update();
        }
        if (i11 == -1) {
            this.finishResult = -1;
            finish();
        } else if (i11 == 2) {
            this.finishResult = 0;
            finish();
        }
    }

    void update() {
        String str;
        int i10 = this.mode;
        if (i10 == 1 || i10 == 2) {
            setActionBarRightView(null);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getString(R.string.pick));
        if (this.selection.size() == 0) {
            str = "";
        } else {
            str = " (" + this.selection.size() + ")";
        }
        sb.append(str);
        setActionBarRightButton(sb.toString(), this.pickListener);
    }

    public void willFinish(NVActivity nVActivity) {
        int i10 = this.mode;
        if ((i10 == 1 || i10 == 2) && this.singleSelection != null) {
            Intent intent = nVActivity.getIntent();
            intent.putExtra("item", JacksonUtils.writeAsString(this.singleSelection));
            nVActivity.setResult(this.finishResult, intent);
        } else if (i10 == 0) {
            if ((this.finishResult == 2 && getBooleanParam("pickOnFinish")) || this.finishResult == -1) {
                Intent intent2 = nVActivity.getIntent();
                intent2.putExtra("itemList", JacksonUtils.writeAsString(this.selection));
                nVActivity.setResult(this.finishResult, intent2);
            }
        }
    }

    BasePickerFragment() {
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ArrayList listAs = JacksonUtils.readListAs(getStringParam("itemList"), Item.class);
        if (listAs != null) {
            this.selection.addAll(listAs);
        }
        this.mode = getIntParam("mode", 0);
        this.title = getStringParam("title");
        this.maximum = getIntParam("maximum", 10);
        this.canSelectOfficial = getBooleanParam("canSelectOfficial", true);
    }

    @Override // com.narvii.catalog.CatalogThemeFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (!TextUtils.isEmpty(this.title)) {
            setTitle(this.title);
        }
        update();
    }
}
