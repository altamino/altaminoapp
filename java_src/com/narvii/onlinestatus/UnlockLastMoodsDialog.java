package com.narvii.onlinestatus;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.widget.ListDialog;
import java.util.List;

/* loaded from: classes3.dex */
public class UnlockLastMoodsDialog extends ListDialog {
    List<UnlockItem> list;

    public UnlockLastMoodsDialog(NVContext nVContext, List<UnlockItem> list) {
        super(nVContext);
        this.list = list;
        setListAdapter();
    }

    @Override // com.narvii.widget.ListDialog
    protected NVAdapter createAdapter() {
        MergeAdapter mergeAdapter = new MergeAdapter(this.context);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addLayouts(R.layout.dialog_mood_unlock_title);
        mergeAdapter.addAdapter(staticViewAdapter);
        mergeAdapter.addAdapter(new Adapter(this.context));
        CloseAdapter closeAdapter = new CloseAdapter();
        closeAdapter.addLayouts(R.layout.dialog_mood_unlock_footer);
        mergeAdapter.addAdapter(closeAdapter);
        return mergeAdapter;
    }

    class CloseAdapter extends StaticViewAdapter {
        CloseAdapter() {
        }

        @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i, view, viewGroup);
            view2.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.onlinestatus.UnlockLastMoodsDialog.CloseAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    UnlockLastMoodsDialog.this.dismiss();
                }
            });
            return view2;
        }
    }

    class Adapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<UnlockItem> list = UnlockLastMoodsDialog.this.list;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public UnlockItem getItem(int i) {
            return UnlockLastMoodsDialog.this.list.get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            UnlockItem item = getItem(i);
            View viewCreateView = createView(R.layout.dialog_mood_unlock_last_item, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(item.textId);
            ((TextView) viewCreateView.findViewById(R.id.status)).setText(getContext().getString(R.string.status) + ": " + ((item.numberZeroStatusId == 0 || item.number != 0) ? getContext().getString(item.statusId, Integer.valueOf(item.number)) : getContext().getString(item.numberZeroStatusId)));
            ((ImageView) viewCreateView.findViewById(R.id.check)).setImageResource(item.finished ? R.drawable.check_green : R.drawable.red_oval_stroke);
            return viewCreateView;
        }
    }
}
