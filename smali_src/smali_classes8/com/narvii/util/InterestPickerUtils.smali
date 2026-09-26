.class public Lcom/narvii/util/InterestPickerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FINISH_EXISTING_INTEREST_PICKER:Ljava/lang/String; = "com.narvii.action.FINISH_EXISTING_INTEREST_PICKER"

.field private static final SHOW_INTERVAL:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    const-wide/32 v0, 0x493e0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    const-wide/32 v0, 0x5265c00

    .line 12
    .line 13
    :goto_0
    sput-wide v0, Lcom/narvii/util/InterestPickerUtils;->SHOW_INTERVAL:J

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static isEnglishUser(Landroid/content/Context;Lcom/narvii/logging/EventLogProfileResponse;)Z
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    .line 6
    :cond_0
    iget-object p1, p1, Lcom/narvii/logging/EventLogProfileResponse;->contentLanguage:Ljava/lang/String;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const-string p1, "content_language"

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    check-cast p0, Lcom/narvii/language/ContentLanguageService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    :cond_1
    const-string p0, "en"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public static openInterestPicker(Landroid/content/Context;Lcom/narvii/logging/EventLogProfileResponse;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/narvii/util/InterestPickerUtils;->openInterestPicker(Landroid/content/Context;Lcom/narvii/logging/EventLogProfileResponse;ZZ)V

    return-void
.end method

.method public static openInterestPicker(Landroid/content/Context;Lcom/narvii/logging/EventLogProfileResponse;ZZ)V
    .locals 6

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.narvii.action.FINISH_EXISTING_INTEREST_PICKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->e(Landroid/content/Intent;)V

    .line 5
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    iget-boolean v0, p1, Lcom/narvii/logging/EventLogProfileResponse;->needTriggerInterestPicker:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const-string p3, "interestPicker"

    .line 6
    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    const-wide/16 v1, 0x0

    const-string v3, "last_auto_pop_up_time"

    .line 7
    invoke-interface {p3, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 9
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    sub-long/2addr v4, v1

    sget-wide v1, Lcom/narvii/util/InterestPickerUtils;->SHOW_INTERVAL:J

    cmp-long p3, v4, v1

    if-gez p3, :cond_1

    return-void

    .line 10
    :cond_1
    iput-boolean v0, p1, Lcom/narvii/logging/EventLogProfileResponse;->needTriggerInterestPicker:Z

    const-string p3, "contentLanguage"

    const-string v0, "interestPickerStyle"

    if-eqz p2, :cond_2

    .line 11
    iget p2, p1, Lcom/narvii/logging/EventLogProfileResponse;->interestPickerStyle:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    const-class p2, Lcom/narvii/suggest/interest/InterestPickerWelcomeFragment;

    .line 12
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 13
    iget v1, p1, Lcom/narvii/logging/EventLogProfileResponse;->interestPickerStyle:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    iget-object p1, p1, Lcom/narvii/logging/EventLogProfileResponse;->contentLanguage:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-static {p0, p2}, Lcom/narvii/util/InterestPickerUtils;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-class p2, Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 16
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 17
    iget v1, p1, Lcom/narvii/logging/EventLogProfileResponse;->interestPickerStyle:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    iget-object p1, p1, Lcom/narvii/logging/EventLogProfileResponse;->contentLanguage:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-static {p0, p2}, Lcom/narvii/util/InterestPickerUtils;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
