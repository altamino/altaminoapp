.class public final Lcom/narvii/community/VisitorBarHost$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "VisitorBarHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/VisitorBarHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/VisitorBarHost;


# direct methods
.method constructor <init>(Lcom/narvii/community/VisitorBarHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost$receiver$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$receiver$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p1}, Lcom/narvii/community/VisitorBarHost;->getCid()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$receiver$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p1}, Lcom/narvii/community/VisitorBarHost;->getCid()I

    move-result p1

    const/4 v0, -0x1

    const-string v1, "cid"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 40
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$receiver$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    invoke-static {p1}, Lcom/narvii/community/VisitorBarHost;->access$updateBackground(Lcom/narvii/community/VisitorBarHost;)V

    :cond_0
    return-void
.end method
