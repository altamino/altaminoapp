.class final Lcom/narvii/topic/TopicSubcribeHelper$pushNotificationHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TopicSubcribeHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/TopicSubcribeHelper;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/account/push/PushNotificationHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicSubcribeHelper;


# direct methods
.method constructor <init>(Lcom/narvii/topic/TopicSubcribeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$pushNotificationHelper$2;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/account/push/PushNotificationHelper;
    .locals 2

    .line 24
    new-instance v0, Lcom/narvii/account/push/PushNotificationHelper;

    iget-object v1, p0, Lcom/narvii/topic/TopicSubcribeHelper$pushNotificationHelper$2;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    invoke-virtual {v1}, Lcom/narvii/topic/TopicSubcribeHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/narvii/topic/TopicSubcribeHelper$pushNotificationHelper$2;->invoke()Lcom/narvii/account/push/PushNotificationHelper;

    move-result-object v0

    return-object v0
.end method
