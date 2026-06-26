.class public final Lcom/narvii/account/visitor/RecentVisitorHelper;
.super Ljava/lang/Object;
.source "RecentVisitorHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/visitor/RecentVisitorHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/account/visitor/RecentVisitorHelper$Companion;

.field private static final PREF_KEY_LAST_VISIT_OTHER_PROFILE_TIME:Ljava/lang/String; = "pref_key_last_visit_other_profile_time"

.field private static final PREF_KEY_SHOW_TOOLTIP_HINT_FOR_RECENT_VISITORS:Ljava/lang/String; = "pref_key_show_tooltip_hint_for_recent_visitors"


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;

.field private final toolTipHelper:Lcom/narvii/util/ToolTipHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/account/visitor/RecentVisitorHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/account/visitor/RecentVisitorHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/account/visitor/RecentVisitorHelper;->Companion:Lcom/narvii/account/visitor/RecentVisitorHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "prefs"

    .line 17
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"prefs\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/narvii/account/visitor/RecentVisitorHelper;->prefs:Landroid/content/SharedPreferences;

    .line 18
    new-instance p1, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {p1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/visitor/RecentVisitorHelper;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    return-void
.end method

.method public static synthetic checkVisitorTooltips$default(Lcom/narvii/account/visitor/RecentVisitorHelper;Lcom/narvii/model/User;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/visitor/RecentVisitorHelper;->checkVisitorTooltips(Lcom/narvii/model/User;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private final hasShownFindOutVisitorsTooltip()Z
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/narvii/account/visitor/RecentVisitorHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_show_tooltip_hint_for_recent_visitors"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v2, p0, Lcom/narvii/account/visitor/RecentVisitorHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return v0
.end method

.method private final hasVisitedOthersProfileToday()Z
    .locals 9

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 35
    iget-object v2, p0, Lcom/narvii/account/visitor/RecentVisitorHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_last_visit_other_profile_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 36
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, v6}, Lcom/narvii/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v2

    sub-long v4, v0, v4

    const v6, 0x6ddd00

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    or-int/2addr v2, v4

    if-nez v2, :cond_1

    .line 38
    iget-object v4, p0, Lcom/narvii/account/visitor/RecentVisitorHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return v2
.end method


# virtual methods
.method public final checkVisitorTooltips(Lcom/narvii/model/User;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    const-string v0, "countView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "#FFFFC700"

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    .line 49
    iget p2, p1, Lcom/narvii/model/User;->visitorsCount:I

    if-lez p2, :cond_6

    iget p1, p1, Lcom/narvii/model/User;->visitPrivacy:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    invoke-direct {p0}, Lcom/narvii/account/visitor/RecentVisitorHelper;->hasShownFindOutVisitorsTooltip()Z

    move-result p1

    if-nez p1, :cond_6

    .line 50
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1, p3}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    const p2, 0x7f0f0f6b

    .line 52
    invoke-virtual {p1, p2}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/Tooltip$Builder;->textSize(F)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v2}, Lcom/narvii/util/Tooltip$Builder;->indicatorUp(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 55
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/Tooltip$Builder;->background(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1, v3}, Lcom/narvii/util/Tooltip$Builder;->showOnlyOnce(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->autoHide()Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 59
    invoke-virtual {p1, p5}, Lcom/narvii/util/Tooltip$Builder;->rootView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    .line 61
    :cond_1
    iget-object p2, p0, Lcom/narvii/account/visitor/RecentVisitorHelper;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    goto :goto_2

    .line 65
    :cond_2
    iget-boolean p2, p1, Lcom/narvii/model/User;->isGlobal:Z

    if-eqz p2, :cond_4

    if-eqz p2, :cond_3

    iget p1, p1, Lcom/narvii/model/User;->followingStatus:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_6

    .line 67
    invoke-direct {p0}, Lcom/narvii/account/visitor/RecentVisitorHelper;->hasVisitedOthersProfileToday()Z

    move-result p1

    if-nez p1, :cond_6

    .line 68
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1, p4}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    const p2, 0x7f0f1011

    .line 70
    invoke-virtual {p1, p2}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/Tooltip$Builder;->textSize(F)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1, v2}, Lcom/narvii/util/Tooltip$Builder;->indicatorUp(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 73
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/Tooltip$Builder;->background(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1, v3}, Lcom/narvii/util/Tooltip$Builder;->showOnlyOnce(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->autoHide()Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    if-eqz p5, :cond_5

    .line 77
    invoke-virtual {p1, p5}, Lcom/narvii/util/Tooltip$Builder;->rootView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    .line 79
    :cond_5
    iget-object p2, p0, Lcom/narvii/account/visitor/RecentVisitorHelper;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final hideToolTips()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/narvii/account/visitor/RecentVisitorHelper;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    return-void
.end method

.method public final isTooltipShowing()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/narvii/account/visitor/RecentVisitorHelper;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    move-result v0

    return v0
.end method
