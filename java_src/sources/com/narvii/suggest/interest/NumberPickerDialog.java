package com.narvii.suggest.interest;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.widget.NumberPicker;
import com.narvii.amino.master.R;
import com.narvii.util.Callback;
import com.narvii.util.dialog.AlertDialog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class NumberPickerDialog extends AlertDialog {
    private Callback<Integer> doneCallback;
    private final NumberPicker picker;
    private SparseArray<String> specialDisplays;

    public void setDoneListener(Callback<Integer> callback) {
        this.doneCallback = callback;
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        Callback<Integer> callback = this.doneCallback;
        if (callback != null) {
            callback.call(Integer.valueOf(this.picker.getValue()));
        }
        dismiss();
    }

    public void addSpecialValues(int i10, String str) {
        if (i10 < this.picker.getMinValue() || i10 > this.picker.getMaxValue()) {
            return;
        }
        this.specialDisplays.put(i10, str);
    }

    public void setOnValueChangedListener(NumberPicker.OnValueChangeListener onValueChangeListener) {
        this.picker.setOnValueChangedListener(onValueChangeListener);
    }

    public void setValue(int i10) {
        this.picker.setValue(i10);
    }

    public void setValueRange(int i10, int i11) {
        this.picker.setMaxValue(i11);
        this.picker.setMinValue(i10);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        this.picker.setDisplayedValues(getDisplayedValues());
        super.show();
    }

    public NumberPickerDialog(Context context) {
        super(context);
        this.specialDisplays = new SparseArray<>();
        setContentView(R.layout.number_picker_dialog);
        NumberPicker numberPicker = (NumberPicker) findViewById(R.id.number_picker);
        this.picker = numberPicker;
        numberPicker.setWrapSelectorWheel(false);
        addButton(R.string.done, 0, new View.OnClickListener() { // from class: com.narvii.suggest.interest.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2750a.lambda$new$0(view);
            }
        });
        numberPicker.setDescendantFocusability(393216);
    }
}
