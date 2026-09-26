package com.narvii.util.dialog;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public class SingleChoiceDialog extends AlertDialog {
    private int itemLayoutId;
    private boolean showIndicator;
    SingleChoiceDialogCallBack singleChoiceDialogCallBack;

    public static class Builder {
        private SingleChoiceDialogCallBack callBack;
        SingleChoiceDialog dialog;
        private int itemLayoutId;
        private int[] itemNames;
        private int parentLayoutId;
        private boolean showIndicator;
        private String title;
        private int titleColor;

        public Builder addItems(int[] iArr) {
            this.itemNames = iArr;
            return this;
        }

        public Builder setContainerLayoutId(int i10) {
            this.parentLayoutId = i10;
            return this;
        }

        public Builder setItemLayoutId(int i10) {
            this.itemLayoutId = i10;
            return this;
        }

        public Builder setShowIndicator(boolean z6) {
            this.showIndicator = z6;
            return this;
        }

        public Builder setSingleChoiceCallBack(SingleChoiceDialogCallBack singleChoiceDialogCallBack) {
            this.callBack = singleChoiceDialogCallBack;
            return this;
        }

        public Builder setTitle(String str) {
            this.title = str;
            return this;
        }

        public Builder setTitleColor(int i10) {
            this.titleColor = i10;
            return this;
        }

        public Builder addButton(int i10, int i11, View.OnClickListener onClickListener) {
            this.dialog.addButton(i10, i11, onClickListener);
            return this;
        }

        public SingleChoiceDialog builder() {
            this.dialog.setTitle(this.title);
            this.dialog.setTitleColor(this.titleColor);
            this.dialog.setContentView(this.parentLayoutId);
            this.dialog.setItemLayoutId(this.itemLayoutId);
            this.dialog.addItems(this.itemNames);
            this.dialog.setShowIndicator(this.showIndicator);
            this.dialog.setSingleChoiceDialogCallBack(this.callBack);
            return this.dialog;
        }

        public Builder(NVContext nVContext) {
            this.dialog = new SingleChoiceDialog(nVContext);
        }
    }

    public interface SingleChoiceDialogCallBack {
        void onItemSelected(SingleChoiceDialog singleChoiceDialog, View view, int i10, String str);
    }

    public void setItemLayoutId(int i10) {
        if (i10 == 0) {
            this.itemLayoutId = R.layout.item_choice_layout;
        } else {
            this.itemLayoutId = i10;
        }
    }

    public void setShowIndicator(boolean z6) {
        this.showIndicator = z6;
    }

    public void setSingleChoiceDialogCallBack(SingleChoiceDialogCallBack singleChoiceDialogCallBack) {
        this.singleChoiceDialogCallBack = singleChoiceDialogCallBack;
    }

    private SingleChoiceDialog(NVContext nVContext) {
        super(nVContext.getContext());
    }

    public void addItems(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        View viewFindViewById = this.content.findViewById(R.id.dialog_item_container);
        if (viewFindViewById instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) viewFindViewById;
            viewGroup.removeAllViews();
            for (int i10 = 0; i10 < iArr.length; i10++) {
                View viewInflate = LayoutInflater.from(getContext()).inflate(this.itemLayoutId, (ViewGroup) null);
                final String string = getContext().getResources().getString(iArr[i10]);
                if (!TextUtils.isEmpty(string)) {
                    View viewFindViewById2 = viewInflate.findViewById(R.id.choice_name);
                    if (viewFindViewById2 instanceof TextView) {
                        ((TextView) viewFindViewById2).setText(string);
                    }
                    viewInflate.findViewById(R.id.choice_indicator).setVisibility(this.showIndicator ? 0 : 4);
                    final int i11 = iArr[i10];
                    viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.util.dialog.SingleChoiceDialog.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            SingleChoiceDialog singleChoiceDialog = SingleChoiceDialog.this;
                            SingleChoiceDialogCallBack singleChoiceDialogCallBack = singleChoiceDialog.singleChoiceDialogCallBack;
                            if (singleChoiceDialogCallBack != null) {
                                singleChoiceDialogCallBack.onItemSelected(singleChoiceDialog, view, i11, string);
                            }
                        }
                    });
                    viewGroup.addView(viewInflate);
                }
            }
        }
    }

    @Override // com.narvii.util.dialog.AlertDialog, android.app.Dialog
    public void setContentView(int i10) {
        if (i10 == 0) {
            i10 = R.layout.dialog_single_choice_default_layout;
        }
        super.setContentView(i10);
    }
}
