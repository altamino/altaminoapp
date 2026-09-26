.class public final Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerApi33Ext4Impl;
.super Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "ClassVerificationFailure"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresExtension;
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/topics/a;->a()Ljava/lang/Class;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string v0, "context.getSystemService\u2026opicsManager::class.java)"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/topics/b;->a(Ljava/lang/Object;)Landroid/adservices/topics/TopicsManager;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;-><init>(Landroid/adservices/topics/TopicsManager;)V

    .line 26
    return-void
.end method
