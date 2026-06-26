.class Lcom/narvii/drawer/DrawerHost$MyLaunchHelper$1;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;)V
    .locals 0

    .line 2735
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper$1;->this$1:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 2738
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2739
    sget-object p1, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper$1;->this$1:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    iget-object v0, v0, Lcom/narvii/community/CommunityLaunchHelper;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 2740
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper$1;->this$1:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->access$2001(Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;)V

    .line 2741
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper$1;->this$1:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 2735
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
