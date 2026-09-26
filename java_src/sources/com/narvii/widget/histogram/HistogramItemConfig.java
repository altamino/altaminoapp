package com.narvii.widget.histogram;

import android.graphics.Color;
import android.graphics.Rect;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class HistogramItemConfig {
    private Builder builder;
    public Rect displayRect;
    private ItemRectConfig rectConfig;
    private ArrayList<Integer> sectionColorList;
    private int sectionCount;
    private ArrayList<Double> sectionPercentageList = new ArrayList<>();
    private ArrayList<Rect> sectionRects = new ArrayList<>();
    private ArrayList<Double> sectionValueList;
    public double totalValue;

    public static class Builder {
        Date date;
        ArrayList<Double> sectionValues = new ArrayList<>();
        ArrayList<Integer> sectionColors = new ArrayList<>();
        float totalValue = 0.0f;
        int sectionCount = 0;

        public Builder addSection(double d, @ColorInt int i10) {
            this.sectionValues.add(Double.valueOf(d));
            this.sectionColors.add(Integer.valueOf(i10));
            this.totalValue = (float) (((double) this.totalValue) + d);
            this.sectionCount++;
            return this;
        }

        public HistogramItemConfig build() {
            return new HistogramItemConfig(this);
        }

        public Builder(Date date) {
            this.date = date;
        }
    }

    public ItemRectConfig getRectToDraw(float f) {
        return getRectToDraw(f, false);
    }

    public static class ItemRectConfig {
        public int[] paintColors;
        public Rect[] rectToDraw;
        public int typeCount;

        public ItemRectConfig(int i10) {
            this.typeCount = i10;
            this.rectToDraw = new Rect[i10];
            this.paintColors = new int[i10];
        }
    }

    public Date getDate() {
        return this.builder.date;
    }

    public String getDateString(String str) {
        return new SimpleDateFormat(str, Locale.US).format(this.builder.date);
    }

    public ItemRectConfig getRectToDraw(float f, boolean z6) {
        double d = f;
        double d2 = this.totalValue * d;
        float fDoubleValue = 0.0f;
        int i10 = 0;
        float fDoubleValue2 = 0.0f;
        while (true) {
            if (i10 >= this.sectionCount) {
                i10 = 0;
                break;
            }
            fDoubleValue2 = (float) (((double) fDoubleValue2) + this.sectionValueList.get(i10).doubleValue());
            if (d2 <= fDoubleValue2) {
                break;
            }
            i10++;
        }
        int i11 = 0;
        int iHeight = 0;
        while (i11 <= i10) {
            Rect rect = this.sectionRects.get(i11);
            if (iHeight > 0) {
                rect.bottom = iHeight;
            }
            Rect rect2 = this.displayRect;
            iHeight = rect2.bottom - ((int) (((double) rect2.height()) * (i11 == i10 ? d : ((double) fDoubleValue) + this.sectionPercentageList.get(i11).doubleValue())));
            rect.top = iHeight;
            fDoubleValue = (float) (((double) fDoubleValue) + this.sectionPercentageList.get(i11).doubleValue());
            if (rect.top < rect.bottom) {
                this.rectConfig.rectToDraw[i11] = rect;
                int iIntValue = this.sectionColorList.get(i11).intValue();
                int[] iArr = this.rectConfig.paintColors;
                if (z6) {
                    iIntValue = Color.argb(255, Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue));
                }
                iArr[i11] = iIntValue;
            } else {
                ItemRectConfig itemRectConfig = this.rectConfig;
                itemRectConfig.rectToDraw[i11] = null;
                itemRectConfig.paintColors[i11] = 0;
            }
            i11++;
        }
        while (true) {
            i10++;
            if (i10 >= this.sectionCount) {
                return this.rectConfig;
            }
            ItemRectConfig itemRectConfig2 = this.rectConfig;
            itemRectConfig2.rectToDraw[i10] = null;
            itemRectConfig2.paintColors[i10] = 0;
        }
    }

    public void setDisplayRect(Rect rect) {
        this.displayRect = rect;
        for (int i10 = 0; i10 < this.sectionCount; i10++) {
            this.sectionRects.add(new Rect(rect));
        }
    }

    public HistogramItemConfig(@NonNull Builder builder) {
        this.builder = builder;
        this.sectionCount = builder.sectionCount;
        this.totalValue = builder.totalValue;
        ArrayList<Double> arrayList = builder.sectionValues;
        this.sectionValueList = arrayList;
        this.sectionColorList = builder.sectionColors;
        Iterator<Double> it = arrayList.iterator();
        while (it.hasNext()) {
            this.sectionPercentageList.add(Double.valueOf(it.next().doubleValue() / this.totalValue));
        }
        this.rectConfig = new ItemRectConfig(this.sectionCount);
    }
}
