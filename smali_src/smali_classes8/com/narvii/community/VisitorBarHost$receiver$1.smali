.class public final Lcom/narvii/community/VisitorBarHost$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/VisitorBarHost$receiver$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
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
    const-string p1, "intent"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$receiver$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/community/VisitorBarHost;->getCid()I

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$receiver$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/community/VisitorBarHost;->getCid()I

    .line 24
    move-result p1

    .line 25
    .line 26
    const-string v0, "cid"

    .line 27
    const/4 v1, -0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 31
    move-result p2

    .line 32
    .line 33
    if-ne p1, p2, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/community/VisitorBarHost$receiver$1;->this$0:Lcom/narvii/community/VisitorBarHost;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/community/VisitorBarHost;->access$updateBackground(Lcom/narvii/community/VisitorBarHost;)V

    .line 39
    :cond_0
    return-void
.end method
