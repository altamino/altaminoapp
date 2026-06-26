.class Lcom/narvii/drawer/DrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;)V
    .locals 0

    .line 2035
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback$1;->this$1:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2037
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback$1;->this$1:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->access$100(Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;)V

    return-void
.end method
