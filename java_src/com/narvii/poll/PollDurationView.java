package com.narvii.poll;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.DateUtils;
import java.util.Date;

/* loaded from: classes3.dex */
public class PollDurationView extends LinearLayout {
    private boolean darkTheme;
    private TextView text1;
    private TextView text2;

    public PollDurationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(R.layout.poll_duration_childs, this);
        this.text1 = (TextView) findViewById(R.id.poll_end_in_n_days);
        this.text2 = (TextView) findViewById(R.id.poll_end_date);
    }

    public void setDarkTheme(boolean z) {
        if (this.darkTheme == z) {
            return;
        }
        this.darkTheme = z;
        this.text1.setTextColor(z ? -1 : -3355444);
        this.text2.setTextColor(z ? -1 : -3355444);
    }

    public void setEndTime(Date date) {
        String string;
        if (date == null) {
            this.text1.setText(R.string.detail_vote_poll_ended);
            this.text2.setVisibility(8);
            return;
        }
        long time = date.getTime() - System.currentTimeMillis();
        if (time < 3600000) {
            string = getContext().getString(R.string.detail_vote_end_in_less_than_one_hours);
        } else if (time < 7200000) {
            string = getContext().getString(R.string.detail_vote_end_in_one_hours);
        } else if (time < DateUtils.ONE_DAY) {
            string = getContext().getString(R.string.detail_vote_end_in_n_hours, Integer.valueOf((int) (time / 3600000)));
        } else if (time < 172800000) {
            string = getContext().getString(R.string.detail_vote_end_in_one_day);
        } else {
            string = getContext().getString(R.string.detail_vote_end_in_n_days, Integer.valueOf(((int) (time / DateUtils.ONE_DAY)) + 1));
        }
        this.text1.setText(string);
        this.text2.setVisibility(0);
        String strEndTime = DateTimeFormatter.getInstance(getContext()).endTime(date);
        this.text2.setText("• " + strEndTime + " •");
    }
}
