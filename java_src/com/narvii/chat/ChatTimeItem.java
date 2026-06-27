package com.narvii.chat;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.Utils;
import java.util.Date;

/* loaded from: classes2.dex */
public class ChatTimeItem extends LinearLayout {
    DateTimeFormatter fmt;
    TextView text;
    Date time;

    public ChatTimeItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.fmt = DateTimeFormatter.getInstance(context);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.text = (TextView) findViewById(R.id.text);
    }

    public void setTime(Date date) {
        if (!Utils.isEquals(date, this.time)) {
            this.text.setText(this.fmt.formatChat(date));
        }
        this.time = date;
    }
}
