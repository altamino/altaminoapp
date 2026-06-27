package com.narvii.chat.video.flag;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.amino.mastes.R;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.FlagItemLayout;

/* loaded from: classes2.dex */
public class VVChannelFlagReportDialog extends AlertDialog {
    private boolean isScreenRoom;
    private View.OnClickListener listener;
    private LinearLayout mFlagOptionLayout;

    public VVChannelFlagReportDialog(Context context, boolean z) {
        super(context);
        setContentView(R.layout.flag_report_dialog_layout);
        this.isScreenRoom = z;
        this.mFlagOptionLayout = (LinearLayout) findViewById(R.id.flag_report_options_layout);
        setTitle(getContext().getString(R.string.flag_title));
        setTitleColor(Color.rgb(0, 206, 125));
        addButton(getContext().getString(R.string.cancel), 0, new View.OnClickListener() { // from class: com.narvii.chat.video.flag.VVChannelFlagReportDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VVChannelFlagReportDialog.this.dismiss();
            }
        });
    }

    public void setItemClickListener(View.OnClickListener onClickListener) {
        this.listener = onClickListener;
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

    public void addItem(int i, View.OnClickListener onClickListener) {
        addItem(getContext().getString(i), onClickListener);
    }

    public void addItem(String str, View.OnClickListener onClickListener) {
        addItem(str, Color.rgb(40, 40, 40), onClickListener);
    }

    public void addItem(int i, int i2, View.OnClickListener onClickListener) {
        addItem(getContext().getString(i), i2, onClickListener);
    }

    public void addItem(String str, int i, View.OnClickListener onClickListener) {
        FlagItemLayout flagItemLayout = new FlagItemLayout(getContext());
        flagItemLayout.setLeftText(str);
        flagItemLayout.setLeftTextColor(i);
        if (Build.VERSION.SDK_INT >= 16) {
            flagItemLayout.setBackground(getContext().getResources().getDrawable(R.drawable.dialog_item_green));
        } else {
            flagItemLayout.setBackgroundDrawable(getContext().getResources().getDrawable(R.drawable.dialog_item_green));
        }
        flagItemLayout.setOnClickListener(onClickListener);
        this.mFlagOptionLayout.addView(flagItemLayout);
    }
}
