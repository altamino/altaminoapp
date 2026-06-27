package com.narvii.model;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class SlotPoint {
    public static final int ALIGN_BOTTOM_LEAD = 3;
    public static final int ALIGN_BOTTOM_TRAIL = 4;
    public static final int ALIGN_TOP_LEAD = 1;
    public static final int ALIGN_TOP_TRAIL = 2;
    private static final String PATTERN = "x(\\d+)y(\\d+)";
    public int align;
    public int x;
    public int y;

    public static boolean isLegalPoint(int i) {
        return i == 1 || i == 2 || i == 3 || i == 4;
    }

    public SlotPoint() {
    }

    public SlotPoint(Integer num, Integer num2) {
        this.x = num.intValue();
        this.y = num2.intValue();
    }

    public String getSlotKey() {
        return getSlotKey(this.align, this.x, this.y);
    }

    public static String getSlotKey(int i, int i2, int i3) {
        return "a" + i + "x" + i2 + "y" + i3;
    }

    public static List<Integer> getPoint(String str) {
        Matcher matcher = Pattern.compile(PATTERN).matcher(str);
        ArrayList arrayList = new ArrayList();
        while (matcher.find()) {
            arrayList.add(Integer.valueOf(matcher.group(2)));
        }
        return arrayList;
    }

    public boolean isLegalPoint() {
        return isLegalPoint(this.align);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SlotPoint)) {
            return false;
        }
        SlotPoint slotPoint = (SlotPoint) obj;
        return slotPoint.x == this.x && slotPoint.y == this.y && slotPoint.align == this.align;
    }
}
