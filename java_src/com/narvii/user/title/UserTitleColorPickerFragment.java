package com.narvii.user.title;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.amino.mastes.R;
import com.narvii.media.color.BaseColorPickerFragment;
import com.narvii.model.api.UserTitle;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PaletteUtils;

/* loaded from: classes3.dex */
public class UserTitleColorPickerFragment extends BaseColorPickerFragment {
    private View titlePreview;
    private TextView titlePreviewText;
    private UserTitle userTitle;
    private UserTitleColorHelper userTitleColorHelper;

    @Override // com.narvii.media.color.BaseColorPickerFragment
    protected int getLayoutId() {
        return R.layout.fragment_usertitle_color;
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.userTitleColorHelper = new UserTitleColorHelper(getContext());
        this.userTitle = (UserTitle) JacksonUtils.readAs(getStringParam("userTitle"), UserTitle.class);
        if (this.userTitle == null) {
            Log.e("user title not exist");
            finish();
        }
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment
    protected int getDefaultColor() {
        UserTitle userTitle = this.userTitle;
        int i = userTitle.color;
        return i == 0 ? this.userTitleColorHelper.getTitleColor(userTitle) : i;
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.titlePreview = view.findViewById(R.id.title_preview);
        this.titlePreviewText = (TextView) this.titlePreview.findViewById(R.id.title_tv);
        onColorChanged(getColor());
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment
    protected void doPickColor() {
        Intent intent = new Intent();
        intent.putExtra(TtmlNode.ATTR_TTS_COLOR, getColor());
        this.userTitle.color = getColor();
        intent.putExtra("userTitle", JacksonUtils.writeAsString(this.userTitle));
        setResult(-1, intent);
        finish();
    }

    @Override // com.narvii.media.color.BaseColorPickerFragment
    protected void onColorChanged(int i) {
        if (this.titlePreview != null) {
            this.titlePreviewText.setText(this.userTitle.title);
            this.titlePreviewText.setTextColor(PaletteUtils.isDarkColor(i) ? -1 : -11908534);
            this.titlePreview.setBackgroundColor(i);
        }
    }
}
