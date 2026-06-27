package com.narvii.list.select;

import com.narvii.date.DateSection;
import com.narvii.lib.R;
import com.narvii.list.DateCompare;
import com.narvii.list.DatePageHelper;
import com.narvii.list.NVPagedAdapter;
import com.narvii.util.Callback;
import com.narvii.util.DateUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class SharedPhotoDatePageHelper extends DatePageHelper {
    Callback<ArrayList> addTopCallback;
    protected SimpleDateFormat dateFormatWithYear;
    protected SimpleDateFormat dateFormatWithoutYear;

    public SharedPhotoDatePageHelper(NVPagedAdapter nVPagedAdapter) {
        super(nVPagedAdapter);
        this.dateFormatWithoutYear = new SimpleDateFormat("MMM", Locale.getDefault());
        this.dateFormatWithYear = new SimpleDateFormat("MMM yyyy", Locale.getDefault());
    }

    public SharedPhotoDatePageHelper(NVPagedAdapter nVPagedAdapter, Callback<ArrayList> callback) {
        super(nVPagedAdapter);
        this.dateFormatWithoutYear = new SimpleDateFormat("MMM", Locale.getDefault());
        this.dateFormatWithYear = new SimpleDateFormat("MMM yyyy", Locale.getDefault());
        this.addTopCallback = callback;
    }

    @Override // com.narvii.list.DatePageHelper
    public void addDateSection() {
        List listRawList = this.pagedAdapter.rawList();
        if (listRawList == null) {
            this.list = null;
            return;
        }
        if (listRawList.isEmpty()) {
            this.list = new ArrayList();
            return;
        }
        this.list = new ArrayList();
        DateSection dateSection = new DateSection(this.pagedAdapter.getContext().getString(R.string.latest).toUpperCase(Locale.getDefault()));
        dateSection.first = true;
        this.list.add(dateSection);
        Callback<ArrayList> callback = this.addTopCallback;
        if (callback != null) {
            callback.call(this.list);
        }
        boolean z = false;
        Object obj = listRawList.get(0);
        Date compareDate = obj instanceof DateCompare ? ((DateCompare) obj).getCompareDate() : null;
        this.list.add(obj);
        Date date = null;
        for (int i = 1; i < listRawList.size(); i++) {
            Object obj2 = listRawList.get(i);
            if (obj2 instanceof DateCompare) {
                Date compareDate2 = ((DateCompare) obj2).getCompareDate();
                if (!z && compareDate.getTime() - compareDate2.getTime() <= 604800000) {
                    this.list.add(obj2);
                } else if (!z) {
                    this.list.add(new DateSection(formatDate(compareDate2)));
                    this.list.add(obj2);
                    z = true;
                } else {
                    if (!DateUtils.isSameMonth(date, compareDate2)) {
                        this.list.add(new DateSection(formatDate(compareDate2)));
                    }
                    this.list.add(obj2);
                }
                date = compareDate2;
            }
        }
    }

    private String formatDate(Date date) {
        if (date == null) {
            return null;
        }
        if (DateUtils.isSameYear(date)) {
            return this.dateFormatWithoutYear.format(date).toUpperCase(Locale.getDefault());
        }
        return this.dateFormatWithYear.format(date).toUpperCase(Locale.getDefault());
    }
}
