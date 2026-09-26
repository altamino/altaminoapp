package com.narvii.broadcast;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.DatePicker;
import android.widget.TextView;
import android.widget.TimePicker;
import androidx.annotation.Nullable;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.util.Log;
import com.narvii.util.ViewUtils;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
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

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentPosition(int i10) {
        this.currentPosition = i10;
        resetTime();
        resetCheckView();
        showTimeView(i10 == 1);
    }

    private void showTimeView(boolean z6) {
        ViewUtils.show(this.dateTextView, z6);
        ViewUtils.show(this.picker, z6);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.delivery_time_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.delivery_time);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        long jCurrentTimeMillis;
        super.onViewCreated(view, bundle);
        this.calendar = Calendar.getInstance();
        int i10 = 0;
        int intParam = getIntParam("time", 0);
        Calendar calendar = this.calendar;
        if (intParam == 0) {
            jCurrentTimeMillis = System.currentTimeMillis() + 3600000;
        } else {
            jCurrentTimeMillis = ((long) intParam) * 1000;
        }
        calendar.setTimeInMillis(jCurrentTimeMillis);
        this.date = this.calendar.getTime();
        this.picker = view.findViewById(R.id.picker);
        this.check1 = view.findViewById(R.id.check1);
        this.check2 = view.findViewById(R.id.check2);
        this.dateTextView = (TextView) view.findViewById(R.id.time);
        this.datePicker = (DatePicker) view.findViewById(R.id.date_picker);
        TimePicker timePicker = (TimePicker) view.findViewById(R.id.time_picker);
        this.timePicker = timePicker;
        timePicker.setIs24HourView(Boolean.FALSE);
        this.timePicker.setCurrentHour(Integer.valueOf(this.calendar.get(11)));
        this.timePicker.setCurrentMinute(Integer.valueOf(this.calendar.get(12)));
        this.timePicker.setOnTimeChangedListener(new TimePicker.OnTimeChangedListener() { // from class: com.narvii.broadcast.DeliveryTimePickerFragment.1
            @Override // android.widget.TimePicker.OnTimeChangedListener
            public void onTimeChanged(TimePicker timePicker2, int i11, int i12) {
                DeliveryTimePickerFragment.this.calendar.set(DeliveryTimePickerFragment.this.datePicker.getYear(), DeliveryTimePickerFragment.this.datePicker.getMonth(), DeliveryTimePickerFragment.this.datePicker.getDayOfMonth(), i11, i12);
                DeliveryTimePickerFragment deliveryTimePickerFragment = DeliveryTimePickerFragment.this;
                deliveryTimePickerFragment.date = deliveryTimePickerFragment.calendar.getTime();
                DeliveryTimePickerFragment.this.resetTime();
            }
        });
        this.datePicker.init(this.calendar.get(1), this.calendar.get(2), this.calendar.get(5), new DatePicker.OnDateChangedListener() { // from class: com.narvii.broadcast.DeliveryTimePickerFragment.2
            @Override // android.widget.DatePicker.OnDateChangedListener
            public void onDateChanged(DatePicker datePicker, int i11, int i12, int i13) {
                DeliveryTimePickerFragment.this.calendar.set(i11, i12, i13, DeliveryTimePickerFragment.this.timePicker.getCurrentHour().intValue(), DeliveryTimePickerFragment.this.timePicker.getCurrentMinute().intValue());
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
        if (intParam != 0) {
            i10 = 1;
        }
        setCurrentPosition(i10);
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
}
