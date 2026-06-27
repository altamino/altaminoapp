package com.narvii.chat.core;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.util.JacksonUtils;
import java.util.Date;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ThreadCheckInfo.kt */
/* loaded from: classes.dex */
public final class ThreadCheckInfo {
    private Integer alertOption;
    private Date lastReadTime;
    private Date latestActivityTime;
    private String threadId;

    public ThreadCheckInfo() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ ThreadCheckInfo copy$default(ThreadCheckInfo threadCheckInfo, String str, Date date, Date date2, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            str = threadCheckInfo.threadId;
        }
        if ((i & 2) != 0) {
            date = threadCheckInfo.latestActivityTime;
        }
        if ((i & 4) != 0) {
            date2 = threadCheckInfo.lastReadTime;
        }
        if ((i & 8) != 0) {
            num = threadCheckInfo.alertOption;
        }
        return threadCheckInfo.copy(str, date, date2, num);
    }

    public final String component1() {
        return this.threadId;
    }

    public final Date component2() {
        return this.latestActivityTime;
    }

    public final Date component3() {
        return this.lastReadTime;
    }

    public final Integer component4() {
        return this.alertOption;
    }

    public final ThreadCheckInfo copy(String str, @JsonDeserialize(using = JacksonUtils.DateDeserializer.class) @JsonSerialize(using = JacksonUtils.DateSerializer.class) Date date, @JsonDeserialize(using = JacksonUtils.DateDeserializer.class) @JsonSerialize(using = JacksonUtils.DateSerializer.class) Date date2, Integer num) {
        return new ThreadCheckInfo(str, date, date2, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThreadCheckInfo)) {
            return false;
        }
        ThreadCheckInfo threadCheckInfo = (ThreadCheckInfo) obj;
        return Intrinsics.areEqual(this.threadId, threadCheckInfo.threadId) && Intrinsics.areEqual(this.latestActivityTime, threadCheckInfo.latestActivityTime) && Intrinsics.areEqual(this.lastReadTime, threadCheckInfo.lastReadTime) && Intrinsics.areEqual(this.alertOption, threadCheckInfo.alertOption);
    }

    public int hashCode() {
        String str = this.threadId;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Date date = this.latestActivityTime;
        int iHashCode2 = (iHashCode + (date != null ? date.hashCode() : 0)) * 31;
        Date date2 = this.lastReadTime;
        int iHashCode3 = (iHashCode2 + (date2 != null ? date2.hashCode() : 0)) * 31;
        Integer num = this.alertOption;
        return iHashCode3 + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "ThreadCheckInfo(threadId=" + this.threadId + ", latestActivityTime=" + this.latestActivityTime + ", lastReadTime=" + this.lastReadTime + ", alertOption=" + this.alertOption + ")";
    }

    public ThreadCheckInfo(String str, @JsonDeserialize(using = JacksonUtils.DateDeserializer.class) @JsonSerialize(using = JacksonUtils.DateSerializer.class) Date date, @JsonDeserialize(using = JacksonUtils.DateDeserializer.class) @JsonSerialize(using = JacksonUtils.DateSerializer.class) Date date2, Integer num) {
        this.threadId = str;
        this.latestActivityTime = date;
        this.lastReadTime = date2;
        this.alertOption = num;
    }

    public final String getThreadId() {
        return this.threadId;
    }

    public final void setThreadId(String str) {
        this.threadId = str;
    }

    public final Date getLatestActivityTime() {
        return this.latestActivityTime;
    }

    public final void setLatestActivityTime(Date date) {
        this.latestActivityTime = date;
    }

    public final Date getLastReadTime() {
        return this.lastReadTime;
    }

    public final void setLastReadTime(Date date) {
        this.lastReadTime = date;
    }

    public /* synthetic */ ThreadCheckInfo(String str, Date date, Date date2, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : date, (i & 4) != 0 ? null : date2, (i & 8) != 0 ? null : num);
    }

    public final Integer getAlertOption() {
        return this.alertOption;
    }

    public final void setAlertOption(Integer num) {
        this.alertOption = num;
    }

    public final boolean hasUnreadMessage() {
        Date date = this.latestActivityTime;
        if (date == null) {
            return false;
        }
        Date date2 = this.lastReadTime;
        if (date2 == null) {
            return true;
        }
        if (date2 != null) {
            return date2.before(date);
        }
        return false;
    }
}
