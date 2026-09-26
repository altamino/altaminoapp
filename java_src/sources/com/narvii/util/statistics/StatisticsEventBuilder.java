package com.narvii.util.statistics;

import android.text.TextUtils;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes9.dex */
public class StatisticsEventBuilder {
    public static final Comparator<StatisticsEventBuilder> COMPARATOR = new Comparator() { // from class: com.narvii.util.statistics.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return StatisticsEventBuilder.lambda$static$0((StatisticsEventBuilder) obj, (StatisticsEventBuilder) obj2);
        }
    };
    final String eventName;
    int priority;
    HashMap<String, Object> params = new HashMap<>();
    private ArrayList<String> toStringParams = new ArrayList<>();

    public StatisticsEventBuilder param(String str, int i10) {
        if (str == null) {
            return this;
        }
        this.params.put(str, Integer.valueOf(i10));
        if (this.eventName != null) {
            this.toStringParams.add(str + "=" + i10);
        }
        return this;
    }

    public StatisticsEventBuilder priority(int i10) {
        this.priority = i10;
        return this;
    }

    public StatisticsEventBuilder userProp(String str, int i10) {
        this.toStringParams.add("user[" + str + "]=" + i10);
        return this;
    }

    public StatisticsEventBuilder userPropDec(String str) {
        return userPropInc(str, -1);
    }

    public StatisticsEventBuilder userPropInc(String str, int i10) {
        this.toStringParams.add("user[" + str + "] +" + i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$0(StatisticsEventBuilder statisticsEventBuilder, StatisticsEventBuilder statisticsEventBuilder2) {
        return statisticsEventBuilder2.priority - statisticsEventBuilder.priority;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String str = this.eventName;
        if (str != null) {
            sb.append(str);
            sb.append(": ");
        }
        while (sb.length() < 40) {
            sb.append(' ');
        }
        sb.append(StringUtils.join(this.toStringParams, ", "));
        return sb.toString();
    }

    public StatisticsEventBuilder userProp(String str, float f) {
        this.toStringParams.add("user[" + str + "]=" + f);
        return this;
    }

    public StatisticsEventBuilder userPropInc(String str) {
        return userPropInc(str, 1);
    }

    public StatisticsEventBuilder(String str) {
        this.eventName = str;
    }

    public StatisticsEventBuilder param(String str, float f) {
        if (str == null) {
            return this;
        }
        this.params.put(str, Float.valueOf(f));
        if (this.eventName != null) {
            this.toStringParams.add(str + "=" + f);
        }
        return this;
    }

    public StatisticsEventBuilder source(String str) {
        String str2 = "Others";
        if (TextUtils.isEmpty(str)) {
            param(ExternalPostPreviewFragment.SOURCE, "Others");
        } else {
            int iIndexOf = str.indexOf(59);
            if (iIndexOf < 0) {
                param(ExternalPostPreviewFragment.SOURCE, str);
            } else {
                String strSubstring = str.substring(0, iIndexOf);
                String strSubstring2 = str.substring(iIndexOf + 1);
                if (!TextUtils.isEmpty(strSubstring)) {
                    str2 = strSubstring;
                }
                param(ExternalPostPreviewFragment.SOURCE, str2);
                if (!TextUtils.isEmpty(strSubstring2)) {
                    param("Source2", strSubstring2);
                }
            }
        }
        return this;
    }

    public StatisticsEventBuilder userProp(String str, boolean z6) {
        this.toStringParams.add("user[" + str + "]=" + z6);
        return this;
    }

    public StatisticsEventBuilder userProp(String str, String str2) {
        if (str2 == null) {
            return this;
        }
        this.toStringParams.add("user[" + str + "]=" + str2);
        return this;
    }

    public StatisticsEventBuilder param(String str, boolean z6) {
        if (str == null) {
            return this;
        }
        this.params.put(str, Boolean.valueOf(z6));
        if (this.eventName != null) {
            this.toStringParams.add(str + "=" + z6);
        }
        return this;
    }

    public StatisticsEventBuilder userProp(String str, int[] iArr) {
        if (iArr == null) {
            return this;
        }
        StringBuilder sb = new StringBuilder("user[" + str + "]=[");
        for (int i10 = 0; i10 < iArr.length; i10++) {
            if (i10 > 0) {
                sb.append(b.COMMA);
            }
            sb.append(iArr[i10]);
        }
        sb.append(b.END_LIST);
        this.toStringParams.add(sb.toString());
        return this;
    }

    public StatisticsEventBuilder param(String str, String str2) {
        if (str2 != null && str != null) {
            this.params.put(str, str2);
            if (this.eventName != null) {
                this.toStringParams.add(str + "=" + str2);
            }
        }
        return this;
    }

    public StatisticsEventBuilder userProp(String str, String[] strArr) {
        if (strArr == null) {
            return this;
        }
        StringBuilder sb = new StringBuilder("user[" + str + "]=[");
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (i10 > 0) {
                sb.append(b.COMMA);
            }
            sb.append(strArr[i10]);
        }
        sb.append(b.END_LIST);
        this.toStringParams.add(sb.toString());
        return this;
    }

    public StatisticsEventBuilder userProp(String str, Collection<?> collection) {
        if (collection == null) {
            return this;
        }
        StringBuilder sb = new StringBuilder("user[" + str + "]=[");
        boolean z6 = true;
        for (Object obj : collection) {
            if (z6) {
                sb.append(b.COMMA);
                z6 = false;
            }
            sb.append(obj);
        }
        sb.append(b.END_LIST);
        this.toStringParams.add(sb.toString());
        return this;
    }
}
