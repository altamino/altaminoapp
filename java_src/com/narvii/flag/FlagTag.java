package com.narvii.flag;

import android.content.Context;
import android.graphics.Color;
import com.narvii.amino.mastes.R;
import com.narvii.flag.model.Flag;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class FlagTag {
    private boolean containIcon;
    private String flagContent;
    private int flgType;

    public int getFlagContentStrId(int i) {
        if (i == 0) {
            return R.string.flag_bullying;
        }
        if (i == 1) {
            return R.string.flag_inappropriate;
        }
        if (i == 2) {
            return R.string.flag_spam;
        }
        if (i == 3) {
            return R.string.flag_filter_art_theft;
        }
        if (i == 4) {
            return R.string.flag_filter_off_topic;
        }
        if (i == 5) {
            return R.string.flag_filter_trolling;
        }
        switch (i) {
            case 100:
                return R.string.flag_sexually_explicit;
            case 101:
                return R.string.flag_filter_violent_content;
            case 102:
                return R.string.flag_sexually_profile;
            default:
                switch (i) {
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

    public FlagTag(boolean z, int i) {
        this.containIcon = z;
        this.flgType = i;
    }

    public FlagTag(boolean z, String str) {
        this.containIcon = z;
        this.flgType = Flag.TYPE_NONE;
        this.flagContent = str;
    }

    public String getFlagTypeName(Context context) {
        int i = this.flgType;
        if (i == 999) {
            return this.flagContent;
        }
        int flagContentStrId = getFlagContentStrId(i);
        if (flagContentStrId == 0) {
            return null;
        }
        return context.getResources().getString(flagContentStrId);
    }

    public int getBackColor() {
        return Color.rgb(48, 48, 48);
    }

    public boolean isContainIcon() {
        return this.containIcon;
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
}
