package com.narvii.model;

import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes8.dex */
public class SlotPoint {
    public static final int ALIGN_BOTTOM_LEAD = 3;
    public static final int ALIGN_BOTTOM_TRAIL = 4;
    public static final int ALIGN_TOP_LEAD = 1;
    public static final int ALIGN_TOP_TRAIL = 2;
    private static final String PATTERN = "x(\\d+)y(\\d+)";
    public int align;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2488x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2489y;

    public SlotPoint() {
    }

    public static boolean isLegalPoint(int i10) {
        return i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4;
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
        return slotPoint.f2488x == this.f2488x && slotPoint.f2489y == this.f2489y && slotPoint.align == this.align;
    }

    public String getSlotKey() {
        return getSlotKey(this.align, this.f2488x, this.f2489y);
    }

    public SlotPoint(Integer num, Integer num2) {
        this.f2488x = num.intValue();
        this.f2489y = num2.intValue();
    }

    public static String getSlotKey(int i10, int i11, int i12) {
        return CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY + i10 + "x" + i11 + "y" + i12;
    }

    public boolean isLegalPoint() {
        return isLegalPoint(this.align);
    }

    public static List<Integer> getPoint(String str) {
        Matcher matcher = Pattern.compile(PATTERN).matcher(str);
        ArrayList arrayList = new ArrayList();
        while (matcher.find()) {
            arrayList.add(Integer.valueOf(matcher.group(2)));
        }
        return arrayList;
    }
}
