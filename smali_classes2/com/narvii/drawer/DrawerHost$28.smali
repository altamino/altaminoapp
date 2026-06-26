.class Lcom/narvii/drawer/DrawerHost$28;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;

.field final synthetic val$da:Lcom/narvii/app/DrawerActivity;

.field final synthetic val$lh:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;Lcom/narvii/app/DrawerActivity;)V
    .locals 0

    .line 2767
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$28;->this$0:Lcom/narvii/drawer/DrawerHost;

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost$28;->val$lh:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    iput-object p3, p0, Lcom/narvii/drawer/DrawerHost$28;->val$da:Lcom/narvii/app/DrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2770
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$28;->val$lh:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    if-eqz v0, :cond_0

    .line 2771
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->cancel()V

    .line 2773
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$28;->val$da:Lcom/narvii/app/DrawerActivity;

    if-eqz v0, :cond_1

    .line 2774
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->closeDrawersDirectly()V

    :cond_1
    return-void
.end method
