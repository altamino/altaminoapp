.class Lcom/narvii/drawer/DrawerRightHost$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$2;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$2;->val$lh:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/drawer/DrawerRightHost$2;->val$da:Lcom/narvii/app/DrawerActivity;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$2;->val$lh:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->cancel()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$2;->val$da:Lcom/narvii/app/DrawerActivity;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->closeDrawersDirectly()V

    .line 15
    :cond_1
    return-void
.end method
