package com.narvii.broadcast;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.DatePicker;
import android.widget.TextView;
import android.widget.TimePicker;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.util.Log;
import com.narvii.util.ViewUtils;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes2.dex */
public class DeliveryTimePickerFragment extends NVFragment {
    public static final int ONE_HOUR = 3600000;
    private Calendar calendar;
    private View check1;
    private View check2;
    private int currentPosition = 0;
    public Date date;
    DatePicker datePicker;
    private TextView dateTextView;
    View picker;
    TimePicker timePicker;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.delivery_time);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.delivery_time_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onViewCreated(view, bundle);
        this.calendar = Calendar.getInstance();
        int intParam = getIntParam("time", 0);
        this.calendar.setTimeInMillis(intParam == 0 ? System.currentTimeMillis() + 3600000 : intParam * 1000);
        this.date = this.calendar.getTime();
        this.picker = view.findViewById(R.id.picker);
        this.check1 = view.findViewById(R.id.check1);
        this.check2 = view.findViewById(R.id.check2);
        this.dateTextView = (TextView) view.findViewById(R.id.time);
        this.datePicker = (DatePicker) view.findViewById(R.id.date_picker);
        this.timePicker = (TimePicker) view.findViewById(R.id.time_picker);
        this.timePicker.setIs24HourView(false);
        this.timePicker.setCurrentHour(Integer.valueOf(this.calendar.get(11)));
        this.timePicker.setCurrentMinute(Integer.valueOf(this.calendar.get(12)));
        this.timePicker.setOnTimeChangedListener(new TimePicker.OnTimeChangedListener() { // from class: com.narvii.broadcast.DeliveryTimePickerFragment.1
            @Override // android.widget.TimePicker.OnTimeChangedListener
            public void onTimeChanged(TimePicker timePicker, int i, int i2) {
                DeliveryTimePickerFragment.this.calendar.set(DeliveryTimePickerFragment.this.datePicker.getYear(), DeliveryTimePickerFragment.this.datePicker.getMonth(), DeliveryTimePickerFragment.this.datePicker.getDayOfMonth(), i, i2);
                DeliveryTimePickerFragment deliveryTimePickerFragment = DeliveryTimePickerFragment.this;
                deliveryTimePickerFragment.date = deliveryTimePickerFragment.calendar.getTime();
                DeliveryTimePickerFragment.this.resetTime();
            }
        });
        this.datePicker.init(this.calendar.get(1), this.calendar.get(2), this.calendar.get(5), new DatePicker.OnDateChangedListener() { // from class: com.narvii.broadcast.DeliveryTimePickerFragment.2
            @Override // android.widget.DatePicker.OnDateChangedListener
            public void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
                DeliveryTimePickerFragment.this.calendar.set(i, i2, i3, DeliveryTimePickerFragment.this.timePicker.getCurrentHour().intValue(), DeliveryTimePickerFragment.this.timePicker.getCurrentMinute().intValue());
                DeliveryTimePickerFragment deliveryTimePickerFragment = DeliveryTimePickerFragment.this;
                deliveryTimePickerFragment.date = deliveryTimePickerFragment.calendar.getTime();
                DeliveryTimePickerFragment.this.resetTime();
            }
        });
        try {
            this.datePicker.setMinDate(Math.min(this.calendar.getTime().getTime(), System.currentTimeMillis()) - 2000);
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
        try {
            this.datePicker.setMaxDate(System.currentTimeMillis() + 604800000);
        } catch (Exception e2) {
            Log.e(e2.getMessage());
        }
        ((NVActivity) getActivity()).setActionBarRightView(R.string.save, new View.OnClickListener() { // from class: com.narvii.broadcast.DeliveryTimePickerFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (DeliveryTimePickerFragment.this.getActivity() != null) {
                    Intent intent = new Intent();
                    intent.putExtra("time", DeliveryTimePickerFragment.this.currentPosition == 0 ? 0 : (int) (DeliveryTimePickerFragment.this.date.getTime() / 1000));
                    DeliveryTimePickerFragment.this.getActivity().setResult(-1, intent);
                    DeliveryTimePickerFragment.this.getActivity().finish();
                }
            }
        });
        setCurrentPosition(intParam != 0 ? 1 : 0);
        view.findViewById(R.id.immediately_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.broadcast.DeliveryTimePickerFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                DeliveryTimePickerFragment.this.setCurrentPosition(0);
            }
        });
        view.findViewById(R.id.schedule_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.broadcast.DeliveryTimePickerFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                DeliveryTimePickerFragment.this.setCurrentPosition(1);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentPosition(int i) {
        this.currentPosition = i;
        resetTime();
        resetCheckView();
        showTimeView(i == 1);
    }

    private void showTimeView(boolean z) {
        ViewUtils.show(this.dateTextView, z);
        ViewUtils.show(this.picker, z);
    }

    private void resetCheckView() {
        if (this.currentPosition == 0) {
            ViewUtils.show(this.check1, true);
            ViewUtils.show(this.check2, false);
        } else {
            ViewUtils.show(this.check2, true);
            ViewUtils.show(this.check1, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetTime() {
        this.dateTextView.setText(new SimpleDateFormat("MM/dd/yyyy hh:mm a", Locale.getDefault()).format(this.date));
    }
}
