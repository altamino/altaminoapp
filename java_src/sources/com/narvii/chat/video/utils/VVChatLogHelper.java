package com.narvii.chat.video.utils;

import com.narvii.app.NVContext;
import com.narvii.model.ChatThread;
import com.narvii.util.StatisticHelper;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class VVChatLogHelper {

    @NotNull
    private final NVContext ctx;

    @NotNull
    private final StatisticsService ss;

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @NotNull
    public final StatisticsService getSs() {
        return this.ss;
    }

    @Nullable
    public final String statChannelType(int i10) {
        if (i10 == 1) {
            return "Voice";
        }
        if (i10 == 3) {
            return "Avatar";
        }
        if (i10 == 4) {
            return "Video";
        }
        if (i10 != 5) {
            return null;
        }
        return "Screening Room";
    }

    public VVChatLogHelper(@NotNull NVContext ctx) {
        kotlin.jvm.internal.t.j(ctx, "ctx");
        this.ctx = ctx;
        Object service = ctx.getService("statistics");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.ss = (StatisticsService) service;
    }

    public final void logLeaveLiveChannel(int i10, @Nullable String str, @Nullable ChatThread chatThread) {
        this.ss.event("Leave VV Chat").param(EventConstants.CommentPost.TYPE, statChannelType(i10)).param("Chat Type", StatisticHelper.getChatThreadType(chatThread, null)).userPropInc("Leave VV Chat Total").source(str);
    }

    public final void logMinimizeLiveChannel(int i10, @Nullable String str, @Nullable ChatThread chatThread) {
        this.ss.event("Minimize VV Chat").param(EventConstants.CommentPost.TYPE, statChannelType(i10)).param("Chat Type", StatisticHelper.getChatThreadType(chatThread, null)).userPropInc("Minimize VV Chat Total").source(str);
    }

    public final void logJoinsActiveLiveChannel(int i10, @Nullable String str, @Nullable ChatThread chatThread) {
        String strStatChannelType = statChannelType(i10);
        StatisticsEventBuilder statisticsEventBuilderSource = this.ss.event("Joins Active VV Chat").param(EventConstants.CommentPost.TYPE, strStatChannelType).param("Chat Type", StatisticHelper.getChatThreadType(chatThread, null)).source(str);
        statisticsEventBuilderSource.userPropInc("Joins a VV Chat Total");
        if (strStatChannelType != null) {
            statisticsEventBuilderSource.userPropInc("Joins a VV " + strStatChannelType + " Chat Total");
        }
    }

    public final void logStartLiveChannel(int i10, boolean z6, @Nullable String str, @Nullable ChatThread chatThread) {
        String str2;
        String str3;
        StringBuilder sb;
        String str4;
        String strStatChannelType = statChannelType(i10);
        if (strStatChannelType != null && strStatChannelType.length() != 0) {
            StatisticsService statisticsService = this.ss;
            if (z6) {
                str2 = "Starts A VV Chat";
            } else {
                str2 = "Enters Active VV Chat";
            }
            StatisticsEventBuilder statisticsEventBuilderEvent = statisticsService.event(str2);
            kotlin.jvm.internal.t.i(statisticsEventBuilderEvent, "event(...)");
            if (z6) {
                str3 = "Starts A VV Chat Total";
            } else {
                str3 = "Enters Active VV Chat Total";
            }
            statisticsEventBuilderEvent.userPropInc(str3);
            StatisticsEventBuilder statisticsEventBuilderEvent2 = this.ss.event(null);
            if (z6) {
                sb = new StringBuilder();
                str4 = "Starts A VV ";
            } else {
                sb = new StringBuilder();
                str4 = "Enters Active VV ";
            }
            sb.append(str4);
            sb.append(strStatChannelType);
            sb.append(" Chat Total");
            statisticsEventBuilderEvent2.userPropInc(sb.toString());
            statisticsEventBuilderEvent.param(EventConstants.CommentPost.TYPE, strStatChannelType);
            statisticsEventBuilderEvent.param("Chat Type", StatisticHelper.getChatThreadType(chatThread, null));
            statisticsEventBuilderEvent.source(str);
        }
    }

    public final void logStopPresentingLiveChannel(int i10, @Nullable String str, @Nullable ChatThread chatThread) {
        this.ss.event("Stop Presenting VV Chat").param(EventConstants.CommentPost.TYPE, statChannelType(i10)).param("Chat Type", StatisticHelper.getChatThreadType(chatThread, null)).source(str).userPropInc("Stop Presenting VV Chat Total");
    }
}
