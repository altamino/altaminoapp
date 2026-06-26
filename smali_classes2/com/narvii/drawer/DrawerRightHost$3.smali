.class Lcom/narvii/drawer/DrawerRightHost$3;
.super Ljava/lang/Object;
.source "DrawerRightHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerRightHost;->startActivity(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerRightHost;Landroid/content/Intent;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$3;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$3;->val$i:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$3;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 312
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$3;->val$i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
