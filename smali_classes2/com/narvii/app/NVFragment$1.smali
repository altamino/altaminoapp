.class Lcom/narvii/app/NVFragment$1;
.super Lcom/narvii/logging/PageViewDelegate;
.source "NVFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVFragment;Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/narvii/app/NVFragment$1;->this$0:Lcom/narvii/app/NVFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/logging/PageViewDelegate;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/narvii/app/NVFragment$1;->this$0:Lcom/narvii/app/NVFragment;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    return-void
.end method

.method protected logPageViewEvent()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/narvii/app/NVFragment$1;->this$0:Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->logPageViewEvent()Z

    move-result v0

    return v0
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/narvii/app/NVFragment$1;->this$0:Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->sendPageViewEventToThirdParty()Z

    move-result v0

    return v0
.end method
