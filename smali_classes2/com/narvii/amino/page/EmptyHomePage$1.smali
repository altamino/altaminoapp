.class Lcom/narvii/amino/page/EmptyHomePage$1;
.super Ljava/lang/Object;
.source "EmptyHomePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/page/EmptyHomePage;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/page/EmptyHomePage;


# direct methods
.method constructor <init>(Lcom/narvii/amino/page/EmptyHomePage;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/amino/page/EmptyHomePage$1;->this$0:Lcom/narvii/amino/page/EmptyHomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 48
    iget-object p1, p0, Lcom/narvii/amino/page/EmptyHomePage$1;->this$0:Lcom/narvii/amino/page/EmptyHomePage;

    const-string v0, "drawerHost"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    const-wide/16 v0, 0x0

    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfo(J)Z

    return-void
.end method
