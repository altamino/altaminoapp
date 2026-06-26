.class Lcom/narvii/master/CommunityDetailFragment$MainAdapter$5;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->checkActivation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;)V
    .locals 0

    .line 1424
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$5;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1427
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1428
    new-instance p1, Landroid/content/Intent;

    const-string p2, "ndc://activation"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1429
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$5;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
