.class public final Lcom/narvii/account/VerifyCodeSharedPrefsHelper;
.super Ljava/lang/Object;
.source "VerifyCodeSharedPrefsHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/VerifyCodeSharedPrefsHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/account/VerifyCodeSharedPrefsHelper$Companion;

.field public static final RESENT_INTERVAL:I = 0xea60

.field public static final VERIFY_CODE:Ljava/lang/String; = "verify_code"


# instance fields
.field private final context:Landroid/content/Context;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/account/VerifyCodeSharedPrefsHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/account/VerifyCodeSharedPrefsHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->Companion:Lcom/narvii/account/VerifyCodeSharedPrefsHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->context:Landroid/content/Context;

    .line 12
    iget-object p1, p0, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->context:Landroid/content/Context;

    const-string/jumbo v0, "verify_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getEmailVerifyTime(Ljava/lang/String;)J
    .locals 3

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPhoneVerifyTime(Ljava/lang/String;)J
    .locals 3

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final isEmailCanResentCode(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->getEmailVerifyTime(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const p1, 0xea60

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isPhoneCanResentCode(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->getPhoneVerifyTime(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const p1, 0xea60

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final updateEmailVerifyTime(Ljava/lang/String;)V
    .locals 3

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final updatePhoneVerifyTime(Ljava/lang/String;)V
    .locals 3

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
