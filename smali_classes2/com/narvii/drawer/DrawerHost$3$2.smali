.class Lcom/narvii/drawer/DrawerHost$3$2;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost$3;->onNoticeCountChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/drawer/DrawerHost$3;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost$3;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$3$2;->this$1:Lcom/narvii/drawer/DrawerHost$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$3$2;->this$1:Lcom/narvii/drawer/DrawerHost$3;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->getTotalBadgeCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 557
    check-cast p1, Lcom/narvii/util/Callback;

    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost$3$2;->call(Lcom/narvii/util/Callback;)V

    return-void
.end method
