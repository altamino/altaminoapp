package com.narvii.media.color;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import com.narvii.app.NVActivity;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.theme.ThemePackService;
import com.narvii.util.SoftKeyboard;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class BackgroundColorFragment extends BaseColorPickerFragment {
    private CustomColorPreference customColorPreference;
    private DefaultBackgroundRecyclerView defaultColorRecyclerView;

    @Override // com.narvii.media.color.BaseColorPickerFragment
    protected int getLayoutId() {
        return R.layout.fragment_background_color;
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment
    protected void doPickColor() {
        Intent intent = new Intent();
        intent.putExtra("color", getColor());
        setResult(-1, intent);
        this.customColorPreference.addColorIntoCustomList(getColor());
        SoftKeyboard.hideSoftKeyboard(getContext());
        finish();
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment
    protected int getDefaultColor() {
        int intParam = getIntParam("color");
        if (intParam != 0) {
            return intParam;
        }
        List<Integer> customColorList = this.customColorPreference.getCustomColorList();
        if (customColorList != null && customColorList.size() > 0) {
            return customColorList.get(0).intValue();
        }
        return ((ThemePackService) getService("themePack")).getThemeColor(((ConfigService) getService("config")).getCommunityId());
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        NVActivity nVActivity = (NVActivity) getActivity();
        nVActivity.setActionBarLeftTextView(R.string.cancel);
        nVActivity.setActionBarRightView(R.string.save, new View.OnClickListener() { // from class: com.narvii.media.color.BackgroundColorFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BackgroundColorFragment.this.startPickColor();
            }
        });
        setHasOptionsMenu(false);
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment
    protected void onColorChanged(int i10) {
        getView().setBackgroundColor(i10);
        DefaultBackgroundRecyclerView defaultBackgroundRecyclerView = this.defaultColorRecyclerView;
        if (defaultBackgroundRecyclerView != null) {
            defaultBackgroundRecyclerView.removeCurrentSelectColor();
        }
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.background_color);
        this.customColorPreference = new CustomColorPreference(getContext());
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.defaultColorRecyclerView = (DefaultBackgroundRecyclerView) view.findViewById(R.id.default_background_picker);
        List<Integer> customColorList = this.customColorPreference.getCustomColorList();
        if (customColorList != null && customColorList.size() > 0 && getColor() == customColorList.get(0).intValue()) {
            this.defaultColorRecyclerView.setCurrentSelectColor(getColor());
        }
        this.defaultColorRecyclerView.setCustomColorList(this.customColorPreference.getCustomColorList());
        this.defaultColorRecyclerView.setOnColorSelectedListener(new DefaultBackgroundRecyclerView.OnColorSelectedListener() { // from class: com.narvii.media.color.BackgroundColorFragment.1
            @Override // com.narvii.media.color.DefaultBackgroundRecyclerView.OnColorSelectedListener
            public void onColorSelected(int i10) {
                BackgroundColorFragment.this.setColor(i10);
            }
        });
        getView().setBackgroundColor(getColor());
    }
}
