package com.narvii.detail;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import java.text.DateFormat;
import java.util.Date;

/* loaded from: classes2.dex */
public class DateDividerItem extends LinearLayout {
    DateFormat dateFormat;
    TextView datetime;
    TextView t1;
    TextView t2;

    public DateDividerItem(Context context) {
        this(context, null);
    }

    public DateDividerItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.dateFormat = DateFormat.getDateInstance(1);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.datetime = (TextView) findViewById(R.id.datetime);
        this.t1 = (TextView) findViewById(R.id.stub1);
        this.t2 = (TextView) findViewById(R.id.stub2);
    }

    public void setDateDivider(DateDivider dateDivider) {
        Date date;
        if (dateDivider == null || (date = dateDivider.date) == null) {
            return;
        }
        this.datetime.setText(getContext().getString(R.string.last_modified_on, this.dateFormat.format(date)));
        String string = getContext().getString(DividerItem.getRandomDividerStringId(dateDivider.id));
        this.t1.setText(string);
        this.t2.setText(string);
    }
}
