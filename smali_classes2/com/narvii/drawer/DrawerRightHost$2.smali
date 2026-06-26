.class Lcom/narvii/drawer/DrawerRightHost$2;
.super Ljava/lang/Object;
.source "DrawerRightHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;

.field final synthetic val$da:Lcom/narvii/app/DrawerActivity;

.field final synthetic val$lh:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerRightHost;Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;Lcom/narvii/app/DrawerActivity;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$2;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$2;->val$lh:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    iput-object p3, p0, Lcom/narvii/drawer/DrawerRightHost$2;->val$da:Lcom/narvii/app/DrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$2;->val$lh:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->cancel()V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$2;->val$da:Lcom/narvii/app/DrawerActivity;

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->closeDrawersDirectly()V

    :cond_1
    return-void
.end method
