.class Lcom/narvii/community/AffiliationsService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/AffiliationsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/AffiliationsService;


# direct methods
.method constructor <init>(Lcom/narvii/community/AffiliationsService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService$1;->this$0:Lcom/narvii/community/AffiliationsService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/community/AffiliationsService$1;->this$0:Lcom/narvii/community/AffiliationsService;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->refresh(Z)V

    .line 7
    return-void
.end method
