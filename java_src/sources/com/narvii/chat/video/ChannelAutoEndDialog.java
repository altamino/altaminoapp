package com.narvii.chat.video;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.TextView;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;

/* JADX INFO: loaded from: classes4.dex */
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

    public void setChannelEndListener(ChannelEndListener channelEndListener) {
        this.channelEndListener = channelEndListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SpannableStringBuilder getCurTextSpan() {
        String str = getContext().getString(R.string.chat_inactive_hint, String.valueOf(this.timeLeft)) + CmcdHeadersFactory.STREAMING_FORMAT_SS;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        int iLastIndexOf = str.lastIndexOf(String.valueOf(this.timeLeft));
        spannableStringBuilder.setSpan(new StyleSpan(1), iLastIndexOf, String.valueOf(this.timeLeft).length() + iLastIndexOf, 33);
        return spannableStringBuilder;
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        Utils.handler.removeCallbacks(this.countDownRunnable);
        super.dismiss();
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        Utils.post(this.countDownRunnable);
        super.show();
    }

    public ChannelAutoEndDialog(Context context) {
        super(context);
        this.countDownRunnable = new Runnable() { // from class: com.narvii.chat.video.ChannelAutoEndDialog.3
            @Override // java.lang.Runnable
            public void run() {
                ChannelAutoEndDialog.this.timeLeft--;
                if (ChannelAutoEndDialog.this.timeLeft > 0) {
                    ChannelAutoEndDialog.this.tvTitle.setText(ChannelAutoEndDialog.this.getCurTextSpan());
                    Utils.postDelayed(this, 1000L);
                    return;
                }
                ChannelAutoEndDialog.this.timeLeft = 0;
                ChannelEndListener channelEndListener = ChannelAutoEndDialog.this.channelEndListener;
                if (channelEndListener != null) {
                    channelEndListener.onChannelEndClicked();
                }
            }
        };
        this.timeLeft = 10;
        setContentView(R.layout.dialog_channel_ending);
        setCancelable(false);
        TextView textView = (TextView) findViewById(R.id.channel_note_title);
        this.tvTitle = textView;
        textView.setText(getCurTextSpan());
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
}
