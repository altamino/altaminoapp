package com.narvii.util.dialog;

import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class SingleChoiceDialog extends AlertDialog {
    private int itemLayoutId;
    private boolean showIndicator;
    SingleChoiceDialogCallBack singleChoiceDialogCallBack;

    public interface SingleChoiceDialogCallBack {
        void onItemSelected(SingleChoiceDialog singleChoiceDialog, View view, int i, String str);
    }

    private SingleChoiceDialog(NVContext nVContext) {
        super(nVContext.getContext());
    }

    public void setItemLayoutId(int i) {
        if (i == 0) {
            this.itemLayoutId = R.layout.item_choice_layout;
        } else {
            this.itemLayoutId = i;
        }
    }

    public void setShowIndicator(boolean z) {
        this.showIndicator = z;
    }

    @Override // com.narvii.util.dialog.AlertDialog, android.app.Dialog
    public void setContentView(int i) {
        if (i == 0) {
            i = R.layout.dialog_single_choice_default_layout;
        }
        super.setContentView(i);
    }

    public void setSingleChoiceDialogCallBack(SingleChoiceDialogCallBack singleChoiceDialogCallBack) {
        this.singleChoiceDialogCallBack = singleChoiceDialogCallBack;
    }

    public void addItems(int[] iArr) throws Resources.NotFoundException {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        View viewFindViewById = this.content.findViewById(R.id.dialog_item_container);
        if (viewFindViewById instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) viewFindViewById;
            viewGroup.removeAllViews();
            for (int i = 0; i < iArr.length; i++) {
                View viewInflate = LayoutInflater.from(getContext()).inflate(this.itemLayoutId, (ViewGroup) null);
                final String string = getContext().getResources().getString(iArr[i]);
                if (!TextUtils.isEmpty(string)) {
                    View viewFindViewById2 = viewInflate.findViewById(R.id.choice_name);
                    if (viewFindViewById2 instanceof TextView) {
                        ((TextView) viewFindViewById2).setText(string);
                    }
                    viewInflate.findViewById(R.id.choice_indicator).setVisibility(this.showIndicator ? 0 : 4);
                    final int i2 = iArr[i];
                    viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.util.dialog.SingleChoiceDialog.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            SingleChoiceDialog singleChoiceDialog = SingleChoiceDialog.this;
                            SingleChoiceDialogCallBack singleChoiceDialogCallBack = singleChoiceDialog.singleChoiceDialogCallBack;
                            if (singleChoiceDialogCallBack != null) {
                                singleChoiceDialogCallBack.onItemSelected(singleChoiceDialog, view, i2, string);
                            }
                        }
                    });
                    viewGroup.addView(viewInflate);
                }
            }
        }
    }

    public static class Builder {
        private SingleChoiceDialogCallBack callBack;
        SingleChoiceDialog dialog;
        private int itemLayoutId;
        private int[] itemNames;
        private int parentLayoutId;
        private boolean showIndicator;
        private String title;
        private int titleColor;

        public Builder(NVContext nVContext) {
            this.dialog = new SingleChoiceDialog(nVContext);
        }

        public Builder setContainerLayoutId(int i) {
            this.parentLayoutId = i;
            return this;
        }

        public Builder setTitle(String str) {
            this.title = str;
            return this;
        }

        public Builder setItemLayoutId(int i) {
            this.itemLayoutId = i;
            return this;
        }

        public Builder addItems(int[] iArr) {
            this.itemNames = iArr;
            return this;
        }

        public Builder setShowIndicator(boolean z) {
            this.showIndicator = z;
            return this;
        }

        public Builder setSingleChoiceCallBack(SingleChoiceDialogCallBack singleChoiceDialogCallBack) {
            this.callBack = singleChoiceDialogCallBack;
            return this;
        }

        public Builder addButton(int i, int i2, View.OnClickListener onClickListener) {
            this.dialog.addButton(i, i2, onClickListener);
            return this;
        }

        public Builder setTitleColor(int i) {
            this.titleColor = i;
            return this;
        }

        public SingleChoiceDialog builder() throws Resources.NotFoundException {
            this.dialog.setTitle(this.title);
            this.dialog.setTitleColor(this.titleColor);
            this.dialog.setContentView(this.parentLayoutId);
            this.dialog.setItemLayoutId(this.itemLayoutId);
            this.dialog.addItems(this.itemNames);
            this.dialog.setShowIndicator(this.showIndicator);
            this.dialog.setSingleChoiceDialogCallBack(this.callBack);
            return this.dialog;
        }
    }
}
