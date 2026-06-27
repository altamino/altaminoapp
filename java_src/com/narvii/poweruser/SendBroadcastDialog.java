package com.narvii.poweruser;

import android.content.Context;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.style.UnderlineSpan;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.LinkSummary;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;
import java.text.NumberFormat;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes3.dex */
public class SendBroadcastDialog extends AlertDialog {
    EditText content;
    Context context;
    private LinkSummary linkSummary;
    int membersCount;
    NumberFormat numberFormat;
    private NVImageView postImg;
    private TextView postTitle;
    public int time;
    private TextView timeView;

    @Override // com.narvii.util.dialog.AlertDialog
    protected int baseLayoutId() {
        return R.layout.dialog_layout_send_broadcast;
    }

    public SendBroadcastDialog(Context context, LinkSummary linkSummary, int i) {
        super(context);
        this.context = context;
        this.linkSummary = linkSummary;
        this.membersCount = i;
        this.numberFormat = NumberFormat.getInstance(Locale.US);
        AndroidBug5497Workaround.assistActivity(this);
        initView();
    }

    private void initView() {
        ((TextView) findViewById(R.id.audience_title)).setText(this.context.getString(R.string.audience) + ":");
        ((TextView) findViewById(R.id.time_title)).setText(this.context.getString(R.string.delivery_time) + ":");
        ((TextView) findViewById(R.id.audience)).setText(TextUtils.getCountTitle(this.context.getString(R.string.community_all_members), this.membersCount));
        this.timeView = (TextView) findViewById(R.id.time);
        refreshTimeView();
        final TextView textView = (TextView) findViewById(R.id.submit);
        textView.setEnabled(false);
        this.content = (EditText) findViewById(R.id.content);
        this.content.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.poweruser.SendBroadcastDialog.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (view.getId() == R.id.content) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    if ((motionEvent.getAction() & 255) == 1) {
                        view.getParent().requestDisallowInterceptTouchEvent(false);
                    }
                }
                return false;
            }
        });
        this.content.addTextChangedListener(new TextWatcher() { // from class: com.narvii.poweruser.SendBroadcastDialog.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                textView.setEnabled(!android.text.TextUtils.isEmpty(editable.toString()));
            }
        });
        this.postImg = (NVImageView) findViewById(R.id.post_img);
        this.postTitle = (TextView) findViewById(R.id.post_title);
        LinkSummary linkSummary = this.linkSummary;
        if (linkSummary != null) {
            this.postImg.setImageMedia(linkSummary.getFirstMedia());
            this.postTitle.setText(this.linkSummary.getTitle());
        }
    }

    private void refreshTimeView() {
        if (this.timeView == null) {
            return;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(this.time * 1000);
        String string = this.time == 0 ? this.context.getString(R.string.asap) : Utils.formatDeliveryTime(calendar.getTime());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        spannableStringBuilder.setSpan(new UnderlineSpan(), 0, string.length(), 0);
        this.timeView.setText(spannableStringBuilder);
    }

    public void setTime(int i) {
        this.time = i;
        refreshTimeView();
    }
}
