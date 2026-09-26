.class Lcom/narvii/amino/page/EmptyHomePage$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/page/EmptyHomePage$1;->this$0:Lcom/narvii/amino/page/EmptyHomePage;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/page/EmptyHomePage$1;->this$0:Lcom/narvii/amino/page/EmptyHomePage;

    .line 3
    .line 4
    const-string v0, "drawerHost"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfo(J)Z

    .line 16
    return-void
.end method
