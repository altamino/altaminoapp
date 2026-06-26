.class Lcom/narvii/drawer/DrawerHost$15;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost;->notifyRequestCommunityListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1435
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$15;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;)V
    .locals 0

    .line 1438
    invoke-interface {p1}, Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;->onRequestCommunityStatusChanged()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1435
    check-cast p1, Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;

    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost$15;->call(Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;)V

    return-void
.end method
