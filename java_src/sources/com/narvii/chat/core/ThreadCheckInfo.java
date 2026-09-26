package com.narvii.chat.core;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.util.JacksonUtils;
import java.util.Date;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class ThreadCheckInfo {

    @Nullable
    private Integer alertOption;

    @Nullable
    private Date lastReadTime;

    @Nullable
    private Date latestActivityTime;

    @Nullable
    private String threadId;

    public ThreadCheckInfo() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ ThreadCheckInfo copy$default(ThreadCheckInfo threadCheckInfo, String str, Date date, Date date2, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = threadCheckInfo.threadId;
        }
        if ((i10 & 2) != 0) {
            date = threadCheckInfo.latestActivityTime;
        }
        if ((i10 & 4) != 0) {
            date2 = threadCheckInfo.lastReadTime;
        }
        if ((i10 & 8) != 0) {
            num = threadCheckInfo.alertOption;
        }
        return threadCheckInfo.copy(str, date, date2, num);
    }

    @Nullable
    public final String component1() {
        return this.threadId;
    }

    @Nullable
    public final Date component2() {
        return this.latestActivityTime;
    }

    @Nullable
    public final Date component3() {
        return this.lastReadTime;
    }

    @Nullable
    public final Integer component4() {
        return this.alertOption;
    }

    @NotNull
    public final ThreadCheckInfo copy(@Nullable String str, @JsonDeserialize(using = JacksonUtils.DateDeserializer.class) @JsonSerialize(using = JacksonUtils.DateSerializer.class) @Nullable Date date, @JsonDeserialize(using = JacksonUtils.DateDeserializer.class) @JsonSerialize(using = JacksonUtils.DateSerializer.class) @Nullable Date date2, @Nullable Integer num) {
        return new ThreadCheckInfo(str, date, date2, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThreadCheckInfo)) {
            return false;
        }
        ThreadCheckInfo threadCheckInfo = (ThreadCheckInfo) obj;
        return t.e(this.threadId, threadCheckInfo.threadId) && t.e(this.latestActivityTime, threadCheckInfo.latestActivityTime) && t.e(this.lastReadTime, threadCheckInfo.lastReadTime) && t.e(this.alertOption, threadCheckInfo.alertOption);
    }

    @Nullable
    public final Integer getAlertOption() {
        return this.alertOption;
    }

    @Nullable
    public final Date getLastReadTime() {
        return this.lastReadTime;
    }

    @Nullable
    public final Date getLatestActivityTime() {
        return this.latestActivityTime;
    }

    @Nullable
    public final String getThreadId() {
        return this.threadId;
    }

    public int hashCode() {
        String str = this.threadId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Date date = this.latestActivityTime;
        int iHashCode2 = (iHashCode + (date == null ? 0 : date.hashCode())) * 31;
        Date date2 = this.lastReadTime;
        int iHashCode3 = (iHashCode2 + (date2 == null ? 0 : date2.hashCode())) * 31;
        Integer num = this.alertOption;
        return iHashCode3 + (num != null ? num.hashCode() : 0);
    }

    public final void setAlertOption(@Nullable Integer num) {
        this.alertOption = num;
    }

    public final void setLastReadTime(@Nullable Date date) {
        this.lastReadTime = date;
    }

    public final void setLatestActivityTime(@Nullable Date date) {
        this.latestActivityTime = date;
    }

    public final void setThreadId(@Nullable String str) {
        this.threadId = str;
    }

    @NotNull
    public String toString() {
        return "ThreadCheckInfo(threadId=" + this.threadId + ", latestActivityTime=" + this.latestActivityTime + ", lastReadTime=" + this.lastReadTime + ", alertOption=" + this.alertOption + ")";
    }

    public ThreadCheckInfo(@Nullable String str, @JsonDeserialize(using = JacksonUtils.DateDeserializer.class) @JsonSerialize(using = JacksonUtils.DateSerializer.class) @Nullable Date date, @JsonDeserialize(using = JacksonUtils.DateDeserializer.class) @JsonSerialize(using = JacksonUtils.DateSerializer.class) @Nullable Date date2, @Nullable Integer num) {
        this.threadId = str;
        this.latestActivityTime = date;
        this.lastReadTime = date2;
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

    public /* synthetic */ ThreadCheckInfo(String str, Date date, Date date2, Integer num, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : date, (i10 & 4) != 0 ? null : date2, (i10 & 8) != 0 ? null : num);
    }
}
