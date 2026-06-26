.class Lcom/narvii/community/CBBHost$4;
.super Ljava/lang/Object;
.source "CBBHost.java"

# interfaces
.implements Lcom/narvii/account/AccountService$RecentVisitorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CBBHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CBBHost;


# direct methods
.method constructor <init>(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/narvii/community/CBBHost$4;->this$0:Lcom/narvii/community/CBBHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisitorCountChanged(II)V
    .locals 0

    .line 128
    iget-object p2, p0, Lcom/narvii/community/CBBHost$4;->this$0:Lcom/narvii/community/CBBHost;

    iget-object p2, p2, Lcom/narvii/community/CBBHost;->meBadge:Landroid/view/View;

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
