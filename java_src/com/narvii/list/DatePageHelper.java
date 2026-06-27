package com.narvii.list;

import com.narvii.date.DateSection;
import com.narvii.lib.R;
import com.narvii.util.DateUtils;
import com.narvii.util.Log;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DatePageHelper {
    protected ArrayList list;
    protected NVPagedAdapter pagedAdapter;
    protected SimpleDateFormat dateFormatWithoutYear = new SimpleDateFormat("MMMM d", Locale.getDefault());
    protected SimpleDateFormat dateFormatWithYear = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());

    public DatePageHelper(NVPagedAdapter nVPagedAdapter) {
        this.pagedAdapter = nVPagedAdapter;
    }

    public void addDateSection() {
        List listRawList = this.pagedAdapter.rawList();
        Date date = null;
        if (listRawList == null) {
            this.list = null;
            return;
        }
        if (listRawList.isEmpty()) {
            this.list = new ArrayList();
            return;
        }
        this.list = new ArrayList();
        for (Object obj : listRawList) {
            if (obj instanceof DateCompare) {
                Date compareDate = ((DateCompare) obj).getCompareDate();
                if (!DateUtils.isSameDay(date, compareDate)) {
                    this.list.add(new DateSection(formatDate(compareDate)));
                }
                this.list.add(obj);
                date = compareDate;
            } else {
                Log.e("object does not implements DateCompare interface");
                return;
            }
        }
    }

    public ArrayList getList() {
        return this.list;
    }

    private String formatDate(Date date) {
        if (date == null) {
            return null;
        }
        if (DateUtils.isToday(date)) {
            return this.pagedAdapter.getContext().getString(R.string.today);
        }
        if (DateUtils.isYesterday(date)) {
            return this.pagedAdapter.getContext().getString(R.string.yesterday);
        }
        if (DateUtils.isSameYear(date)) {
            return this.dateFormatWithoutYear.format(date);
        }
        return this.dateFormatWithYear.format(date);
    }
}
