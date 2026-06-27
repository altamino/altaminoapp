package com.narvii.chat.video;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;

/* loaded from: classes2.dex */
public class ChannelAutoEndDialog extends AlertDialog {
    private static final int TIME_LEFT_ENDING = 10;
    ChannelEndListener channelEndListener;
    Runnable countDownRunnable;
    private int timeLeft;
    private TextView tvTitle;

    interface ChannelEndListener {
        void onChannelEndClicked();

        void onContinueClicked();
    }

    static /* synthetic */ int access$010(ChannelAutoEndDialog channelAutoEndDialog) {
        int i = channelAutoEndDialog.timeLeft;
        channelAutoEndDialog.timeLeft = i - 1;
        return i;
    }

    public void setChannelEndListener(ChannelEndListener channelEndListener) {
        this.channelEndListener = channelEndListener;
    }

    public ChannelAutoEndDialog(Context context) {
        super(context);
        this.countDownRunnable = new Runnable() { // from class: com.narvii.chat.video.ChannelAutoEndDialog.3
            @Override // java.lang.Runnable
            public void run() {
                ChannelAutoEndDialog.access$010(ChannelAutoEndDialog.this);
                if (ChannelAutoEndDialog.this.timeLeft <= 0) {
                    ChannelAutoEndDialog.this.timeLeft = 0;
                    ChannelEndListener channelEndListener = ChannelAutoEndDialog.this.channelEndListener;
                    if (channelEndListener != null) {
                        channelEndListener.onChannelEndClicked();
                        return;
                    }
                    return;
                }
                ChannelAutoEndDialog.this.tvTitle.setText(ChannelAutoEndDialog.this.getCurTextSpan());
                Utils.postDelayed(this, 1000L);
            }
        };
        this.timeLeft = 10;
        setContentView(R.layout.dialog_channel_ending);
        setCancelable(false);
        this.tvTitle = (TextView) findViewById(R.id.channel_note_title);
        this.tvTitle.setText(getCurTextSpan());
        findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.ChannelAutoEndDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChannelEndListener channelEndListener = ChannelAutoEndDialog.this.channelEndListener;
                if (channelEndListener != null) {
                    channelEndListener.onChannelEndClicked();
                }
                ChannelAutoEndDialog.this.dismiss();
            }
        });
        findViewById(R.id.still_here).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.ChannelAutoEndDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChannelEndListener channelEndListener = ChannelAutoEndDialog.this.channelEndListener;
                if (channelEndListener != null) {
                    channelEndListener.onContinueClicked();
                }
                ChannelAutoEndDialog.this.dismiss();
            }
        });
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        Utils.post(this.countDownRunnable);
        super.show();
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        Utils.handler.removeCallbacks(this.countDownRunnable);
        super.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SpannableStringBuilder getCurTextSpan() {
        String str = getContext().getString(R.string.chat_inactive_hint, String.valueOf(this.timeLeft)) + "s";
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        int iLastIndexOf = str.lastIndexOf(String.valueOf(this.timeLeft));
        spannableStringBuilder.setSpan(new StyleSpan(1), iLastIndexOf, String.valueOf(this.timeLeft).length() + iLastIndexOf, 33);
        return spannableStringBuilder;
    }
}
