package com.narvii.media.color;

import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.HSVColorPickerView;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseColorPickerFragment extends NVFragment {
    protected EditText colorInput;
    protected MenuItem confirmIcon;
    private int mColor = 0;
    protected HSVColorPickerView mColorPickerView;

    public int getColor() {
        return this.mColor;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    protected abstract int getDefaultColor();

    protected abstract int getLayoutId();

    protected void onColorChanged(int i10) {
    }

    protected void setColor(int i10) {
        int i11 = i10 | ViewCompat.MEASURED_STATE_MASK;
        if (i11 == this.mColor) {
            return;
        }
        this.mColor = i11;
        onColorChanged(i11);
        this.mColorPickerView.setColor(this.mColor);
        setHexColorText(this.mColor);
    }

    protected void startPickColor() {
        EditText editText = this.colorInput;
        if (editText == null || editText.getText().length() != 6) {
            NVToast.makeText(getContext(), R.string.invalid_color_code, 0).show();
        } else {
            doPickColor();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHexColorText(int i10) {
        String hexString = Integer.toHexString(i10 & ViewCompat.MEASURED_SIZE_MASK);
        while (hexString.length() < 6) {
            hexString = "0" + hexString;
        }
        this.colorInput.setText(hexString);
    }

    protected void doPickColor() {
        finish();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        ((ImageView) getActivity().getActionBar().getCustomView().findViewById(R.id.actionbar_back)).setImageResource(R.drawable.ic_back_cross);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        int i10 = R.string.save;
        MenuItem menuItemAdd = menu.add(0, i10, 0, i10);
        this.confirmIcon = menuItemAdd;
        menuItemAdd.setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(getLayoutId(), viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.save) {
            startPickColor();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("color", this.mColor);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (bundle != null) {
            this.mColor = bundle.getInt("color");
        } else {
            this.mColor = getDefaultColor();
        }
        View viewInflate = getLayoutInflater().inflate(R.layout.color_picker_actionbar_layout, (ViewGroup) null);
        setActionBarTitleView(viewInflate);
        this.colorInput = (EditText) viewInflate.findViewById(R.id.color_input);
        this.mColorPickerView = (HSVColorPickerView) view.findViewById(R.id.hsv_color_picker);
        this.colorInput.setFilters(new InputFilter[]{new HexadecimalInputFilter(true), new InputFilter.LengthFilter(6)});
        this.colorInput.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.narvii.media.color.BaseColorPickerFragment.1
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view2, boolean z6) {
                if (z6) {
                    BaseColorPickerFragment.this.colorInput.setBackgroundColor(855638016);
                    BaseColorPickerFragment.this.colorInput.getLayoutParams().width = (int) ((BaseColorPickerFragment.this.colorInput.getTextSize() * 6.0f) + Utils.dpToPx(BaseColorPickerFragment.this.getContext(), 16.0f));
                } else {
                    BaseColorPickerFragment baseColorPickerFragment = BaseColorPickerFragment.this;
                    baseColorPickerFragment.setHexColorText(baseColorPickerFragment.mColor);
                    BaseColorPickerFragment.this.colorInput.setBackgroundColor(0);
                    BaseColorPickerFragment.this.colorInput.getLayoutParams().width = -2;
                    BaseColorPickerFragment.this.colorInput.requestLayout();
                    SoftKeyboard.hideSoftKeyboard(BaseColorPickerFragment.this.getContext());
                }
            }
        });
        this.colorInput.addTextChangedListener(new TextWatcher() { // from class: com.narvii.media.color.BaseColorPickerFragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 6) {
                    BaseColorPickerFragment.this.setColor(Integer.parseInt(BaseColorPickerFragment.this.colorInput.getText().toString(), 16));
                    BaseColorPickerFragment.this.colorInput.clearFocus();
                }
            }
        });
        this.mColorPickerView.setColor(this.mColor);
        this.mColorPickerView.setColorChangedListener(new HSVColorPickerView.OnColorChangedListener() { // from class: com.narvii.media.color.BaseColorPickerFragment.3
            @Override // com.narvii.widget.HSVColorPickerView.OnColorChangedListener
            public void onColorChanged(int i10) {
                int i11 = i10 | ViewCompat.MEASURED_STATE_MASK;
                if (i11 == BaseColorPickerFragment.this.mColor) {
                    return;
                }
                BaseColorPickerFragment.this.mColor = i11;
                BaseColorPickerFragment baseColorPickerFragment = BaseColorPickerFragment.this;
                baseColorPickerFragment.onColorChanged(baseColorPickerFragment.mColor);
                BaseColorPickerFragment baseColorPickerFragment2 = BaseColorPickerFragment.this;
                baseColorPickerFragment2.setHexColorText(baseColorPickerFragment2.mColor);
            }
        });
        getView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.color.BaseColorPickerFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                BaseColorPickerFragment.this.colorInput.clearFocus();
            }
        });
        setHexColorText(this.mColor);
    }
}
