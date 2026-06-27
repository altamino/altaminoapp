package com.narvii.suggest.interest;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.widget.NumberPicker;
import com.narvii.amino.mastes.R;
import com.narvii.util.Callback;
import com.narvii.util.dialog.AlertDialog;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class NumberPickerDialog extends AlertDialog {
    private Callback<Integer> doneCallback;
    private final NumberPicker picker;
    private SparseArray<String> specialDisplays;

    public NumberPickerDialog(Context context) {
        super(context);
        this.specialDisplays = new SparseArray<>();
        setContentView(R.layout.number_picker_dialog);
        this.picker = (NumberPicker) findViewById(R.id.number_picker);
        this.picker.setWrapSelectorWheel(false);
        addButton(R.string.done, 0, new View.OnClickListener() { // from class: com.narvii.suggest.interest.-$$Lambda$NumberPickerDialog$oZSDX9bWagOE3m2oUvP4qbDsjM8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0$NumberPickerDialog(view);
            }
        });
        this.picker.setDescendantFocusability(393216);
    }

    public /* synthetic */ void lambda$new$0$NumberPickerDialog(View view) {
        Callback<Integer> callback = this.doneCallback;
        if (callback != null) {
            callback.call(Integer.valueOf(this.picker.getValue()));
        }
        dismiss();
    }

    public void setValueRange(int i, int i2) {
        this.picker.setMaxValue(i2);
        this.picker.setMinValue(i);
    }

    public void addSpecialValues(int i, String str) {
        if (i < this.picker.getMinValue() || i > this.picker.getMaxValue()) {
            return;
        }
        this.specialDisplays.put(i, str);
    }

    private String[] getDisplayedValues() {
        int maxValue = this.picker.getMaxValue();
        ArrayList arrayList = new ArrayList();
        for (int minValue = this.picker.getMinValue(); minValue <= maxValue; minValue++) {
            String str = this.specialDisplays.get(minValue);
            if (str == null) {
                arrayList.add(String.valueOf(minValue));
            } else {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        this.picker.setDisplayedValues(getDisplayedValues());
        super.show();
    }

    public void setValue(int i) {
        this.picker.setValue(i);
    }

    public void setDoneListener(Callback<Integer> callback) {
        this.doneCallback = callback;
    }

    public void setOnValueChangedListener(NumberPicker.OnValueChangeListener onValueChangeListener) {
        this.picker.setOnValueChangedListener(onValueChangeListener);
    }
}
