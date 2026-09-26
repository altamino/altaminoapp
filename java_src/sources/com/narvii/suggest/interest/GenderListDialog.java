package com.narvii.suggest.interest;

import android.R;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.StringRes;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.util.Callback;
import com.narvii.widget.ListDialog;
import java.util.Arrays;
import java.util.List;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class GenderListDialog extends ListDialog {
    private final Callback<Integer> callback;
    public final List<Integer> genderList;
    private static final int[] STATE_PRESSED = {R.attr.state_pressed};
    private static final int[] STATE_FOCUSED = {R.attr.state_focused};
    private static final int[] STATE_NORMAL = new int[0];
    private static final Integer[] GENDER_ARRAY = {1, 2, 255};

    static class GenderAdapter extends NVAdapter {
        Callback callback;
        List<Integer> genderList;
        LayoutInflater inflater;

        interface Callback {
            void onClickGender(Integer num);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        public void setCallback(Callback callback) {
            this.callback = callback;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<Integer> list = this.genderList;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Integer getItem(int i10) {
            return this.genderList.get(i10);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (view == null) {
                if (this.inflater == null) {
                    this.inflater = LayoutInflater.from(viewGroup.getContext());
                }
                view = this.inflater.inflate(com.narvii.amino.master.R.layout.item_gender_picker, viewGroup, false);
            }
            Integer item = getItem(i10);
            TextView textView = (TextView) view.findViewById(com.narvii.amino.master.R.id.text);
            Integer genderStringRes = GenderListDialog.getGenderStringRes(item);
            if (genderStringRes == null) {
                textView.setText("");
            } else {
                textView.setText(genderStringRes.intValue());
            }
            return view;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, @Nullable View view2) {
            if (!(obj instanceof Integer)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Callback callback = this.callback;
            if (callback == null) {
                return true;
            }
            callback.onClickGender((Integer) obj);
            return true;
        }

        public GenderAdapter(NVContext nVContext, List<Integer> list) {
            super(nVContext);
            this.genderList = list;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).intValue();
        }
    }

    @Override // com.narvii.widget.ListDialog
    protected int layout() {
        return com.narvii.amino.master.R.layout.dialog_list_2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createAdapter$0(Integer num) {
        Callback<Integer> callback = this.callback;
        if (callback != null) {
            callback.call(num);
        }
        dismiss();
    }

    @Override // com.narvii.widget.ListDialog
    protected NVAdapter createAdapter() {
        GenderAdapter genderAdapter = new GenderAdapter(this.context, this.genderList);
        genderAdapter.setCallback(new GenderAdapter.Callback() { // from class: com.narvii.suggest.interest.a
            @Override // com.narvii.suggest.interest.GenderListDialog.GenderAdapter.Callback
            public final void onClickGender(Integer num) {
                this.f2741a.lambda$createAdapter$0(num);
            }
        });
        getListView().setOnItemClickListener(genderAdapter);
        return genderAdapter;
    }

    public Drawable getListSelector() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(STATE_PRESSED, new ColorDrawable(-1644826));
        stateListDrawable.addState(STATE_FOCUSED, new ColorDrawable(-1644826));
        stateListDrawable.addState(STATE_NORMAL, new ColorDrawable(0));
        return stateListDrawable;
    }

    public GenderListDialog(NVContext nVContext, Callback<Integer> callback) {
        super(nVContext, com.narvii.amino.master.R.style.CustomListDialog);
        this.genderList = Arrays.asList(GENDER_ARRAY);
        this.callback = callback;
        this.listView.setSelector(getListSelector());
        setListAdapter();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        this.listView.setLayoutParams(layoutParams);
    }

    @StringRes
    @Nullable
    public static Integer getGenderStringRes(Integer num) {
        int iIntValue = num.intValue();
        if (iIntValue != 1) {
            if (iIntValue != 2) {
                if (iIntValue != 255) {
                    return null;
                }
                return Integer.valueOf(com.narvii.amino.master.R.string.non_binary);
            }
            return Integer.valueOf(com.narvii.amino.master.R.string.female);
        }
        return Integer.valueOf(com.narvii.amino.master.R.string.male);
    }
}
