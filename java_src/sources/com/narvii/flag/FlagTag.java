package com.narvii.flag;

import android.content.Context;
import android.graphics.Color;
import com.narvii.amino.master.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class FlagTag {
    private boolean containIcon;
    private String flagContent;
    private int flgType;

    public FlagTag(boolean z6, int i10) {
        this.containIcon = z6;
        this.flgType = i10;
    }

    public int getFlagContentStrId(int i10) {
        if (i10 == 0) {
            return R.string.flag_bullying;
        }
        if (i10 == 1) {
            return R.string.flag_inappropriate;
        }
        if (i10 == 2) {
            return R.string.flag_spam;
        }
        if (i10 == 3) {
            return R.string.flag_filter_art_theft;
        }
        if (i10 == 4) {
            return R.string.flag_filter_off_topic;
        }
        if (i10 == 5) {
            return R.string.flag_filter_trolling;
        }
        switch (i10) {
            case 100:
                return R.string.flag_sexually_explicit;
            case 101:
                return R.string.flag_filter_violent_content;
            case 102:
                return R.string.flag_sexually_profile;
            default:
                switch (i10) {
                    case 106:
                        return R.string.flag_violence_graphic_content_or_dangerous_activity;
                    case 107:
                        return R.string.flag_hate_speech_and_bigotry;
                    case 108:
                        return R.string.flag_self_injury_and_suicide;
                    case 109:
                        return R.string.flag_harassment_and_trolling;
                    case 110:
                        return R.string.flag_nudity_and_pornography;
                    default:
                        return R.string.others;
                }
        }
    }

    public boolean isContainIcon() {
        return this.containIcon;
    }

    public FlagTag(boolean z6, String str) {
        this.containIcon = z6;
        this.flgType = 999;
        this.flagContent = str;
    }

    public static List<FlagTag> getFlagTagList(List<Integer> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new FlagTag(false, it.next().intValue()));
        }
        return arrayList;
    }

    public int getBackColor() {
        return Color.rgb(48, 48, 48);
    }

    public String getFlagTypeName(Context context) {
        int i10 = this.flgType;
        if (i10 == 999) {
            return this.flagContent;
        }
        int flagContentStrId = getFlagContentStrId(i10);
        if (flagContentStrId == 0) {
            return null;
        }
        return context.getResources().getString(flagContentStrId);
    }
}
