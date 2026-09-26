package com.narvii.chat.video.flag;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.LinearLayout;
import androidx.compose.runtime.ComposerKt;
import com.narvii.amino.master.R;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.FlagItemLayout;

/* JADX INFO: loaded from: classes6.dex */
public class VVChannelFlagReportDialog extends AlertDialog {
    private boolean isScreenRoom;
    private View.OnClickListener listener;
    private LinearLayout mFlagOptionLayout;

    public void addItem(int i10, View.OnClickListener onClickListener) {
        addItem(getContext().getString(i10), onClickListener);
    }

    public void setItemClickListener(View.OnClickListener onClickListener) {
        this.listener = onClickListener;
    }

    public void addItem(String str, View.OnClickListener onClickListener) {
        addItem(str, Color.rgb(40, 40, 40), onClickListener);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        LinearLayout linearLayout = this.mFlagOptionLayout;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
            addItem(R.string.flag_violence_graphic_content_or_dangerous_activity, this.listener);
            addItem(R.string.flag_hate_speech_and_bigotry, this.listener);
            addItem(R.string.flag_self_injury_and_suicide, this.listener);
            addItem(R.string.flag_harassment_and_trolling, this.listener);
            addItem(R.string.flag_nudity_and_pornography, this.listener);
            addItem(R.string.flag_bullying, this.listener);
            addItem(R.string.flag_off_topic, this.listener);
            addItem(R.string.flag_spam, this.listener);
        }
        super.show();
    }

    public VVChannelFlagReportDialog(Context context, boolean z6) {
        super(context);
        setContentView(R.layout.flag_report_dialog_layout);
        this.isScreenRoom = z6;
        this.mFlagOptionLayout = (LinearLayout) findViewById(R.id.flag_report_options_layout);
        setTitle(getContext().getString(R.string.flag_title));
        setTitleColor(Color.rgb(0, ComposerKt.referenceKey, 125));
        addButton(getContext().getString(R.string.cancel), 0, new View.OnClickListener() { // from class: com.narvii.chat.video.flag.VVChannelFlagReportDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VVChannelFlagReportDialog.this.dismiss();
            }
        });
    }

    public void addItem(int i10, int i11, View.OnClickListener onClickListener) {
        addItem(getContext().getString(i10), i11, onClickListener);
    }

    public void addItem(String str, int i10, View.OnClickListener onClickListener) {
        FlagItemLayout flagItemLayout = new FlagItemLayout(getContext());
        flagItemLayout.setLeftText(str);
        flagItemLayout.setLeftTextColor(i10);
        flagItemLayout.setBackground(getContext().getResources().getDrawable(R.drawable.dialog_item_green));
        flagItemLayout.setOnClickListener(onClickListener);
        this.mFlagOptionLayout.addView(flagItemLayout);
    }
}
