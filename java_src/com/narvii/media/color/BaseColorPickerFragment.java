package com.narvii.media.color;

import android.os.Bundle;
import android.support.v4.view.ViewCompat;
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
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.HSVColorPickerView;

/* loaded from: classes3.dex */
public abstract class BaseColorPickerFragment extends NVFragment {
    protected EditText colorInput;
    protected MenuItem confirmIcon;
    private int mColor = 0;
    protected HSVColorPickerView mColorPickerView;

    protected abstract int getDefaultColor();

    protected abstract int getLayoutId();

    protected void onColorChanged(int i) {
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(TtmlNode.ATTR_TTS_COLOR, this.mColor);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ((ImageView) getActivity().getActionBar().getCustomView().findViewById(R.id.actionbar_back)).setImageResource(R.drawable.ic_back_cross);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        int i = R.string.save;
        this.confirmIcon = menu.add(0, i, 0, i);
        this.confirmIcon.setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.save) {
            startPickColor();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(getLayoutId(), viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (bundle != null) {
            this.mColor = bundle.getInt(TtmlNode.ATTR_TTS_COLOR);
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
            public void onFocusChange(View view2, boolean z) {
                if (z) {
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
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) throws NumberFormatException {
                if (editable.length() == 6) {
                    BaseColorPickerFragment.this.setColor(Integer.parseInt(BaseColorPickerFragment.this.colorInput.getText().toString(), 16));
                    BaseColorPickerFragment.this.colorInput.clearFocus();
                }
            }
        });
        this.mColorPickerView.setColor(this.mColor);
        this.mColorPickerView.setColorChangedListener(new HSVColorPickerView.OnColorChangedListener() { // from class: com.narvii.media.color.BaseColorPickerFragment.3
            @Override // com.narvii.widget.HSVColorPickerView.OnColorChangedListener
            public void onColorChanged(int i) {
                int i2 = i | ViewCompat.MEASURED_STATE_MASK;
                if (i2 == BaseColorPickerFragment.this.mColor) {
                    return;
                }
                BaseColorPickerFragment.this.mColor = i2;
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

    protected void startPickColor() {
        EditText editText = this.colorInput;
        if (editText == null || editText.getText().length() != 6) {
            NVToast.makeText(getContext(), R.string.invalid_color_code, 0).show();
        } else {
            doPickColor();
        }
    }

    protected void doPickColor() {
        finish();
    }

    public int getColor() {
        return this.mColor;
    }

    protected void setColor(int i) {
        int i2 = i | ViewCompat.MEASURED_STATE_MASK;
        if (i2 == this.mColor) {
            return;
        }
        this.mColor = i2;
        onColorChanged(this.mColor);
        this.mColorPickerView.setColor(this.mColor);
        setHexColorText(this.mColor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHexColorText(int i) {
        String hexString = Integer.toHexString(i & ViewCompat.MEASURED_SIZE_MASK);
        while (hexString.length() < 6) {
            hexString = "0" + hexString;
        }
        this.colorInput.setText(hexString);
    }
}
