package com.narvii.user.title;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.media.color.BaseColorPickerFragment;
import com.narvii.model.api.UserTitle;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PaletteUtils;

/* JADX INFO: loaded from: classes9.dex */
public class UserTitleColorPickerFragment extends BaseColorPickerFragment {
    private View titlePreview;
    private TextView titlePreviewText;
    private UserTitle userTitle;
    private UserTitleColorHelper userTitleColorHelper;

    @Override // com.narvii.media.color.BaseColorPickerFragment
    protected int getLayoutId() {
        return R.layout.fragment_usertitle_color;
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment
    protected void doPickColor() {
        Intent intent = new Intent();
        intent.putExtra("color", getColor());
        this.userTitle.color = getColor();
        intent.putExtra("userTitle", JacksonUtils.writeAsString(this.userTitle));
        setResult(-1, intent);
        finish();
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment
    protected int getDefaultColor() {
        UserTitle userTitle = this.userTitle;
        int i10 = userTitle.color;
        return i10 == 0 ? this.userTitleColorHelper.getTitleColor(userTitle) : i10;
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment
    protected void onColorChanged(int i10) {
        if (this.titlePreview != null) {
            this.titlePreviewText.setText(this.userTitle.title);
            this.titlePreviewText.setTextColor(PaletteUtils.isDarkColor(i10) ? -1 : -11908534);
            this.titlePreview.setBackgroundColor(i10);
        }
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.userTitleColorHelper = new UserTitleColorHelper(getContext());
        UserTitle userTitle = (UserTitle) JacksonUtils.readAs(getStringParam("userTitle"), UserTitle.class);
        this.userTitle = userTitle;
        if (userTitle == null) {
            Log.e("user title not exist");
            finish();
        }
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.title_preview);
        this.titlePreview = viewFindViewById;
        this.titlePreviewText = (TextView) viewFindViewById.findViewById(R.id.title_tv);
        onColorChanged(getColor());
    }
}
