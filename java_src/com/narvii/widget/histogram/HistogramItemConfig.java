package com.narvii.widget.histogram;

import android.graphics.Color;
import android.graphics.Rect;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes3.dex */
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

    public HistogramItemConfig(Builder builder) {
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

    public Date getDate() {
        return this.builder.date;
    }

    public String getDateString(String str) {
        return new SimpleDateFormat(str, Locale.US).format(this.builder.date);
    }

    public void setDisplayRect(Rect rect) {
        this.displayRect = rect;
        for (int i = 0; i < this.sectionCount; i++) {
            this.sectionRects.add(new Rect(rect));
        }
    }

    public ItemRectConfig getRectToDraw(float f) {
        return getRectToDraw(f, false);
    }

    public ItemRectConfig getRectToDraw(float f, boolean z) {
        double d;
        double d2 = this.totalValue;
        double d3 = f;
        Double.isNaN(d3);
        double d4 = d2 * d3;
        float f2 = 0.0f;
        int i = 0;
        float f3 = 0.0f;
        while (true) {
            if (i >= this.sectionCount) {
                i = 0;
                break;
            }
            double d5 = f3;
            double dDoubleValue = this.sectionValueList.get(i).doubleValue();
            Double.isNaN(d5);
            f3 = (float) (d5 + dDoubleValue);
            if (d4 <= f3) {
                break;
            }
            i++;
        }
        int i2 = 0;
        for (int i3 = 0; i3 <= i; i3++) {
            Rect rect = this.sectionRects.get(i3);
            if (i2 > 0) {
                rect.bottom = i2;
            }
            Rect rect2 = this.displayRect;
            int i4 = rect2.bottom;
            double dHeight = rect2.height();
            if (i3 == i) {
                d = d3;
            } else {
                double d6 = f2;
                double dDoubleValue2 = this.sectionPercentageList.get(i3).doubleValue();
                Double.isNaN(d6);
                d = d6 + dDoubleValue2;
            }
            Double.isNaN(dHeight);
            rect.top = i4 - ((int) (dHeight * d));
            i2 = rect.top;
            double d7 = f2;
            double dDoubleValue3 = this.sectionPercentageList.get(i3).doubleValue();
            Double.isNaN(d7);
            f2 = (float) (d7 + dDoubleValue3);
            if (rect.top < rect.bottom) {
                this.rectConfig.rectToDraw[i3] = rect;
                int iIntValue = this.sectionColorList.get(i3).intValue();
                int[] iArr = this.rectConfig.paintColors;
                if (z) {
                    iIntValue = Color.argb(255, Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue));
                }
                iArr[i3] = iIntValue;
            } else {
                ItemRectConfig itemRectConfig = this.rectConfig;
                itemRectConfig.rectToDraw[i3] = null;
                itemRectConfig.paintColors[i3] = 0;
            }
        }
        while (true) {
            i++;
            if (i < this.sectionCount) {
                ItemRectConfig itemRectConfig2 = this.rectConfig;
                itemRectConfig2.rectToDraw[i] = null;
                itemRectConfig2.paintColors[i] = 0;
            } else {
                return this.rectConfig;
            }
        }
    }

    public static class ItemRectConfig {
        public int[] paintColors;
        public Rect[] rectToDraw;
        public int typeCount;

        public ItemRectConfig(int i) {
            this.typeCount = i;
            this.rectToDraw = new Rect[i];
            this.paintColors = new int[i];
        }
    }

    public static class Builder {
        Date date;
        ArrayList<Double> sectionValues = new ArrayList<>();
        ArrayList<Integer> sectionColors = new ArrayList<>();
        float totalValue = 0.0f;
        int sectionCount = 0;

        public Builder(Date date) {
            this.date = date;
        }

        public Builder addSection(double d, int i) {
            this.sectionValues.add(Double.valueOf(d));
            this.sectionColors.add(Integer.valueOf(i));
            double d2 = this.totalValue;
            Double.isNaN(d2);
            this.totalValue = (float) (d2 + d);
            this.sectionCount++;
            return this;
        }

        public HistogramItemConfig build() {
            return new HistogramItemConfig(this);
        }
    }
}
